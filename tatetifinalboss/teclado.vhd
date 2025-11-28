--Programa de reconocimiento de teclado


library ieee;
use ieee.std_logic_1164.all;

entity teclado is

	port(
		R1,R2,R3,R4		 : in	std_logic;--Salidas del teclado R1, R2, R3, R4 segun esquema.
		clk	 : in	std_logic;-- Señal de relog 50 MHZ
		C1,C2,C3,C4	 : out std_logic;-- Entradas del teclado C1, C2, C3, C4 segun esquema.
		tablero_juego: out std_logic_vector(3 downto 0); --Vector de 4 bits, indica un codigo segun tecla presionada (teclas: 1, 2, 3, 5, 6, 7, 9, 10, 11)
      tecla_reset, tecla_j1_vs_j2, tecla_j_vs_mq : out std_logic; 
		color_j1, color_j2: out std_logic_vector(2 downto 0) 

	);

end entity;

architecture registro of teclado is
--Declaracion de tipos
   type matriz_tipo is array (0 to 3, 0 to 3) of std_logic;
   type vector_tipo is array (1 to 16) of integer range 0 to 15;
--Declaracion de señales	
	signal  detecta  : std_logic;
	signal C         : integer range 0 to 4;
	signal mat : matriz_tipo; --Matriz de 4*4 para almacenar las teclas presionadas
	signal sal	 :  std_logic_vector(0 to 3);
	signal D     : vector_tipo;
	--Señales para el sub sistema 2:
	signal t_juego : std_logic_vector(3 downto 0);
	signal t_reset, t_j1_vs_j2, t_j_vs_mq : std_logic; 
	signal COUNT_1, COUNT_2	 :   integer range 0 to 7;

	
	

