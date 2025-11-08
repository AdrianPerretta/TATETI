library verilog;
use verilog.vl_types.all;
entity Colores_vlg_check_tst is
    port(
        colorj1         : in     vl_logic_vector(23 downto 0);
        colorj2         : in     vl_logic_vector(23 downto 0);
        MATRIZ          : in     vl_logic_vector(383 downto 0);
        v1              : in     vl_logic_vector(1 downto 0);
        v2              : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end Colores_vlg_check_tst;
