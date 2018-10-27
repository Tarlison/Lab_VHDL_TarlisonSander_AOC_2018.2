LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;  
USE ieee.std_logic_unsigned.all;

ENTITY ExtensordeSinal8To16bits IS
	PORT(
		ENTRADA : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
		SAIDA   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	
END ExtensordeSinal8To16bits;

ARCHITECTURE BEHAVIOR OF ExtensordeSinal8To16bits IS

	BEGIN
	
		SAIDA <= ("00000000") & ENTRADA;
		
END BEHAVIOR;