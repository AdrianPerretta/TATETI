library ieee;
use ieee.std_logic_1164.all;

entity driver is
    port(
		  boton0 , boton1 ,boton2 ,boton3 ,boton4 : in std_logic;
		  reset : out std_logic;
        jvj : out std_logic;
		  clk : in std_logic;
		  jvm : out std_logic;
		  colores_j1 : out std_logic_vector (2 downto 0);
		  colores_j2 : out std_logic_vector (2 downto 0);
		  tablero : out std_logic_vector (3 downto 0)
    );
end driver;

architecture behaviour of driver is
    signal tablero_s : std_logic_vector (3 downto 0 );
	 signal colores_j1_s , colores_j2_s	 :   integer range 0 to 7 := 0 ;
	 signal boton : std_logic_vector (4 downto 0);
	 signal jvj_s, jvm_s, reset_s: std_logic:='0';
begin 
    process(boton, clk)
    begin
	 if rising_edge(clk) then
	 boton<=boton0 & boton1 & boton2 & boton3 & boton4 ;
        case boton  is
				when "10000" =>
				colores_j1_s<=colores_j1_s+1;
				
				when "10001" =>
				colores_j1_s<=colores_j1_s-1;
				
				when "10010" =>
				jvm_s<='1';
				
				when "10011" =>
            reset_s<='1';
				jvj_s<='0';
				
				when "10100" =>
				tablero_s<="0010";
				
				when "10101" =>
				tablero_s<="0101";
				
				when "10110" =>
				tablero_s<="1000";
				
				when "10111" =>
				jvj_s<='1';
				reset_s<='0';
				
				when "11000" =>
				tablero_s<="0001";
				
				when "11001" =>
				tablero_s<="0100";
				
				when "11010" =>
				tablero_s<="0111";
				
				when "11011" =>
				colores_j2_s<=colores_j2_s+1;
				
				when "11100" =>
				tablero_s<="0000";
				
				when "11101" =>
				tablero_s<="0011";
				
				when "11110" =>
				tablero_s<="0110";
				
				when "11111" =>
				colores_j2_s<=colores_j2_s-1;
				
				when "00000" =>
				tablero_s<="1001";
				when others=>
null;
				
				end case;
				end if;
    end process;
process(colores_j1_s,colores_j2_s)	
begin 
		case colores_j1_s is
			when 0 => colores_j1<="000";
			when 1 => colores_j1<="001";
			when 2 => colores_j1<="010";
			when 3 => colores_j1<="011";
			when 4 => colores_j1<="100";
			when 5 => colores_j1<="101";
			when 6 => colores_j1<="110";
			when 7 => colores_j1<="111";
		end case;
		case colores_j2_s is
			when 0 => colores_j2<="000";
			when 1 => colores_j2<="001";
			when 2 => colores_j2<="010";
			when 3 => colores_j2<="011";
			when 4 => colores_j2<="100";
			when 5 => colores_j2<="101";
			when 6 => colores_j2<="110";
			when 7 => colores_j2<="111";
		end case;
    end process;
	tablero<=tablero_s;
	jvj<=jvj_s;
	jvm<=jvm_s;
reset<=reset_s;
end behaviour;

