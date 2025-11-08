library verilog;
use verilog.vl_types.all;
entity Colores_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        EMPATE          : in     vl_logic;
        INICIO          : in     vl_logic;
        MINV            : in     vl_logic;
        MV              : in     vl_logic;
        POSICION        : in     vl_logic_vector(3 downto 0);
        SC1             : in     vl_logic_vector(2 downto 0);
        SC2             : in     vl_logic_vector(2 downto 0);
        TURNO           : in     vl_logic;
        VF              : in     vl_logic;
        VICTORIA        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Colores_vlg_sample_tst;