begin
	process (clk)
	begin
		if t_reset = '1' then --Reset='0' lleva todos los elementos de la matriz a cero.    (1)
		   t_reset<='0';
			t_juego<="1001";
			t_j1_vs_j2<='0';
			t_j_vs_mq<='0';
			COUNT_1<=0;
			COUNT_2<=0;
			C<=0;
			detecta<='1';
			D(1)<=0;
			D(2)<=0;
			D(3)<=0;
			D(4)<=0;
			D(6)<=0;
			D(7)<=0;
			D(8)<=0;
			D(9)<=0;
			D(10)<=0;
			D(11)<=0;
			D(12)<=0;
			D(13)<=0;
			D(14)<=0;
			D(15)<=0;
			D(16)<=0;
		elsif (rising_edge(clk)) then -- en cada flanco ascendente de clock.
	   if (detecta='1') then  --(2)--Comprueba si se detecto una tecla.
	         if (R1='0') and (R2='0') and (R3='0') and (R4='0') then--Condicion de todas las entradas en '0' para resetear el ciclo de deteccion.
				  C<=0;
				  t_juego<="1001";
				  t_j1_vs_j2<='0';
				  t_j_vs_mq<='0';
				  t_reset<='0';
				  sal<="ZZZZ"; --Entradas al teclado en alta impedancia.
				  detecta<='0';--Resetea la deteccion-
		
				end if;
	    
      else
	    C<=C+1;
             if (C =1) then   -- Pone la entrada del teclado C1=1   (3)
			    sal<="1ZZZ";--Exita la entrada C1.
				 
			        if (R1='1') or (D(1)>0) then  --Comprueba si esta en R1  (4)
			        D(1)<=D(1)+1;--Contador  para vover a medir la salida del teclado (Antirrebote de tecla)
					       if D(1)<9 then --(5)
					       C<=1;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R1='1' then --Vuelve a medir si esta en R1. 
							 t_juego<="0000";
					       D(1)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(1)<=0;
							 sal<="ZZZZ";
							 end if;--(5)
							 
			         elsif (R2='1') or (D(2)>0) then  --Comprueba si esta en R2  
						D(2)<=D(2)+1;
					       if D(2)<9 then --(6)
							 C<=1;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R2='1' then --Vuelve a medir si esta en R2. 
							 t_juego<="0001";
					       D(2)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(2)<=0;
							 sal<="ZZZZ";
							 end if;--(6)
							 
					   elsif (R3='1') or (D(3)>0) then  --Comprueba si esta en R3  
						D(3)<=D(3)+1;
					       if D(3)<9 then --(7)
							 C<=1;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R3='1' then --Vuelve a medir si esta en R3. 
							 t_juego<="0010";
					       D(3)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(3)<=0;
							 sal<="ZZZZ";
							 end if;--(7)
							 
						elsif (R4='1') or (D(4)>0) then  --Comprueba si esta en R4 
						D(4)<=D(4)+1;
					       if D(4)<9 then --(8)
							 C<=1;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R4='1' then --Vuelve a medir si esta en R4. 
							 COUNT_2<=COUNT_2+1;
					       D(4)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(4)<=0;
							 sal<="ZZZZ";
							 end if;--(8)
							 
							 
							 
	              end if;--(4)		
					  
				 elsif (C =2) then   -- Pone la entrada del teclado C2=1   
			    sal<="Z1ZZ";
				 
			        if (R1='1') or (D(5)>0) then  --Comprueba si esta en R1  (9)
			        D(5)<=D(5)+1;
					       if D(5)<9 then --(10)
					       C<=2;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R1='1' then --Vuelve a medir si esta en R1. 
							 t_juego<="0011";
					       D(5)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(5)<=0;
							 sal<="ZZZZ";
							 end if;--(10)
							 
			         elsif (R2='1') or (D(6)>0) then  --Comprueba si esta en R2  
						D(6)<=D(6)+1;
					       if D(6)<9 then --(11)
							 C<=2;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R2='1' then --Vuelve a medir si esta en R2. 
							 t_juego<="0100";
					       D(6)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(6)<=0;
							 sal<="ZZZZ";
							 end if;--(11)
							 
					   elsif (R3='1') or (D(7)>0) then  --Comprueba si esta en R3  
						D(7)<=D(7)+1;
					       if D(7)<9 then --(12)
							 C<=2;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R3='1' then --Vuelve a medir si esta en R3. 
							 t_juego<="0101";
					       D(7)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(7)<=0;
							 sal<="ZZZZ";
							 end if;--(12)
							 
						elsif (R4='1') or (D(8)>0) then  --Comprueba si esta en R4 
						D(8)<=D(8)+1;
					       if D(8)<9 then --(13)
							 C<=2;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R4='1' then --Vuelve a medir si esta en R4. 
							 COUNT_2<=COUNT_2-1;
					       D(8)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(8)<=0;
							 sal<="ZZZZ";
							 end if;--(13)
						end if;--(9)	 
							 
							 
	             elsif (C =3) then   -- Pone la entrada del teclado C3=1   
			    sal<="ZZ1Z";
				 
			        if (R1='1') or (D(9)>0) then  --Comprueba si esta en R1  (14)
			        D(9)<=D(9)+1;
					       if D(9)<9 then --(15)
					       C<=3;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R1='1' then --Vuelve a medir si esta en R1. 
							 t_juego<="0110";
					       D(9)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(9)<=0;
							 sal<="ZZZZ";
							 end if;--(15)
							 
			         elsif (R2='1') or (D(10)>0) then  --Comprueba si esta en R2  
						D(10)<=D(10)+1;
					       if D(10)<9 then --(16)
							 C<=3;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R2='1' then --Vuelve a medir si esta en R2. 
							 t_juego<="0111";
					       D(10)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(10)<=0;
							 sal<="ZZZZ";
							 end if;--(16)
							 
					   elsif (R3='1') or (D(11)>0) then  --Comprueba si esta en R3  
						D(11)<=D(11)+1;
					       if D(11)<9 then --(17)
							 C<=3;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R3='1' then --Vuelve a medir si esta en R3. 
							 t_juego<="1000";
					       D(11)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(11)<=0;
							 sal<="ZZZZ";
							 end if;--(17)
							 
						elsif (R4='1') or (D(12)>0) then  --Comprueba si esta en R4 
						D(12)<=D(12)+1;
					       if D(12)<9 then --(18)
							 C<=3;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R4='1' then --Vuelve a medir si esta en R4. 
							 t_j_vs_mq<='1';
					       D(12)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(12)<=0;
							 sal<="ZZZZ";
							 end if;--(18)
						end if;--(14)	
						
						elsif (C =4) then   -- Pone la entrada del teclado C4=1   
			    sal<="ZZZ1";
				 C<=1;
			        if (R1='1') or (D(13)>0) then  --Comprueba si esta en R1  (19)
			        D(13)<=D(13)+1;
					       if D(13)<9 then --(20)
					       C<=4;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R1='1' then --Vuelve a medir si esta en R1. 
							 COUNT_1<=COUNT_1-1;
					       D(13)<=0; --Resetea contador de deteccion.
							 detecta<='1';
							 else
							 D(13)<=0;
							 sal<="ZZZZ";
							 end if;--(20)
							 
			         elsif (R2='1') or (D(14)>0) then  --Comprueba si esta en R2  
						D(14)<=D(14)+1;
					       if D(14)<9 then --(21)
							 C<=4;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R2='1' then --Vuelve a medir si esta en R2. 
							 COUNT_1<=COUNT_1+1;
					       D(14)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(14)<=0;
							 sal<="ZZZZ";
							 end if;--(21)
							 
					   elsif (R3='1') or (D(15)>0) then  --Comprueba si esta en R3  
						D(15)<=D(15)+1;
					       if D(15)<9 then --(22)
							 C<=4;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R3='1' then --Vuelve a medir si esta en R3. 
							 t_j1_vs_j2<='1';
					       D(15)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(15)<=0;
							 sal<="ZZZZ";
							 end if;--(22)
							 
						elsif (R4='1') or (D(16)>0) then  --Comprueba si esta en R4 
						D(16)<=D(16)+1;
					       if D(16)<9 then --(23)
							 C<=4;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R4='1' then --Vuelve a medir si esta en R4. 
							 t_reset<='1';
					       D(16)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(16)<=0;
							 sal<="ZZZZ";
							 end if;--(23)
						end if;--(19)	
   		
	         end if;--(3)	
			
		
	







	
      end if;	--(2)	
      end if;  --(1)
		
		
		
		
		
		
		
		
		
		
	end process;
-- Asisgnacion de salidas
	process (mat,D,COUNT_1,COUNT_2)
	begin
	case COUNT_1 is
	when 0 => color_j1<="000";
	when 1 => color_j1<="001";
	when 2 => color_j1<="010";
	when 3 => color_j1<="011";
	when 4 => color_j1<="100";
	when 5 => color_j1<="101";
	when 6 => color_j1<="110";
	when 7 => color_j1<="111";
	end case;
	case COUNT_2 is
	when 0 => color_j2<="000";
	when 1 => color_j2<="001";
	when 2 => color_j2<="010";
	when 3 => color_j2<="011";
	when 4 => color_j2<="100";
	when 5 => color_j2<="101";
	when 6 => color_j2<="110";
	when 7 => color_j2<="111";
	end case;
	--Entradas del teclado C1, C2, C3, C4
	C1<=sal(0);
	C2<=sal(1);
	C3<=sal(2);
	C4<=sal(3);
	tablero_juego<=t_juego;
	tecla_j1_vs_j2<=t_J1_vs_j2;
	tecla_j_vs_mq<=t_j_vs_mq;
	tecla_reset<=t_reset;
   
	
	
	end process;



end registro;
