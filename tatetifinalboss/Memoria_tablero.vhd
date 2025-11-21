library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Memoria_tablero is                    -- 00=vacio ; 01=J1 ; 10=J2
 Port ( clock : in STD_LOGIC;
        reinicio : in STD_LOGIC;             -- Borra el tablero
		  movimiento_valido : in STD_LOGIC;     -- Con un uno logico se activa
		  turno_actual : in STD_LOGIC;          -- J1=0 ; J2=1
		  coordenada_movimiento : in STD_LOGIC_VECTOR (3 downto 0); -- Son 2 bits para la fila y 2 para la columna
		  estado_tablero : out STD_LOGIC_VECTOR (17 downto 0)  -- 9leds x 2bits = 18
		  );
end entity;

architecture comportamiento of Memoria_tablero is
 signal s_estado_tablero : STD_LOGIC_VECTOR (17 downto 0);
 constant vacio : STD_LOGIC_VECTOR (1 downto 0):="00";
 constant jugador1 : STD_LOGIC_VECTOR (1 downto 0):="01";
 constant jugador2 : STD_LOGIC_VECTOR (1 downto 0):="10";
	begin
		process (clock)
		begin
			if rising_edge (clock) then
				if reinicio = '1' then 
					s_estado_tablero <= (others => '0');   -- Todas las casillas a 'vacio'
				elsif movimiento_valido = '1' then
				  case coordenada_movimiento is
				 -- Fila 1 --
				   when "0000" =>
					 if turno_actual = '0' then
					    s_estado_tablero (1 downto 0) <= jugador1;
					 else 
					    s_estado_tablero (1 downto 0) <= jugador2;
					 end if;
					when "0001" =>
					 if turno_actual = '0' then 
					    s_estado_tablero (3 downto 2) <= jugador1;
					 else 
					    s_estado_tablero (3 downto 2) <= jugador2;
					 end if;
					when "0010" =>
					 if turno_actual = '0' then 
					    s_estado_tablero (5 downto 4) <= jugador1;
					 else 
					    s_estado_tablero (5 downto 4) <= jugador2;
					 end if;
					
				 -- Fila 2 --
				   when "0100" =>
					 if turno_actual = '0' then
					    s_estado_tablero (7 downto 6) <= jugador1;
					 else 
					    s_estado_tablero (7 downto 6) <= jugador2;
					 end if;
				   when "0101" =>
					 if turno_actual = '0' then
					    s_estado_tablero (9 downto 8) <= jugador1;
					 else 
					    s_estado_tablero (9 downto 8) <= jugador2;
					 end if;
				   when "0110" =>
					 if turno_actual = '0' then
					    s_estado_tablero (11 downto 10) <= jugador1;
					 else 
					    s_estado_tablero (11 downto 10) <= jugador2;
					 end if;
				  -- Fila 3 --
				   when "1000" =>
					 if turno_actual = '0' then
					    s_estado_tablero (13 downto 12) <= jugador1;
					 else 
					    s_estado_tablero (13 downto 12) <= jugador2;
					 end if;
				   when "1001" =>
					 if turno_actual = '0' then
					    s_estado_tablero (15 downto 14) <= jugador1;
					 else 
					    s_estado_tablero (15 downto 14) <= jugador2;
					 end if;
				   when "1010" =>
					 if turno_actual = '0' then
					    s_estado_tablero (17 downto 16) <= jugador1;
					 else 
					    s_estado_tablero (17 downto 16) <= jugador2;
					 end if;
when others => null; -- Coordenadas inválidas (no hacer nada), porque me sobran 7
                end case;
            end if;
        end if;
    end process;
    
    estado_tablero <= s_estado_tablero;
	 end architecture;