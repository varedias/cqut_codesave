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
-- Generated on "12/29/2024 20:26:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CPU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_vhd_vec_tst IS
END CPU_vhd_vec_tst;
ARCHITECTURE CPU_arch OF CPU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BLANKTEST : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL RQA1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL RQA2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL RQB1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL RQB2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL RQC1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL RQC2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL RRR : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT CPU
	PORT (
	BLANKTEST : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	RQA1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	RQA2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	RQB1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	RQB2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	RQC1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	RQC2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	RRR : OUT STD_LOGIC;
	RST : IN STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CPU
	PORT MAP (
-- list connections between master ports and signals
	BLANKTEST => BLANKTEST,
	clock => clock,
	RQA1 => RQA1,
	RQA2 => RQA2,
	RQB1 => RQB1,
	RQB2 => RQB2,
	RQC1 => RQC1,
	RQC2 => RQC2,
	RRR => RRR,
	RST => RST,
	S => S
	);

-- BLANKTEST
t_prcs_BLANKTEST: PROCESS
BEGIN
	BLANKTEST <= '1';
WAIT;
END PROCESS t_prcs_BLANKTEST;

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '1';
	WAIT FOR 35000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 30000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 15000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 15000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 15000 ps;
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 45000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 15000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 30000 ps;
	clock <= '1';
	WAIT FOR 15000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 15000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 15000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 30000 ps;
	clock <= '1';
	WAIT FOR 15000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;
END CPU_arch;
