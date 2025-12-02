library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity driver is
    Port (

        sc1i : in STD_LOGIC;  -- salidas de prueba
		  sc2i : in STD_LOGIC;
		  sc1o : out STD_LOGIC_VECTOR(2 downto 0);
		  sc2o : out STD_LOGIC_VECTOR(2 downto 0)
    );
end driver;

architecture Behavioral of driver is

begin

    -------------------------------------------------------------------------
    --   PROCESO PRINCIPAL: contador de 2 segundos y avance de pasos
    -------------------------------------------------------------------------
    process(sc1i,sc2i)
	 begin
							if sc1i = '1' then
								sc1o <= "000";
								end if;
							if sc1i = '0' then
								sc1o <= "011";
								end if;
							if sc2i = '1' then
								sc2o <= "000";
								end if;
							if sc2i = '0' then
								sc2o <= "110";
								end if;
               
    end process;
	 
end;