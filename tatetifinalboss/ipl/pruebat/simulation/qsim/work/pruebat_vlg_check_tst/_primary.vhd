library verilog;
use verilog.vl_types.all;
entity pruebat_vlg_check_tst is
    port(
        J1vJ2           : in     vl_logic;
        J1vM            : in     vl_logic;
        reset           : in     vl_logic;
        sc1             : in     vl_logic_vector(2 downto 0);
        sc2             : in     vl_logic_vector(2 downto 0);
        tablero_juego   : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end pruebat_vlg_check_tst;
