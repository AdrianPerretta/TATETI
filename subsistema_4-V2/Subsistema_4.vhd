----------------------------------------------------------------------------------
-- Proyecto   : TATETÍ Digital - Subsistema 4 (Control General y Estado del Sistema)
-- Descripción: Controla los modos de juego, partidas, puntajes, resultado final
--              y alternancia de turnos entre jugadores.
-- Autor      : Lautaro Tomás Maure
-- Fecha      : 12/11/2025
-- Materia    : Técnicas y Dispositivos Digitales II
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Subsistema_4 is
    port (
        clk              : in  std_logic;                    -- Reloj del sistema
        reset_n          : in  std_logic;                    -- Reset global activo en bajo
        confirmar_modo   : in  std_logic := '0';             -- '0'=J1 vs J2 / '1'=J vs Máquina
        pulso_jugada     : in  std_logic := '0';             -- Habilita la partida
        jugada_valida    : in  std_logic := '0';             -- Lugar válido para jugar
        fin_juego        : in  std_logic := '0';             -- Indica fin de partida
        gana_j1, gana_j2,
        empate           : in  std_logic := '0';             -- Entradas desde Subsistema 3

        movimiento_valido : in std_logic := '0';             -- Indica jugada válida (cambia turno)

        E_maquina        : out std_logic;                    -- Habilita CPU (modo J vs Máquina)
        e_tablero        : out std_logic;                    -- Habilita tablero físico
        E_teclado        : out std_logic;                    -- Habilita teclado/entrada jugada
        modo_actual      : out std_logic;                    -- 0="J1 vs J2", 1="J vs Máquina"
        puntos_j1        : out std_logic_vector(1 downto 0); -- Puntaje acumulado
        puntos_j2        : out std_logic_vector(1 downto 0);
        victoria_final   : out std_logic_vector(1 downto 0); -- 01=J1,10=J2,11=Empate
        resultado_final  : out std_logic;                    -- Fin de serie (mejor de 3)
        limpiar_tablero  : out std_logic;                    -- Limpieza de tablero
        turno_jugador    : out std_logic;                    -- 0=Turno J1 / 1=Turno J2
        inicio_partida   : out std_logic 
    );
end Subsistema_4;

architecture Behavioral of Subsistema_4 is

    --------------------------------------------------------------------------
    -- Definición de estados de la máquina
    --------------------------------------------------------------------------
    type state_type is (INICIO, SEL_MOD, IN_P, ESP_J, VERIF, FIN_P, VER_F, RES_F, reseteo);
    signal fstate, reg_fstate : state_type := INICIO;

    --------------------------------------------------------------------------
    -- Señales internas
    --------------------------------------------------------------------------
    signal modo_sel          : std_logic := '0';
    signal contador_partidas : unsigned(2 downto 0) := (others=>'0');
    signal puntos1, puntos2  : unsigned(1 downto 0) := (others=>'0');
    signal mas_partidas      : std_logic := '1';
    signal resultado_final_int : std_logic := '0';
    signal victoria_final_int  : std_logic_vector(1 downto 0) := "00";
    signal turno_jugador_int   : std_logic := '0';   -- Señal interna de turno
    signal inicio_partida_int : std_logic := '0';    -- Señal inicio de Juego

