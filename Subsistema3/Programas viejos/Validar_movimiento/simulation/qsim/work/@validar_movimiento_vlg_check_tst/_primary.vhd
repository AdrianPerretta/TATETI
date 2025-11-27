library verilog;
use verilog.vl_types.all;
entity Validar_movimiento_vlg_check_tst is
    port(
        movimiento_invalido: in     vl_logic;
        movimiento_valido: in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Validar_movimiento_vlg_check_tst;
