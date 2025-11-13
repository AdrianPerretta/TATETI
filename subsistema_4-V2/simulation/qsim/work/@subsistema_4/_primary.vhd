library verilog;
use verilog.vl_types.all;
entity Subsistema_4 is
    port(
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        confirmar_modo  : in     vl_logic;
        pulso_jugada    : in     vl_logic;
        jugada_valida   : in     vl_logic;
        fin_juego       : in     vl_logic;
        gana_j1         : in     vl_logic;
        gana_j2         : in     vl_logic;
        empate          : in     vl_logic;
        E_maquina       : out    vl_logic;
        e_tablero       : out    vl_logic;
        E_teclado       : out    vl_logic;
        modo_actual     : out    vl_logic;
        puntos_j1       : out    vl_logic_vector(1 downto 0);
        puntos_j2       : out    vl_logic_vector(1 downto 0);
        victoria_final  : out    vl_logic_vector(1 downto 0);
        resultado_final : out    vl_logic;
        limpiar_tablero : out    vl_logic
    );
end Subsistema_4;
