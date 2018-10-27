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
-- Generated on "10/26/2018 20:11:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BancodeRegistradores
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BancodeRegistradores_vhd_vec_tst IS
END BancodeRegistradores_vhd_vec_tst;
ARCHITECTURE BancodeRegistradores_arch OF BancodeRegistradores_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL INSTR2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL INSTR3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL INSTRD : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OUTREG1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL OUTREG2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL WRITEBACKDATA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL WRITEFLAG : STD_LOGIC;
COMPONENT BancodeRegistradores
	PORT (
	INSTR2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	INSTR3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	INSTRD : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	OUTREG1 : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	OUTREG2 : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	WRITEBACKDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	WRITEFLAG : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BancodeRegistradores
	PORT MAP (
-- list connections between master ports and signals
	INSTR2 => INSTR2,
	INSTR3 => INSTR3,
	INSTRD => INSTRD,
	OUTREG1 => OUTREG1,
	OUTREG2 => OUTREG2,
	WRITEBACKDATA => WRITEBACKDATA,
	WRITEFLAG => WRITEFLAG
	);
-- INSTR2[3]
t_prcs_INSTR2_3: PROCESS
BEGIN
	INSTR2(3) <= '0';
	WAIT FOR 400000 ps;
	INSTR2(3) <= '1';
	WAIT FOR 400000 ps;
	INSTR2(3) <= '0';
WAIT;
END PROCESS t_prcs_INSTR2_3;
-- INSTR2[2]
t_prcs_INSTR2_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		INSTR2(2) <= '0';
		WAIT FOR 200000 ps;
		INSTR2(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	INSTR2(2) <= '0';
WAIT;
END PROCESS t_prcs_INSTR2_2;
-- INSTR2[1]
t_prcs_INSTR2_1: PROCESS
BEGIN
LOOP
	INSTR2(1) <= '0';
	WAIT FOR 100000 ps;
	INSTR2(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_INSTR2_1;
-- INSTR2[0]
t_prcs_INSTR2_0: PROCESS
BEGIN
LOOP
	INSTR2(0) <= '0';
	WAIT FOR 50000 ps;
	INSTR2(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_INSTR2_0;
-- INSTR3[3]
t_prcs_INSTR3_3: PROCESS
BEGIN
	INSTR3(3) <= '1';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 2
	LOOP
		INSTR3(3) <= '0';
		WAIT FOR 200000 ps;
		INSTR3(3) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	INSTR3(3) <= '0';
WAIT;
END PROCESS t_prcs_INSTR3_3;
-- INSTR3[2]
t_prcs_INSTR3_2: PROCESS
BEGIN
	INSTR3(2) <= '1';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 4
	LOOP
		INSTR3(2) <= '0';
		WAIT FOR 100000 ps;
		INSTR3(2) <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	INSTR3(2) <= '0';
	WAIT FOR 100000 ps;
	INSTR3(2) <= '1';
WAIT;
END PROCESS t_prcs_INSTR3_2;
-- INSTR3[1]
t_prcs_INSTR3_1: PROCESS
BEGIN
LOOP
	INSTR3(1) <= '1';
	WAIT FOR 50000 ps;
	INSTR3(1) <= '0';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_INSTR3_1;
-- INSTR3[0]
t_prcs_INSTR3_0: PROCESS
BEGIN
	INSTR3(0) <= '1';
WAIT;
END PROCESS t_prcs_INSTR3_0;
-- INSTRD[3]
t_prcs_INSTRD_3: PROCESS
BEGIN
	INSTRD(3) <= '0';
	WAIT FOR 150000 ps;
	INSTRD(3) <= '1';
	WAIT FOR 150000 ps;
	INSTRD(3) <= '0';
	WAIT FOR 100000 ps;
	INSTRD(3) <= '1';
	WAIT FOR 150000 ps;
	INSTRD(3) <= '0';
	WAIT FOR 150000 ps;
	INSTRD(3) <= '1';
	WAIT FOR 100000 ps;
	INSTRD(3) <= '0';
	WAIT FOR 150000 ps;
	INSTRD(3) <= '1';
WAIT;
END PROCESS t_prcs_INSTRD_3;
-- INSTRD[2]
t_prcs_INSTRD_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		INSTRD(2) <= '0';
		WAIT FOR 100000 ps;
		INSTRD(2) <= '1';
		WAIT FOR 50000 ps;
		INSTRD(2) <= '0';
		WAIT FOR 50000 ps;
		INSTRD(2) <= '1';
		WAIT FOR 100000 ps;
		INSTRD(2) <= '0';
		WAIT FOR 50000 ps;
		INSTRD(2) <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	INSTRD(2) <= '0';
	WAIT FOR 100000 ps;
	INSTRD(2) <= '1';
	WAIT FOR 50000 ps;
	INSTRD(2) <= '0';
WAIT;
END PROCESS t_prcs_INSTRD_2;
-- INSTRD[1]
t_prcs_INSTRD_1: PROCESS
BEGIN
	INSTRD(1) <= '0';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 4
	LOOP
		INSTRD(1) <= '1';
		WAIT FOR 100000 ps;
		INSTRD(1) <= '0';
		WAIT FOR 100000 ps;
	END LOOP;
	INSTRD(1) <= '1';
	WAIT FOR 100000 ps;
	INSTRD(1) <= '0';
WAIT;
END PROCESS t_prcs_INSTRD_1;
-- INSTRD[0]
t_prcs_INSTRD_0: PROCESS
BEGIN
LOOP
	INSTRD(0) <= '0';
	WAIT FOR 50000 ps;
	INSTRD(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_INSTRD_0;
-- WRITEBACKDATA[15]
t_prcs_WRITEBACKDATA_15: PROCESS
BEGIN
	WRITEBACKDATA(15) <= '0';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_15;
-- WRITEBACKDATA[14]
t_prcs_WRITEBACKDATA_14: PROCESS
BEGIN
	WRITEBACKDATA(14) <= '0';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_14;
-- WRITEBACKDATA[13]
t_prcs_WRITEBACKDATA_13: PROCESS
BEGIN
	WRITEBACKDATA(13) <= '0';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_13;
-- WRITEBACKDATA[12]
t_prcs_WRITEBACKDATA_12: PROCESS
BEGIN
	WRITEBACKDATA(12) <= '1';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_12;
-- WRITEBACKDATA[11]
t_prcs_WRITEBACKDATA_11: PROCESS
BEGIN
	WRITEBACKDATA(11) <= '1';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_11;
-- WRITEBACKDATA[10]
t_prcs_WRITEBACKDATA_10: PROCESS
BEGIN
	WRITEBACKDATA(10) <= '1';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_10;
-- WRITEBACKDATA[9]
t_prcs_WRITEBACKDATA_9: PROCESS
BEGIN
	WRITEBACKDATA(9) <= '1';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_9;
-- WRITEBACKDATA[8]
t_prcs_WRITEBACKDATA_8: PROCESS
BEGIN
	WRITEBACKDATA(8) <= '1';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_8;
-- WRITEBACKDATA[7]
t_prcs_WRITEBACKDATA_7: PROCESS
BEGIN
	WRITEBACKDATA(7) <= '1';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_7;
-- WRITEBACKDATA[6]
t_prcs_WRITEBACKDATA_6: PROCESS
BEGIN
	WRITEBACKDATA(6) <= '0';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_6;
-- WRITEBACKDATA[5]
t_prcs_WRITEBACKDATA_5: PROCESS
BEGIN
	WRITEBACKDATA(5) <= '0';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_5;
-- WRITEBACKDATA[4]
t_prcs_WRITEBACKDATA_4: PROCESS
BEGIN
	WRITEBACKDATA(4) <= '0';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_4;
-- WRITEBACKDATA[3]
t_prcs_WRITEBACKDATA_3: PROCESS
BEGIN
	WRITEBACKDATA(3) <= '1';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_3;
-- WRITEBACKDATA[2]
t_prcs_WRITEBACKDATA_2: PROCESS
BEGIN
	WRITEBACKDATA(2) <= '1';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_2;
-- WRITEBACKDATA[1]
t_prcs_WRITEBACKDATA_1: PROCESS
BEGIN
	WRITEBACKDATA(1) <= '1';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_1;
-- WRITEBACKDATA[0]
t_prcs_WRITEBACKDATA_0: PROCESS
BEGIN
	WRITEBACKDATA(0) <= '1';
WAIT;
END PROCESS t_prcs_WRITEBACKDATA_0;

-- WRITEFLAG
t_prcs_WRITEFLAG: PROCESS
BEGIN
	WRITEFLAG <= '1';
WAIT;
END PROCESS t_prcs_WRITEFLAG;
END BancodeRegistradores_arch;
