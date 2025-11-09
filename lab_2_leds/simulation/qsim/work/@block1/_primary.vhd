library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        locked          : out    vl_logic;
        inclk0          : in     vl_logic;
        areset          : in     vl_logic;
        Y               : out    vl_logic;
        load            : in     vl_logic;
        parallel_in     : in     vl_logic_vector(383 downto 0);
        CERO            : out    vl_logic;
        UNO             : out    vl_logic;
        pulso_384       : out    vl_logic;
        Q               : out    vl_logic;
        so              : out    vl_logic
    );
end Block1;
