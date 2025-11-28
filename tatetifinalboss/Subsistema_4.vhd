----------------------------------------------------------------------------------
-- Proyecto   : TATETÍ Digital - Subsistema 4 (Control General y Estado del Sistema)
-- Descripción: Controla los modos, partidas, puntajes, estados finales y turnos.
-- Autor      : Lautaro Tomás Maure
-- Fecha      : 22/11/2025
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Subsistema_4 is
    port (

		  -------------------------------------------------------------------------
        -- ENTRADAS
        -------------------------------------------------------------------------
        clk              : in  std_logic;   			-- Reloj principal
        reset_n          : in  std_logic;  		   -- Reset activo en 0

        modo_1           : in std_logic := '0';    -- Modo: J1 vs J2
        modo_2           : in std_logic := '0';    -- Modo: J1 vs Máquina

        jugada_valida    : in  std_logic := '0';   -- Se marcó una casilla válida

        gana_j1          : in std_logic := '0';    -- J1 ganó la partida
        gana_j2          : in std_logic := '0';    -- J2 ganó la partida
        empate           : in std_logic := '0';    -- Empate en la partida

        -------------------------------------------------------------------------
        -- SALIDAS 
        -------------------------------------------------------------------------
        E_maquina        : out std_logic;   -- Habilita IA (modo 2)
        e_tablero        : out std_logic;   -- Habilita lectura del tablero
        E_teclado        : out std_logic;   -- Habilita teclado del jugador
        modo_actual      : out std_logic;   -- 0 = J1 vs J2 | 1 = J1 vs Máquina

        victoria_final   : out std_logic_vector(1 downto 0);  -- Ganador del final:
                                                              -- "01" = J1 ganó
                                                              -- "10" = J2 ganó
                                                              -- "11" = Empate global

        resultado_final  : out std_logic;   -- 1 = Se jugaron las 3 partidas (fin total)

        hubo_ganador     : out std_logic;   -- 1 = J1 o J2 ganó la PARTIDA actual
                                            -- 0 = la PARTIDA actual resulto en empate

        limpiar_tablero  : out std_logic;   -- Limpieza entre partidas
        turno_jugador    : out std_logic;   --  '0' para J1 y '1' para J2 o Maquina
        inicio_partida   : out std_logic    -- Se pone en '1' al comenzar a jugar
    );
end Subsistema_4;


architecture Behavioral of Subsistema_4 is

    type state_type is (
        INICIO, SEL_MOD, IN_P, ESP_J, VERIF,
        FIN_P, VER_F, RES_F, reseteo
    );

    signal fstate, reg_fstate : state_type := INICIO;

    -- Señales internas
    signal modo_sel            : std_logic := '0';
    signal contador_partidas   : unsigned(2 downto 0) := (others=>'0');
    signal puntos1, puntos2    : unsigned(1 downto 0) := (others=>'0');
    signal resultado_final_int : std_logic := '0';
    signal victoria_final_int  : std_logic_vector(1 downto 0) := "00";
    signal turno_jugador_int   : std_logic := '0';
    signal inicio_partida_int  : std_logic := '0';
    signal pulso_jugada_int    : std_logic;
    signal fin_juego_int       : std_logic;
    signal hubo_ganador_int    : std_logic := '0';

