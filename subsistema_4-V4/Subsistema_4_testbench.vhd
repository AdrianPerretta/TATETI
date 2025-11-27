----------------------------------------------------------------------------------
-- Testbench para Subsistema_4 (versión final del entity)
-- 2 jugadas válidas por partida para que se vean las salidas
-- Autor: Generado para Lautaro Tomas Maure
-- Fecha: 2025-11-22
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Subsistema_4_testbench is
end Subsistema_4_testbench;

architecture tb of Subsistema_4_testbench is

    -- Entradas del DUT
    signal clk            : std_logic := '0';
    signal reset_n        : std_logic := '0';
    signal modo_1         : std_logic := '0';
    signal modo_2         : std_logic := '0';
    signal jugada_valida  : std_logic := '0';
    signal gana_j1        : std_logic := '0';
    signal gana_j2        : std_logic := '0';
    signal empate         : std_logic := '0';

    -- Salidas del DUT (conforman con el entity que me pasaste)
    signal E_maquina       : std_logic;
    signal e_tablero       : std_logic;
    signal E_teclado       : std_logic;
    signal modo_actual     : std_logic;
    signal victoria_final  : std_logic_vector(1 downto 0);
    signal resultado_final : std_logic;
    signal hubo_ganador    : std_logic;
    signal limpiar_tablero : std_logic;
    signal turno_jugador   : std_logic;
    signal inicio_partida  : std_logic;

    constant CLK_PERIOD : time := 10 ns;

begin

    --------------------------------------------------------------------------
    -- Instancia del DUT
    --------------------------------------------------------------------------
    DUT: entity work.Subsistema_4
        port map (
            clk             => clk,
            reset_n         => reset_n,
            modo_1          => modo_1,
            modo_2          => modo_2,
            jugada_valida   => jugada_valida,
            gana_j1         => gana_j1,
            gana_j2         => gana_j2,
            empate          => empate,
            E_maquina       => E_maquina,
            e_tablero       => e_tablero,
            E_teclado       => E_teclado,
            modo_actual     => modo_actual,
            victoria_final  => victoria_final,
            resultado_final => resultado_final,
            hubo_ganador    => hubo_ganador,
            limpiar_tablero => limpiar_tablero,
            turno_jugador   => turno_jugador,
            inicio_partida  => inicio_partida
        );

    --------------------------------------------------------------------------
    -- Generador de clock
    --------------------------------------------------------------------------
    clock_gen : process
    begin
        while now < 8000 ns loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process;

    --------------------------------------------------------------------------
    -- Stimulus: 3 partidas (J1 win, J2 win, empate) - 2 jugadas válidas por partida
    --------------------------------------------------------------------------
    stim_proc: process
    begin
        -- RESET inicial
        reset_n <= '0';
        wait for 4 * CLK_PERIOD;
        reset_n <= '1';
        wait for 4 * CLK_PERIOD;

        -- Selecciono modo_1 (J1 vs J2). Si querés probar contra máquina, pon modo_2 <= '1' en vez de modo_1.
        modo_1 <= '1';
        modo_2 <= '0';
        wait for 2 * CLK_PERIOD;

        ------------------------------------------------------------------
        -- PARTIDA 1 -> GANA J1
        -- realizo 2 jugadas válidas para provocar alternancia de turno
        ------------------------------------------------------------------
        for i in 1 to 2 loop
            jugada_valida <= '1';
            wait for CLK_PERIOD;
            jugada_valida <= '0';
            wait for CLK_PERIOD;
        end loop;

        -- Indico ganador de la partida
        gana_j1 <= '1';
        wait for 2 * CLK_PERIOD;
        gana_j1 <= '0';
        wait for 3 * CLK_PERIOD;

        ------------------------------------------------------------------
        -- PARTIDA 2 -> GANA J2
        ------------------------------------------------------------------
        for i in 1 to 2 loop
            jugada_valida <= '1';
            wait for CLK_PERIOD;
            jugada_valida <= '0';
            wait for CLK_PERIOD;
        end loop;

        gana_j2 <= '1';
        wait for 2 * CLK_PERIOD;
        gana_j2 <= '0';
        wait for 3 * CLK_PERIOD;

        ------------------------------------------------------------------
        -- PARTIDA 3 -> EMPATE
        ------------------------------------------------------------------
        for i in 1 to 2 loop
            jugada_valida <= '1';
            wait for CLK_PERIOD;
            jugada_valida <= '0';
            wait for CLK_PERIOD;
        end loop;

        empate <= '1';
        wait for 2 * CLK_PERIOD;
        empate <= '0';
        wait for 4 * CLK_PERIOD;

        ------------------------------------------------------------------
        -- Dejamos tiempo para observar resultado_final y victoria_final
        ------------------------------------------------------------------
        wait for 200 ns;

        -- RESET final para comprobar que se vuelve al estado inicial
        reset_n <= '0';
        wait for 4 * CLK_PERIOD;
        reset_n <= '1';

        wait; -- fin simulación
    end process;

    --------------------------------------------------------------------------
    -- Monitoreo: report simple por flanco de reloj para ver señales clave
    -- Uso conversiones seguras: victoria_final -> entero (0..3)
    --------------------------------------------------------------------------
    monitor_proc: process(clk)
    begin
        if rising_edge(clk) then
            report "t=" & time'image(now)
                & " | inicio_partida=" & std_logic'image(inicio_partida)
                & " | turno=" & std_logic'image(turno_jugador)
                & " | hubo_ganador=" & std_logic'image(hubo_ganador)
                & " | resultado_final=" & std_logic'image(resultado_final)
                & " | victoria_final(dec)=" & integer'image(to_integer(unsigned(victoria_final)));
        end if;
    end process;

end tb;
