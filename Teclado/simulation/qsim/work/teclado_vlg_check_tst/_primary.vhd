library verilog;
use verilog.vl_types.all;
entity teclado_vlg_check_tst is
    port(
        C1              : in     vl_logic;
        C2              : in     vl_logic;
        C3              : in     vl_logic;
        C4              : in     vl_logic;
        Cout            : in     vl_logic_vector(3 downto 0);
        D1              : in     vl_logic_vector(3 downto 0);
        D2              : in     vl_logic_vector(3 downto 0);
        D3              : in     vl_logic_vector(3 downto 0);
        D4              : in     vl_logic_vector(3 downto 0);
        MS_1            : in     vl_logic_vector(0 to 3);
        MS_2            : in     vl_logic_vector(0 to 3);
        MS_3            : in     vl_logic_vector(0 to 3);
        MS_4            : in     vl_logic_vector(0 to 3);
        sampler_rx      : in     vl_logic
    );
end teclado_vlg_check_tst;
