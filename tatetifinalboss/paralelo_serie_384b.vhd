library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity paralelo_serie_384b is
  port (
    clk         : in  std_logic;
    rst         : in  std_logic;                                     -- reset síncrono activo en '1'
    load        : in  std_logic;                                     -- carga paralela
    shift       : in  std_logic;                                     -- habilita el desplazamiento
    parallel_in : in  std_logic_vector(383 downto 0);                -- entrada paralela (384 bits)
    serial_out  : out std_logic                                      -- salida serie (MSB first)
  );
end entity;

architecture rtl of paralelo_serie_384b is
  signal shift_reg : std_logic_vector(383 downto 0) := (others => '0');
begin
  -- Salida serie = bit más significativo actual
  serial_out <= shift_reg(383);

  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        shift_reg <= (others => '0');
      elsif load = '1' then
        shift_reg <= parallel_in;                                    -- carga paralela
      elsif shift = '1' then
        shift_reg <= shift_reg(382 downto 0) & '0';                  -- desplazamiento (MSB -> serial_out)
      end if;
    end if;
  end process;
end architecture;
