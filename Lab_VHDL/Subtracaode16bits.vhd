LIBRARY ieee; 
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
USE ieee.std_logic_unsigned.all;

ENTITY Subtracaode16bits IS
	PORT(
		ENTRADA1, ENTRADA2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		SAIDA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END Subtracaode16bits;

ARCHITECTURE BEHAVIOR OF Subtracaode16bits IS
	
	BEGIN
	
		SAIDA <= ENTRADA1 - ENTRADA2;

END ARCHITECTURE;