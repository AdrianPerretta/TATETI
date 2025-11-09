library verilog;
use verilog.vl_types.all;
entity Block1_vlg_sample_tst is
    port(
        areset          : in     vl_logic;
        inclk0          : in     vl_logic;
        load            : in     vl_logic;
        parallel_in     : in     vl_logic_vector(383 downto 0);
        sampler_tx      : out    vl_logic
    );
end Block1_vlg_sample_tst;
