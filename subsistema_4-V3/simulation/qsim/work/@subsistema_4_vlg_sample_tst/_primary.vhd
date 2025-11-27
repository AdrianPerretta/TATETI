library verilog;
use verilog.vl_types.all;
entity Subsistema_4_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        confirmar_modo  : in     vl_logic;
        empate          : in     vl_logic;
        fin_juego       : in     vl_logic;
        gana_j1         : in     vl_logic;
        gana_j2         : in     vl_logic;
        jugada_valida   : in     vl_logic;
        pulso_jugada    : in     vl_logic;
        reset_n         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Subsistema_4_vlg_sample_tst;
