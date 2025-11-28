library ieee;
use ieee.std_logic_1164.all;

entity prueba2 is
	port(SC1 : OUT std_logic_vector(2 downto 0);
		  SC2 : out std_logic_vector(2 downto 0);
		  INICIO : OUT STD_LOGIC;
		  MV : OUT STD_LOGIC;
		  MINV : OUT STD_LOGIC;
		  TURNO : OUT std_logic;
		  VF : OUT std_logic_vector(1 downto 0);
		  POSICION : OUT std_logic_vector(3 downto 0);
		  VICTORIA : OUT std_logic;
		  EMPATE : OUT std_logiC
		  );
END prueba2;

architecture fnc of prueba2 is
	BEGIN
		  SC1 <= "011";
		  SC2 <= "101";
		  INICIO <= '1';
		  MV <= '0';
		  MINV <= '0';
		  TURNO <= '1';
		  VF <= "00";
		  POSICION <= "0000";
		  VICTORIA <= '1';
		  EMPATE <= '0';
	END;