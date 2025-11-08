library verilog;
use verilog.vl_types.all;
entity Validar_movimiento is
    port(
        coordenada      : in     vl_logic_vector(3 downto 0);
        estado_tablero  : in     vl_logic_vector(17 downto 0);
        movimiento_valido: out    vl_logic;
        movimiento_invalido: out    vl_logic
    );
end Validar_movimiento;
