library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        locked          : out    vl_logic;
        inclk0          : in     vl_logic;
        areset          : in     vl_logic;
        Y               : out    vl_logic;
        load            : in     vl_logic;
        frecuencialed   : out    vl_logic
    );
end Block1;
