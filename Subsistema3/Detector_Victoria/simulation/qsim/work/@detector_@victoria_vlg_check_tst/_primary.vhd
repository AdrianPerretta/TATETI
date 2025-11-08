library verilog;
use verilog.vl_types.all;
entity Detector_Victoria_vlg_check_tst is
    port(
        empate          : in     vl_logic;
        victoria_j1     : in     vl_logic;
        victoria_j2     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Detector_Victoria_vlg_check_tst;
