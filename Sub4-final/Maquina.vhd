
-- FSM Subsistema 4 - Maquina de control 
-- Autor: Maure Lautaro
-- Fecha: 26/11/25

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Maquina IS
    PORT (
        -- Entradas 
        reset               : IN  STD_LOGIC := '0';  -- Reset principal
        clock               : IN  STD_LOGIC;         -- Reloj principal
        modo                : IN  STD_LOGIC := '0';  -- 0 = J1 vs J2, 1 = J vs M (modo actual)
        movimiento_valido   : IN  STD_LOGIC := '0';  -- 1 = la jugada fue válida (casilla vacía ocupada)
        victoria_j1         : IN  STD_LOGIC := '0';  -- 1 = J1 ganó esta partida
        victoria_j2         : IN  STD_LOGIC := '0';  -- 1 = J2 (o máquina) ganó esta partida
        empate              : IN  STD_LOGIC := '0';  -- 1 = esta partida terminó en empate
        reiniciar           : IN  STD_LOGIC := '0';  -- Señal externa para forzar reinicio de serie

        -- Salidas
        inicio_partida      : OUT STD_LOGIC;         -- 1 durante la "ronda" (mejor de 3)
        turno               : OUT STD_LOGIC;         -- 0 = turno Jugador1 ; 1 = turno Jugador2 / Máquina
        hubo_ganador        : OUT STD_LOGIC;         -- 1 si la última partida tuvo un ganador 
        hubo_empate         : OUT STD_LOGIC;         -- 1 si la última partida terminó en empate
        modo_actual         : OUT STD_LOGIC;         -- copia de 'modo' (0 JvJ, 1 JvM)
        limpiar_tablero     : OUT STD_LOGIC;         -- pulso/flag cuando el FSM está en LIMPIAR (1 durante ese estado)
        victoria_final      : OUT STD_LOGIC_VECTOR (1 DOWNTO 0) -- 01 = J1 ganó, 10 = J2 ganó, 11 = empate 
    );
END Maquina;

ARCHITECTURE BEHAVIOR OF Maquina IS

    -- Estados
    TYPE type_fstate IS (T_J2, FIN_J, LIMPIAR, T_M, T_J1, INICIO);
    SIGNAL fstate      : type_fstate; -- estado actual
    SIGNAL reg_fstate  : type_fstate; -- siguiente estado

    -- Contadores internos para mejor de 3
    SIGNAL partidas_jugadas : INTEGER RANGE 0 TO 3 := 0;
    SIGNAL puntaje_j1       : INTEGER RANGE 0 TO 2 := 0;
    SIGNAL puntaje_j2       : INTEGER RANGE 0 TO 2 := 0;

    -- Señales internas de salida
    SIGNAL s_inicio_partida  : STD_LOGIC := '0';
    SIGNAL s_turno           : STD_LOGIC := '0';
    SIGNAL s_hubo_ganador    : STD_LOGIC := '0';
    SIGNAL s_hubo_empate     : STD_LOGIC := '0';
    SIGNAL s_modo_actual     : STD_LOGIC := '0';
    SIGNAL s_limpiar_tablero : STD_LOGIC := '0';
    SIGNAL s_victoria_final  : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');

