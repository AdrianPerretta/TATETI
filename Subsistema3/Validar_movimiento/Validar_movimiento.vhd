
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Validar_movimiento is
    Port (
        coordenada : in  STD_LOGIC_VECTOR (3 downto 0); -- Coordenadas del teclado (4 bits)
        estado_tablero  : in  STD_LOGIC_VECTOR (17 downto 0); -- Estado actual de la memoria del tablero
        movimiento_valido   : out STD_LOGIC;     -- Si esta ocupada me da un 1
        movimiento_invalido : out STD_LOGIC      -- Me da un 1 si esta ocupada o afuera del 3x3
        );
    end entity;

architecture comportamiento of Validar_movimiento is
    signal s_esta_vacio : STD_LOGIC;
    constant vacio : STD_LOGIC_VECTOR (1 downto 0) := "00";
    -- El objetivo es obtener los 2 bits que corresponden a la posicion
    
	 function Obtener_Celda (Tablero : STD_LOGIC_VECTOR; indice : INTEGER) return STD_LOGIC_VECTOR is
        variable Bit_inicial : INTEGER;
    begin
        Bit_inicial := indice * 2; -- Cada casilla ocupa 2 bits
        return Tablero(Bit_inicial + 1 downto Bit_inicial); -- Me devuelve el par de bits, me da la que necesito y la siguiente
    end function;

Begin

    process (coordenada, estado_tablero)
    begin
        s_esta_vacio <= '0'; -- Asumo un estado inicial, total al final pongo un when others (es lo mismo)
		  
        case coordenada is
            -- Fila 1 --
            when "0000" => if Obtener_Celda(estado_tablero, 0) = vacio then
						s_esta_vacio <= '1';
						end if;
            when "0001" => if Obtener_Celda(estado_tablero, 1) = vacio then
						s_esta_vacio <= '1';
						end if;
            when "0010" => if Obtener_Celda(estado_tablero, 2) = vacio then
						s_esta_vacio <= '1'; 
						end if;
            
            -- Fila 2 --
            when "0011" => if Obtener_Celda(estado_tablero, 3) = vacio then
						s_esta_vacio <= '1'; 
						end if;
            when "0100" => if Obtener_Celda(estado_tablero, 4) = vacio then
						s_esta_vacio <= '1';
						end if;
            when "0101" => if Obtener_Celda(estado_tablero, 5) = vacio then
						s_esta_vacio <= '1';
						end if;
            
            -- Fila 2 --
            when "0110" => if Obtener_Celda(estado_tablero, 6) = vacio then
						s_esta_vacio <= '1';
						end if;
            when "0111" => if Obtener_Celda(estado_tablero, 7) = vacio then
						s_esta_vacio <= '1';
						end if;
            when "1000" => if Obtener_Celda(estado_tablero, 8) = vacio then
						s_esta_vacio <= '1';
						end if;
            
            when others => s_esta_vacio <= '0'; -- Cualquier otra coordenada fuera del 3x3 es inválida
        end case;
    end process;


    movimiento_valido   <= s_esta_vacio;
    movimiento_invalido <= NOT s_esta_vacio;

end architecture;