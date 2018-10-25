LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY MemoriaROM16bits IS
 PORT (
		ADDR : IN STD_LOGIC_VECTOR (4 DOWNTO 0); 
		DOUT : OUT STD_LOGIC_VECTOR (4 DOWNTO 0)
		);
	
 END MemoriaROM16bits;
 
 ARCHITECTURE BEHAVIOR OF MemoriaROM16bits IS
 
 
 TYPE VALORESROM IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR (4 DOWNTO 0);

 
 CONSTANT VETDADOS : VALORESROM := ( "00000","00001","00010","00011","00100",
											 "00101","00110","00111","01000","01001",
											 "01010","01011","01100","01101","01110",
											 "01111","10000","10001","10010","10011",
											 "10100","10101","10110","10111","11000",
											 "11001","11010","11011","11100","11101",
											 "11110","11111" 
											 );
 
 BEGIN
	PROCESS (ADDR)
		BEGIN 
		
			DOUT <= VETDADOS(TO_INTEGER(UNSIGNED(ADDR)));
			
	END PROCESS;
 
 END BEHAVIOR;
