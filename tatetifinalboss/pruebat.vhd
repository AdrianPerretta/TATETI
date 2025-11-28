library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pruebat is
    Port (
        clk  : in  STD_LOGIC;      -- clock de 1 kHz
        tablero_juego : out STD_LOGIC_VECTOR(3 downto 0);  -- salidas de prueba
		  reset : out STD_LOGIC; 
		  sc1 : out STD_LOGIC_VECTOR(2 downto 0);
		  sc2 : out STD_LOGIC_VECTOR(2 downto 0);
		  J1vJ2 : out STD_LOGIC;
		  turno: out std_logic; 
		  J1vM : out STD_LOGIC
    );
end pruebat;

architecture Behavioral of pruebat is

    -- Cuenta 2 segundos (2000 ciclos de 1 kHz)
    constant CUENTA_2S : unsigned(10 downto 0) := to_unsigned(1999, 11);

    signal contador_2s : unsigned(10 downto 0) := (others => '0');

    -- Variable interna que va cambiando cada 2 segundos
    -- 12 segundos → 6 pasos (0 a 5)
    signal cambio_entrada : unsigned(3 downto 0) := (others => '0');

begin

    -------------------------------------------------------------------------
    --   PROCESO PRINCIPAL: contador de 2 segundos y avance de pasos
    -------------------------------------------------------------------------
    proceso_clk : process(clk)
    begin
        if rising_edge(clk) then
            
            -- contador 2 segundos
            if contador_2s = CUENTA_2S then
                contador_2s <= (others => '0');

                -- avanza un paso cada 2 segundos
                if cambio_entrada < 5 then
                    cambio_entrada <= cambio_entrada + 1;
                end if;

            else
                contador_2s <= contador_2s + 1;
            end if;

        end if;
    end process;
	 
	 process(cambio_entrada)
begin
    case cambio_entrada is
        when "0000" =>
				tablero_juego <= "0000";
				reset <= '1';
				sc1 <= "000";
				sc2 <= "101";
				J1vJ2 <= '0';
				J1vM <= '0';
				turno <= '0';
		---------------	jugadas	
        when "0001" =>
				tablero_juego <= "0000";
				reset <= '1';
				sc1 <= "010";
				sc2 <= "111";
				J1vJ2 <= '0';
				J1vM <= '0';
				turno <= '1';

        when "0010" =>
            tablero_juego <= "0001";
				reset <= '1';
				sc1 <= "001";
				sc2 <= "110";
				J1vJ2 <= '0';
				J1vM <= '0';
				turno <= '1';
        when "0011" =>
            tablero_juego <= "0010";
				reset <= '1';
				sc1 <= "001";
				sc2 <= "110";
				J1vJ2 <= '0';
				J1vM <= '0';
				turno <= '1';
				 when "0100" =>
            tablero_juego <= "0010";
				reset <= '1';
				sc1 <= "001";
				sc2 <= "110";
				J1vJ2 <= '1';
				J1vM <= '0';
				turno <= '1';


when others => null;
    end case;
end process;
end;