BEGIN

    ---------------------------------------------------------------------------
    -- Proceso de reloj: actualiza estado y puntajes 
    ---------------------------------------------------------------------------
    PROCESS (clock)
    BEGIN
        IF (clock'event AND clock = '1') THEN
        
            fstate <= reg_fstate;

            -- Si voy a LIMPIAR, la partida acaba de terminar
            IF (reg_fstate = LIMPIAR) THEN

                -- Sumar partida jugada
                IF (partidas_jugadas < 3) THEN
                    partidas_jugadas <= partidas_jugadas + 1;
                END IF;

                -- SUMA DE PUNTOS:
                IF (victoria_j1 = '1') THEN
                    IF (puntaje_j1 < 2) THEN
                        puntaje_j1 <= puntaje_j1 + 1;
                    END IF;

                ELSIF (victoria_j2 = '1') THEN
                    IF (puntaje_j2 < 2) THEN
                        puntaje_j2 <= puntaje_j2 + 1;
                    END IF;

                ELSIF (empate = '1') THEN
                    -- EMPATE suma 1 a cada jugador
                    IF (puntaje_j1 < 2) THEN
                        puntaje_j1 <= puntaje_j1 + 1;
                    END IF;

                    IF (puntaje_j2 < 2) THEN
                        puntaje_j2 <= puntaje_j2 + 1;
                    END IF;
                END IF;

            END IF;

            -- RESET GLOBAL
            IF (reiniciar = '1') THEN
                partidas_jugadas <= 0;
                puntaje_j1 <= 0;
                puntaje_j2 <= 0;
            END IF;

        END IF;
    END PROCESS;


    ---------------------------------------------------------------------------
    -- Lógica combinacional: siguiente estado y salidas
    ---------------------------------------------------------------------------
    PROCESS (fstate, reset, modo, movimiento_valido, victoria_j1, victoria_j2, empate,
             partidas_jugadas, puntaje_j1, puntaje_j2, reiniciar)
    BEGIN

        reg_fstate <= fstate;

        -- valores por defecto
        s_inicio_partida  <= '0';
        s_turno           <= '0';
        s_hubo_ganador    <= '0';
        s_hubo_empate     <= '0';
        s_modo_actual     <= modo;
        s_limpiar_tablero <= '0';
        s_victoria_final  <= (OTHERS => '0');

        -----------------------------------------------------------------------
        -- victoria_final: se calcula si termina la serie
        -----------------------------------------------------------------------
        IF ( (puntaje_j1 = 2) OR (puntaje_j2 = 2) OR (partidas_jugadas = 3) ) THEN
            IF (puntaje_j1 > puntaje_j2) THEN
                s_victoria_final <= "01";
            ELSIF (puntaje_j2 > puntaje_j1) THEN
                s_victoria_final <= "10";
            ELSE
                s_victoria_final <= "11";
            END IF;
        END IF;

        -----------------------------------------------------------------------
        -- inicio_partida
        -----------------------------------------------------------------------
        IF (partidas_jugadas > 0 AND partidas_jugadas < 3) THEN
            s_inicio_partida <= '1';
        ELSIF (fstate /= INICIO AND partidas_jugadas = 0) THEN
            s_inicio_partida <= '1';
        END IF;

        -----------------------------------------------------------------------
        -- DESCRIPCIÓN DE ESTADOS
        -----------------------------------------------------------------------
        CASE fstate IS

            -------------------------------------------------------------------
            WHEN T_J2 =>
                s_turno <= '1';

                IF (victoria_j2 = '1' OR empate = '1') THEN
                    reg_fstate <= LIMPIAR;
                ELSIF (movimiento_valido = '1') THEN
                    reg_fstate <= T_J1;
                ELSE
                    reg_fstate <= T_J2;
                END IF;

            -------------------------------------------------------------------
            WHEN FIN_J =>
                reg_fstate <= INICIO;

            -------------------------------------------------------------------
            WHEN LIMPIAR =>
                s_limpiar_tablero <= '1';

                IF (victoria_j1='1' OR victoria_j2='1') THEN
                    s_hubo_ganador <= '1';
                ELSIF (empate='1') THEN
                    s_hubo_empate <= '1';
                END IF;

                IF (puntaje_j1 = 2 OR puntaje_j2 = 2 OR partidas_jugadas = 3) THEN
                    reg_fstate <= FIN_J;
                ELSE
                    reg_fstate <= T_J1;
                END IF;

            -------------------------------------------------------------------
            WHEN T_M =>
                s_turno <= '1';

                IF (victoria_j2 = '1' OR empate = '1') THEN
                    reg_fstate <= LIMPIAR;
                ELSIF (movimiento_valido = '1') THEN
                    reg_fstate <= T_J1;
                ELSE
                    reg_fstate <= T_M;
                END IF;

            -------------------------------------------------------------------
            WHEN T_J1 =>
                s_turno <= '0';

                IF (victoria_j1 = '1' OR empate = '1') THEN
                    reg_fstate <= LIMPIAR;

                ELSIF (movimiento_valido = '1') THEN
                    IF (modo = '1') THEN
                        reg_fstate <= T_M;
                    ELSE
                        reg_fstate <= T_J2;
                    END IF;
                ELSE
                    reg_fstate <= T_J1;
                END IF;

            -------------------------------------------------------------------
            WHEN INICIO =>
                s_turno <= '0';

                IF (modo = '1' OR modo = '0') THEN
                    reg_fstate <= T_J1;
                ELSE
                    reg_fstate <= INICIO;
                END IF;

            -------------------------------------------------------------------
            WHEN OTHERS =>
                reg_fstate <= INICIO;

        END CASE;
    END PROCESS;


    ---------------------------------------------------------------------------
    -- Asignación final de salidas
    ---------------------------------------------------------------------------
    inicio_partida  <= s_inicio_partida;
    turno           <= s_turno;
    hubo_ganador    <= s_hubo_ganador;
    hubo_empate     <= s_hubo_empate;
    modo_actual     <= s_modo_actual;
    limpiar_tablero <= s_limpiar_tablero;
    victoria_final  <= s_victoria_final;

END BEHAVIOR;
