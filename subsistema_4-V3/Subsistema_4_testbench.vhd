---------------------------------------------------------------------------------- 
-- Testbench para el Subsistema 4 - TATETÍ Digital
-- Simula tres partidas: gana J1, gana J2 y Empate
-- Alternancia de turnos: 2 jugadas válidas por partida
-- Autor: Lautaro Tomás Maure
-- Fecha: 13/11/2025
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Subsistema_4_testbench is
end Subsistema_4_testbench;

architecture tb of Subsistema_4_testbench is

    -- Señales del DUT
    signal clk            : std_logic := '0';
    signal reset_n        : std_logic := '0';
    signal confirmar_modo : std_logic := '0';
    signal pulso_jugada   : std_logic := '0';
    signal jugada_valida  : std_logic := '0';
    signal fin_juego      : std_logic := '0';
    signal gana_j1        : std_logic := '0';
    signal gana_j2        : std_logic := '0';
    signal empate         : std_logic := '0';

    -- Salidas
    signal E_maquina, e_tablero, E_teclado : std_logic;
    signal modo_actual, resultado_final, limpiar_tablero : std_logic;
    signal puntos_j1, puntos_j2, victoria_final : std_logic_vector(1 downto 0);
    signal turno_jugador : std_logic;
    signal inicio_partida : std_logic;

    constant CLK_PERIOD : time := 10 ns;

begin

    --------------------------------------------------------------------------
    -- Instancia del DUT
    --------------------------------------------------------------------------
    DUT: entity work.Subsistema_4
        port map (
            clk             => clk,
            reset_n         => reset_n,
            confirmar_modo  => confirmar_modo,
            pulso_jugada    => pulso_jugada,
            jugada_valida   => jugada_valida,
            fin_juego       => fin_juego,
            gana_j1         => gana_j1,
            gana_j2         => gana_j2,
            empate          => empate,
            E_maquina       => E_maquina,
            e_tablero       => e_tablero,
            E_teclado       => E_teclado,
            modo_actual     => modo_actual,
            puntos_j1       => puntos_j1,
            puntos_j2       => puntos_j2,
            victoria_final  => victoria_final,
            resultado_final => resultado_final,
            limpiar_tablero => limpiar_tablero,
            turno_jugador   => turno_jugador,
            inicio_partida  => inicio_partida
        );

    --------------------------------------------------------------------------
    -- Generador de clock
    --------------------------------------------------------------------------
    clock_gen : process
    begin
        while now < 5000 ns loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process;

    --------------------------------------------------------------------------
    -- Estímulos
    --------------------------------------------------------------------------
    stim_proc : process
    begin

        -----------------------------
        -- RESET INICIAL
        -----------------------------
        reset_n <= '0';
        wait for 3*CLK_PERIOD;
        reset_n <= '1';
        wait for 3*CLK_PERIOD;

        -----------------------------
        -- MODO DE JUEGO
        -----------------------------
        confirmar_modo <= '1';
        wait for CLK_PERIOD;
        confirmar_modo <= '0';
        wait for 3*CLK_PERIOD;

        ----------------------------------------------------------------------
        -- PARTIDA 1 → GANA J1
        ----------------------------------------------------------------------
        for i in 1 to 2 loop
            pulso_jugada  <= '1';
            jugada_valida <= '1';
            wait for CLK_PERIOD;

            pulso_jugada  <= '0';
            jugada_valida <= '0';
            wait for CLK_PERIOD;
        end loop;

        gana_j1   <= '1';
        fin_juego <= '1';
        wait for 2*CLK_PERIOD;

        gana_j1   <= '0';
        fin_juego <= '0';
        wait for 3*CLK_PERIOD;

        wait for 50 ns;

        ----------------------------------------------------------------------
        -- PARTIDA 2 → GANA J2
        ----------------------------------------------------------------------
        for i in 1 to 2 loop
            pulso_jugada  <= '1';
            jugada_valida <= '1';
            wait for CLK_PERIOD;

            pulso_jugada  <= '0';
            jugada_valida <= '0';
            wait for CLK_PERIOD;
        end loop;

        gana_j2   <= '1';
        fin_juego <= '1';
        wait for 2*CLK_PERIOD;

        gana_j2   <= '0';
        fin_juego <= '0';
        wait for 3*CLK_PERIOD;

        wait for 50 ns;

        ----------------------------------------------------------------------
        -- PARTIDA 3 → EMPATE
        ----------------------------------------------------------------------
        for i in 1 to 2 loop
            pulso_jugada  <= '1';
            jugada_valida <= '1';
            wait for CLK_PERIOD;

            pulso_jugada  <= '0';
            jugada_valida <= '0';
            wait for CLK_PERIOD;
        end loop;

        empate    <= '1';
        fin_juego <= '1';
        wait for 2*CLK_PERIOD;

        empate    <= '0';
        fin_juego <= '0';
        wait for 3*CLK_PERIOD;

        -----------------------------
        -- RESET FINAL
        -----------------------------
        wait for 50 ns;
        reset_n <= '0';
        wait for 2*CLK_PERIOD;
        reset_n <= '1';

        wait;
    end process;

end tb;
