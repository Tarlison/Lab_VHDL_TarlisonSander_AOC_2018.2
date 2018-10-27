LIBRARY ieee; USE ieee.std_logic_1164.all; USE ieee.numeric_std.all;  USE ieee.std_logic_unsigned.all;

ENTITY ULA16bits IS
	PORT(
		DADO1, DADO2  :  IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		SEL: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		SAIDA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END ULA16bits;

ARCHITECTURE BEHAVIOR OF ULA16bits IS

COMPONENT QAnd IS 
	PORT(
		E1, E2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		S1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT  QOr IS 
	PORT(
		A, B  : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT QNot IS 
	PORT(
		NORMAL: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		NEGADO : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT QXor IS 
	PORT(
		A, B: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		RESULTADO: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT QNand IS 
	PORT(
		C, D : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		S1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ShiftDireita IS 
	PORT(
		VALOR: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		SAIDA: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
COMPONENT ShiftEsquerda IS 
	PORT(
		VALOR: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		SAIDA: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
COMPONENT Somadorde16bits IS
	PORT(
		ENTRADA1, ENTRADA2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		SAIDA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
COMPONENT Subtracaode16bits IS
	PORT(
		ENTRADA1, ENTRADA2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		SAIDA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT  Multiplexador12x1 IS
	PORT( 
	SIGNAL A,B,C,D,E,F,G,H,I,J,K,L: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL SEL : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL SAIDA: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
SIGNAL SAIDAAND, SAIDAOR, SAIDANOT, SAIDANOT2, SAIDAXOR: STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SAIDANAND, SAIDASLL, SAIDASLL2, SAIDASRL, SAIDASRL2: STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SAIDASOMA, SAIDASUBTRACAO: STD_LOGIC_VECTOR(15 DOWNTO 0);
BEGIN
	G1: QAnd PORT MAP(DADO1,DADO2, SAIDAAND);
	G2: QOr PORT MAP(DADO1,DADO2,SAIDAOR);
	G3: QNot PORT MAP(DADO1,SAIDANOT);
	G4: QNot PORT MAP(DADO2,SAIDANOT2);
	G5: QXor PORT MAP(DADO1,DADO2,SAIDAXOR);
	G6: QNand PORT MAP(DADO1,DADO2,SAIDANAND);
	G7: ShiftDireita PORT MAP(DADO1,SAIDASRL);
	G8: ShiftDireita PORT MAP(DADO2,SAIDASRL2);
	G9: ShiftEsquerda PORT MAP(DADO1,SAIDASLL);
	G10: ShiftEsquerda PORT MAP(DADO2,SAIDASLL2);
	G11: Somadorde16bits PORT MAP(DADO1,DADO2,SAIDASOMA);
	G12: Subtracaode16bits PORT MAP (DADO1,DADO2,SAIDASUBTRACAO);
	G13: Multiplexador12x1 PORT MAP(SAIDAAND, SAIDAOR, SAIDANOT, SAIDANOT2, SAIDAXOR,SAIDANAND, SAIDASLL, SAIDASLL2, SAIDASRL, SAIDASRL2,SAIDASOMA, SAIDASUBTRACAO,SEL,SAIDA);
	
END BEHAVIOR;