library verilog;
use verilog.vl_types.all;
entity Detector_Victoria_vlg_sample_tst is
    port(
        estado_tablero  : in     vl_logic_vector(17 downto 0);
        sampler_tx      : out    vl_logic
    );
end Detector_Victoria_vlg_sample_tst;
