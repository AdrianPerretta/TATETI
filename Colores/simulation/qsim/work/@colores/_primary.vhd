library verilog;
use verilog.vl_types.all;
entity Colores is
    port(
        SC1             : in     vl_logic_vector(2 downto 0);
        SC2             : in     vl_logic_vector(2 downto 0);
        INICIO          : in     vl_logic;
        MV              : in     vl_logic;
        MINV            : in     vl_logic;
        TURNO           : in     vl_logic;
        VF              : in     vl_logic;
        CLK             : in     vl_logic;
        POSICION        : in     vl_logic_vector(3 downto 0);
        colorj1         : out    vl_logic_vector(23 downto 0);
        colorj2         : out    vl_logic_vector(23 downto 0);
        VICTORIA        : in     vl_logic;
        EMPATE          : in     vl_logic;
        MATRIZ          : out    vl_logic_vector(383 downto 0);
        v2              : out    vl_logic_vector(1 downto 0);
        v1              : out    vl_logic_vector(1 downto 0)
    );
end Colores;
