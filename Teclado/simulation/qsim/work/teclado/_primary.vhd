library verilog;
use verilog.vl_types.all;
entity teclado is
    port(
        R1              : in     vl_logic;
        R2              : in     vl_logic;
        R3              : in     vl_logic;
        R4              : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        C1              : out    vl_logic;
        C2              : out    vl_logic;
        C3              : out    vl_logic;
        C4              : out    vl_logic;
        Cout            : out    vl_logic_vector(3 downto 0);
        D1              : out    vl_logic_vector(3 downto 0);
        D2              : out    vl_logic_vector(3 downto 0);
        D3              : out    vl_logic_vector(3 downto 0);
        D4              : out    vl_logic_vector(3 downto 0);
        MS_1            : out    vl_logic_vector(0 to 3);
        MS_2            : out    vl_logic_vector(0 to 3);
        MS_3            : out    vl_logic_vector(0 to 3);
        MS_4            : out    vl_logic_vector(0 to 3)
    );
end teclado;
