library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity coloress2 is
	port(SC1 : in std_logic_vector(2 downto 0);
		  SC2 : in std_logic_vector(2 downto 0);
		  INICIO : in std_logic;
		  MV : in std_logic;
		  MINV : in std_logic;
		  TURNO : in std_logic;
		  VF : in std_logic_vector(1 downto 0);
		  CLK : in std_logic;
		  POSICION : in std_logic_vector(3 downto 0);
		  VICTORIA : in std_logic;
		  EMPATE : in std_logic;
		  MATRIZ : out std_logic_vector(383 downto 0)
		  );
end coloress2;

architecture fnc of coloress2 is

signal CJ2, CJ1, D16, D15, D14, D13, D12, D11, D10, D9, D8, D7, D6, D5, D4, D3, D2, D1 : std_logic_vector(23 downto 0);
signal victoriacounter1, victoriacounter2, empatecounter1, empatecounter2, empategeneral : integer range 1 to 4 := 1;
signal bloqueo : std_logic := '0';
begin

process (SC1)
	begin
		if INICIO = '0' then
			case SC1 is
				when "000" => 
					CJ1 <= x"7008E7";
				when "001" => 
					CJ1 <= x"401577";
				when "010" => 
					CJ1 <= x"8C3BCC";
				when "01" => 
					CJ1 <= x"5A158E";
				when "100" => 
					CJ1 <= x"6821CB";
				when "101" => 
					CJ1 <= x"8A0194";
				when "110" => 
					CJ1 <= x"51157D";
				when "111" => 
					CJ1 <= x"2F0D68";
				when others =>
					null;
			end case;
		end if;
end process;
		
process (SC2)
	begin
		if INICIO = '0' then
			case SC2 is
				when "000" => 
					CJ2 <= x"FFDF20";
				when "001" => 
					CJ2 <= x"CCB222";
				when "010" => 
					CJ2 <= x"E3B340";
				when "011" => 
					CJ2 <= x"FF8904";
				when "100" => 
					CJ2 <= x"A94619";
				when "101" => 
					CJ2 <= x"E1712B";
				when "110" => 
					CJ2 <= x"B36E2B";
				when "111" => 
					CJ2 <= x"FEE685";
				when others =>
					null;
			end case;
		end if;
end process;

