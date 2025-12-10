
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Validar_movimiento is
Port(
	coordenada : in STD_LOGIC_VECTOR (3 downto 0); -- Coordenadas del teclado (4 bits)
	estado_tablero : in STD_LOGIC_VECTOR (17 downto 0); -- Estado actual de la memoria del tablero
	movimiento_valido : out STD_LOGIC;-- Si el movimiento es valido (celda vacía)
	movimiento_invalido : out STD_LOGIC -- Si el movimiento es invalido (celda ocupada o fuera del 3x3)
);
end entity;

architecture comportamiento of Validar_movimiento is
    constant vacio : STD_LOGIC_VECTOR (1 downto 0) := "00";
   
    signal s_celda_seleccionada : STD_LOGIC_VECTOR (1 downto 0):="00"; --Contiene el estado actual
   
    signal s_es_valido : STD_LOGIC:='0'; 
begin

    with coordenada select s_celda_seleccionada <=
        estado_tablero(1 downto 0)   when "0000", -- Pos 0
        estado_tablero(3 downto 2)   when "0001", -- Pos 1
        estado_tablero(5 downto 4)   when "0010", -- Pos 2
        estado_tablero(7 downto 6)   when "0011", -- Pos 3
        estado_tablero(9 downto 8)   when "0100", -- Pos 4
        estado_tablero(11 downto 10) when "0101", -- Pos 5
        estado_tablero(13 downto 12) when "0110", -- Pos 6
        estado_tablero(15 downto 14) when "0111", -- Pos 7
        estado_tablero(17 downto 16) when "1000", -- Pos 8
        "11" when others; -- Coordenada invalida (fuera del 3x3), se asigna "11" para que NO sea 'vacio'

    s_es_valido <= '1' when s_celda_seleccionada = vacio else '0';

    movimiento_valido   <= s_es_valido;
    movimiento_invalido <= NOT s_es_valido;

end architecture;