begin
    --------------------------------------------------------------------------
    -- Proceso principal (secuencial)
    --------------------------------------------------------------------------
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            -- Reset global
            fstate <= INICIO;
            contador_partidas <= (others => '0');
            puntos1 <= (others => '0');
            puntos2 <= (others => '0');
            resultado_final_int <= '0';
            victoria_final_int  <= "00";
            turno_jugador_int   <= '0';

        elsif rising_edge(clk) then
            fstate <= reg_fstate;

            ------------------------------------------------------------------
            -- Alternancia de turno: cambia cada vez que hay un movimiento válido
            ------------------------------------------------------------------
            if movimiento_valido = '1' then
                turno_jugador_int <= not turno_jugador_int;  -- Cambia entre 0 (J1) y 1 (J2)
            end if;

            ------------------------------------------------------------------
            -- Actualización de puntajes al finalizar cada partida
            -- Se detecta transición: solo al entrar en FIN_P
            ------------------------------------------------------------------
            if fstate = FIN_P and reg_fstate /= FIN_P then
                contador_partidas <= contador_partidas + 1;

                if gana_j1 = '1' then
                    puntos1 <= puntos1 + 1;
                elsif gana_j2 = '1' then
                    puntos2 <= puntos2 + 1;
                elsif empate = '1' then
                    puntos1 <= puntos1 + 1;
                    puntos2 <= puntos2 + 1;
                end if;
            end if;

            ------------------------------------------------------------------
            -- Resultado final al completar la serie (3 partidas)
            -- Se detecta transición: solo al entrar en RES_F
            ------------------------------------------------------------------
            if fstate = RES_F and reg_fstate /= RES_F then
                resultado_final_int <= '1';
                if puntos1 > puntos2 then
                    victoria_final_int <= "01";  -- Gana J1
                elsif puntos2 > puntos1 then
                    victoria_final_int <= "10";  -- Gana J2
                else
                    victoria_final_int <= "11";  -- Empate
                end if;
            end if;

            ------------------------------------------------------------------
            -- Limpieza final al resetear todo
            ------------------------------------------------------------------
            if (fstate /= reseteo) and (reg_fstate = reseteo) then
                resultado_final_int <= '0';
                victoria_final_int  <= "00";
                turno_jugador_int   <= '0';
            end if;
        end if;
    end process;

    --------------------------------------------------------------------------
    -- Proceso combinacional (máquina de estados original)
    --------------------------------------------------------------------------
    process(fstate, confirmar_modo, pulso_jugada, jugada_valida,
            fin_juego, reset_n, gana_j1, gana_j2, empate, contador_partidas)
    begin
        reg_fstate         <= fstate;
        E_maquina          <= '0';
        e_tablero          <= '0';
        E_teclado          <= '0';
        limpiar_tablero    <= '0';
        inicio_partida_int <= '0';  -- valor por defecto

        if contador_partidas < "011" then
            mas_partidas <= '1';
        else
            mas_partidas <= '0';
        end if;

        case fstate is
            when INICIO =>
                limpiar_tablero <= '1';
                if reset_n = '1' then
                    reg_fstate <= SEL_MOD;
                end if;

            when SEL_MOD =>
                if confirmar_modo = '1' then
                    modo_sel   <= '1';
                    reg_fstate <= IN_P;
                end if;

            when IN_P =>
                limpiar_tablero <= '1';
                -- Pulso de inicio de partida (solo un ciclo)
                if reg_fstate /= IN_P then
                    inicio_partida_int <= '1';  -- activo pulso
                else
                    inicio_partida_int <= '0';  -- desactivo en ciclos siguientes
                end if;
                reg_fstate <= ESP_J;

            when ESP_J =>
                e_tablero <= '1';
                E_teclado <= '1';
                if modo_sel = '1' then
                    E_maquina <= '1';
                end if;
                if (pulso_jugada = '1') or (jugada_valida = '1') then
                    reg_fstate <= VERIF;
                end if;

            when VERIF =>
                if fin_juego = '1' then
                    reg_fstate <= FIN_P;
                end if;

            when FIN_P =>
                reg_fstate <= VER_F;

            when VER_F =>
                if contador_partidas < "011" then
                    reg_fstate <= IN_P;
                else
                    reg_fstate <= RES_F;
                end if;

            when RES_F =>
                if reset_n = '0' then
                    reg_fstate <= reseteo;
                end if;

            when reseteo =>
                limpiar_tablero <= '1';
                if reset_n = '1' then
                    reg_fstate <= INICIO;
                end if;

            when others =>
                reg_fstate <= INICIO;
        end case;
    end process;

    --------------------------------------------------------------------------
    -- Asignaciones finales
    --------------------------------------------------------------------------
    modo_actual     <= modo_sel;
    puntos_j1       <= std_logic_vector(puntos1);
    puntos_j2       <= std_logic_vector(puntos2);
    resultado_final <= resultado_final_int;
    victoria_final  <= victoria_final_int;
    turno_jugador   <= turno_jugador_int;
    inicio_partida  <= inicio_partida_int;

end Behavioral;

