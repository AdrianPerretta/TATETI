library verilog;
use verilog.vl_types.all;
entity Block1_vlg_check_tst is
    port(
        CERO            : in     vl_logic;
        locked          : in     vl_logic;
        pulso_384       : in     vl_logic;
        Q               : in     vl_logic;
        so              : in     vl_logic;
        UNO             : in     vl_logic;
        Y               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Block1_vlg_check_tst;
