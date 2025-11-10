library ieee;
use ieee.std_logic_1164.all;

entity tb_multi_2b_cs is
end tb_multi_2b_cs;

architecture sim of tb_multi_2b_cs is

    component multi_2b_cs
        port (
            A0, A1, B0, B1, CK : in std_logic;
            r0, r1, r2, r3, V1, V2 : out std_logic
        );
    end component;

    signal A0, A1, B0, B1, CK : std_logic := '0';
    signal r0, r1, r2, r3, V1, V2 : std_logic;

	constant clock_period : time := 10ns ;
begin
    uut: multi_2b_cs
        port map (
            A0 => A0,
            A1 => A1,
            B0 => B0,
            B1 => B1,
            r0 => r0,
            r1 => r1,
            r2 => r2,
            r3 => r3,
				CK => CK,
				V1 => V1,
				V2 => V2
				
        );

	clock_process : process
		begin
			CK	<= '0' ;
			wait for clock_period/2;
			CK <= '1' ;
			wait for clock_period/2;
	end process;
			
		  
    stim_proc: process
    begin
        A0 <= '0'; A1 <= '0'; B0 <= '0'; B1 <= '0'; wait for 20 ns;
        A0 <= '1'; A1 <= '0'; B0 <= '0'; B1 <= '0'; wait for 20 ns;
        A0 <= '0'; A1 <= '1'; B0 <= '0'; B1 <= '0'; wait for 20 ns;
        A0 <= '1'; A1 <= '1'; B0 <= '0'; B1 <= '0'; wait for 20 ns;
        A0 <= '0'; A1 <= '0'; B0 <= '1'; B1 <= '0'; wait for 20 ns;
        A0 <= '1'; A1 <= '0'; B0 <= '1'; B1 <= '0'; wait for 20 ns;
        A0 <= '0'; A1 <= '1'; B0 <= '1'; B1 <= '0'; wait for 20 ns;
        A0 <= '1'; A1 <= '1'; B0 <= '1'; B1 <= '0'; wait for 20 ns;
        A0 <= '0'; A1 <= '0'; B0 <= '0'; B1 <= '1'; wait for 20 ns;
        A0 <= '1'; A1 <= '0'; B0 <= '0'; B1 <= '1'; wait for 20 ns;
        A0 <= '0'; A1 <= '1'; B0 <= '0'; B1 <= '1'; wait for 20 ns;
        A0 <= '1'; A1 <= '1'; B0 <= '0'; B1 <= '1'; wait for 20 ns;
        A0 <= '0'; A1 <= '0'; B0 <= '1'; B1 <= '1'; wait for 20 ns;
        A0 <= '1'; A1 <= '0'; B0 <= '1'; B1 <= '1'; wait for 20 ns;
        A0 <= '0'; A1 <= '1'; B0 <= '1'; B1 <= '1'; wait for 20 ns;
        A0 <= '1'; A1 <= '1'; B0 <= '1'; B1 <= '1'; wait for 20 ns;
        wait;
    end process;

end sim;
