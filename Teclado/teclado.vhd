--Programa de reconocimiento de teclado


library ieee;
use ieee.std_logic_1164.all;

entity teclado is

	port(
		R1,R2,R3,R4		 : in	std_logic;--Salidas del teclado R1, R2, R3, R4 segun esquema.
		clk	 : in	std_logic;-- Señal de relog 50 MHZ
		C1,C2,C3,C4	 : out std_logic;-- Entradas del teclado C1, C2, C3, C4 segun esquema.
		fila_1_teclado, fila_2_teclado, fila_3_teclado, fila_4_teclado: out std_logic_vector(0 to 3);--Vectores de salida, solo para visulaizar la matriz en la simulación, luego hay que borrarlos.
		tablero_juego: out std_logic_vector(0 to 3); --Vector de 4 bits, indica un codigo segun tecla presionada (teclas: 1, 2, 3, 5, 6, 7, 9, 10, 11)
      tecla_reset, tecla_j1_vs_j2, tecla_j_vs_mq : out std_logic; 
	   tecla_color_j1, tecla_color_j2	 : out  std_logic_vector(0 to 1)
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
	signal t_juego : std_logic_vector(0 to 3);
	signal t_reset, t_j1_vs_j2, t_j_vs_mq : std_logic; 
	signal t_color_j1, t_color_j2	 :  std_logic_vector(0 to 1);
	

	
	

begin
	process (clk)
	begin
		if t_reset = '1' then --Reset='0' lleva todos los elementos de la matriz a cero.    (1)
		   t_reset<='0';
			t_juego<="1001";
			t_color_j2<="00";
			t_color_j1<="00";
			t_j1_vs_j2<='0';
			t_j_vs_mq<='0';
			mat(0,0)<='0';
			mat(0,1)<='0';
			mat(0,2)<='0';
			mat(0,3)<='0';
			mat(1,0)<='0';
			mat(1,1)<='0';
			mat(1,2)<='0';
			mat(1,3)<='0';
			mat(2,0)<='0';
			mat(2,1)<='0';
			mat(2,2)<='0';
			mat(2,3)<='0';
			mat(3,0)<='0';
			mat(3,1)<='0';
			mat(3,2)<='0';
			mat(3,3)<='0';
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
				  t_color_j2<="00";
				  t_color_j1<="00";
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
					       if D(1)<8 then --(5)
					       C<=1;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R1='1' then --Vuelve a medir si esta en R1. 
							 mat(0,0)<='1'; --Asigna 1 al elemento (0,0) de la matriz
							 t_juego<="0000";
					       D(1)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(1)<=0;
							 sal<="ZZZZ";
							 end if;--(5)
							 
			         elsif (R2='1') or (D(2)>0) then  --Comprueba si esta en R2  
						D(2)<=D(2)+1;
					       if D(2)<8 then --(6)
							 C<=1;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R2='1' then --Vuelve a medir si esta en R2. 
							 mat(0,1)<='1'; --Asigna 1 al elemento (0,1) de la matriz
							 t_juego<="0001";
					       D(2)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(2)<=0;
							 sal<="ZZZZ";
							 end if;--(6)
							 
					   elsif (R3='1') or (D(3)>0) then  --Comprueba si esta en R3  
						D(3)<=D(3)+1;
					       if D(3)<8 then --(7)
							 C<=1;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R3='1' then --Vuelve a medir si esta en R3. 
							 mat(0,2)<='1'; --Asigna 1 al elemento (0,2) de la matriz
							 t_juego<="0010";
					       D(3)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(3)<=0;
							 sal<="ZZZZ";
							 end if;--(7)
							 
						elsif (R4='1') or (D(4)>0) then  --Comprueba si esta en R4 
						D(4)<=D(4)+1;
					       if D(4)<8 then --(8)
							 C<=1;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R4='1' then --Vuelve a medir si esta en R4. 
							 mat(0,3)<='1'; --Asigna 1 al elemento (0,3) de la matriz
							 t_color_j2<="01";
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
					       if D(5)<8 then --(10)
					       C<=2;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R1='1' then --Vuelve a medir si esta en R1. 
							 mat(1,0)<='1'; --Asigna 1 al elemento (1,0) de la matriz
							 t_juego<="0011";
					       D(5)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(5)<=0;
							 sal<="ZZZZ";
							 end if;--(10)
							 
			         elsif (R2='1') or (D(6)>0) then  --Comprueba si esta en R2  
						D(6)<=D(6)+1;
					       if D(6)<8 then --(11)
							 C<=2;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R2='1' then --Vuelve a medir si esta en R2. 
							 mat(1,1)<='1'; --Asigna 1 al elemento (1,1) de la matriz
							 t_juego<="0100";
					       D(6)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(6)<=0;
							 sal<="ZZZZ";
							 end if;--(11)
							 
					   elsif (R3='1') or (D(7)>0) then  --Comprueba si esta en R3  
						D(7)<=D(7)+1;
					       if D(7)<8 then --(12)
							 C<=2;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R3='1' then --Vuelve a medir si esta en R3. 
							 mat(1,2)<='1'; --Asigna 1 al elemento (1,2) de la matriz
							 t_juego<="0101";
					       D(7)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(7)<=0;
							 sal<="ZZZZ";
							 end if;--(12)
							 
						elsif (R4='1') or (D(8)>0) then  --Comprueba si esta en R4 
						D(8)<=D(8)+1;
					       if D(8)<8 then --(13)
							 C<=2;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R4='1' then --Vuelve a medir si esta en R4. 
							 mat(1,3)<='1'; --Asigna 1 al elemento (1,3) de la matriz
							 t_color_j2<="10";
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
					       if D(9)<8 then --(15)
					       C<=3;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R1='1' then --Vuelve a medir si esta en R1. 
							 mat(2,0)<='1'; --Asigna 1 al elemento (2,0) de la matriz
							 t_juego<="0110";
					       D(9)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(9)<=0;
							 sal<="ZZZZ";
							 end if;--(15)
							 
			         elsif (R2='1') or (D(10)>0) then  --Comprueba si esta en R2  
						D(10)<=D(10)+1;
					       if D(10)<8 then --(16)
							 C<=3;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R2='1' then --Vuelve a medir si esta en R2. 
							 mat(2,1)<='1'; --Asigna 1 al elemento (2,1) de la matriz
							 t_juego<="0111";
					       D(10)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(10)<=0;
							 sal<="ZZZZ";
							 end if;--(16)
							 
					   elsif (R3='1') or (D(11)>0) then  --Comprueba si esta en R3  
						D(11)<=D(11)+1;
					       if D(11)<8 then --(17)
							 C<=3;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R3='1' then --Vuelve a medir si esta en R3. 
							 mat(2,2)<='1'; --Asigna 1 al elemento (2,2) de la matriz
							 t_juego<="1000";
					       D(11)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(11)<=0;
							 sal<="ZZZZ";
							 end if;--(17)
							 
						elsif (R4='1') or (D(12)>0) then  --Comprueba si esta en R4 
						D(12)<=D(12)+1;
					       if D(12)<8 then --(18)
							 C<=3;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R4='1' then --Vuelve a medir si esta en R4. 
							 mat(2,3)<='1'; --Asigna 1 al elemento (2,3) de la matriz
							 t_j1_vs_j2<='1';
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
					       if D(13)<8 then --(20)
					       C<=4;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R1='1' then --Vuelve a medir si esta en R1. 
							 mat(3,0)<='1'; --Asigna 1 al elemento (3,0) de la matriz
							 t_color_j1<="01";
					       D(13)<=0; --Resetea contador de deteccion.
							 detecta<='1';
							 else
							 D(13)<=0;
							 sal<="ZZZZ";
							 end if;--(20)
							 
			         elsif (R2='1') or (D(14)>0) then  --Comprueba si esta en R2  
						D(14)<=D(14)+1;
					       if D(14)<8 then --(21)
							 C<=4;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R2='1' then --Vuelve a medir si esta en R2. 
							 mat(3,1)<='1'; --Asigna 1 al elemento (3,1) de la matriz
							 t_color_j1<="10";
					       D(14)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(14)<=0;
							 sal<="ZZZZ";
							 end if;--(21)
							 
					   elsif (R3='1') or (D(15)>0) then  --Comprueba si esta en R3  
						D(15)<=D(15)+1;
					       if D(15)<8 then --(22)
							 C<=4;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R3='1' then --Vuelve a medir si esta en R3. 
							 mat(3,2)<='1'; --Asigna 1 al elemento (3,2) de la matriz
							 t_j_vs_mq<='1';
					       D(15)<=0; --Resetea contador de deteccion.
					       detecta<='1';
							 else
							 D(15)<=0;
							 sal<="ZZZZ";
							 end if;--(22)
							 
						elsif (R4='1') or (D(16)>0) then  --Comprueba si esta en R4 
						D(16)<=D(16)+1;
					       if D(16)<8 then --(23)
							 C<=4;  --Se mantiene en esta condicion durante 8 pulsos de clock.
					       elsif R4='1' then --Vuelve a medir si esta en R4. 
							 mat(3,3)<='1'; --Asigna 1 al elemento (1,3) de la matriz
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
	process (mat,D)
	begin
	--Entradas del teclado C1, C2, C3, C4
	C1<=sal(0);
	C2<=sal(1);
	C3<=sal(2);
	C4<=sal(3);
	tablero_juego<=t_juego;
	tecla_color_j1<=t_color_j1;
	tecla_color_j2<=t_color_j2;
	tecla_j1_vs_j2<=t_J1_vs_j2;
	tecla_j_vs_mq<=t_j_vs_mq;
	tecla_reset<=t_reset;
   --Vectores para verificar simulacion
	fila_1_teclado(0)<=mat(0,0);
	fila_1_teclado(1)<=mat(0,1);
	fila_1_teclado(2)<=mat(0,2);
	fila_1_teclado(3)<=mat(0,3);
	fila_2_teclado(0)<=mat(1,0);
	fila_2_teclado(1)<=mat(1,1);
	fila_2_teclado(2)<=mat(1,2);
	fila_2_teclado(3)<=mat(1,3);
	fila_3_teclado(0)<=mat(2,0);
	fila_3_teclado(1)<=mat(2,1);
	fila_3_teclado(2)<=mat(2,2);
	fila_3_teclado(3)<=mat(2,3);
	fila_4_teclado(0)<=mat(3,0);
	fila_4_teclado(1)<=mat(3,1);
	fila_4_teclado(2)<=mat(3,2);
	fila_4_teclado(3)<=mat(3,3);
	--Tablero de juegos.
	--tablero_juego(0,0)<=mat(0,0);
	--tablero_juego(0,1)<=mat(0,1);
	--tablero_juego(0,2)<=mat(0,2);
	--tablero_juego(1,0)<=mat(1,0);
	--tablero_juego(1,1)<=mat(1,1);
	--tablero_juego(1,2)<=mat(1,2);
	--tablero_juego(2,0)<=mat(2,0);
	--tablero_juego(2,1)<=mat(2,1);
	--tablero_juego(2,2)<=mat(2,2);
	--Teclas
	--Asisgnacion de valores de matris de juego, codificacion en BCD:
	
	
	
	end process;



end registro;
