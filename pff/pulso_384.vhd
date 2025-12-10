library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pulso_384 is
    port(
        clk   : in  std_logic;
        hab : in  std_logic;
        start : in  std_logic;
        pulso : out std_logic
    );
end entity;

architecture rtl of pulso_384 is
    signal count  : unsigned(8 downto 0) := (others => '0');  -- cuenta de 0 a 383
	 signal strt : std_logic :='1';
begin

    process(clk, hab)
    begin
        if hab = '1' then
            count  <= (others => '0');
            pulso  <= '0';
				strt <= '1';

        elsif rising_edge(clk) then
			

            if start = '1' then
					if count < 384 and strt = '1' then
                    count <= count + 1;
                    pulso <= '1';

                else
                    pulso  <= '0';
						  count  <= (others => '0');
						  strt <= '0';  -- vuelve a espera
 					 end if;
					 end if;
					 end if;
    end process;
end architecture;
