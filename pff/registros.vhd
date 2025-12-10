library ieee;
use ieee.std_logic_1164.all;

entity registros is
    port(
        clk     : in  std_logic;
        clear   : in  std_logic;                        -- reset síncrono
        estado_tablero_in  : in  std_logic_vector(17 downto 0);    -- entrada 18 bits
        coordenadas_in   : in  std_logic_vector(3 downto 0);     -- entrada 4 bits
        estado_tablero_out : out std_logic_vector(17 downto 0);    -- salida 18 bits
        coordenadas_out  : out std_logic_vector(3 downto 0)      -- salida 4 bits
    );
end entity;

architecture rtl of registros is
    signal reg18_s : std_logic_vector(17 downto 0) := (others => '0');
    signal reg4_s  : std_logic_vector(3 downto 0)  := (others => '0');
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if clear = '1' then
                reg18_s <= (others => '0');
                reg4_s  <= (others => '0');
            else
                reg18_s <= estado_tablero_in;
                reg4_s  <= coordenadas_in;
            end if;
        end if;
    end process;

    estado_tablero_out <= reg18_s;
    coordenadas_out  <= reg4_s;

end architecture;
