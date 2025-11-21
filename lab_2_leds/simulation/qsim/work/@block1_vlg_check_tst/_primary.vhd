library verilog;
use verilog.vl_types.all;
entity Block1_vlg_check_tst is
    port(
        frecuencialed   : in     vl_logic;
        locked          : in     vl_logic;
        Y               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Block1_vlg_check_tst;
