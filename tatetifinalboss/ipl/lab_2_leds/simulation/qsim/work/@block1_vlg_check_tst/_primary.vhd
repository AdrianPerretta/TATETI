library verilog;
use verilog.vl_types.all;
entity Block1_vlg_check_tst is
    port(
        locked          : in     vl_logic;
        pin_name1       : in     vl_logic;
        Y               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Block1_vlg_check_tst;
