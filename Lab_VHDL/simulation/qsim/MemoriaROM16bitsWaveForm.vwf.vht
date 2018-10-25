-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/25/2018 01:11:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MemoriaROM16bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MemoriaROM16bits_vhd_vec_tst IS
END MemoriaROM16bits_vhd_vec_tst;
ARCHITECTURE MemoriaROM16bits_arch OF MemoriaROM16bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADDR : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL DOUT : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT MemoriaROM16bits
	PORT (
	ADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	DOUT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MemoriaROM16bits
	PORT MAP (
-- list connections between master ports and signals
	ADDR => ADDR,
	DOUT => DOUT
	);
-- ADDR[4]
t_prcs_ADDR_4: PROCESS
BEGIN
	ADDR(4) <= '0';
	WAIT FOR 320000 ps;
	ADDR(4) <= '1';
	WAIT FOR 320000 ps;
	ADDR(4) <= '0';
	WAIT FOR 320000 ps;
	ADDR(4) <= '1';
WAIT;
END PROCESS t_prcs_ADDR_4;
-- ADDR[3]
t_prcs_ADDR_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		ADDR(3) <= '0';
		WAIT FOR 160000 ps;
		ADDR(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	ADDR(3) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_3;
-- ADDR[2]
t_prcs_ADDR_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		ADDR(2) <= '0';
		WAIT FOR 80000 ps;
		ADDR(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	ADDR(2) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_2;
-- ADDR[1]
t_prcs_ADDR_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		ADDR(1) <= '0';
		WAIT FOR 40000 ps;
		ADDR(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	ADDR(1) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_1;
-- ADDR[0]
t_prcs_ADDR_0: PROCESS
BEGIN
LOOP
	ADDR(0) <= '0';
	WAIT FOR 20000 ps;
	ADDR(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ADDR_0;
END MemoriaROM16bits_arch;
