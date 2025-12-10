library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Detector_Victoria is
    Port (
        estado_tablero : in  STD_LOGIC_VECTOR(17 downto 0);
        victoria_j1  : out STD_LOGIC; -- '1' si el Jugador 1 ganó
        victoria_j2  : out STD_LOGIC; -- '1' si el Jugador 2 ganó
        empate : out STD_LOGIC  -- '1' si hay empate
        );
end entity;

architecture comportamiento of Detector_Victoria is
    constant vacio  : STD_LOGIC_VECTOR(1 downto 0) := "00";    -- Las mismas constantes de siempre
    constant jugador1 : STD_LOGIC_VECTOR(1 downto 0) := "01";
    constant jugador2 : STD_LOGIC_VECTOR(1 downto 0) := "10";
    
    signal P0, P1, P2, P3, P4, P5, P6, P7, P8 : STD_LOGIC_VECTOR(1 DOWNTO 0):="00"; -- Cada posiciones
    signal s_victoria_j1, s_victoria_j2 : STD_LOGIC:='0';
    signal s_tablero_lleno : STD_LOGIC:='0';
	 signal s_hay_ganador : STD_LOGIC :='0';

Begin 
    P0 <= estado_tablero(1 downto 0); -- Cada posicion tiene 2 bits
    P1 <= estado_tablero(3 downto 2);
    P2 <= estado_tablero(5 downto 4);
    P3 <= estado_tablero(7 downto 6);
    P4 <= estado_tablero(9 downto 8);
    P5 <= estado_tablero(11 downto 10);
    P6 <= estado_tablero(13 downto 12);
    P7 <= estado_tablero(15 downto 14);
    P8 <= estado_tablero(17 downto 16);
    
                         -- VICTORIA J1 --
    s_victoria_j1 <= '1' when (
        -- Filas
        (P0 = jugador1 AND P1 = jugador1 AND P2 = jugador1) OR 
        (P3 = jugador1 AND P4 = jugador1 AND P5 = jugador1) OR 
        (P6 = jugador1 AND P7 = jugador1 AND P8 = jugador1) OR 
        -- Columnas
        (P0 = jugador1 AND P3 = jugador1 AND P6 = jugador1) OR 
        (P1 = jugador1 AND P4 = jugador1 AND P7 = jugador1) OR 
        (P2 = jugador1 AND P5 = jugador1 AND P8 = jugador1) OR 
        -- Diagonales
        (P0 = jugador1 AND P4 = jugador1 AND P8 = jugador1) OR -- Diagonal Principal
        (P2 = jugador1 AND P4 = jugador1 AND P6 = jugador1)    -- Diagonal Secundaria
         ) else '0';

                        -- VICTORIA J2 --
    s_victoria_j2 <= '1' when (
        -- Filas
        (P0 = jugador2 AND P1 = jugador2 AND P2 = jugador2) OR 
        (P3 = jugador2 AND P4 = jugador2 AND P5 = jugador2) OR 
        (P6 = jugador2 AND P7 = jugador2 AND P8 = jugador2) OR 
        -- Columnas
        (P0 = jugador2 AND P3 = jugador2 AND P6 = jugador2) OR 
        (P1 = jugador2 AND P4 = jugador2 AND P7 = jugador2) OR 
        (P2 = jugador2 AND P5 = jugador2 AND P8 = jugador2) OR 
        -- Diagonales
        (P0 = jugador2 AND P4 = jugador2 AND P8 = jugador2) OR -- Diagonal Principal
        (P2 = jugador2 AND P4 = jugador2 AND P6 = jugador2)    -- Diagonal Secundaria
        ) else '0';
    
                           -- EMPATE --
s_tablero_lleno <= '1' when (
	P0 /= vacio AND P1 /= vacio AND P2 /= vacio AND        
	P3 /= vacio AND P4 /= vacio AND P5 /= vacio AND
	P6 /= vacio AND P7 /= vacio AND P8 /= vacio
	) else '0';
s_hay_ganador <= s_victoria_j1 OR s_victoria_j2;   -- Hay ganador

	empate <= s_tablero_lleno AND (NOT s_hay_ganador);  --Si no hay ganador es empate

		victoria_j1 <= s_victoria_j1;
		victoria_j2 <= s_victoria_j2;

end architecture;