library verilog;
use verilog.vl_types.all;
entity teclado_vlg_check_tst is
    port(
        C1              : in     vl_logic;
        C2              : in     vl_logic;
        C3              : in     vl_logic;
        C4              : in     vl_logic;
        fila_1_teclado  : in     vl_logic_vector(0 to 3);
        fila_2_teclado  : in     vl_logic_vector(0 to 3);
        fila_3_teclado  : in     vl_logic_vector(0 to 3);
        fila_4_teclado  : in     vl_logic_vector(0 to 3);
        tablero_juego   : in     vl_logic_vector(0 to 3);
        tecla_color_j1  : in     vl_logic_vector(0 to 1);
        tecla_color_j2  : in     vl_logic_vector(0 to 1);
        tecla_j1_vs_j2  : in     vl_logic;
        tecla_j_vs_mq   : in     vl_logic;
        tecla_reset     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end teclado_vlg_check_tst;
