library ieee;
use ieee.std_logic_1164.all;

entity tb_subsistema2 is
end tb_subsistema2;

architecture sim of tb_subsistema2 is

    component subsistema2esquematico
        port (
            inclk0 :  IN  STD_LOGIC;
				areset :  IN  STD_LOGIC;
				INICIO :  IN  STD_LOGIC;
				MV :  IN  STD_LOGIC;
				MINV :  IN  STD_LOGIC;
				TURNO :  IN  STD_LOGIC;
				VF :  IN  STD_LOGIC;
				VICTORIA :  IN  STD_LOGIC;
				EMPATE :  IN  STD_LOGIC;
				POSICION :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
				SC1 :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
				SC2 :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
				CERO :  OUT  STD_LOGIC;
				UNO :  OUT  STD_LOGIC;
				locked :  OUT  STD_LOGIC;
				Y :  OUT  STD_LOGIC
        );
    end component;

    signal  inclk0, areset, INICIO, MV, MINV, TURNO, VF, VICTORIA, EMPATE: std_logic := '0';
	 signal POSICION : std_logic_vector(3 DOWNTO 0) := "0000";
	 signal SC1, SC2 : STD_LOGIC_VECTOR(2 DOWNTO 0) := "000";
    signal CERO, UNO, locked, Y : std_logic;

	constant clock_period : time := 20ns ;
begin
    uut: subsistema2esquematico
        port map (
           inclk0 => inclk0,
				areset =>areset,
				INICIO =>INICIO,
				MV =>MV,
				MINV =>MINV,
				TURNO =>TURNO,
				VF =>VF,
				VICTORIA =>VICTORIA,
				EMPATE =>EMPATE ,
				POSICION =>POSICION,
				SC1 =>SC1,
				SC2 =>SC2,
				CERO =>CERO,
				UNO =>UNO,
				locked =>locked,
				Y=>Y
        );

	clock_process : process
		begin
			inclk0	<= '0' ;
			wait for clock_period/2;
			inclk0 <= '1' ;
			wait for clock_period/2;
	end process;
			
		  
    stim_proc: process
    begin
       SC1 <= "000"; SC2 <= "000"; POSICION <= "0000"; areset <= '0'; INICIO<= '0';  MV<= '0';  MINV<= '0';  TURNO<= '0';  VF<= '0'; VICTORIA<= '0'; EMPATE<= '0'; wait for 2ms;
       SC1 <= "000"; SC2 <= "000"; POSICION <= "0000"; areset <= '0'; INICIO<= '1';  MV<= '0';  MINV<= '0';  TURNO<= '0';  VF<= '0'; VICTORIA<= '0'; EMPATE<= '0'; wait for 2ms;
		 SC1 <= "000"; SC2 <= "000"; POSICION <= "0000"; areset <= '0'; INICIO<= '1';  MV<= '1';  MINV<= '0';  TURNO<= '0';  VF<= '0'; VICTORIA<= '0'; EMPATE<= '0'; wait for 2ms;
		 SC1 <= "000"; SC2 <= "000"; POSICION <= "0010"; areset <= '0'; INICIO<= '1';  MV<= '0';  MINV<= '0';  TURNO<= '1';  VF<= '0'; VICTORIA<= '0'; EMPATE<= '0'; wait for 2ms;
		 SC1 <= "000"; SC2 <= "000"; POSICION <= "0010"; areset <= '0'; INICIO<= '1';  MV<= '1';  MINV<= '0';  TURNO<= '1';  VF<= '0'; VICTORIA<= '0'; EMPATE<= '0'; wait for 2ms;
        wait;
    end process;

end sim;