begin
    ----------------------------------------------------------------------
    -- SEÑAL DE HABILITACION
    ----------------------------------------------------------------------
    pulso_jugada_int <= modo_1 or modo_2;

    ----------------------------------------------------------------------
    -- FIN DE PARTIDA 
    ----------------------------------------------------------------------
    fin_juego_int <= gana_j1 or gana_j2 or empate;

    ----------------------------------------------------------------------
    -- PROCESO SECUENCIAL
    ----------------------------------------------------------------------
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            fstate <= INICIO;
            contador_partidas   <= (others=>'0');
            puntos1             <= (others=>'0');
            puntos2             <= (others=>'0');
            resultado_final_int <= '0';
            victoria_final_int  <= "00";
            turno_jugador_int   <= '0';
            inicio_partida_int  <= '0';
            hubo_ganador_int    <= '0';

        elsif rising_edge(clk) then

            fstate <= reg_fstate;

            ------------------------------------------------------------------
            -- Activar inicio_partida SOLO al comenzar la PRIMER partida
            ------------------------------------------------------------------
            if (fstate = IN_P) and (reg_fstate /= IN_P) and (contador_partidas = 0) then
                inicio_partida_int <= '1';
            end if;

            ------------------------------------------------------------------
            -- Alternancia de turnos
            ------------------------------------------------------------------
            if jugada_valida = '1' then
                turno_jugador_int <= not turno_jugador_int;
            end if;

            ------------------------------------------------------------------
            -- Actualización de puntajes + hubo_ganador
            ------------------------------------------------------------------
            if (fstate = FIN_P) and (reg_fstate /= FIN_P) then

                contador_partidas <= contador_partidas + 1;

                if gana_j1 = '1' then
                    puntos1 <= puntos1 + 1;
                    hubo_ganador_int <= '1';

                elsif gana_j2 = '1' then
                    puntos2 <= puntos2 + 1;
                    hubo_ganador_int <= '1';

                elsif empate = '1' then
                    -- Suma doble por empate
                    puntos1 <= puntos1 + 1;
                    puntos2 <= puntos2 + 1;
                    hubo_ganador_int <= '0';  -- No hubo ganador
                end if;
            end if;

            ------------------------------------------------------------------
            -- Resultado FINAL (al terminar las 3 partidas)
            ------------------------------------------------------------------
            if (fstate = RES_F) and (reg_fstate /= RES_F) then
                resultado_final_int <= '1';

                if puntos1 > puntos2 then
                    victoria_final_int <= "01";
                elsif puntos2 > puntos1 then
                    victoria_final_int <= "10";
                else
                    victoria_final_int <= "11";
                end if;

                inicio_partida_int <= '0';
            end if;
        end if;
    end process;


    ----------------------------------------------------------------------
    -- PROCESO COMBINACIONAL (FSM)
    ----------------------------------------------------------------------
    process(
        fstate, modo_1, modo_2, jugada_valida,
        fin_juego_int, reset_n,
        contador_partidas, pulso_jugada_int
    )
    begin
        reg_fstate      <= fstate;
        E_maquina       <= '0';
        e_tablero       <= '0';
        E_teclado       <= '0';
        limpiar_tablero <= '0';

        case fstate is

            ------------------------------------------------------------------
            when INICIO =>
                limpiar_tablero <= '1';
                if reset_n = '1' then
                    reg_fstate <= SEL_MOD;
                end if;

            ------------------------------------------------------------------
            when SEL_MOD =>
                if modo_1 = '1' then
                    modo_sel <= '0';
                    reg_fstate <= IN_P;

                elsif modo_2 = '1' then
                    modo_sel <= '1';
                    reg_fstate <= IN_P;
                end if;

            ------------------------------------------------------------------
            when IN_P =>
                limpiar_tablero <= '1';
                reg_fstate <= ESP_J;

            ------------------------------------------------------------------
            when ESP_J =>
                e_tablero <= '1';
                E_teclado <= '1';

                if modo_sel = '1' then
                    E_maquina <= '1';
                end if;

                if (pulso_jugada_int = '1') or (jugada_valida = '1') then
                    reg_fstate <= VERIF;
                end if;

            ------------------------------------------------------------------
            when VERIF =>
                if fin_juego_int = '1' then
                    reg_fstate <= FIN_P;
                end if;

            ------------------------------------------------------------------
            when FIN_P =>
                reg_fstate <= VER_F;

            ------------------------------------------------------------------
            when VER_F =>
                if contador_partidas < "011" then
                    reg_fstate <= IN_P;
                else
                    reg_fstate <= RES_F;
                end if;

            ------------------------------------------------------------------
            when RES_F =>
                if reset_n = '0' then
                    reg_fstate <= reseteo;
                end if;

            ------------------------------------------------------------------
            when reseteo =>
                limpiar_tablero <= '1';
                if reset_n = '1' then
                    reg_fstate <= INICIO;
                end if;

            ------------------------------------------------------------------
            when others =>
                reg_fstate <= INICIO;

        end case;
    end process;


    ----------------------------------------------------------------------
    -- SALIDAS FINALES
    ----------------------------------------------------------------------
    modo_actual      <= modo_sel;
    resultado_final  <= resultado_final_int;
    victoria_final   <= victoria_final_int;
    turno_jugador    <= turno_jugador_int;
    inicio_partida   <= inicio_partida_int;
    hubo_ganador     <= hubo_ganador_int;

end Behavioral;

