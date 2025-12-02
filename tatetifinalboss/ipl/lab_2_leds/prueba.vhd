library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity prueba is
  port (
    matriz : out std_logic_vector(383 downto 0);
	 l : in std_logic 
	 );
end entity;

architecture cmm of prueba is
begin
process (l)
begin
	if l='0' then
  matriz(383 downto 0) <=x"111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
  else
  matriz(383 downto 0) <=x"927562817292189386857280928914786879298483783278912947385694286389137497538893468329865787253857";
	end if;
	end process;
  end architecture;