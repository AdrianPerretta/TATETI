library verilog;
use verilog.vl_types.all;
entity paralelo_serie_384b_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        load            : in     vl_logic;
        parallel_in     : in     vl_logic_vector(383 downto 0);
        rst             : in     vl_logic;
        shift           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end paralelo_serie_384b_vlg_sample_tst;
