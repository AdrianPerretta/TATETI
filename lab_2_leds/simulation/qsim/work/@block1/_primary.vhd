library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        locked          : out    vl_logic;
        inclk0          : in     vl_logic;
        areset          : in     vl_logic;
        Y               : out    vl_logic;
        load            : in     vl_logic;
        data            : in     vl_logic_vector(23 downto 0);
        CERO            : out    vl_logic;
        UNO             : out    vl_logic
    );
end Block1;
