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
-- Generated on "10/25/2018 01:37:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MemoriaRAM16bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MemoriaRAM16bits_vhd_vec_tst IS
END MemoriaRAM16bits_vhd_vec_tst;
ARCHITECTURE MemoriaRAM16bits_arch OF MemoriaRAM16bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADDRESS : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DATA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RD : STD_LOGIC;
SIGNAL WR : STD_LOGIC;
COMPONENT MemoriaRAM16bits
	PORT (
	ADDRESS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	DATA : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	RD : IN STD_LOGIC;
	WR : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MemoriaRAM16bits
	PORT MAP (
-- list connections between master ports and signals
	ADDRESS => ADDRESS,
	DATA => DATA,
	RD => RD,
	WR => WR
	);

-- RD
t_prcs_RD: PROCESS
BEGIN
LOOP
	RD <= '0';
	WAIT FOR 10000 ps;
	RD <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_RD;

-- WR
t_prcs_WR: PROCESS
BEGIN
	WR <= '1';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 99
	LOOP
		WR <= '0';
		WAIT FOR 5000 ps;
		WR <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	WR <= '0';
WAIT;
END PROCESS t_prcs_WR;
-- ADDRESS[3]
t_prcs_ADDRESS_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		ADDRESS(3) <= '0';
		WAIT FOR 80000 ps;
		ADDRESS(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	ADDRESS(3) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_3;
-- ADDRESS[2]
t_prcs_ADDRESS_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		ADDRESS(2) <= '0';
		WAIT FOR 40000 ps;
		ADDRESS(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	ADDRESS(2) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_2;
-- ADDRESS[1]
t_prcs_ADDRESS_1: PROCESS
BEGIN
LOOP
	ADDRESS(1) <= '0';
	WAIT FOR 20000 ps;
	ADDRESS(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ADDRESS_1;
-- ADDRESS[0]
t_prcs_ADDRESS_0: PROCESS
BEGIN
LOOP
	ADDRESS(0) <= '0';
	WAIT FOR 10000 ps;
	ADDRESS(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ADDRESS_0;
-- DATA[3]
t_prcs_DATA_3: PROCESS
BEGIN
	DATA(3) <= 'Z';
WAIT;
END PROCESS t_prcs_DATA_3;
-- DATA[2]
t_prcs_DATA_2: PROCESS
BEGIN
	DATA(2) <= 'Z';
WAIT;
END PROCESS t_prcs_DATA_2;
-- DATA[1]
t_prcs_DATA_1: PROCESS
BEGIN
	DATA(1) <= 'Z';
WAIT;
END PROCESS t_prcs_DATA_1;
-- DATA[0]
t_prcs_DATA_0: PROCESS
BEGIN
	DATA(0) <= 'Z';
WAIT;
END PROCESS t_prcs_DATA_0;
END MemoriaRAM16bits_arch;
