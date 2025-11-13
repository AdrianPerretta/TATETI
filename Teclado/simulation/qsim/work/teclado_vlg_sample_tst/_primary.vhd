library verilog;
use verilog.vl_types.all;
entity teclado_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        R1              : in     vl_logic;
        R2              : in     vl_logic;
        R3              : in     vl_logic;
        R4              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end teclado_vlg_sample_tst;