process (VICTORIA, EMPATE, VF, INICIO, CJ1, CJ2, CLK, MV)
begin
if rising_edge(CLK) then
	if INICIO = '1' then                                             --INICIO TURNO
		if TURNO = '1' then
			D1 <= CJ1;
		else 
			D1 <= CJ2;
		end if;
		if MINV = '1' then
			D1 <= x"FFFFFF";
		end if;                                                       -- FIN TURNO
		
		if MV = '1' then                                              --INICIO 3x3
			case Posicion is
				when "0000" =>
					if TURNO = '1' then
						D16 <= CJ1;
					else
						D16 <= CJ2;
					end if;
				when "0001" =>
					if TURNO = '1' then
						D12 <= CJ1;
					else
						D12 <= CJ2;
					end if;
				when "0010" =>
					if TURNO = '1' then
						D8 <= CJ1;
					else
						D8 <= CJ2;
					end if;
				when "0011" =>
					if TURNO = '1' then
						D15 <= CJ1;
					else
						D15 <= CJ2;
					end if;
				when "0100" =>
					if TURNO = '1' then
						D11 <= CJ1;
					else
						D11 <= CJ2;
					end if;
				when "0101" =>
					if TURNO = '1' then
						D7 <= CJ1;
					else
						D7 <= CJ2;
					end if;
				when "0110" =>
					if TURNO = '1' then
						D14 <= CJ1;
					else
						D14 <= CJ2;
					end if;
				when "0111" =>
					if TURNO = '1' then
						D10 <= CJ1;
					else
						D10 <= CJ2;
					end if;
				when "1000" =>
					if TURNO = '1' then
						D6 <= CJ1;
					else
						D6 <= CJ2;
					end if;
				when others =>
					null;
			end case;
	end if;
	else
		D16 <= x"000000";
		D12 <= x"000000";
		D8 <= x"000000";
		D15 <= x"000000";
		D11 <= x"000000";
		D7 <= x"000000";
		D14 <= x"000000";
		D10 <= x"000000";
		D6 <= x"000000";
	end if;                                                                  -- FIN  3x3
	

	if INICIO = '0' then                                                     --INICIO PUNTUACION JUGADORES
		D4 <= CJ1;
		D3 <= CJ1;
		D2 <= CJ1;
		D13 <= CJ2;
		D9 <= CJ2;
		D5 <= CJ2;
	else
		if bloqueo = '0' then
			D4 <= x"000000";
			D3 <= x"000000";
			D2 <= x"000000";
			D13 <= x"000000";
			D9 <= x"000000";
			D5 <= x"000000";
			bloqueo <= '1';
		end if;
	end if;
	if VICTORIA = '1' then
		if TURNO = '1' then
			case victoriacounter1 is
				when 1 =>
					D4 <= CJ1;
				when 2 =>
					D3 <= CJ1;
				when 3 =>
					D2 <= CJ1;
				when 4 =>
					null;
			end case;
			victoriacounter1 <= victoriacounter1+1;
			empatecounter1 <= victoriacounter1+1;
		end if;
		if TURNO = '0' then
			case victoriacounter2 is
				when 1 =>
					D13 <= CJ2;
				when 2 =>
					D9 <= CJ2;
				when 3 =>
					D5 <= CJ2;
				when 4 =>
					null;
			end case;
			victoriacounter2 <= victoriacounter2+1;
			empatecounter2 <= victoriacounter2+1;
		end if;
	end if;
	
	if EMPATE = '1' then 
		case empatecounter1 is
			when 1 =>
				D4 <= x"FFFFFF";
			when 2 =>
				D3 <= x"FFFFFF";
			when 3 =>
				D2 <= x"FFFFFF";
			when 4 =>
				null;
		end case;
		case empatecounter2 is
			when 1 =>
				D13 <= x"FFFFFF";
			when 2 =>
				D9 <= x"FFFFFF";
			when 3 =>
				D5 <= x"FFFFFF";
			when 4 =>
				null;
		end case;
		empategeneral <= empategeneral+1;
		victoriacounter1 <= victoriacounter1+1;
		victoriacounter2 <= victoriacounter2+1;
	end if;                                                              --FIN PUNTUACION JUGADORES
	   
                                                --INICIO VICTORIA FINAL
	if VF = "01" then
		D13 <= x"004E68";
		D9 <= x"FFFFFF";
		D5 <= x"EF4135";
		D4 <= CJ1;
		D3 <= CJ1;
		D2 <= CJ1;
		victoriacounter1 <= 1;
		victoriacounter2 <= 1;
		empatecounter1 <= 1;
		empatecounter2 <= 1;
		empategeneral <= 1;
		bloqueo <= '0';
	end if;
	if VF = "10" then
		D4 <= x"004E68";
		D3 <= x"FFFFFF";
		D2 <= x"EF4135";
		D13 <= CJ2;
		D9 <= CJ2;
		D5 <= CJ2;
		victoriacounter1 <= 1;
		victoriacounter2 <= 1;
		empatecounter1 <= 1;
		empatecounter2 <= 1;
		empategeneral <= 1;
		bloqueo <= '0';
	end if;
	if VF = "11" then
		D13 <= x"FFFFFF";
		D9 <= x"FFFFFF";
		D5 <= x"FFFFFF";
		D4 <= x"FFFFFF";
		D3 <= x"FFFFFF";
		D2 <= x"FFFFFF";
		D16 <= x"FFFFFF";
		D12 <= x"FFFFFF";
		D8 <= x"FFFFFF";
		D15 <= x"FFFFFF";
		D11 <= x"FFFFFF";
		D7 <= x"FFFFFF";
		D14 <= x"FFFFFF";
		D10 <= x"FFFFFF";
		D6 <= x"FFFFFF";
		victoriacounter1 <= 1;
		victoriacounter2 <= 1;
		empatecounter1 <= 1;
		empatecounter2 <= 1;
		empategeneral <= 1;
		bloqueo <= '0';
	end if;                                                             --FIN VICTORIA FINAL
end if;
end process;
MATRIZ(383 downto 360)<=D16;
MATRIZ(359 downto 336)<=D15;
MATRIZ(335 downto 312)<=D14;
MATRIZ(311 downto 288)<=D13;
MATRIZ(287 downto 264)<=D12;
MATRIZ(263 downto 240)<=D11;
MATRIZ(239 downto 216)<=D10;
MATRIZ(215 downto 192)<=D9;
MATRIZ(191 downto 168)<=D8;
MATRIZ(167 downto 144)<=D7;
MATRIZ(143 downto 120)<=D6;
MATRIZ(119 downto 96)<=D5;
MATRIZ(95 downto 72)<=D4;
MATRIZ(71 downto 48)<=D3;
MATRIZ(47 downto 24)<=D2;
MATRIZ(23 downto 0)<=D1;
end;