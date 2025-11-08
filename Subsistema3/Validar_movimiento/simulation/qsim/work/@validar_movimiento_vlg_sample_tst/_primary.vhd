library verilog;
use verilog.vl_types.all;
entity Validar_movimiento_vlg_sample_tst is
    port(
        coordenada      : in     vl_logic_vector(3 downto 0);
        estado_tablero  : in     vl_logic_vector(17 downto 0);
        sampler_tx      : out    vl_logic
    );
end Validar_movimiento_vlg_sample_tst;
