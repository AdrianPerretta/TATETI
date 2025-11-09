library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pulso_24 is
    port(
        clk   : in  std_logic;
        reset : in  std_logic;
        start : in  std_logic;
        pulso : out std_logic
    );
end entity;

architecture rtl of pulso_24 is
    signal count  : unsigned(4 downto 0) := (others => '0');  -- cuenta de 0 a 23
    signal activo : std_logic := '0';
begin

    process(clk, reset)
    begin
        if reset = '1' then
            count  <= (others => '0');
            activo <= '0';
            pulso  <= '0';

        elsif rising_edge(clk) then

            if activo = '0' then
                -- Espera el disparo
                if start = '1' then
                    activo <= '1';
                    count  <= (others => '0');
                    pulso  <= '1';
                else
                    pulso <= '0';
                end if;

            else
                -- Ya está contando los 24 ciclos
                if count < 23 then
                    count <= count + 1;
                    pulso <= '1';
                else
                    pulso  <= '0';
                    activo <= '0';  -- vuelve a modo espera
                end if;
            end if;

        end if;
    end process;

end architecture;
