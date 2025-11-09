----------------------------------------------------------------------------------
-- Proyecto   : TATETÍ Digital - Subsistema 4 (Control General y Estado del Sistema)
-- Descripción: Controla los modos de juego, partidas, puntajes y resultado final.
-- Autor      : Lautaro Tomás Maure
-- Fecha      : 09/11/2025
-- Materia    : Técnicas y Dispositivos Digitales II
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Subsistema_4 is
    port (
        clk              : in  std_logic;                    -- Reloj del sistema
        reset_n          : in  std_logic;                    -- Reset global activo en bajo
        confirmar_modo   : in  std_logic := '0';             -- '0' SEL_MOD=0 ==> J1 Vs J2 / '1' SEL_MOD=1 ==> J Vs Maquina
        pulso_jugada     : in  std_logic := '0';             -- Habilita la partida
        jugada_valida    : in  std_logic := '0';             -- Lugar vacio para ser ocupado por J1 o J2
        fin_juego        : in  std_logic := '0';             -- Indica si la partida actual termino
        gana_j1, gana_j2,
        empate           : in  std_logic := '0';             -- Entradas desde Subsistema 3 (Nahuel)

        E_maquina        : out std_logic;                    -- Habilita CPU ('1' modo J vs Maquina)
        e_tablero        : out std_logic;                    -- Habilita tablero físico
        E_teclado        : out std_logic;                    -- Habilita teclado/entrada jugada
        modo_actual      : out std_logic;                    -- 0="J1 vs J2", 1=J vs máquina
        puntos_j1        : out std_logic_vector(1 downto 0); -- Puntaje acumulado
        puntos_j2        : out std_logic_vector(1 downto 0);
        victoria_final   : out std_logic_vector(1 downto 0); -- 01=J1,10=J2,11=Empate
        resultado_final  : out std_logic;                    -- Indica fin de serie ('1' cuando se completo 3 partidas)
																				 -- Se puede usar para habilitar un mensaje de ganador final o a otros subs
        limpiar_tablero  : out std_logic                     -- Limpieza de tablero
    );
end Subsistema_4;

architecture Behavioral of Subsistema_4 is

    type state_type is (INICIO, SEL_MOD, IN_P, ESP_J, VERIF, FIN_P, VER_F, RES_F, reseteo);
    signal fstate, reg_fstate : state_type := INICIO;

    signal modo_sel          : std_logic := '0';
    signal contador_partidas : unsigned(2 downto 0) := (others=>'0');
    signal puntos1, puntos2  : unsigned(1 downto 0) := (others=>'0');
    signal mas_partidas      : std_logic := '1';

    -- Señales internas para evitar conflictos de drivers
    signal resultado_final_int : std_logic := '0';
    signal victoria_final_int  : std_logic_vector(1 downto 0) := "00";

begin
    --------------------------------------------------------------------------
    -- Proceso principal 
    --------------------------------------------------------------------------
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            fstate <= INICIO;
            contador_partidas <= (others => '0');
            puntos1 <= (others => '0');
            puntos2 <= (others => '0');
            resultado_final_int <= '0';
            victoria_final_int  <= "00";

        elsif rising_edge(clk) then
            fstate <= reg_fstate;

            if (fstate /= FIN_P) and (reg_fstate = FIN_P) then
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

            if (fstate /= RES_F) and (reg_fstate = RES_F) then
                resultado_final_int <= '1';
                if puntos1 > puntos2 then
                    victoria_final_int <= "01";
                elsif puntos2 > puntos1 then
                    victoria_final_int <= "10";
                else
                    victoria_final_int <= "11";
                end if;
            end if;

            if (fstate /= reseteo) and (reg_fstate = reseteo) then
                resultado_final_int <= '0';
                victoria_final_int  <= "00";
            end if;
        end if;
    end process;

    --------------------------------------------------------------------------
    -- Proceso combinacional
    --------------------------------------------------------------------------
    process(fstate, confirmar_modo, pulso_jugada, jugada_valida,
            fin_juego, reset_n, gana_j1, gana_j2, empate, contador_partidas)
    begin
        reg_fstate        <= fstate;
        E_maquina         <= '0';
        e_tablero         <= '0';
        E_teclado         <= '0';
        limpiar_tablero   <= '0';

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
    -- Asignación final de señales internas a las salidas
    --------------------------------------------------------------------------
    modo_actual     <= modo_sel;
    puntos_j1       <= std_logic_vector(puntos1);
    puntos_j2       <= std_logic_vector(puntos2);
    resultado_final <= resultado_final_int;
    victoria_final  <= victoria_final_int;

end Behavioral;

