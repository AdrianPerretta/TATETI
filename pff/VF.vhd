LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY VF IS
    PORT (
			V0 : in STD_LOGIC;
			V1 : in STD_LOGIC;
			VFINAL  : OUT STD_LOGIC_VECTOR(1 downto 0)
			);
end VF;

architecture BEHAVIOR OF VF is
	begin
		VFINAL <= V1 & V0;
	end;