library verilog;
use verilog.vl_types.all;
entity pruebat is
    port(
        clk             : in     vl_logic;
        tablero_juego   : out    vl_logic_vector(3 downto 0);
        reset           : out    vl_logic;
        sc1             : out    vl_logic_vector(2 downto 0);
        sc2             : out    vl_logic_vector(2 downto 0);
        J1vJ2           : out    vl_logic;
        J1vM            : out    vl_logic
    );
end pruebat;
