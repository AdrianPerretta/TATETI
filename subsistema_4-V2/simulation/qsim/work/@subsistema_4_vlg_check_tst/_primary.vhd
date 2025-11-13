library verilog;
use verilog.vl_types.all;
entity Subsistema_4_vlg_check_tst is
    port(
        E_maquina       : in     vl_logic;
        e_tablero       : in     vl_logic;
        E_teclado       : in     vl_logic;
        limpiar_tablero : in     vl_logic;
        modo_actual     : in     vl_logic;
        puntos_j1       : in     vl_logic_vector(1 downto 0);
        puntos_j2       : in     vl_logic_vector(1 downto 0);
        resultado_final : in     vl_logic;
        victoria_final  : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end Subsistema_4_vlg_check_tst;
