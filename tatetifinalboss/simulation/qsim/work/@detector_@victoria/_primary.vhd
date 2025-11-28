library verilog;
use verilog.vl_types.all;
entity Detector_Victoria is
    port(
        estado_tablero  : in     vl_logic_vector(17 downto 0);
        victoria_j1     : out    vl_logic;
        victoria_j2     : out    vl_logic;
        empate          : out    vl_logic
    );
end Detector_Victoria;
