library verilog;
use verilog.vl_types.all;
entity teclado is
    port(
        R1              : in     vl_logic;
        R2              : in     vl_logic;
        R3              : in     vl_logic;
        R4              : in     vl_logic;
        clk             : in     vl_logic;
        C1              : out    vl_logic;
        C2              : out    vl_logic;
        C3              : out    vl_logic;
        C4              : out    vl_logic;
        fila_1_teclado  : out    vl_logic_vector(0 to 3);
        fila_2_teclado  : out    vl_logic_vector(0 to 3);
        fila_3_teclado  : out    vl_logic_vector(0 to 3);
        fila_4_teclado  : out    vl_logic_vector(0 to 3);
        tablero_juego   : out    vl_logic_vector(0 to 3);
        tecla_reset     : out    vl_logic;
        tecla_j1_vs_j2  : out    vl_logic;
        tecla_j_vs_mq   : out    vl_logic;
        tecla_color_j1  : out    vl_logic_vector(0 to 1);
        tecla_color_j2  : out    vl_logic_vector(0 to 1)
    );
end teclado;
