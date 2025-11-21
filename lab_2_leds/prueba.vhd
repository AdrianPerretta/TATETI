library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity prueba is
  port (
    matriz : out std_logic_vector(383 downto 0)
	 );
end entity;

architecture cmm of prueba is
begin
  matriz(383 downto 0) <=x"7008E77008E77008E77008E77008E77008E77008E77008E77008E77008E77008E77008E77008E77008E77008E77008E7";
end architecture;