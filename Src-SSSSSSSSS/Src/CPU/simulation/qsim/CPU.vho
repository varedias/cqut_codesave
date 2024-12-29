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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Standard Edition"

-- DATE "12/29/2024 20:26:44"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	RRR : OUT std_logic;
	RST : IN std_logic;
	clock : IN std_logic;
	RQA1 : OUT std_logic_vector(6 DOWNTO 0);
	BLANKTEST : IN std_logic;
	RQA2 : OUT std_logic_vector(6 DOWNTO 0);
	RQB1 : OUT std_logic_vector(6 DOWNTO 0);
	S : OUT std_logic_vector(3 DOWNTO 0);
	RQB2 : OUT std_logic_vector(6 DOWNTO 0);
	RQC1 : OUT std_logic_vector(6 DOWNTO 0);
	RQC2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- RRR	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQA1[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQA1[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQA1[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQA1[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQA1[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQA1[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQA1[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQA2[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQA2[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQA2[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQA2[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQA2[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQA2[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQA2[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQB1[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQB1[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQB1[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQB1[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQB1[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQB1[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQB1[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQB2[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQB2[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQB2[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQB2[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQB2[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQB2[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQB2[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQC1[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQC1[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQC1[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQC1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQC1[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQC1[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQC1[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQC2[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQC2[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQC2[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQC2[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQC2[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQC2[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RQC2[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLANKTEST	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_RRR : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_RQA1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BLANKTEST : std_logic;
SIGNAL ww_RQA2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_RQB1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RQB2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_RQC1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_RQC2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst|PC_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst|PC_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst|PC_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \inst|PC_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \inst|PC_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \inst|Add0~2\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst|PC_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \inst|PC_out~3_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|PC_out[7]~reg0_q\ : std_logic;
SIGNAL \inst|PC_out~2_combout\ : std_logic;
SIGNAL \inst|PC_out[6]~reg0_q\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst|PC_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \inst|PC_out[6]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \inst|PC_out~1_combout\ : std_logic;
SIGNAL \inst|PC_out[5]~reg0_q\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst|PC_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \inst|PC_out[5]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \inst|PC_out~0_combout\ : std_logic;
SIGNAL \inst|PC_out[4]~reg0_q\ : std_logic;
SIGNAL \inst|PC_out~7_combout\ : std_logic;
SIGNAL \inst|PC_out[3]~reg0_q\ : std_logic;
SIGNAL \inst|PC_out~6_combout\ : std_logic;
SIGNAL \inst|PC_out[2]~reg0_q\ : std_logic;
SIGNAL \inst|PC_out~5_combout\ : std_logic;
SIGNAL \inst|PC_out[1]~reg0_q\ : std_logic;
SIGNAL \inst|PC_out~4_combout\ : std_logic;
SIGNAL \inst|PC_out[0]~reg0_q\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst22|Mux10~0_combout\ : std_logic;
SIGNAL \BLANKTEST~input_o\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst22|Mux7~0_combout\ : std_logic;
SIGNAL \inst22|Mux12~0_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst22|Mux4~0_combout\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~1_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]~feeder_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~2_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~1_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~3_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~1_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~2\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~5_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~6\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~9_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~10\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~13_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~14\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~17_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~18\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~21_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~22\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~25_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~26\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~29_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~1_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~4_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~5_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Equal0~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~3_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~2_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Equal0~1_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]~2_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\ : std_logic;
SIGNAL \inst22|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst22|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst22|Mux6~0_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \inst19|Mux13~1_combout\ : std_logic;
SIGNAL \inst22|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst19|Add0~34_cout\ : std_logic;
SIGNAL \inst19|Add0~18\ : std_logic;
SIGNAL \inst19|Add0~22\ : std_logic;
SIGNAL \inst19|Add0~26\ : std_logic;
SIGNAL \inst19|Add0~29_sumout\ : std_logic;
SIGNAL \inst19|Mux13~0_combout\ : std_logic;
SIGNAL \inst19|F9[7]~3_combout\ : std_logic;
SIGNAL \inst19|F9[7]~4_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|Add0~30\ : std_logic;
SIGNAL \inst19|Add0~2\ : std_logic;
SIGNAL \inst19|Add0~6\ : std_logic;
SIGNAL \inst19|Add0~10\ : std_logic;
SIGNAL \inst19|Add0~14\ : std_logic;
SIGNAL \inst19|Add0~37_sumout\ : std_logic;
SIGNAL \inst19|Mux4~0_combout\ : std_logic;
SIGNAL \inst19|Mux4~1_combout\ : std_logic;
SIGNAL \inst19|Mux8~0_combout\ : std_logic;
SIGNAL \inst19|Mux8~2_combout\ : std_logic;
SIGNAL \inst19|F9[15]~0_combout\ : std_logic;
SIGNAL \inst19|Mux8~1_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|Add0~38\ : std_logic;
SIGNAL \inst19|Add0~41_sumout\ : std_logic;
SIGNAL \inst19|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \inst19|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \inst19|LessThan0~0_combout\ : std_logic;
SIGNAL \inst19|F9[9]~8_combout\ : std_logic;
SIGNAL \inst19|F9[15]~7_combout\ : std_logic;
SIGNAL \inst19|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \inst19|F9[7]~6_combout\ : std_logic;
SIGNAL \inst19|Mux7~1_combout\ : std_logic;
SIGNAL \inst19|Mux7~0_combout\ : std_logic;
SIGNAL \inst19|Mux7~2_combout\ : std_logic;
SIGNAL \inst19|Mux7~4_combout\ : std_logic;
SIGNAL \inst19|Mux7~5_combout\ : std_logic;
SIGNAL \inst19|Mux7~3_combout\ : std_logic;
SIGNAL \inst19|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \inst19|Mux6~1_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w10_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|Mux6~2_combout\ : std_logic;
SIGNAL \inst19|Mux6~0_combout\ : std_logic;
SIGNAL \inst19|Add0~42\ : std_logic;
SIGNAL \inst19|Add0~45_sumout\ : std_logic;
SIGNAL \inst19|Mux6~3_combout\ : std_logic;
SIGNAL \inst19|Mux5~0_combout\ : std_logic;
SIGNAL \inst19|Mux5~1_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w11_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|Mux5~2_combout\ : std_logic;
SIGNAL \inst19|Add0~46\ : std_logic;
SIGNAL \inst19|Add0~49_sumout\ : std_logic;
SIGNAL \inst19|Mux5~3_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w13_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|Mux3~2_combout\ : std_logic;
SIGNAL \inst19|Mux3~0_combout\ : std_logic;
SIGNAL \inst19|Mux3~1_combout\ : std_logic;
SIGNAL \inst19|Mux3~4_combout\ : std_logic;
SIGNAL \inst19|Mux3~5_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|Add0~50\ : std_logic;
SIGNAL \inst19|Add0~54\ : std_logic;
SIGNAL \inst19|Add0~57_sumout\ : std_logic;
SIGNAL \inst19|Mux3~3_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w15_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|Mux1~2_combout\ : std_logic;
SIGNAL \inst19|Mux1~1_combout\ : std_logic;
SIGNAL \inst19|Mux1~0_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w14_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|Add0~58\ : std_logic;
SIGNAL \inst19|Add0~62\ : std_logic;
SIGNAL \inst19|Add0~65_sumout\ : std_logic;
SIGNAL \inst19|Mux1~3_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[15]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[14]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[13]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[12]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[11]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[10]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[9]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[8]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w15_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w13_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|Mux4~4_combout\ : std_logic;
SIGNAL \inst19|Add0~53_sumout\ : std_logic;
SIGNAL \inst19|Mux4~2_combout\ : std_logic;
SIGNAL \inst19|Mux4~3_combout\ : std_logic;
SIGNAL \inst19|Mux4~5_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w11_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \RT|A[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w10_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|Add0~13_sumout\ : std_logic;
SIGNAL \inst19|Mux9~0_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|Add0~9_sumout\ : std_logic;
SIGNAL \inst19|Mux10~0_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \RT|A[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|F9[7]~1_combout\ : std_logic;
SIGNAL \inst19|Add0~25_sumout\ : std_logic;
SIGNAL \inst19|Mux14~0_combout\ : std_logic;
SIGNAL \inst19|Mux2~0_combout\ : std_logic;
SIGNAL \inst19|Mux2~2_combout\ : std_logic;
SIGNAL \inst19|Add0~61_sumout\ : std_logic;
SIGNAL \inst19|Mux2~1_combout\ : std_logic;
SIGNAL \inst19|Mux2~3_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w14_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \inst19|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \inst19|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \inst19|Mux15~0_combout\ : std_logic;
SIGNAL \inst19|Mux15~1_combout\ : std_logic;
SIGNAL \inst19|F9[7]~5_combout\ : std_logic;
SIGNAL \inst19|Add0~21_sumout\ : std_logic;
SIGNAL \inst19|Mux15~3_combout\ : std_logic;
SIGNAL \inst19|Mux15~2_combout\ : std_logic;
SIGNAL \inst19|Mux15~5_combout\ : std_logic;
SIGNAL \inst19|Mux15~4_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \inst19|Mux12~0_combout\ : std_logic;
SIGNAL \inst19|Add0~1_sumout\ : std_logic;
SIGNAL \inst19|Mux12~1_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|Mux16~3_combout\ : std_logic;
SIGNAL \inst19|Mux16~4_combout\ : std_logic;
SIGNAL \inst19|Add0~17_sumout\ : std_logic;
SIGNAL \inst19|Mux16~2_combout\ : std_logic;
SIGNAL \inst19|Mux16~0_combout\ : std_logic;
SIGNAL \inst19|Mux16~1_combout\ : std_logic;
SIGNAL \inst19|Mux16~5_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|LessThan0~1_combout\ : std_logic;
SIGNAL \inst19|LessThan0~2_combout\ : std_logic;
SIGNAL \inst19|F9[7]~2_combout\ : std_logic;
SIGNAL \inst19|Add0~5_sumout\ : std_logic;
SIGNAL \inst19|Mux11~1_combout\ : std_logic;
SIGNAL \inst19|Mux11~0_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst10|Mux7~0_combout\ : std_logic;
SIGNAL \inst10|Mux8~0_combout\ : std_logic;
SIGNAL \inst10|Mux9~0_combout\ : std_logic;
SIGNAL \inst10|Mux10~0_combout\ : std_logic;
SIGNAL \inst10|Mux11~0_combout\ : std_logic;
SIGNAL \inst10|Mux12~0_combout\ : std_logic;
SIGNAL \inst10|Mux13~0_combout\ : std_logic;
SIGNAL \inst10|Mux0~0_combout\ : std_logic;
SIGNAL \inst10|Mux1~0_combout\ : std_logic;
SIGNAL \inst10|Mux2~0_combout\ : std_logic;
SIGNAL \inst10|Mux3~0_combout\ : std_logic;
SIGNAL \inst10|Mux4~0_combout\ : std_logic;
SIGNAL \inst10|Mux5~0_combout\ : std_logic;
SIGNAL \inst10|Mux6~0_combout\ : std_logic;
SIGNAL \inst11|Mux7~0_combout\ : std_logic;
SIGNAL \inst11|Mux8~0_combout\ : std_logic;
SIGNAL \inst11|Mux9~0_combout\ : std_logic;
SIGNAL \inst11|Mux10~0_combout\ : std_logic;
SIGNAL \inst11|Mux11~0_combout\ : std_logic;
SIGNAL \inst11|Mux12~0_combout\ : std_logic;
SIGNAL \inst11|Mux13~0_combout\ : std_logic;
SIGNAL \inst11|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|Mux1~0_combout\ : std_logic;
SIGNAL \inst11|Mux2~0_combout\ : std_logic;
SIGNAL \inst11|Mux3~0_combout\ : std_logic;
SIGNAL \inst11|Mux4~0_combout\ : std_logic;
SIGNAL \inst11|Mux5~0_combout\ : std_logic;
SIGNAL \inst11|Mux6~0_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \RT|A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst19|F9\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RS|A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_tdo_sel_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst19|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_PC_out[3]~reg0_q\ : std_logic;
SIGNAL \inst|ALT_INV_PC_out[2]~reg0_q\ : std_logic;
SIGNAL \inst|ALT_INV_PC_out[1]~reg0_q\ : std_logic;
SIGNAL \inst|ALT_INV_PC_out[0]~reg0_q\ : std_logic;
SIGNAL \inst|ALT_INV_PC_out[7]~reg0_q\ : std_logic;
SIGNAL \inst|ALT_INV_PC_out[6]~reg0_q\ : std_logic;
SIGNAL \inst|ALT_INV_PC_out[5]~reg0_q\ : std_logic;
SIGNAL \inst|ALT_INV_PC_out[4]~reg0_q\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_bypass_reg_out~q\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ir_loaded_address_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_is_in_use_reg~q\ : std_logic;
SIGNAL \inst19|ALT_INV_F9\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RT|ALT_INV_A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_adapted_tdo~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux7~5_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux3~5_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \inst19|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR~4_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR~3_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg[6]~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_reg[1]~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux16~4_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux16~3_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux16~2_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_F9[7]~5_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_ShiftLeft0~6_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_ShiftLeft0~5_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_F9[7]~4_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_F9[7]~3_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_F9[7]~2_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_ShiftLeft0~4_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_F9[7]~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_ShiftLeft0~3_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_F9[15]~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_ShiftLeft0~2_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_ShiftLeft0~1_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w9_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w8_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \RS|ALT_INV_A\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_tdo_sel_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux15~5_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_ShiftLeft0~8_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_ShiftLeft0~7_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR~6_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w15_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w14_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w13_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux4~4_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w12_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w11_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w10_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_F9[9]~8_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_F9[15]~7_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_F9[7]~6_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[4]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[1]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[7]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \RT|ALT_INV_A[11]~DUPLICATE_q\ : std_logic;
SIGNAL \RT|ALT_INV_A[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_PC_out[6]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_PC_out[5]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clock~input_o\ : std_logic;
SIGNAL \ALT_INV_RST~input_o\ : std_logic;
SIGNAL \ALT_INV_BLANKTEST~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~2_combout\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
RRR <= ww_RRR;
ww_RST <= RST;
ww_clock <= clock;
RQA1 <= ww_RQA1;
ww_BLANKTEST <= BLANKTEST;
RQA2 <= ww_RQA2;
RQB1 <= ww_RQB1;
S <= ww_S;
RQB2 <= ww_RQB2;
RQC1 <= ww_RQC1;
RQC2 <= ww_RQC2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|PC_out[7]~reg0_q\ & \inst|PC_out[6]~reg0DUPLICATE_q\ & \inst|PC_out[5]~reg0DUPLICATE_q\ & \inst|PC_out[4]~reg0_q\ & \inst|PC_out[3]~reg0_q\ & \inst|PC_out[2]~reg0_q\ & 
\inst|PC_out[1]~reg0_q\ & \inst|PC_out[0]~reg0_q\);

\inst2|altsyncram_component|auto_generated|q_a\(0) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst2|altsyncram_component|auto_generated|q_a\(1) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst2|altsyncram_component|auto_generated|q_a\(2) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst2|altsyncram_component|auto_generated|q_a\(3) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst2|altsyncram_component|auto_generated|q_a\(4) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst2|altsyncram_component|auto_generated|q_a\(5) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst2|altsyncram_component|auto_generated|q_a\(6) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst2|altsyncram_component|auto_generated|q_a\(7) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst2|altsyncram_component|auto_generated|q_a\(8) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst2|altsyncram_component|auto_generated|q_a\(9) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst2|altsyncram_component|auto_generated|q_a\(10) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst2|altsyncram_component|auto_generated|q_a\(11) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst2|altsyncram_component|auto_generated|q_a\(12) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst2|altsyncram_component|auto_generated|q_a\(13) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst2|altsyncram_component|auto_generated|q_a\(14) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst2|altsyncram_component|auto_generated|q_a\(15) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \RT|A\(15) & \RT|A\(14) & \RT|A\(13) & \RT|A\(12) & \RT|A[11]~DUPLICATE_q\ & \RT|A\(10) & \RT|A\(9) & \RT|A\(8) & \RT|A\(7) & 
\RT|A\(6) & \RT|A\(5) & \RT|A\(4) & \RT|A\(3) & \RT|A\(2) & \RT|A\(1) & \RT|A\(0));

\inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15) & 
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14) & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13) & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12) & 
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11) & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10) & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9) & 
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8) & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7) & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6) & 
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5) & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4) & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3) & 
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2) & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1) & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

\inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\ <= (\inst19|F9\(7) & \inst19|F9\(6) & \inst19|F9\(5) & \inst19|F9\(4) & \inst19|F9\(3) & \inst19|F9\(2) & \inst19|F9\(1) & \inst19|F9\(0));

\inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\ <= (\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & 
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & 
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(0) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(0);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(1) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(1);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(2) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(2);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(3) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(3);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(4) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(4);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(5) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(5);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(6) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(6);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(7) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(7);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(8) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(8);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(9) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(9);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(10) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(10);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(11) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(11);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(12) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(12);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(13) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(13);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(14) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(14);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(15) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(15);

\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(0) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(0);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(1) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(1);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(2) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(2);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(3) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(3);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(4) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(4);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(5) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(5);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(6) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(6);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(7) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(7);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(8) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(8);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(9) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(9);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(10) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(10);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(11) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(11);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(12) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(12);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(13) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(13);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(14) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(14);
\inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(15) <= \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(15);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(7) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(6) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(5) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(4) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(3) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(2) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(1) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(0) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0);
\inst19|ALT_INV_Add0~29_sumout\ <= NOT \inst19|Add0~29_sumout\;
\inst19|ALT_INV_Add0~25_sumout\ <= NOT \inst19|Add0~25_sumout\;
\inst19|ALT_INV_Add0~21_sumout\ <= NOT \inst19|Add0~21_sumout\;
\inst19|ALT_INV_Add0~17_sumout\ <= NOT \inst19|Add0~17_sumout\;
\inst19|ALT_INV_Add0~13_sumout\ <= NOT \inst19|Add0~13_sumout\;
\inst19|ALT_INV_Add0~9_sumout\ <= NOT \inst19|Add0~9_sumout\;
\inst19|ALT_INV_Add0~5_sumout\ <= NOT \inst19|Add0~5_sumout\;
\inst19|ALT_INV_Add0~1_sumout\ <= NOT \inst19|Add0~1_sumout\;
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(1) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(1);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(2) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(2);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(3) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(3);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(4) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(4);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(5) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(5);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(6) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(6);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(7) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(7);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(8) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(8);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(9) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(9);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(10) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(10);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(11) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(11);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(12) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(12);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(13) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(13);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(14) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(14);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(15) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(15);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(1) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(1);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(2) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(2);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(3) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(3);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(4) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(4);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(5) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(5);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(6) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(6);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(7) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(7);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(8) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(8);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(9) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(9);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(10) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(10);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(11) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(11);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(12) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(12);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(13) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(13);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(14) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(14);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(15) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(15);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(0) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_b\(0);
\inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(0) <= NOT \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(0);
\inst|ALT_INV_Add0~29_sumout\ <= NOT \inst|Add0~29_sumout\;
\inst|ALT_INV_Add0~25_sumout\ <= NOT \inst|Add0~25_sumout\;
\inst|ALT_INV_Add0~21_sumout\ <= NOT \inst|Add0~21_sumout\;
\inst|ALT_INV_Add0~17_sumout\ <= NOT \inst|Add0~17_sumout\;
\inst|ALT_INV_Add0~13_sumout\ <= NOT \inst|Add0~13_sumout\;
\inst|ALT_INV_Add0~9_sumout\ <= NOT \inst|Add0~9_sumout\;
\inst|ALT_INV_Add0~5_sumout\ <= NOT \inst|Add0~5_sumout\;
\inst|ALT_INV_Add0~1_sumout\ <= NOT \inst|Add0~1_sumout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_reg\(0) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0);
\inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst2|altsyncram_component|auto_generated|q_a\(1);
\inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst2|altsyncram_component|auto_generated|q_a\(2);
\inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst2|altsyncram_component|auto_generated|q_a\(3);
\inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst2|altsyncram_component|auto_generated|q_a\(4);
\inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst2|altsyncram_component|auto_generated|q_a\(5);
\inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst2|altsyncram_component|auto_generated|q_a\(6);
\inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst2|altsyncram_component|auto_generated|q_a\(7);
\inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \inst2|altsyncram_component|auto_generated|q_a\(8);
\inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \inst2|altsyncram_component|auto_generated|q_a\(9);
\inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \inst2|altsyncram_component|auto_generated|q_a\(12);
\inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13) <= NOT \inst2|altsyncram_component|auto_generated|q_a\(13);
\inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \inst2|altsyncram_component|auto_generated|q_a\(14);
\inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \inst2|altsyncram_component|auto_generated|q_a\(15);
\inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst2|altsyncram_component|auto_generated|q_a\(0);
\inst|ALT_INV_PC_out[3]~reg0_q\ <= NOT \inst|PC_out[3]~reg0_q\;
\inst|ALT_INV_PC_out[2]~reg0_q\ <= NOT \inst|PC_out[2]~reg0_q\;
\inst|ALT_INV_PC_out[1]~reg0_q\ <= NOT \inst|PC_out[1]~reg0_q\;
\inst|ALT_INV_PC_out[0]~reg0_q\ <= NOT \inst|PC_out[0]~reg0_q\;
\inst|ALT_INV_PC_out[7]~reg0_q\ <= NOT \inst|PC_out[7]~reg0_q\;
\inst|ALT_INV_PC_out[6]~reg0_q\ <= NOT \inst|PC_out[6]~reg0_q\;
\inst|ALT_INV_PC_out[5]~reg0_q\ <= NOT \inst|PC_out[5]~reg0_q\;
\inst|ALT_INV_PC_out[4]~reg0_q\ <= NOT \inst|PC_out[4]~reg0_q\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_bypass_reg_out~q\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR\(0) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(0);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ir_loaded_address_reg\(6) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(6);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ir_loaded_address_reg\(5) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(5);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ir_loaded_address_reg\(4) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(4);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ir_loaded_address_reg\(3) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ir_loaded_address_reg\(2) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ir_loaded_address_reg\(1) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ir_loaded_address_reg\(0) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_is_in_use_reg~q\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\;
\inst19|ALT_INV_F9\(3) <= NOT \inst19|F9\(3);
\inst19|ALT_INV_F9\(2) <= NOT \inst19|F9\(2);
\inst19|ALT_INV_F9\(1) <= NOT \inst19|F9\(1);
\inst19|ALT_INV_F9\(0) <= NOT \inst19|F9\(0);
\inst19|ALT_INV_F9\(7) <= NOT \inst19|F9\(7);
\inst19|ALT_INV_F9\(6) <= NOT \inst19|F9\(6);
\inst19|ALT_INV_F9\(5) <= NOT \inst19|F9\(5);
\inst19|ALT_INV_F9\(4) <= NOT \inst19|F9\(4);
\RT|ALT_INV_A\(2) <= NOT \RT|A\(2);
\RT|ALT_INV_A\(1) <= NOT \RT|A\(1);
\RT|ALT_INV_A\(0) <= NOT \RT|A\(0);
\inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ <= NOT \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\;
\inst22|ALT_INV_Mux3~0_combout\ <= NOT \inst22|Mux3~0_combout\;
\inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst22|ALT_INV_Mux2~0_combout\ <= NOT \inst22|Mux2~0_combout\;
\inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\ <= NOT \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\;
\inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ <= NOT \inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\;
\inst22|ALT_INV_Mux0~0_combout\ <= NOT \inst22|Mux0~0_combout\;
\RT|ALT_INV_A\(7) <= NOT \RT|A\(7);
\RT|ALT_INV_A\(6) <= NOT \RT|A\(6);
\RT|ALT_INV_A\(5) <= NOT \RT|A\(5);
\RT|ALT_INV_A\(4) <= NOT \RT|A\(4);
\inst22|ALT_INV_Mux10~0_combout\ <= NOT \inst22|Mux10~0_combout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_adapted_tdo~0_combout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0_combout\;
\inst19|ALT_INV_Mux8~2_combout\ <= NOT \inst19|Mux8~2_combout\;
\inst19|ALT_INV_Mux7~5_combout\ <= NOT \inst19|Mux7~5_combout\;
\inst19|ALT_INV_Mux3~5_combout\ <= NOT \inst19|Mux3~5_combout\;
\inst19|ALT_INV_Add0~65_sumout\ <= NOT \inst19|Add0~65_sumout\;
\inst19|ALT_INV_Add0~61_sumout\ <= NOT \inst19|Add0~61_sumout\;
\inst19|ALT_INV_Add0~57_sumout\ <= NOT \inst19|Add0~57_sumout\;
\inst19|ALT_INV_Add0~53_sumout\ <= NOT \inst19|Add0~53_sumout\;
\inst19|ALT_INV_Add0~49_sumout\ <= NOT \inst19|Add0~49_sumout\;
\inst19|ALT_INV_Add0~45_sumout\ <= NOT \inst19|Add0~45_sumout\;
\inst19|ALT_INV_Add0~41_sumout\ <= NOT \inst19|Add0~41_sumout\;
\inst19|ALT_INV_Add0~37_sumout\ <= NOT \inst19|Add0~37_sumout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~29_sumout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~29_sumout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~25_sumout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~25_sumout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~21_sumout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~21_sumout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~17_sumout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~17_sumout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~13_sumout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~13_sumout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~9_sumout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~9_sumout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~5_sumout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~5_sumout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~1_sumout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~1_sumout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR~4_combout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR~3_combout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR\(2) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(2);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg[6]~0_combout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~0_combout\;
\inst19|ALT_INV_F9\(15) <= NOT \inst19|F9\(15);
\inst19|ALT_INV_F9\(14) <= NOT \inst19|F9\(14);
\inst19|ALT_INV_F9\(13) <= NOT \inst19|F9\(13);
\inst19|ALT_INV_F9\(12) <= NOT \inst19|F9\(12);
\inst19|ALT_INV_F9\(11) <= NOT \inst19|F9\(11);
\inst19|ALT_INV_F9\(10) <= NOT \inst19|F9\(10);
\inst19|ALT_INV_F9\(9) <= NOT \inst19|F9\(9);
\inst19|ALT_INV_F9\(8) <= NOT \inst19|F9\(8);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_reg[1]~0_combout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~0_combout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~2_combout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(0) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(2) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(3) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(1) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR~0_combout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(4) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(3) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(0) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(1) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(2) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR\(1) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(1);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\;
\inst19|ALT_INV_Mux15~3_combout\ <= NOT \inst19|Mux15~3_combout\;
\inst19|ALT_INV_Mux15~2_combout\ <= NOT \inst19|Mux15~2_combout\;
\inst19|ALT_INV_Mux15~1_combout\ <= NOT \inst19|Mux15~1_combout\;
\inst19|ALT_INV_Mux15~0_combout\ <= NOT \inst19|Mux15~0_combout\;
\inst19|ALT_INV_Mux16~4_combout\ <= NOT \inst19|Mux16~4_combout\;
\inst19|ALT_INV_Mux16~3_combout\ <= NOT \inst19|Mux16~3_combout\;
\inst19|ALT_INV_Mux16~2_combout\ <= NOT \inst19|Mux16~2_combout\;
\inst19|ALT_INV_Mux16~1_combout\ <= NOT \inst19|Mux16~1_combout\;
\inst19|ALT_INV_Mux16~0_combout\ <= NOT \inst19|Mux16~0_combout\;
\inst19|ALT_INV_F9[7]~5_combout\ <= NOT \inst19|F9[7]~5_combout\;
\inst19|ALT_INV_ShiftLeft0~6_combout\ <= NOT \inst19|ShiftLeft0~6_combout\;
\inst19|ALT_INV_ShiftLeft0~5_combout\ <= NOT \inst19|ShiftLeft0~5_combout\;
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\;
\inst19|ALT_INV_F9[7]~4_combout\ <= NOT \inst19|F9[7]~4_combout\;
\inst19|ALT_INV_F9[7]~3_combout\ <= NOT \inst19|F9[7]~3_combout\;
\inst19|ALT_INV_F9[7]~2_combout\ <= NOT \inst19|F9[7]~2_combout\;
\inst19|ALT_INV_LessThan0~2_combout\ <= NOT \inst19|LessThan0~2_combout\;
\inst19|ALT_INV_LessThan0~1_combout\ <= NOT \inst19|LessThan0~1_combout\;
\inst19|ALT_INV_LessThan0~0_combout\ <= NOT \inst19|LessThan0~0_combout\;
\inst19|ALT_INV_ShiftLeft0~4_combout\ <= NOT \inst19|ShiftLeft0~4_combout\;
\inst19|ALT_INV_F9[7]~1_combout\ <= NOT \inst19|F9[7]~1_combout\;
\inst19|ALT_INV_ShiftLeft0~3_combout\ <= NOT \inst19|ShiftLeft0~3_combout\;
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\;
\inst19|ALT_INV_Mux12~0_combout\ <= NOT \inst19|Mux12~0_combout\;
\inst19|ALT_INV_F9[15]~0_combout\ <= NOT \inst19|F9[15]~0_combout\;
\inst19|ALT_INV_ShiftLeft0~2_combout\ <= NOT \inst19|ShiftLeft0~2_combout\;
\RT|ALT_INV_A\(15) <= NOT \RT|A\(15);
\RT|ALT_INV_A\(14) <= NOT \RT|A\(14);
\RT|ALT_INV_A\(13) <= NOT \RT|A\(13);
\RT|ALT_INV_A\(12) <= NOT \RT|A\(12);
\RT|ALT_INV_A\(11) <= NOT \RT|A\(11);
\RT|ALT_INV_A\(10) <= NOT \RT|A\(10);
\inst19|ALT_INV_ShiftLeft0~1_combout\ <= NOT \inst19|ShiftLeft0~1_combout\;
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w9_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\;
\RT|ALT_INV_A\(9) <= NOT \RT|A\(9);
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w8_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\;
\RT|ALT_INV_A\(8) <= NOT \RT|A\(8);
\inst22|ALT_INV_Mux6~0_combout\ <= NOT \inst22|Mux6~0_combout\;
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\;
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\;
\inst19|ALT_INV_ShiftLeft0~0_combout\ <= NOT \inst19|ShiftLeft0~0_combout\;
\RS|ALT_INV_A\(0) <= NOT \RS|A\(0);
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\RS|ALT_INV_A\(1) <= NOT \RS|A\(1);
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\;
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\;
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\;
\inst22|ALT_INV_Mux4~0_combout\ <= NOT \inst22|Mux4~0_combout\;
\inst22|ALT_INV_Mux7~0_combout\ <= NOT \inst22|Mux7~0_combout\;
\inst22|ALT_INV_Mux12~0_combout\ <= NOT \inst22|Mux12~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_tdo_sel_reg\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_tdo_sel_reg\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][5]~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][4]~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][2]~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][1]~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(15) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(14) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(12) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(10) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(9) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(7) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(5) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(8) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(13) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(11) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(6) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1);
\ALT_INV_altera_internal_jtag~TDIUTAP\ <= NOT \altera_internal_jtag~TDIUTAP\;
\ALT_INV_altera_internal_jtag~TCKUTAP\ <= NOT \altera_internal_jtag~TCKUTAP\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\inst19|ALT_INV_Mux15~5_combout\ <= NOT \inst19|Mux15~5_combout\;
\inst19|ALT_INV_Mux3~4_combout\ <= NOT \inst19|Mux3~4_combout\;
\inst19|ALT_INV_Mux7~4_combout\ <= NOT \inst19|Mux7~4_combout\;
\inst19|ALT_INV_Mux13~1_combout\ <= NOT \inst19|Mux13~1_combout\;
\inst19|ALT_INV_Mux11~1_combout\ <= NOT \inst19|Mux11~1_combout\;
\inst19|ALT_INV_ShiftLeft0~8_combout\ <= NOT \inst19|ShiftLeft0~8_combout\;
\inst19|ALT_INV_ShiftLeft0~7_combout\ <= NOT \inst19|ShiftLeft0~7_combout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_Equal0~1_combout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Equal0~1_combout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR\(3) <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(3);
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR~6_combout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\;
\inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~2_combout\ <= NOT \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~2_combout\;
\inst19|ALT_INV_Mux1~2_combout\ <= NOT \inst19|Mux1~2_combout\;
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w15_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w15_n0_mux_dataout~0_combout\;
\inst19|ALT_INV_Mux1~1_combout\ <= NOT \inst19|Mux1~1_combout\;
\inst19|ALT_INV_Mux1~0_combout\ <= NOT \inst19|Mux1~0_combout\;
\inst19|ALT_INV_Mux2~2_combout\ <= NOT \inst19|Mux2~2_combout\;
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w14_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w14_n0_mux_dataout~0_combout\;
\inst19|ALT_INV_Mux2~1_combout\ <= NOT \inst19|Mux2~1_combout\;
\inst19|ALT_INV_Mux2~0_combout\ <= NOT \inst19|Mux2~0_combout\;
\inst19|ALT_INV_Mux3~2_combout\ <= NOT \inst19|Mux3~2_combout\;
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w13_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w13_n0_mux_dataout~0_combout\;
\inst19|ALT_INV_Mux3~1_combout\ <= NOT \inst19|Mux3~1_combout\;
\inst19|ALT_INV_Mux3~0_combout\ <= NOT \inst19|Mux3~0_combout\;
\inst19|ALT_INV_Mux4~4_combout\ <= NOT \inst19|Mux4~4_combout\;
\inst19|ALT_INV_Mux4~3_combout\ <= NOT \inst19|Mux4~3_combout\;
\inst19|ALT_INV_Mux4~2_combout\ <= NOT \inst19|Mux4~2_combout\;
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w12_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\;
\inst19|ALT_INV_Mux5~2_combout\ <= NOT \inst19|Mux5~2_combout\;
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w11_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w11_n0_mux_dataout~0_combout\;
\inst19|ALT_INV_Mux5~1_combout\ <= NOT \inst19|Mux5~1_combout\;
\inst19|ALT_INV_Mux5~0_combout\ <= NOT \inst19|Mux5~0_combout\;
\inst19|ALT_INV_Mux6~2_combout\ <= NOT \inst19|Mux6~2_combout\;
\inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w10_n0_mux_dataout~0_combout\ <= NOT \inst14|LPM_MUX_component|auto_generated|l1_w10_n0_mux_dataout~0_combout\;
\inst19|ALT_INV_Mux6~1_combout\ <= NOT \inst19|Mux6~1_combout\;
\inst19|ALT_INV_Mux6~0_combout\ <= NOT \inst19|Mux6~0_combout\;
\inst19|ALT_INV_Mux7~2_combout\ <= NOT \inst19|Mux7~2_combout\;
\inst19|ALT_INV_Mux7~1_combout\ <= NOT \inst19|Mux7~1_combout\;
\inst19|ALT_INV_F9[9]~8_combout\ <= NOT \inst19|F9[9]~8_combout\;
\inst19|ALT_INV_F9[15]~7_combout\ <= NOT \inst19|F9[15]~7_combout\;
\inst19|ALT_INV_F9[7]~6_combout\ <= NOT \inst19|F9[7]~6_combout\;
\inst19|ALT_INV_Mux7~0_combout\ <= NOT \inst19|Mux7~0_combout\;
\inst19|ALT_INV_Mux8~0_combout\ <= NOT \inst19|Mux8~0_combout\;
\inst19|ALT_INV_Mux4~1_combout\ <= NOT \inst19|Mux4~1_combout\;
\inst19|ALT_INV_Mux4~0_combout\ <= NOT \inst19|Mux4~0_combout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_Equal0~0_combout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Equal0~0_combout\;
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_clear_signal~combout\ <= NOT \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(4) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~4_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[3]~7_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[3]~6_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~5_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~5_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_reset_ena_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg[1]~1_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~1_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~1_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg[2]~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(4) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_proc~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_reset_ena_reg_proc~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(7) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(6) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(5) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state~9_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state~6_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_dr_scan_proc~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal0~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(5) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(6) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(7) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(8) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(9) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(4) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena~1_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena_proc~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~6_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~5_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~4_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~3_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~2_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~1_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal3~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_bypass_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[3]~DUPLICATE_q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~DUPLICATE_q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[4]~DUPLICATE_q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~DUPLICATE_q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[1]~DUPLICATE_q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~DUPLICATE_q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[7]~DUPLICATE_q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]~DUPLICATE_q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~DUPLICATE_q\;
\RT|ALT_INV_A[11]~DUPLICATE_q\ <= NOT \RT|A[11]~DUPLICATE_q\;
\RT|ALT_INV_A[3]~DUPLICATE_q\ <= NOT \RT|A[3]~DUPLICATE_q\;
\inst|ALT_INV_PC_out[6]~reg0DUPLICATE_q\ <= NOT \inst|PC_out[6]~reg0DUPLICATE_q\;
\inst|ALT_INV_PC_out[5]~reg0DUPLICATE_q\ <= NOT \inst|PC_out[5]~reg0DUPLICATE_q\;
\ALT_INV_clock~input_o\ <= NOT \clock~input_o\;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
\ALT_INV_BLANKTEST~input_o\ <= NOT \BLANKTEST~input_o\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~5_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~8_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~6_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~2_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~2_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2);

-- Location: MLABCELL_X6_Y2_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[7]~DUPLICATE_q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\);

-- Location: FF_X3_Y4_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]~DUPLICATE_q\);

-- Location: IOOBUF_X80_Y0_N19
\RRR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_RRR);

-- Location: IOOBUF_X89_Y4_N96
\RQA1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_RQA1(6));

-- Location: IOOBUF_X89_Y13_N39
\RQA1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_RQA1(5));

-- Location: IOOBUF_X89_Y13_N56
\RQA1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_RQA1(4));

-- Location: IOOBUF_X89_Y4_N79
\RQA1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_RQA1(3));

-- Location: IOOBUF_X89_Y11_N96
\RQA1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_RQA1(2));

-- Location: IOOBUF_X89_Y11_N79
\RQA1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_RQA1(1));

-- Location: IOOBUF_X89_Y8_N39
\RQA1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_RQA1(0));

-- Location: IOOBUF_X89_Y8_N56
\RQA2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_RQA2(6));

-- Location: IOOBUF_X89_Y15_N56
\RQA2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_RQA2(5));

-- Location: IOOBUF_X89_Y15_N39
\RQA2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_RQA2(4));

-- Location: IOOBUF_X89_Y16_N56
\RQA2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_RQA2(3));

-- Location: IOOBUF_X89_Y16_N39
\RQA2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_RQA2(2));

-- Location: IOOBUF_X89_Y6_N56
\RQA2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_RQA2(1));

-- Location: IOOBUF_X89_Y6_N39
\RQA2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_RQA2(0));

-- Location: IOOBUF_X89_Y25_N56
\RQB1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_RQB1(6));

-- Location: IOOBUF_X89_Y20_N96
\RQB1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_RQB1(5));

-- Location: IOOBUF_X89_Y25_N39
\RQB1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_RQB1(4));

-- Location: IOOBUF_X89_Y20_N79
\RQB1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_RQB1(3));

-- Location: IOOBUF_X89_Y23_N56
\RQB1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_RQB1(2));

-- Location: IOOBUF_X89_Y23_N39
\RQB1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_RQB1(1));

-- Location: IOOBUF_X89_Y9_N22
\RQB1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_RQB1(0));

-- Location: IOOBUF_X80_Y0_N2
\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_S(3));

-- Location: IOOBUF_X60_Y0_N2
\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\,
	devoe => ww_devoe,
	o => ww_S(2));

-- Location: IOOBUF_X52_Y0_N19
\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_S(1));

-- Location: IOOBUF_X52_Y0_N2
\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\,
	devoe => ww_devoe,
	o => ww_S(0));

-- Location: IOOBUF_X89_Y9_N5
\RQB2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_RQB2(6));

-- Location: IOOBUF_X89_Y11_N62
\RQB2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_RQB2(5));

-- Location: IOOBUF_X89_Y21_N39
\RQB2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_RQB2(4));

-- Location: IOOBUF_X89_Y4_N62
\RQB2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_RQB2(3));

-- Location: IOOBUF_X89_Y4_N45
\RQB2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_RQB2(2));

-- Location: IOOBUF_X89_Y16_N22
\RQB2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_RQB2(1));

-- Location: IOOBUF_X89_Y16_N5
\RQB2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_RQB2(0));

-- Location: IOOBUF_X89_Y20_N45
\RQC1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_RQC1(6));

-- Location: IOOBUF_X89_Y15_N5
\RQC1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_RQC1(5));

-- Location: IOOBUF_X89_Y15_N22
\RQC1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_RQC1(4));

-- Location: IOOBUF_X89_Y8_N22
\RQC1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_RQC1(3));

-- Location: IOOBUF_X89_Y13_N22
\RQC1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_RQC1(2));

-- Location: IOOBUF_X89_Y13_N5
\RQC1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_RQC1(1));

-- Location: IOOBUF_X89_Y11_N45
\RQC1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_RQC1(0));

-- Location: IOOBUF_X89_Y9_N39
\RQC2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_RQC2(6));

-- Location: IOOBUF_X89_Y23_N5
\RQC2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_RQC2(5));

-- Location: IOOBUF_X89_Y9_N56
\RQC2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_RQC2(4));

-- Location: IOOBUF_X89_Y23_N22
\RQC2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_RQC2(3));

-- Location: IOOBUF_X89_Y25_N22
\RQC2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_RQC2(2));

-- Location: IOOBUF_X89_Y21_N56
\RQC2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_RQC2(1));

-- Location: IOOBUF_X89_Y20_N62
\RQC2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_RQC2(0));

-- Location: IOOBUF_X11_Y0_N2
\altera_reserved_tdo~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: LABCELL_X7_Y6_N0
\inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~17_sumout\ = SUM(( \inst|PC_out[0]~reg0_q\ ) + ( VCC ) + ( !VCC ))
-- \inst|Add0~18\ = CARRY(( \inst|PC_out[0]~reg0_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_PC_out[0]~reg0_q\,
	cin => GND,
	sumout => \inst|Add0~17_sumout\,
	cout => \inst|Add0~18\);

-- Location: LABCELL_X7_Y6_N24
\inst|PC_out[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out[0]~reg0feeder_combout\ = \inst|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add0~17_sumout\,
	combout => \inst|PC_out[0]~reg0feeder_combout\);

-- Location: LABCELL_X7_Y6_N3
\inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~21_sumout\ = SUM(( \inst|PC_out[1]~reg0_q\ ) + ( GND ) + ( \inst|Add0~18\ ))
-- \inst|Add0~22\ = CARRY(( \inst|PC_out[1]~reg0_q\ ) + ( GND ) + ( \inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_PC_out[1]~reg0_q\,
	cin => \inst|Add0~18\,
	sumout => \inst|Add0~21_sumout\,
	cout => \inst|Add0~22\);

-- Location: LABCELL_X7_Y6_N42
\inst|PC_out[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out[1]~reg0feeder_combout\ = \inst|Add0~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add0~21_sumout\,
	combout => \inst|PC_out[1]~reg0feeder_combout\);

-- Location: LABCELL_X7_Y6_N6
\inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~25_sumout\ = SUM(( \inst|PC_out[2]~reg0_q\ ) + ( GND ) + ( \inst|Add0~22\ ))
-- \inst|Add0~26\ = CARRY(( \inst|PC_out[2]~reg0_q\ ) + ( GND ) + ( \inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_PC_out[2]~reg0_q\,
	cin => \inst|Add0~22\,
	sumout => \inst|Add0~25_sumout\,
	cout => \inst|Add0~26\);

-- Location: LABCELL_X7_Y6_N45
\inst|PC_out[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out[2]~reg0feeder_combout\ = \inst|Add0~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add0~25_sumout\,
	combout => \inst|PC_out[2]~reg0feeder_combout\);

-- Location: LABCELL_X7_Y6_N9
\inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~29_sumout\ = SUM(( \inst|PC_out[3]~reg0_q\ ) + ( GND ) + ( \inst|Add0~26\ ))
-- \inst|Add0~30\ = CARRY(( \inst|PC_out[3]~reg0_q\ ) + ( GND ) + ( \inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_PC_out[3]~reg0_q\,
	cin => \inst|Add0~26\,
	sumout => \inst|Add0~29_sumout\,
	cout => \inst|Add0~30\);

-- Location: LABCELL_X7_Y6_N48
\inst|PC_out[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out[3]~reg0feeder_combout\ = ( \inst|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Add0~29_sumout\,
	combout => \inst|PC_out[3]~reg0feeder_combout\);

-- Location: LABCELL_X7_Y6_N12
\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_sumout\ = SUM(( \inst|PC_out[4]~reg0_q\ ) + ( GND ) + ( \inst|Add0~30\ ))
-- \inst|Add0~2\ = CARRY(( \inst|PC_out[4]~reg0_q\ ) + ( GND ) + ( \inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_PC_out[4]~reg0_q\,
	cin => \inst|Add0~30\,
	sumout => \inst|Add0~1_sumout\,
	cout => \inst|Add0~2\);

-- Location: LABCELL_X7_Y6_N27
\inst|PC_out[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out[4]~reg0feeder_combout\ = \inst|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add0~1_sumout\,
	combout => \inst|PC_out[4]~reg0feeder_combout\);

-- Location: LABCELL_X7_Y6_N15
\inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~5_sumout\ = SUM(( \inst|PC_out[5]~reg0_q\ ) + ( GND ) + ( \inst|Add0~2\ ))
-- \inst|Add0~6\ = CARRY(( \inst|PC_out[5]~reg0_q\ ) + ( GND ) + ( \inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_PC_out[5]~reg0_q\,
	cin => \inst|Add0~2\,
	sumout => \inst|Add0~5_sumout\,
	cout => \inst|Add0~6\);

-- Location: LABCELL_X7_Y6_N18
\inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~9_sumout\ = SUM(( \inst|PC_out[6]~reg0_q\ ) + ( GND ) + ( \inst|Add0~6\ ))
-- \inst|Add0~10\ = CARRY(( \inst|PC_out[6]~reg0_q\ ) + ( GND ) + ( \inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_PC_out[6]~reg0_q\,
	cin => \inst|Add0~6\,
	sumout => \inst|Add0~9_sumout\,
	cout => \inst|Add0~10\);

-- Location: LABCELL_X7_Y6_N21
\inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~13_sumout\ = SUM(( \inst|PC_out[7]~reg0_q\ ) + ( GND ) + ( \inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_PC_out[7]~reg0_q\,
	cin => \inst|Add0~10\,
	sumout => \inst|Add0~13_sumout\);

-- Location: LABCELL_X7_Y6_N39
\inst|PC_out[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out[7]~reg0feeder_combout\ = \inst|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~13_sumout\,
	combout => \inst|PC_out[7]~reg0feeder_combout\);

-- Location: M10K_X5_Y5_N0
\inst2|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B00000A8000000000000000000000000000000007117062110520204D100390102901011F00018700986009050098400983009820058100A800E0000F000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "cpu_rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:inst2|altsyncram:altsyncram_component|altsyncram_7i14:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst3~combout\,
	portaaddr => \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X11_Y5_N51
\inst|PC_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out~3_combout\ = ( \inst|PC_out[7]~reg0_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(7) ) ) # ( !\inst|PC_out[7]~reg0_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(7) & ( (\inst2|altsyncram_component|auto_generated|q_a\(13) & 
-- (\inst2|altsyncram_component|auto_generated|q_a\(14) & (\inst2|altsyncram_component|auto_generated|q_a\(12) & !\inst2|altsyncram_component|auto_generated|q_a\(15)))) ) ) ) # ( \inst|PC_out[7]~reg0_q\ & ( !\inst2|altsyncram_component|auto_generated|q_a\(7) 
-- & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13)) # ((!\inst2|altsyncram_component|auto_generated|q_a\(14)) # ((!\inst2|altsyncram_component|auto_generated|q_a\(12)) # (\inst2|altsyncram_component|auto_generated|q_a\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111111100000001000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datae => \inst|ALT_INV_PC_out[7]~reg0_q\,
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \inst|PC_out~3_combout\);

-- Location: IOIBUF_X4_Y0_N18
\RST~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: MLABCELL_X6_Y2_N39
\inst|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(15) & ( \inst2|altsyncram_component|auto_generated|q_a\(12) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13)) # (!\inst2|altsyncram_component|auto_generated|q_a\(14)) 
-- ) ) ) # ( !\inst2|altsyncram_component|auto_generated|q_a\(15) & ( \inst2|altsyncram_component|auto_generated|q_a\(12) & ( (\inst2|altsyncram_component|auto_generated|q_a\(13) & \inst2|altsyncram_component|auto_generated|q_a\(14)) ) ) ) # ( 
-- \inst2|altsyncram_component|auto_generated|q_a\(15) & ( !\inst2|altsyncram_component|auto_generated|q_a\(12) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13)) # (!\inst2|altsyncram_component|auto_generated|q_a\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000010101011111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datae => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \inst|process_0~0_combout\);

-- Location: FF_X7_Y6_N41
\inst|PC_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst|PC_out[7]~reg0feeder_combout\,
	asdata => \inst|PC_out~3_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_out[7]~reg0_q\);

-- Location: MLABCELL_X6_Y5_N57
\inst|PC_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out~2_combout\ = ( \inst|PC_out[6]~reg0DUPLICATE_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(6) ) ) # ( !\inst|PC_out[6]~reg0DUPLICATE_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(6) & ( 
-- (\inst2|altsyncram_component|auto_generated|q_a\(13) & (\inst2|altsyncram_component|auto_generated|q_a\(12) & (\inst2|altsyncram_component|auto_generated|q_a\(14) & !\inst2|altsyncram_component|auto_generated|q_a\(15)))) ) ) ) # ( 
-- \inst|PC_out[6]~reg0DUPLICATE_q\ & ( !\inst2|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13)) # ((!\inst2|altsyncram_component|auto_generated|q_a\(12)) # 
-- ((!\inst2|altsyncram_component|auto_generated|q_a\(14)) # (\inst2|altsyncram_component|auto_generated|q_a\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111111100000001000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datae => \inst|ALT_INV_PC_out[6]~reg0DUPLICATE_q\,
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \inst|PC_out~2_combout\);

-- Location: FF_X7_Y6_N38
\inst|PC_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst|PC_out[6]~reg0feeder_combout\,
	asdata => \inst|PC_out~2_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_out[6]~reg0_q\);

-- Location: LABCELL_X7_Y6_N36
\inst|PC_out[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out[6]~reg0feeder_combout\ = \inst|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add0~9_sumout\,
	combout => \inst|PC_out[6]~reg0feeder_combout\);

-- Location: FF_X7_Y6_N37
\inst|PC_out[6]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst|PC_out[6]~reg0feeder_combout\,
	asdata => \inst|PC_out~2_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_out[6]~reg0DUPLICATE_q\);

-- Location: MLABCELL_X6_Y5_N15
\inst|PC_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out~1_combout\ = ( \inst|PC_out[5]~reg0DUPLICATE_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(12) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13)) # (((!\inst2|altsyncram_component|auto_generated|q_a\(14)) # 
-- (\inst2|altsyncram_component|auto_generated|q_a\(15))) # (\inst2|altsyncram_component|auto_generated|q_a\(5))) ) ) ) # ( !\inst|PC_out[5]~reg0DUPLICATE_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(12) & ( 
-- (\inst2|altsyncram_component|auto_generated|q_a\(13) & (\inst2|altsyncram_component|auto_generated|q_a\(5) & (\inst2|altsyncram_component|auto_generated|q_a\(14) & !\inst2|altsyncram_component|auto_generated|q_a\(15)))) ) ) ) # ( 
-- \inst|PC_out[5]~reg0DUPLICATE_q\ & ( !\inst2|altsyncram_component|auto_generated|q_a\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datae => \inst|ALT_INV_PC_out[5]~reg0DUPLICATE_q\,
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \inst|PC_out~1_combout\);

-- Location: FF_X7_Y6_N59
\inst|PC_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst|PC_out[5]~reg0feeder_combout\,
	asdata => \inst|PC_out~1_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_out[5]~reg0_q\);

-- Location: LABCELL_X7_Y6_N57
\inst|PC_out[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out[5]~reg0feeder_combout\ = ( \inst|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Add0~5_sumout\,
	combout => \inst|PC_out[5]~reg0feeder_combout\);

-- Location: FF_X7_Y6_N58
\inst|PC_out[5]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst|PC_out[5]~reg0feeder_combout\,
	asdata => \inst|PC_out~1_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_out[5]~reg0DUPLICATE_q\);

-- Location: LABCELL_X11_Y5_N48
\inst|PC_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out~0_combout\ = ( \inst|PC_out[4]~reg0_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(4) ) ) # ( !\inst|PC_out[4]~reg0_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(4) & ( (\inst2|altsyncram_component|auto_generated|q_a\(13) & 
-- (\inst2|altsyncram_component|auto_generated|q_a\(14) & (!\inst2|altsyncram_component|auto_generated|q_a\(15) & \inst2|altsyncram_component|auto_generated|q_a\(12)))) ) ) ) # ( \inst|PC_out[4]~reg0_q\ & ( !\inst2|altsyncram_component|auto_generated|q_a\(4) 
-- & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13)) # ((!\inst2|altsyncram_component|auto_generated|q_a\(14)) # ((!\inst2|altsyncram_component|auto_generated|q_a\(12)) # (\inst2|altsyncram_component|auto_generated|q_a\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datae => \inst|ALT_INV_PC_out[4]~reg0_q\,
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst|PC_out~0_combout\);

-- Location: FF_X7_Y6_N28
\inst|PC_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst|PC_out[4]~reg0feeder_combout\,
	asdata => \inst|PC_out~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_out[4]~reg0_q\);

-- Location: MLABCELL_X6_Y5_N3
\inst|PC_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out~7_combout\ = ( \inst|PC_out[3]~reg0_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(3) ) ) # ( !\inst|PC_out[3]~reg0_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(3) & ( (\inst2|altsyncram_component|auto_generated|q_a\(13) & 
-- (\inst2|altsyncram_component|auto_generated|q_a\(12) & (\inst2|altsyncram_component|auto_generated|q_a\(14) & !\inst2|altsyncram_component|auto_generated|q_a\(15)))) ) ) ) # ( \inst|PC_out[3]~reg0_q\ & ( !\inst2|altsyncram_component|auto_generated|q_a\(3) 
-- & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13)) # ((!\inst2|altsyncram_component|auto_generated|q_a\(12)) # ((!\inst2|altsyncram_component|auto_generated|q_a\(14)) # (\inst2|altsyncram_component|auto_generated|q_a\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111111100000001000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datae => \inst|ALT_INV_PC_out[3]~reg0_q\,
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \inst|PC_out~7_combout\);

-- Location: FF_X7_Y6_N49
\inst|PC_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst|PC_out[3]~reg0feeder_combout\,
	asdata => \inst|PC_out~7_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_out[3]~reg0_q\);

-- Location: MLABCELL_X6_Y5_N0
\inst|PC_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out~6_combout\ = ( \inst|PC_out[2]~reg0_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(2) ) ) # ( !\inst|PC_out[2]~reg0_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(2) & ( (\inst2|altsyncram_component|auto_generated|q_a\(13) & 
-- (\inst2|altsyncram_component|auto_generated|q_a\(12) & (!\inst2|altsyncram_component|auto_generated|q_a\(15) & \inst2|altsyncram_component|auto_generated|q_a\(14)))) ) ) ) # ( \inst|PC_out[2]~reg0_q\ & ( !\inst2|altsyncram_component|auto_generated|q_a\(2) 
-- & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13)) # ((!\inst2|altsyncram_component|auto_generated|q_a\(12)) # ((!\inst2|altsyncram_component|auto_generated|q_a\(14)) # (\inst2|altsyncram_component|auto_generated|q_a\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datae => \inst|ALT_INV_PC_out[2]~reg0_q\,
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst|PC_out~6_combout\);

-- Location: FF_X7_Y6_N46
\inst|PC_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst|PC_out[2]~reg0feeder_combout\,
	asdata => \inst|PC_out~6_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_out[2]~reg0_q\);

-- Location: MLABCELL_X6_Y5_N54
\inst|PC_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out~5_combout\ = ( \inst|PC_out[1]~reg0_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(1) ) ) # ( !\inst|PC_out[1]~reg0_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(1) & ( (\inst2|altsyncram_component|auto_generated|q_a\(13) & 
-- (\inst2|altsyncram_component|auto_generated|q_a\(12) & (!\inst2|altsyncram_component|auto_generated|q_a\(15) & \inst2|altsyncram_component|auto_generated|q_a\(14)))) ) ) ) # ( \inst|PC_out[1]~reg0_q\ & ( !\inst2|altsyncram_component|auto_generated|q_a\(1) 
-- & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13)) # ((!\inst2|altsyncram_component|auto_generated|q_a\(12)) # ((!\inst2|altsyncram_component|auto_generated|q_a\(14)) # (\inst2|altsyncram_component|auto_generated|q_a\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datae => \inst|ALT_INV_PC_out[1]~reg0_q\,
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst|PC_out~5_combout\);

-- Location: FF_X7_Y6_N44
\inst|PC_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst|PC_out[1]~reg0feeder_combout\,
	asdata => \inst|PC_out~5_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_out[1]~reg0_q\);

-- Location: LABCELL_X7_Y4_N36
\inst|PC_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|PC_out~4_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(12) & ( \inst|PC_out[0]~reg0_q\ & ( (((!\inst2|altsyncram_component|auto_generated|q_a\(14)) # (!\inst2|altsyncram_component|auto_generated|q_a\(13))) # 
-- (\inst2|altsyncram_component|auto_generated|q_a\(15))) # (\inst2|altsyncram_component|auto_generated|q_a\(0)) ) ) ) # ( !\inst2|altsyncram_component|auto_generated|q_a\(12) & ( \inst|PC_out[0]~reg0_q\ ) ) # ( 
-- \inst2|altsyncram_component|auto_generated|q_a\(12) & ( !\inst|PC_out[0]~reg0_q\ & ( (\inst2|altsyncram_component|auto_generated|q_a\(0) & (!\inst2|altsyncram_component|auto_generated|q_a\(15) & (\inst2|altsyncram_component|auto_generated|q_a\(14) & 
-- \inst2|altsyncram_component|auto_generated|q_a\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010011111111111111111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datae => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \inst|ALT_INV_PC_out[0]~reg0_q\,
	combout => \inst|PC_out~4_combout\);

-- Location: FF_X7_Y6_N25
\inst|PC_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst|PC_out[0]~reg0feeder_combout\,
	asdata => \inst|PC_out~4_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_out[0]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N1
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: MLABCELL_X6_Y2_N30
inst3 : cyclonev_lcell_comb
-- Equation(s):
-- \inst3~combout\ = LCELL(( \clock~input_o\ & ( \inst2|altsyncram_component|auto_generated|q_a\(12) ) ) # ( !\clock~input_o\ & ( \inst2|altsyncram_component|auto_generated|q_a\(12) & ( !\RST~input_o\ $ 
-- (((!\inst2|altsyncram_component|auto_generated|q_a\(13)) # ((!\inst2|altsyncram_component|auto_generated|q_a\(15)) # (\inst2|altsyncram_component|auto_generated|q_a\(14))))) ) ) ) # ( \clock~input_o\ & ( 
-- !\inst2|altsyncram_component|auto_generated|q_a\(12) ) ) # ( !\clock~input_o\ & ( !\inst2|altsyncram_component|auto_generated|q_a\(12) & ( \RST~input_o\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100010000111011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \ALT_INV_RST~input_o\,
	datae => \ALT_INV_clock~input_o\,
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \inst3~combout\);

-- Location: LABCELL_X11_Y5_N12
\inst22|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Mux10~0_combout\ = ( !\inst2|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13) & (!\inst2|altsyncram_component|auto_generated|q_a\(12) & !\inst2|altsyncram_component|auto_generated|q_a\(15))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst22|Mux10~0_combout\);

-- Location: IOIBUF_X2_Y0_N58
\BLANKTEST~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BLANKTEST,
	o => \BLANKTEST~input_o\);

-- Location: LABCELL_X85_Y11_N51
\inst1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = ( \inst|PC_out[7]~reg0_q\ & ( ((!\inst|PC_out[4]~reg0_q\ & (\inst|PC_out[6]~reg0DUPLICATE_q\ & !\inst|PC_out[5]~reg0DUPLICATE_q\))) # (\BLANKTEST~input_o\) ) ) # ( !\inst|PC_out[7]~reg0_q\ & ( ((!\inst|PC_out[6]~reg0DUPLICATE_q\ & 
-- ((!\inst|PC_out[5]~reg0DUPLICATE_q\))) # (\inst|PC_out[6]~reg0DUPLICATE_q\ & (\inst|PC_out[4]~reg0_q\ & \inst|PC_out[5]~reg0DUPLICATE_q\))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110111111100110011011100111011001100110011101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_PC_out[4]~reg0_q\,
	datab => \ALT_INV_BLANKTEST~input_o\,
	datac => \inst|ALT_INV_PC_out[6]~reg0DUPLICATE_q\,
	datad => \inst|ALT_INV_PC_out[5]~reg0DUPLICATE_q\,
	dataf => \inst|ALT_INV_PC_out[7]~reg0_q\,
	combout => \inst1|Mux7~0_combout\);

-- Location: LABCELL_X85_Y11_N42
\inst1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = ( \inst|PC_out[6]~reg0DUPLICATE_q\ & ( ((\inst|PC_out[7]~reg0_q\ & ((!\inst|PC_out[4]~reg0_q\) # (\inst|PC_out[5]~reg0DUPLICATE_q\)))) # (\BLANKTEST~input_o\) ) ) # ( !\inst|PC_out[6]~reg0DUPLICATE_q\ & ( 
-- ((!\inst|PC_out[7]~reg0_q\ & (!\inst|PC_out[4]~reg0_q\ & \inst|PC_out[5]~reg0DUPLICATE_q\))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110110011001100111011001101110011011101110111001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_PC_out[7]~reg0_q\,
	datab => \ALT_INV_BLANKTEST~input_o\,
	datac => \inst|ALT_INV_PC_out[4]~reg0_q\,
	datad => \inst|ALT_INV_PC_out[5]~reg0DUPLICATE_q\,
	dataf => \inst|ALT_INV_PC_out[6]~reg0DUPLICATE_q\,
	combout => \inst1|Mux8~0_combout\);

-- Location: LABCELL_X85_Y11_N48
\inst1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = ( \inst|PC_out[6]~reg0DUPLICATE_q\ & ( ((!\inst|PC_out[4]~reg0_q\ & ((\inst|PC_out[5]~reg0DUPLICATE_q\) # (\inst|PC_out[7]~reg0_q\))) # (\inst|PC_out[4]~reg0_q\ & (!\inst|PC_out[7]~reg0_q\ $ (\inst|PC_out[5]~reg0DUPLICATE_q\)))) # 
-- (\BLANKTEST~input_o\) ) ) # ( !\inst|PC_out[6]~reg0DUPLICATE_q\ & ( ((\inst|PC_out[4]~reg0_q\ & (\inst|PC_out[7]~reg0_q\ & \inst|PC_out[5]~reg0DUPLICATE_q\))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110111001100110011011101111011101111110111101110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_PC_out[4]~reg0_q\,
	datab => \ALT_INV_BLANKTEST~input_o\,
	datac => \inst|ALT_INV_PC_out[7]~reg0_q\,
	datad => \inst|ALT_INV_PC_out[5]~reg0DUPLICATE_q\,
	dataf => \inst|ALT_INV_PC_out[6]~reg0DUPLICATE_q\,
	combout => \inst1|Mux9~0_combout\);

-- Location: LABCELL_X7_Y6_N54
\inst1|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux10~0_combout\ = ( \inst|PC_out[4]~reg0_q\ & ( ((!\inst|PC_out[5]~reg0_q\ & (!\inst|PC_out[7]~reg0_q\ $ (\inst|PC_out[6]~reg0_q\))) # (\inst|PC_out[5]~reg0_q\ & (\inst|PC_out[7]~reg0_q\ & !\inst|PC_out[6]~reg0_q\))) # (\BLANKTEST~input_o\) ) ) # 
-- ( !\inst|PC_out[4]~reg0_q\ & ( ((!\inst|PC_out[5]~reg0_q\ & (!\inst|PC_out[7]~reg0_q\ & \inst|PC_out[6]~reg0_q\))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111010101010101011101010111010111010111011101011101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BLANKTEST~input_o\,
	datab => \inst|ALT_INV_PC_out[5]~reg0_q\,
	datac => \inst|ALT_INV_PC_out[7]~reg0_q\,
	datad => \inst|ALT_INV_PC_out[6]~reg0_q\,
	dataf => \inst|ALT_INV_PC_out[4]~reg0_q\,
	combout => \inst1|Mux10~0_combout\);

-- Location: LABCELL_X85_Y11_N45
\inst1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux11~0_combout\ = ( \inst|PC_out[6]~reg0DUPLICATE_q\ & ( ((\inst|PC_out[4]~reg0_q\ & (!\inst|PC_out[7]~reg0_q\ $ (!\inst|PC_out[5]~reg0DUPLICATE_q\)))) # (\BLANKTEST~input_o\) ) ) # ( !\inst|PC_out[6]~reg0DUPLICATE_q\ & ( 
-- ((!\inst|PC_out[7]~reg0_q\ & ((\inst|PC_out[4]~reg0_q\) # (\inst|PC_out[5]~reg0DUPLICATE_q\)))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101110111011001110111011101100110011011110110011001101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_PC_out[7]~reg0_q\,
	datab => \ALT_INV_BLANKTEST~input_o\,
	datac => \inst|ALT_INV_PC_out[5]~reg0DUPLICATE_q\,
	datad => \inst|ALT_INV_PC_out[4]~reg0_q\,
	dataf => \inst|ALT_INV_PC_out[6]~reg0DUPLICATE_q\,
	combout => \inst1|Mux11~0_combout\);

-- Location: LABCELL_X85_Y11_N3
\inst1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux12~0_combout\ = ( \inst|PC_out[7]~reg0_q\ & ( ((\inst|PC_out[4]~reg0_q\ & (!\inst|PC_out[6]~reg0DUPLICATE_q\ & !\inst|PC_out[5]~reg0DUPLICATE_q\))) # (\BLANKTEST~input_o\) ) ) # ( !\inst|PC_out[7]~reg0_q\ & ( (((\inst|PC_out[6]~reg0DUPLICATE_q\ 
-- & !\inst|PC_out[5]~reg0DUPLICATE_q\)) # (\BLANKTEST~input_o\)) # (\inst|PC_out[4]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111011111110111011101110011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_PC_out[4]~reg0_q\,
	datab => \ALT_INV_BLANKTEST~input_o\,
	datac => \inst|ALT_INV_PC_out[6]~reg0DUPLICATE_q\,
	datad => \inst|ALT_INV_PC_out[5]~reg0DUPLICATE_q\,
	dataf => \inst|ALT_INV_PC_out[7]~reg0_q\,
	combout => \inst1|Mux12~0_combout\);

-- Location: LABCELL_X85_Y11_N0
\inst1|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux13~0_combout\ = ( \inst|PC_out[6]~reg0DUPLICATE_q\ & ( ((!\inst|PC_out[4]~reg0_q\ & (!\inst|PC_out[7]~reg0_q\ & !\inst|PC_out[5]~reg0DUPLICATE_q\)) # (\inst|PC_out[4]~reg0_q\ & ((\inst|PC_out[5]~reg0DUPLICATE_q\)))) # (\BLANKTEST~input_o\) ) ) # 
-- ( !\inst|PC_out[6]~reg0DUPLICATE_q\ & ( ((!\inst|PC_out[4]~reg0_q\ & (\inst|PC_out[7]~reg0_q\ & \inst|PC_out[5]~reg0DUPLICATE_q\)) # (\inst|PC_out[4]~reg0_q\ & (!\inst|PC_out[7]~reg0_q\ & !\inst|PC_out[5]~reg0DUPLICATE_q\))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100111011011100110011101110110011011101111011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_PC_out[4]~reg0_q\,
	datab => \ALT_INV_BLANKTEST~input_o\,
	datac => \inst|ALT_INV_PC_out[7]~reg0_q\,
	datad => \inst|ALT_INV_PC_out[5]~reg0DUPLICATE_q\,
	dataf => \inst|ALT_INV_PC_out[6]~reg0DUPLICATE_q\,
	combout => \inst1|Mux13~0_combout\);

-- Location: LABCELL_X85_Y11_N54
\inst1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\inst|PC_out[0]~reg0_q\ & (!\inst|PC_out[1]~reg0_q\ & (!\inst|PC_out[2]~reg0_q\ $ (\inst|PC_out[3]~reg0_q\)))) # (\inst|PC_out[0]~reg0_q\ & (!\inst|PC_out[3]~reg0_q\ & 
-- (!\inst|PC_out[2]~reg0_q\ $ (\inst|PC_out[1]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010010000100001001001000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_PC_out[2]~reg0_q\,
	datab => \inst|ALT_INV_PC_out[1]~reg0_q\,
	datac => \inst|ALT_INV_PC_out[3]~reg0_q\,
	datad => \inst|ALT_INV_PC_out[0]~reg0_q\,
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LABCELL_X85_Y11_N57
\inst1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = ( \inst|PC_out[3]~reg0_q\ & ( ((\inst|PC_out[2]~reg0_q\ & ((!\inst|PC_out[0]~reg0_q\) # (\inst|PC_out[1]~reg0_q\)))) # (\BLANKTEST~input_o\) ) ) # ( !\inst|PC_out[3]~reg0_q\ & ( ((!\inst|PC_out[2]~reg0_q\ & 
-- (\inst|PC_out[1]~reg0_q\ & !\inst|PC_out[0]~reg0_q\))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001111001011110000111101011111000111110101111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_PC_out[2]~reg0_q\,
	datab => \inst|ALT_INV_PC_out[1]~reg0_q\,
	datac => \ALT_INV_BLANKTEST~input_o\,
	datad => \inst|ALT_INV_PC_out[0]~reg0_q\,
	dataf => \inst|ALT_INV_PC_out[3]~reg0_q\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LABCELL_X85_Y11_N12
\inst1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\inst|PC_out[1]~reg0_q\ & (\inst|PC_out[2]~reg0_q\ & (!\inst|PC_out[3]~reg0_q\ $ (!\inst|PC_out[0]~reg0_q\)))) # (\inst|PC_out[1]~reg0_q\ & ((!\inst|PC_out[0]~reg0_q\ & 
-- (\inst|PC_out[2]~reg0_q\)) # (\inst|PC_out[0]~reg0_q\ & ((\inst|PC_out[3]~reg0_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000011000101010100001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_PC_out[2]~reg0_q\,
	datab => \inst|ALT_INV_PC_out[1]~reg0_q\,
	datac => \inst|ALT_INV_PC_out[3]~reg0_q\,
	datad => \inst|ALT_INV_PC_out[0]~reg0_q\,
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst1|Mux2~0_combout\);

-- Location: LABCELL_X85_Y11_N15
\inst1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = ( \inst|PC_out[3]~reg0_q\ & ( ((\inst|PC_out[0]~reg0_q\ & (!\inst|PC_out[2]~reg0_q\ $ (!\inst|PC_out[1]~reg0_q\)))) # (\BLANKTEST~input_o\) ) ) # ( !\inst|PC_out[3]~reg0_q\ & ( ((!\inst|PC_out[1]~reg0_q\ & 
-- (!\inst|PC_out[2]~reg0_q\ $ (!\inst|PC_out[0]~reg0_q\)))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111110001111010011111000111100001111011011110000111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_PC_out[2]~reg0_q\,
	datab => \inst|ALT_INV_PC_out[1]~reg0_q\,
	datac => \ALT_INV_BLANKTEST~input_o\,
	datad => \inst|ALT_INV_PC_out[0]~reg0_q\,
	dataf => \inst|ALT_INV_PC_out[3]~reg0_q\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LABCELL_X85_Y11_N9
\inst1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = ( \inst|PC_out[3]~reg0_q\ & ( ((\inst|PC_out[2]~reg0_q\ & (!\inst|PC_out[1]~reg0_q\ & \inst|PC_out[0]~reg0_q\))) # (\BLANKTEST~input_o\) ) ) # ( !\inst|PC_out[3]~reg0_q\ & ( ((!\inst|PC_out[2]~reg0_q\ & ((\inst|PC_out[0]~reg0_q\) 
-- # (\inst|PC_out[1]~reg0_q\))) # (\inst|PC_out[2]~reg0_q\ & (\inst|PC_out[1]~reg0_q\ & \inst|PC_out[0]~reg0_q\))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101110111111001110111011111100110011011100110011001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_PC_out[2]~reg0_q\,
	datab => \ALT_INV_BLANKTEST~input_o\,
	datac => \inst|ALT_INV_PC_out[1]~reg0_q\,
	datad => \inst|ALT_INV_PC_out[0]~reg0_q\,
	dataf => \inst|ALT_INV_PC_out[3]~reg0_q\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LABCELL_X85_Y11_N6
\inst1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = ( \inst|PC_out[1]~reg0_q\ & ( ((!\inst|PC_out[3]~reg0_q\ & \inst|PC_out[0]~reg0_q\)) # (\BLANKTEST~input_o\) ) ) # ( !\inst|PC_out[1]~reg0_q\ & ( ((!\inst|PC_out[2]~reg0_q\ & ((\inst|PC_out[0]~reg0_q\))) # (\inst|PC_out[2]~reg0_q\ 
-- & (!\inst|PC_out[3]~reg0_q\))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001111111011011100111111101100110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_PC_out[2]~reg0_q\,
	datab => \ALT_INV_BLANKTEST~input_o\,
	datac => \inst|ALT_INV_PC_out[3]~reg0_q\,
	datad => \inst|ALT_INV_PC_out[0]~reg0_q\,
	dataf => \inst|ALT_INV_PC_out[1]~reg0_q\,
	combout => \inst1|Mux5~0_combout\);

-- Location: LABCELL_X7_Y6_N51
\inst1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = ( \inst|PC_out[0]~reg0_q\ & ( ((!\inst|PC_out[1]~reg0_q\ & (!\inst|PC_out[2]~reg0_q\ & !\inst|PC_out[3]~reg0_q\)) # (\inst|PC_out[1]~reg0_q\ & (\inst|PC_out[2]~reg0_q\))) # (\BLANKTEST~input_o\) ) ) # ( !\inst|PC_out[0]~reg0_q\ & 
-- ( ((!\inst|PC_out[1]~reg0_q\ & (\inst|PC_out[2]~reg0_q\ & !\inst|PC_out[3]~reg0_q\)) # (\inst|PC_out[1]~reg0_q\ & (!\inst|PC_out[2]~reg0_q\ & \inst|PC_out[3]~reg0_q\))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101110101010111010111010111010111010101111101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BLANKTEST~input_o\,
	datab => \inst|ALT_INV_PC_out[1]~reg0_q\,
	datac => \inst|ALT_INV_PC_out[2]~reg0_q\,
	datad => \inst|ALT_INV_PC_out[3]~reg0_q\,
	dataf => \inst|ALT_INV_PC_out[0]~reg0_q\,
	combout => \inst1|Mux6~0_combout\);

-- Location: LABCELL_X11_Y5_N0
\inst22|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Mux7~0_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13) & (\inst2|altsyncram_component|auto_generated|q_a\(12) & !\inst2|altsyncram_component|auto_generated|q_a\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst22|Mux7~0_combout\);

-- Location: LABCELL_X11_Y5_N45
\inst22|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Mux12~0_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(13) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(14) & !\inst2|altsyncram_component|auto_generated|q_a\(15)) ) ) # ( !\inst2|altsyncram_component|auto_generated|q_a\(13) 
-- & ( (!\inst2|altsyncram_component|auto_generated|q_a\(15) & ((\inst2|altsyncram_component|auto_generated|q_a\(14)) # (\inst2|altsyncram_component|auto_generated|q_a\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000001111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \inst22|Mux12~0_combout\);

-- Location: MLABCELL_X6_Y5_N39
\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( !\inst2|altsyncram_component|auto_generated|q_a\(2) & ( (\inst2|altsyncram_component|auto_generated|q_a\(0)) # (\inst2|altsyncram_component|auto_generated|q_a\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X6_Y5_N42
\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(14) & ( (\inst2|altsyncram_component|auto_generated|q_a\(15) & !\inst2|altsyncram_component|auto_generated|q_a\(13)) ) ) # ( 
-- !\inst2|altsyncram_component|auto_generated|q_a\(14) & ( ((!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & (!\inst2|altsyncram_component|auto_generated|q_a\(13) & !\inst2|altsyncram_component|auto_generated|q_a\(12)))) # 
-- (\inst2|altsyncram_component|auto_generated|q_a\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010101010101110101010101010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datab => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X11_Y5_N3
\inst22|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Mux4~0_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13) & ((\inst2|altsyncram_component|auto_generated|q_a\(15)))) # (\inst2|altsyncram_component|auto_generated|q_a\(13) & 
-- (!\inst2|altsyncram_component|auto_generated|q_a\(12) & !\inst2|altsyncram_component|auto_generated|q_a\(15))) ) ) # ( !\inst2|altsyncram_component|auto_generated|q_a\(14) & ( (\inst2|altsyncram_component|auto_generated|q_a\(15) & 
-- ((!\inst2|altsyncram_component|auto_generated|q_a\(13)) # (!\inst2|altsyncram_component|auto_generated|q_a\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111001000100101010100100010010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst22|Mux4~0_combout\);

-- Location: IOIBUF_X11_Y0_N7
\altera_reserved_tms~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\altera_reserved_tck~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X13_Y0_N7
\altera_reserved_tdi~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: JTAG_X0_Y2_N3
altera_internal_jtag : cyclonev_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LABCELL_X1_Y2_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: FF_X1_Y2_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LABCELL_X1_Y2_N39
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: LABCELL_X1_Y1_N54
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]~feeder_combout\);

-- Location: FF_X1_Y1_N56
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LABCELL_X1_Y1_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(11),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(10),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(14),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X1_Y1_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LABCELL_X1_Y1_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(10),
	datac => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(11),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X1_Y1_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LABCELL_X1_Y1_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(12),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X1_Y1_N35
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LABCELL_X1_Y2_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(13),
	datac => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X1_Y2_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LABCELL_X1_Y1_N36
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(14),
	datac => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(12),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LABCELL_X1_Y2_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_dr_scan_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\);

-- Location: FF_X1_Y2_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LABCELL_X2_Y3_N33
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X1_Y2_N41
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LABCELL_X2_Y3_N57
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X2_Y3_N41
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LABCELL_X2_Y3_N39
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(1),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X2_Y3_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LABCELL_X2_Y3_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010011110100111100001111000011110100111101001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(9),
	datac => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X2_Y3_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: LABCELL_X2_Y3_N36
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(15),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X1_Y2_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LABCELL_X1_Y2_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(1),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(15),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X1_Y2_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LABCELL_X1_Y1_N51
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(2),
	datad => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X1_Y1_N53
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: LABCELL_X1_Y2_N51
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(6),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\);

-- Location: LABCELL_X1_Y2_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]~feeder_combout\);

-- Location: FF_X1_Y2_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]~feeder_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LABCELL_X1_Y2_N36
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X1_Y2_N38
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LABCELL_X4_Y2_N45
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X1_Y2_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LABCELL_X1_Y2_N57
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datad => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X1_Y2_N59
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LABCELL_X4_Y2_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000001111111100000000010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(5),
	datad => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: FF_X1_Y2_N56
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: MLABCELL_X3_Y2_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_bypass_reg~q\,
	datae => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X1_Y2_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\);

-- Location: LABCELL_X1_Y2_N42
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000001100000011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_bypass_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\);

-- Location: LABCELL_X7_Y2_N0
\inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(0),
	cin => GND,
	sumout => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~1_sumout\,
	cout => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~2\);

-- Location: LABCELL_X7_Y2_N36
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~1_sumout\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~feeder_combout\);

-- Location: LABCELL_X4_Y2_N54
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(7),
	datad => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\);

-- Location: FF_X2_Y2_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: MLABCELL_X3_Y4_N57
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(8),
	datac => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\);

-- Location: LABCELL_X1_Y4_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]~feeder_combout\);

-- Location: LABCELL_X1_Y4_N24
\~QIC_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: FF_X1_Y4_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]~feeder_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8));

-- Location: LABCELL_X2_Y4_N48
\inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(0),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\);

-- Location: LABCELL_X2_Y4_N9
\inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][4]~q\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\);

-- Location: MLABCELL_X3_Y2_N36
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(8),
	datac => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: FF_X2_Y3_N56
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: FF_X1_Y1_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: FF_X2_Y3_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: FF_X2_Y3_N43
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: FF_X2_Y3_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: LABCELL_X2_Y3_N45
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X2_Y3_N47
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: FF_X1_Y1_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LABCELL_X2_Y3_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X2_Y3_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: LABCELL_X2_Y3_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(7),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(5),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(6),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\);

-- Location: FF_X1_Y1_N43
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LABCELL_X2_Y3_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X2_Y3_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: MLABCELL_X3_Y3_N48
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal0~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(1),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: FF_X3_Y3_N50
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\);

-- Location: LABCELL_X1_Y1_N45
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100000011001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(15),
	datad => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: MLABCELL_X3_Y2_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000011010000110000001101000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena_proc~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(1),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: FF_X3_Y2_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LABCELL_X2_Y4_N30
\inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(1),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder_combout\);

-- Location: FF_X2_Y4_N31
\inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder_combout\,
	clrn => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1));

-- Location: LABCELL_X4_Y2_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(3),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ir_loaded_address_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\);

-- Location: MLABCELL_X3_Y4_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000011100001111000001000000111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\);

-- Location: FF_X4_Y2_N32
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: MLABCELL_X6_Y2_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000000000000000000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg~3_combout\);

-- Location: FF_X6_Y2_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: MLABCELL_X3_Y4_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~5_combout\);

-- Location: MLABCELL_X3_Y4_N33
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\);

-- Location: MLABCELL_X3_Y4_N48
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\);

-- Location: LABCELL_X2_Y4_N15
\inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(2),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\);

-- Location: FF_X2_Y4_N16
\inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\,
	clrn => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2));

-- Location: LABCELL_X1_Y4_N45
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~5_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[3]~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[3]~7_combout\,
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ir_loaded_address_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\);

-- Location: FF_X1_Y4_N46
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LABCELL_X4_Y2_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(8),
	datad => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(7),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\);

-- Location: FF_X6_Y2_N59
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\);

-- Location: LABCELL_X4_Y3_N27
\inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\);

-- Location: FF_X2_Y4_N49
\inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\,
	clrn => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0));

-- Location: LABCELL_X4_Y2_N51
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ir_loaded_address_reg\(0),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\);

-- Location: FF_X4_Y2_N52
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: FF_X4_Y2_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~DUPLICATE_q\);

-- Location: MLABCELL_X3_Y2_N48
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010000001101000100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(1),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_reset_ena_reg_proc~0_combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~0_combout\);

-- Location: FF_X3_Y2_N47
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: MLABCELL_X3_Y2_N39
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\);

-- Location: MLABCELL_X3_Y2_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000100101011100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_reset_ena_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(2),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(1),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg[1]~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~2_combout\);

-- Location: FF_X2_Y2_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LABCELL_X2_Y2_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(1),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X2_Y2_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\);

-- Location: FF_X6_Y2_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);

-- Location: LABCELL_X4_Y3_N42
\inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\);

-- Location: FF_X6_Y2_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\);

-- Location: FF_X6_Y2_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\);

-- Location: LABCELL_X4_Y3_N0
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000001100000001000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][1]~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][2]~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~0_combout\);

-- Location: LABCELL_X4_Y3_N36
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111110111110101111111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(0),
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(3),
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(1),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_reg[1]~0_combout\,
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(2),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~2_combout\);

-- Location: FF_X4_Y3_N11
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2));

-- Location: LABCELL_X4_Y3_N39
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111110101010101111111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(0),
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(3),
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(2),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_reg[1]~0_combout\,
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(1),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0_combout\);

-- Location: FF_X4_Y3_N35
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1));

-- Location: LABCELL_X4_Y3_N54
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110010001101100011001000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(0),
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(3),
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(1),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_reg[1]~0_combout\,
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(2),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~1_combout\);

-- Location: FF_X4_Y3_N52
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3));

-- Location: LABCELL_X4_Y3_N57
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010100101010100101010010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(0),
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(3),
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(2),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_reg[1]~0_combout\,
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(1),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~3_combout\);

-- Location: FF_X4_Y3_N26
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0));

-- Location: LABCELL_X4_Y3_N6
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000101000000000001000100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][2]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~0_combout\);

-- Location: LABCELL_X4_Y3_N30
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110001000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(0),
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(3),
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(1),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg[6]~0_combout\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][1]~q\,
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(2),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~1_combout\);

-- Location: FF_X7_Y2_N37
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

-- Location: LABCELL_X7_Y2_N3
\inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(1),
	cin => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~2\,
	sumout => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~5_sumout\,
	cout => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~6\);

-- Location: LABCELL_X7_Y2_N54
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~5_sumout\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~feeder_combout\);

-- Location: FF_X7_Y2_N55
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1));

-- Location: LABCELL_X7_Y2_N6
\inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~9\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(2),
	cin => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~6\,
	sumout => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~9_sumout\,
	cout => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~10\);

-- Location: LABCELL_X7_Y2_N51
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~9_sumout\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~feeder_combout\);

-- Location: FF_X7_Y2_N52
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2));

-- Location: LABCELL_X7_Y2_N9
\inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~13\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(3),
	cin => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~10\,
	sumout => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~13_sumout\,
	cout => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~14\);

-- Location: LABCELL_X7_Y2_N45
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~13_sumout\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~feeder_combout\);

-- Location: LABCELL_X7_Y2_N12
\inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~17\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(4),
	cin => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~14\,
	sumout => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~17_sumout\,
	cout => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~18\);

-- Location: LABCELL_X7_Y2_N27
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~17_sumout\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~feeder_combout\);

-- Location: LABCELL_X7_Y2_N15
\inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~21\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(5),
	cin => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~18\,
	sumout => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~21_sumout\,
	cout => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~22\);

-- Location: LABCELL_X7_Y2_N33
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~21_sumout\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~feeder_combout\);

-- Location: LABCELL_X7_Y2_N18
\inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~25\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(6),
	cin => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~22\,
	sumout => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~25_sumout\,
	cout => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~26\);

-- Location: LABCELL_X7_Y2_N30
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~25_sumout\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~feeder_combout\);

-- Location: LABCELL_X7_Y2_N21
\inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~29\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(7),
	cin => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~26\,
	sumout => \inst20|altsyncram_component|auto_generated|mgl_prim2|Add0~29_sumout\);

-- Location: LABCELL_X7_Y2_N42
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_Add0~29_sumout\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~feeder_combout\);

-- Location: FF_X7_Y2_N44
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~feeder_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7));

-- Location: FF_X7_Y2_N31
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6));

-- Location: FF_X7_Y2_N34
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5));

-- Location: FF_X7_Y2_N28
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4));

-- Location: FF_X7_Y2_N46
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3));

-- Location: LABCELL_X2_Y4_N57
\inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(3),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\);

-- Location: FF_X2_Y4_N59
\inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\,
	clrn => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3));

-- Location: LABCELL_X2_Y4_N45
\inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(5),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]~feeder_combout\);

-- Location: FF_X2_Y4_N46
\inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[5]~feeder_combout\,
	clrn => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(5));

-- Location: FF_X2_Y4_N26
\inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	clrn => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(6));

-- Location: MLABCELL_X3_Y4_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ir_loaded_address_reg\(6),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\);

-- Location: FF_X3_Y4_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7));

-- Location: MLABCELL_X3_Y4_N45
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ir_loaded_address_reg\(5),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\);

-- Location: FF_X4_Y2_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6));

-- Location: LABCELL_X2_Y4_N36
\inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(4),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]~feeder_combout\);

-- Location: FF_X2_Y4_N38
\inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[4]~feeder_combout\,
	clrn => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(4));

-- Location: MLABCELL_X3_Y4_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(6),
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ir_loaded_address_reg\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\);

-- Location: FF_X3_Y4_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5));

-- Location: MLABCELL_X3_Y4_N36
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~9\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ir_loaded_address_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~9_combout\);

-- Location: FF_X3_Y4_N37
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~9_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: MLABCELL_X3_Y4_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\);

-- Location: FF_X3_Y4_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

-- Location: LABCELL_X4_Y3_N21
\inst20|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][4]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_is_in_use_reg~q\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\);

-- Location: FF_X4_Y3_N14
\inst20|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\);

-- Location: LABCELL_X4_Y2_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_is_in_use_reg~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\);

-- Location: FF_X4_Y2_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LABCELL_X2_Y2_N57
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0_combout\);

-- Location: LABCELL_X2_Y1_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LABCELL_X2_Y2_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(0),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~4_combout\);

-- Location: LABCELL_X2_Y2_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110011111100000000000011110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~1_combout\);

-- Location: FF_X1_Y2_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~4_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0));

-- Location: FF_X1_Y2_N34
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~3_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y2_N45
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(0),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[1]~DUPLICATE_q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~0_combout\);

-- Location: FF_X1_Y2_N46
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~0_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y2_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100111111111100110011111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[1]~DUPLICATE_q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~2_combout\);

-- Location: FF_X1_Y2_N32
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~2_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2));

-- Location: LABCELL_X2_Y2_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111101111111100011110111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[1]~DUPLICATE_q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~5_combout\);

-- Location: FF_X1_Y2_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~5_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3));

-- Location: LABCELL_X2_Y2_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001111111111001100111111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[4]~DUPLICATE_q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[1]~DUPLICATE_q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~3_combout\);

-- Location: FF_X1_Y2_N35
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~3_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4));

-- Location: FF_X1_Y2_N47
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~0_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1));

-- Location: LABCELL_X1_Y2_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(1),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(0),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~0_combout\);

-- Location: LABCELL_X2_Y2_N39
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: MLABCELL_X3_Y2_N57
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: MLABCELL_X3_Y2_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(8),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: FF_X3_Y2_N59
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3));

-- Location: FF_X3_Y2_N55
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: FF_X3_Y2_N34
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1));

-- Location: FF_X3_Y2_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0));

-- Location: MLABCELL_X3_Y2_N42
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(8),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg[1]~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X3_Y2_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0));

-- Location: LABCELL_X2_Y2_N36
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011001000000011101100100000011111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[4]~DUPLICATE_q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[1]~DUPLICATE_q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~1_combout\);

-- Location: MLABCELL_X3_Y2_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000001100111100001100110011111100000011000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[4]~DUPLICATE_q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(0),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[1]~DUPLICATE_q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\);

-- Location: FF_X3_Y2_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2));

-- Location: FF_X3_Y2_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3));

-- Location: LABCELL_X1_Y2_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010000000100010100000101010001100100000001000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\);

-- Location: LABCELL_X2_Y2_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg[2]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_proc~0_combout\,
	datac => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\);

-- Location: LABCELL_X4_Y2_N36
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~3_combout\);

-- Location: FF_X2_Y2_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3));

-- Location: LABCELL_X2_Y2_N33
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg[2]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(2),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\);

-- Location: FF_X2_Y2_N34
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2));

-- Location: FF_X3_Y2_N52
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1));

-- Location: LABCELL_X2_Y2_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001100001000101100110000100000100100100000000010010010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[1]~DUPLICATE_q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[4]~DUPLICATE_q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\);

-- Location: LABCELL_X2_Y2_N48
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg[2]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(1),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\);

-- Location: FF_X2_Y2_N49
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1));

-- Location: LABCELL_X2_Y2_N51
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg[2]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~1_combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~2_combout\);

-- Location: FF_X2_Y2_N53
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0));

-- Location: LABCELL_X2_Y2_N54
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000010000001111001101110011111100110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal3~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_bypass_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: FF_X6_Y2_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_tdo_sel_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_tdo_sel_reg\(0));

-- Location: LABCELL_X4_Y2_N42
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datac => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: MLABCELL_X6_Y2_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: FF_X4_Y2_N43
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3));

-- Location: LABCELL_X4_Y2_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X4_Y2_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2));

-- Location: LABCELL_X4_Y2_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X4_Y2_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1));

-- Location: LABCELL_X4_Y2_N39
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X4_Y2_N40
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0));

-- Location: LABCELL_X2_Y1_N54
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(0),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~4_combout\);

-- Location: LABCELL_X2_Y1_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\);

-- Location: FF_X2_Y2_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~4_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1));

-- Location: FF_X2_Y1_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~3_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y1_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000011110000000000001111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[3]~DUPLICATE_q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~3_combout\);

-- Location: FF_X2_Y1_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~3_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3));

-- Location: LABCELL_X2_Y1_N42
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000000000000000000110011001101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(0),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~5_combout\);

-- Location: FF_X2_Y1_N46
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~5_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: LABCELL_X2_Y1_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001001100000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(4),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~0_combout\);

-- Location: FF_X2_Y2_N38
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~0_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0));

-- Location: LABCELL_X2_Y1_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~2_combout\);

-- Location: FF_X2_Y2_N43
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~2_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2));

-- Location: LABCELL_X2_Y1_N33
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~2_combout\);

-- Location: LABCELL_X2_Y1_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(1),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: LABCELL_X2_Y1_N48
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000101100000011000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~5_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(0),
	datae => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LABCELL_X2_Y1_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111101010111010111110101011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]~1_combout\);

-- Location: FF_X2_Y1_N50
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: LABCELL_X2_Y1_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~2_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: FF_X2_Y1_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: LABCELL_X2_Y1_N57
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~2_combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~3_combout\);

-- Location: FF_X2_Y1_N58
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: LABCELL_X2_Y1_N36
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000010000000011000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(0),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(1),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[3]~DUPLICATE_q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~0_combout\);

-- Location: FF_X2_Y1_N37
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: MLABCELL_X6_Y2_N42
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100101000001010000010110000101101001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(0),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: MLABCELL_X6_Y2_N48
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100101000000000110010100000000011001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_tdo_sel_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~4_combout\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: LABCELL_X4_Y2_N57
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: MLABCELL_X6_Y2_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_tdo_sel_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LABCELL_X4_Y3_N18
\inst20|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_bypass_reg_out~q\,
	datac => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\);

-- Location: FF_X1_Y3_N35
\inst20|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\);

-- Location: LABCELL_X2_Y3_N24
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\);

-- Location: LABCELL_X1_Y3_N30
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100110000000000010011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(3),
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_clear_signal~combout\,
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(2),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(0),
	datae => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(4),
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(1),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~0_combout\);

-- Location: LABCELL_X1_Y3_N48
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~1_combout\);

-- Location: FF_X1_Y3_N23
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~0_combout\,
	sload => VCC,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2));

-- Location: LABCELL_X1_Y3_N9
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000011110000111000001111000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(1),
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(0),
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_clear_signal~combout\,
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(2),
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(3),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~4_combout\);

-- Location: FF_X1_Y3_N53
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~4_combout\,
	sload => VCC,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3));

-- Location: LABCELL_X1_Y3_N42
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001100010011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(3),
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_clear_signal~combout\,
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(2),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(0),
	datae => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(4),
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(1),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~5_combout\);

-- Location: FF_X1_Y3_N29
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~5_combout\,
	sload => VCC,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4));

-- Location: LABCELL_X1_Y3_N18
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Equal0~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(1),
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(0),
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(4),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(2),
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(3),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Equal0~0_combout\);

-- Location: LABCELL_X2_Y3_N48
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(0),
	datae => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_Equal0~0_combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~3_combout\);

-- Location: FF_X1_Y3_N46
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~3_combout\,
	sload => VCC,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0));

-- Location: LABCELL_X2_Y3_N9
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000000000000000001011010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(0),
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datae => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_Equal0~0_combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~2_combout\);

-- Location: FF_X1_Y3_N26
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~2_combout\,
	sload => VCC,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1));

-- Location: LABCELL_X1_Y3_N6
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101000011010010010100001100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(1),
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(0),
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(4),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(2),
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(3),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\);

-- Location: LABCELL_X1_Y3_N24
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010100001000110101010000100011010101000010001101010100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(3),
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(0),
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(4),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(1),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\);

-- Location: LABCELL_X1_Y3_N51
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(3),
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(2),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\);

-- Location: LABCELL_X1_Y3_N21
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Equal0~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(0),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(2),
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(1),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Equal0~1_combout\);

-- Location: LABCELL_X1_Y3_N54
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000110001010000010111110100000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_Equal0~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datad => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(3),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\);

-- Location: LABCELL_X1_Y3_N12
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]~2_combout\);

-- Location: FF_X1_Y3_N55
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(3));

-- Location: LABCELL_X1_Y3_N27
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011011001100011001101100110010101010100010001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(3),
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(0),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(4),
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_word_counter\(1),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\);

-- Location: LABCELL_X1_Y3_N0
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000101000001010000010111000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR~3_combout\,
	datae => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR~6_combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\);

-- Location: FF_X1_Y3_N1
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(2));

-- Location: LABCELL_X1_Y3_N36
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010000000000000001011111000011110100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR~4_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR~3_combout\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR\(2),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\);

-- Location: FF_X1_Y3_N37
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(1));

-- Location: LABCELL_X1_Y3_N15
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001000000010100000100001011111010011000101111101001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR\(1),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\);

-- Location: FF_X1_Y3_N17
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(0));

-- Location: MLABCELL_X6_Y5_N24
\inst22|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Mux2~0_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(12) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13) & (\inst2|altsyncram_component|auto_generated|q_a\(14) & !\inst2|altsyncram_component|auto_generated|q_a\(15))) ) ) # 
-- ( !\inst2|altsyncram_component|auto_generated|q_a\(12) & ( (\inst2|altsyncram_component|auto_generated|q_a\(14) & !\inst2|altsyncram_component|auto_generated|q_a\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \inst22|Mux2~0_combout\);

-- Location: MLABCELL_X6_Y5_N30
\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(1) & ( (\inst22|Mux2~0_combout\) # (\inst22|Mux10~0_combout\) ) ) # ( !\inst2|altsyncram_component|auto_generated|q_a\(1) & ( 
-- (!\inst22|Mux10~0_combout\ & (((\inst22|Mux2~0_combout\)))) # (\inst22|Mux10~0_combout\ & (!\inst2|altsyncram_component|auto_generated|q_a\(2) & ((!\inst2|altsyncram_component|auto_generated|q_a\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111000001010010011100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux10~0_combout\,
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst22|ALT_INV_Mux2~0_combout\,
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X6_Y5_N45
\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(2) & ( \inst2|altsyncram_component|auto_generated|q_a\(0) ) ) # ( !\inst2|altsyncram_component|auto_generated|q_a\(2) & ( 
-- (!\inst2|altsyncram_component|auto_generated|q_a\(1)) # (\inst2|altsyncram_component|auto_generated|q_a\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X11_Y5_N30
\inst22|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Mux3~0_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13) & \inst2|altsyncram_component|auto_generated|q_a\(15)) ) ) # ( !\inst2|altsyncram_component|auto_generated|q_a\(14) & 
-- ( ((\inst2|altsyncram_component|auto_generated|q_a\(13) & \inst2|altsyncram_component|auto_generated|q_a\(12))) # (\inst2|altsyncram_component|auto_generated|q_a\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst22|Mux3~0_combout\);

-- Location: LABCELL_X7_Y5_N36
\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \inst22|Mux10~0_combout\ & ( \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) ) # ( !\inst22|Mux10~0_combout\ & ( \inst22|Mux3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst22|ALT_INV_Mux3~0_combout\,
	dataf => \inst22|ALT_INV_Mux10~0_combout\,
	combout => \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X11_Y5_N15
\inst22|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Mux6~0_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13) & ((!\inst2|altsyncram_component|auto_generated|q_a\(15)))) # (\inst2|altsyncram_component|auto_generated|q_a\(13) & 
-- ((!\inst2|altsyncram_component|auto_generated|q_a\(12)) # (\inst2|altsyncram_component|auto_generated|q_a\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110010101011110111001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst22|Mux6~0_combout\);

-- Location: FF_X6_Y5_N22
\RS|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	asdata => \inst2|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RS|A\(1));

-- Location: MLABCELL_X6_Y5_N6
\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \RT|A\(0) & ( \inst2|altsyncram_component|auto_generated|q_a\(0) ) ) # ( !\RT|A\(0) & ( \inst2|altsyncram_component|auto_generated|q_a\(0) & ( 
-- (((\inst2|altsyncram_component|auto_generated|q_a\(14)) # (\inst2|altsyncram_component|auto_generated|q_a\(15))) # (\inst2|altsyncram_component|auto_generated|q_a\(12))) # (\inst2|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( \RT|A\(0) & ( 
-- !\inst2|altsyncram_component|auto_generated|q_a\(0) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13) & (!\inst2|altsyncram_component|auto_generated|q_a\(12) & (!\inst2|altsyncram_component|auto_generated|q_a\(15) & 
-- !\inst2|altsyncram_component|auto_generated|q_a\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datae => \RT|ALT_INV_A\(0),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X6_Y5_N13
\RS|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	asdata => \inst2|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RS|A\(0));

-- Location: MLABCELL_X3_Y3_N0
\inst19|ShiftLeft0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|ShiftLeft0~6_combout\ = ( \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \RS|A\(0) & ( \inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ ) ) ) # ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \RS|A\(0) & ( (\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & \RS|A\(1)) ) ) ) # ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\RS|A\(0) & ( (\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & \RS|A\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000011000000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \RS|ALT_INV_A\(1),
	datae => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \RS|ALT_INV_A\(0),
	combout => \inst19|ShiftLeft0~6_combout\);

-- Location: LABCELL_X9_Y5_N42
\inst19|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux13~1_combout\ = ( \inst19|F9[7]~1_combout\ & ( ((!\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & \inst19|ShiftLeft0~6_combout\)) # (\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst19|ALT_INV_ShiftLeft0~6_combout\,
	datad => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst19|ALT_INV_F9[7]~1_combout\,
	combout => \inst19|Mux13~1_combout\);

-- Location: MLABCELL_X6_Y5_N27
\inst22|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Mux0~0_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(15) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13)) # (!\inst2|altsyncram_component|auto_generated|q_a\(14)) ) ) # ( 
-- !\inst2|altsyncram_component|auto_generated|q_a\(15) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13) & (!\inst2|altsyncram_component|auto_generated|q_a\(14) & \inst2|altsyncram_component|auto_generated|q_a\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \inst22|Mux0~0_combout\);

-- Location: MLABCELL_X6_Y5_N33
\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst22|Mux10~0_combout\ & \inst22|Mux0~0_combout\) ) ) # ( !\inst2|altsyncram_component|auto_generated|q_a\(1) & ( 
-- (!\inst22|Mux10~0_combout\ & (((\inst22|Mux0~0_combout\)))) # (\inst22|Mux10~0_combout\ & (!\inst2|altsyncram_component|auto_generated|q_a\(2) & (!\inst2|altsyncram_component|auto_generated|q_a\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011101010010000001110101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux10~0_combout\,
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \inst22|ALT_INV_Mux0~0_combout\,
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X11_Y5_N9
\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~2_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(1) ) # ( !\inst2|altsyncram_component|auto_generated|q_a\(1) & ( \inst2|altsyncram_component|auto_generated|q_a\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X10_Y5_N0
\inst19|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~34_cout\ = CARRY(( VCC ) + ( (!\inst22|Mux10~0_combout\ & (\inst22|Mux3~0_combout\)) # (\inst22|Mux10~0_combout\ & (((!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~2_combout\) # 
-- (\inst2|altsyncram_component|auto_generated|q_a\(0))))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100011011000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux10~0_combout\,
	datab => \inst22|ALT_INV_Mux3~0_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~2_combout\,
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	cin => GND,
	cout => \inst19|Add0~34_cout\);

-- Location: LABCELL_X10_Y5_N3
\inst19|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~17_sumout\ = SUM(( \RS|A\(0) ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & (!\inst22|Mux3~0_combout\)) # (\inst22|Mux10~0_combout\ & 
-- ((!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) + ( \inst19|Add0~34_cout\ ))
-- \inst19|Add0~18\ = CARRY(( \RS|A\(0) ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & (!\inst22|Mux3~0_combout\)) # (\inst22|Mux10~0_combout\ & 
-- ((!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) + ( \inst19|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100101000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux10~0_combout\,
	datab => \inst22|ALT_INV_Mux3~0_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \RS|ALT_INV_A\(0),
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~34_cout\,
	sumout => \inst19|Add0~17_sumout\,
	cout => \inst19|Add0~18\);

-- Location: LABCELL_X10_Y5_N6
\inst19|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~21_sumout\ = SUM(( \RS|A\(1) ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & (!\inst22|Mux3~0_combout\)) # (\inst22|Mux10~0_combout\ & 
-- ((!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) + ( \inst19|Add0~18\ ))
-- \inst19|Add0~22\ = CARRY(( \RS|A\(1) ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & (!\inst22|Mux3~0_combout\)) # (\inst22|Mux10~0_combout\ & 
-- ((!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) + ( \inst19|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101101001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux3~0_combout\,
	datab => \inst22|ALT_INV_Mux10~0_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datad => \RS|ALT_INV_A\(1),
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~18\,
	sumout => \inst19|Add0~21_sumout\,
	cout => \inst19|Add0~22\);

-- Location: LABCELL_X10_Y5_N9
\inst19|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~25_sumout\ = SUM(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & (!\inst22|Mux3~0_combout\)) # (\inst22|Mux10~0_combout\ & 
-- ((!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) + ( \inst19|Add0~22\ ))
-- \inst19|Add0~26\ = CARRY(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & (!\inst22|Mux3~0_combout\)) # (\inst22|Mux10~0_combout\ & 
-- ((!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) + ( \inst19|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101101001000011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux3~0_combout\,
	datab => \inst22|ALT_INV_Mux10~0_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~22\,
	sumout => \inst19|Add0~25_sumout\,
	cout => \inst19|Add0~26\);

-- Location: LABCELL_X10_Y5_N12
\inst19|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~29_sumout\ = SUM(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & (!\inst22|Mux3~0_combout\)) # (\inst22|Mux10~0_combout\ & 
-- ((!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) + ( \inst19|Add0~26\ ))
-- \inst19|Add0~30\ = CARRY(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & (!\inst22|Mux3~0_combout\)) # (\inst22|Mux10~0_combout\ & 
-- ((!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) + ( \inst19|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101101001000011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux3~0_combout\,
	datab => \inst22|ALT_INV_Mux10~0_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~26\,
	sumout => \inst19|Add0~29_sumout\,
	cout => \inst19|Add0~30\);

-- Location: LABCELL_X9_Y5_N6
\inst19|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux13~0_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst19|F9[7]~2_combout\ & ( (\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & 
-- !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\) ) ) ) # ( !\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst19|F9[7]~2_combout\ & ( 
-- (\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\) ) ) ) # ( \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- !\inst19|F9[7]~2_combout\ & ( (\inst19|Mux13~1_combout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & \inst19|Add0~29_sumout\)) ) ) ) # ( !\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- !\inst19|F9[7]~2_combout\ & ( (\inst19|Mux13~1_combout\ & !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000011000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datab => \inst19|ALT_INV_Mux13~1_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datad => \inst19|ALT_INV_Add0~29_sumout\,
	datae => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst19|ALT_INV_F9[7]~2_combout\,
	combout => \inst19|Mux13~0_combout\);

-- Location: FF_X9_Y5_N7
\inst19|F9[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(3));

-- Location: LABCELL_X9_Y5_N36
\inst19|F9[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|F9[7]~3_combout\ = ( !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( ((\inst19|F9[7]~1_combout\ & \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\)) # (\inst19|F9[7]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9[7]~1_combout\,
	datab => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \inst19|ALT_INV_F9[7]~2_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst19|F9[7]~3_combout\);

-- Location: LABCELL_X9_Y5_N45
\inst19|F9[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|F9[7]~4_combout\ = ( !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( ((\inst19|F9[7]~1_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & 
-- !\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\))) # (\inst19|F9[7]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100001111000111110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9[7]~1_combout\,
	datab => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst19|ALT_INV_F9[7]~2_combout\,
	datad => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst19|F9[7]~4_combout\);

-- Location: FF_X10_Y7_N5
\RT|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(3));

-- Location: LABCELL_X10_Y4_N12
\inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(12) & ( \RT|A\(8) & ( (\inst2|altsyncram_component|auto_generated|q_a\(14) & (!\inst2|altsyncram_component|auto_generated|q_a\(15) 
-- $ (\inst2|altsyncram_component|auto_generated|q_a\(13)))) ) ) ) # ( !\inst2|altsyncram_component|auto_generated|q_a\(12) & ( \RT|A\(8) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13) & (!\inst2|altsyncram_component|auto_generated|q_a\(15))) # 
-- (\inst2|altsyncram_component|auto_generated|q_a\(13) & ((\inst2|altsyncram_component|auto_generated|q_a\(14)))) ) ) ) # ( \inst2|altsyncram_component|auto_generated|q_a\(12) & ( !\RT|A\(8) & ( (\inst2|altsyncram_component|auto_generated|q_a\(14) & 
-- (!\inst2|altsyncram_component|auto_generated|q_a\(15) $ (\inst2|altsyncram_component|auto_generated|q_a\(13)))) ) ) ) # ( !\inst2|altsyncram_component|auto_generated|q_a\(12) & ( !\RT|A\(8) & ( (\inst2|altsyncram_component|auto_generated|q_a\(14) & 
-- ((!\inst2|altsyncram_component|auto_generated|q_a\(15)) # (\inst2|altsyncram_component|auto_generated|q_a\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000010010000110100011101000110010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datae => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \RT|ALT_INV_A\(8),
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X11_Y5_N54
\inst14|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \RT|A\(5) & ( \inst2|altsyncram_component|auto_generated|q_a\(5) ) ) # ( !\RT|A\(5) & ( \inst2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- (((\inst2|altsyncram_component|auto_generated|q_a\(12)) # (\inst2|altsyncram_component|auto_generated|q_a\(15))) # (\inst2|altsyncram_component|auto_generated|q_a\(14))) # (\inst2|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( \RT|A\(5) & ( 
-- !\inst2|altsyncram_component|auto_generated|q_a\(5) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13) & (!\inst2|altsyncram_component|auto_generated|q_a\(14) & (!\inst2|altsyncram_component|auto_generated|q_a\(15) & 
-- !\inst2|altsyncram_component|auto_generated|q_a\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datae => \RT|ALT_INV_A\(5),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X10_Y5_N15
\inst19|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~1_sumout\ = SUM(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & (!\inst22|Mux3~0_combout\)) # (\inst22|Mux10~0_combout\ & 
-- ((!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) + ( \inst19|Add0~30\ ))
-- \inst19|Add0~2\ = CARRY(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & (!\inst22|Mux3~0_combout\)) # (\inst22|Mux10~0_combout\ & 
-- ((!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) + ( \inst19|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101101001000011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux3~0_combout\,
	datab => \inst22|ALT_INV_Mux10~0_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~30\,
	sumout => \inst19|Add0~1_sumout\,
	cout => \inst19|Add0~2\);

-- Location: LABCELL_X10_Y5_N18
\inst19|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~5_sumout\ = SUM(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~2\ ))
-- \inst19|Add0~6\ = CARRY(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010100011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst22|ALT_INV_Mux3~0_combout\,
	datac => \inst22|ALT_INV_Mux10~0_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~2\,
	sumout => \inst19|Add0~5_sumout\,
	cout => \inst19|Add0~6\);

-- Location: LABCELL_X10_Y5_N21
\inst19|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~9_sumout\ = SUM(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~6\ ))
-- \inst19|Add0~10\ = CARRY(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010100011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst22|ALT_INV_Mux3~0_combout\,
	datac => \inst22|ALT_INV_Mux10~0_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~6\,
	sumout => \inst19|Add0~9_sumout\,
	cout => \inst19|Add0~10\);

-- Location: LABCELL_X10_Y5_N24
\inst19|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~13_sumout\ = SUM(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~10\ ))
-- \inst19|Add0~14\ = CARRY(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010100011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst22|ALT_INV_Mux3~0_combout\,
	datac => \inst22|ALT_INV_Mux10~0_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~10\,
	sumout => \inst19|Add0~13_sumout\,
	cout => \inst19|Add0~14\);

-- Location: LABCELL_X10_Y5_N27
\inst19|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~37_sumout\ = SUM(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~14\ ))
-- \inst19|Add0~38\ = CARRY(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010100011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst22|ALT_INV_Mux3~0_combout\,
	datac => \inst22|ALT_INV_Mux10~0_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w8_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~14\,
	sumout => \inst19|Add0~37_sumout\,
	cout => \inst19|Add0~38\);

-- Location: LABCELL_X4_Y4_N15
\inst19|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux4~0_combout\ = ( !\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ( !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datae => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux4~0_combout\);

-- Location: LABCELL_X4_Y4_N42
\inst19|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux4~1_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ( !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & 
-- \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datae => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux4~1_combout\);

-- Location: LABCELL_X7_Y4_N42
\inst19|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux8~0_combout\ = ( \RS|A\(0) & ( \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & (\RS|A\(1) & 
-- (\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & !\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\))) ) ) ) # ( !\RS|A\(0) & ( \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & (\RS|A\(1) & (\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & !\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\))) ) ) ) # ( 
-- \RS|A\(0) & ( !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- \inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datab => \RS|ALT_INV_A\(1),
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datad => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datae => \RS|ALT_INV_A\(0),
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux8~0_combout\);

-- Location: LABCELL_X4_Y4_N24
\inst19|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux8~2_combout\ = ( !\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & 
-- (((\inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\)))) # (\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ((((\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) ) # ( 
-- \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & (\inst19|Mux8~0_combout\ & (!\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & 
-- ((!\inst19|ShiftLeft0~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111001000000010000000001010010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datab => \inst19|ALT_INV_Mux8~0_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datad => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	dataf => \inst19|ALT_INV_ShiftLeft0~2_combout\,
	datag => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w8_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux8~2_combout\);

-- Location: MLABCELL_X6_Y5_N18
\inst19|F9[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|F9[15]~0_combout\ = ( !\inst2|altsyncram_component|auto_generated|q_a\(0) & ( \inst22|Mux3~0_combout\ & ( (\inst22|Mux10~0_combout\ & (\inst2|altsyncram_component|auto_generated|q_a\(2) & !\inst2|altsyncram_component|auto_generated|q_a\(1))) ) ) ) 
-- # ( \inst2|altsyncram_component|auto_generated|q_a\(0) & ( !\inst22|Mux3~0_combout\ & ( (!\inst22|Mux10~0_combout\ & !\inst22|Mux2~0_combout\) ) ) ) # ( !\inst2|altsyncram_component|auto_generated|q_a\(0) & ( !\inst22|Mux3~0_combout\ & ( 
-- (!\inst22|Mux10~0_combout\ & (((!\inst22|Mux2~0_combout\)))) # (\inst22|Mux10~0_combout\ & (\inst2|altsyncram_component|auto_generated|q_a\(2) & ((!\inst2|altsyncram_component|auto_generated|q_a\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110100000101000001010000000010001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux10~0_combout\,
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst22|ALT_INV_Mux2~0_combout\,
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datae => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst22|ALT_INV_Mux3~0_combout\,
	combout => \inst19|F9[15]~0_combout\);

-- Location: MLABCELL_X8_Y4_N12
\inst19|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux8~1_combout\ = ( \inst19|Mux8~2_combout\ & ( \inst19|F9[15]~0_combout\ ) ) # ( !\inst19|Mux8~2_combout\ & ( \inst19|F9[15]~0_combout\ & ( (!\inst19|Add0~37_sumout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ & 
-- ((\inst19|Mux4~1_combout\)))) # (\inst19|Add0~37_sumout\ & (((\inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ & \inst19|Mux4~1_combout\)) # (\inst19|Mux4~0_combout\))) ) ) ) # ( \inst19|Mux8~2_combout\ & ( 
-- !\inst19|F9[15]~0_combout\ & ( (!\inst19|Add0~37_sumout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ & ((\inst19|Mux4~1_combout\)))) # (\inst19|Add0~37_sumout\ & 
-- (((\inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ & \inst19|Mux4~1_combout\)) # (\inst19|Mux4~0_combout\))) ) ) ) # ( !\inst19|Mux8~2_combout\ & ( !\inst19|F9[15]~0_combout\ & ( (!\inst19|Add0~37_sumout\ & 
-- (\inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ & ((\inst19|Mux4~1_combout\)))) # (\inst19|Add0~37_sumout\ & (((\inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ & \inst19|Mux4~1_combout\)) # 
-- (\inst19|Mux4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Add0~37_sumout\,
	datab => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w8_n0_mux_dataout~0_combout\,
	datac => \inst19|ALT_INV_Mux4~0_combout\,
	datad => \inst19|ALT_INV_Mux4~1_combout\,
	datae => \inst19|ALT_INV_Mux8~2_combout\,
	dataf => \inst19|ALT_INV_F9[15]~0_combout\,
	combout => \inst19|Mux8~1_combout\);

-- Location: FF_X8_Y4_N14
\inst19|F9[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(8));

-- Location: LABCELL_X11_Y5_N33
\inst14|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\ = ( \RT|A\(9) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13) & (!\inst2|altsyncram_component|auto_generated|q_a\(15) & 
-- ((!\inst2|altsyncram_component|auto_generated|q_a\(12)) # (\inst2|altsyncram_component|auto_generated|q_a\(14))))) # (\inst2|altsyncram_component|auto_generated|q_a\(13) & (\inst2|altsyncram_component|auto_generated|q_a\(14) & 
-- ((!\inst2|altsyncram_component|auto_generated|q_a\(12)) # (\inst2|altsyncram_component|auto_generated|q_a\(15))))) ) ) # ( !\RT|A\(9) & ( (\inst2|altsyncram_component|auto_generated|q_a\(14) & ((!\inst2|altsyncram_component|auto_generated|q_a\(13) & 
-- ((!\inst2|altsyncram_component|auto_generated|q_a\(15)))) # (\inst2|altsyncram_component|auto_generated|q_a\(13) & ((!\inst2|altsyncram_component|auto_generated|q_a\(12)) # (\inst2|altsyncram_component|auto_generated|q_a\(15)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000101000011100000010110001110000001011000111000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \RT|ALT_INV_A\(9),
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X10_Y5_N30
\inst19|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~41_sumout\ = SUM(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~38\ ))
-- \inst19|Add0~42\ = CARRY(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000100001110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst22|ALT_INV_Mux10~0_combout\,
	datac => \inst22|ALT_INV_Mux3~0_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w9_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~38\,
	sumout => \inst19|Add0~41_sumout\,
	cout => \inst19|Add0~42\);

-- Location: LABCELL_X12_Y5_N45
\inst19|ShiftLeft0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|ShiftLeft0~1_combout\ = ( \inst2|altsyncram_component|auto_generated|q_a\(6) & ( (!\RT|A\(5) & (!\RT|A\(6) & \inst22|Mux10~0_combout\)) ) ) # ( !\inst2|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst22|Mux10~0_combout\ & 
-- (((!\inst2|altsyncram_component|auto_generated|q_a\(5))))) # (\inst22|Mux10~0_combout\ & (!\RT|A\(5) & (!\RT|A\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010001000111100001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(5),
	datab => \RT|ALT_INV_A\(6),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \inst22|ALT_INV_Mux10~0_combout\,
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \inst19|ShiftLeft0~1_combout\);

-- Location: LABCELL_X12_Y5_N48
\inst19|ShiftLeft0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|ShiftLeft0~4_combout\ = ( !\inst14|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\ & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\ & 
-- (!\inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ & \inst19|ShiftLeft0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w9_n0_mux_dataout~0_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w8_n0_mux_dataout~0_combout\,
	datad => \inst19|ALT_INV_ShiftLeft0~1_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	combout => \inst19|ShiftLeft0~4_combout\);

-- Location: MLABCELL_X3_Y3_N54
\inst19|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~0_combout\ = ( \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \RS|A\(0) & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & \RS|A\(1)) ) ) ) # ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \RS|A\(0) & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\) # (\RS|A\(1)) ) ) ) # ( 
-- \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\RS|A\(0) & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & \RS|A\(1)) ) ) ) # ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\RS|A\(0) & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & \RS|A\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001111110011110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \RS|ALT_INV_A\(1),
	datae => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \RS|ALT_INV_A\(0),
	combout => \inst19|LessThan0~0_combout\);

-- Location: LABCELL_X7_Y5_N18
\inst19|F9[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|F9[9]~8_combout\ = ( \inst19|LessThan0~2_combout\ & ( \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & 
-- ((!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\) # ((\inst19|ShiftLeft0~4_combout\ & \inst19|LessThan0~0_combout\)))) ) ) ) # ( !\inst19|LessThan0~2_combout\ & ( 
-- \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & !\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\) ) ) ) # ( 
-- \inst19|LessThan0~2_combout\ & ( !\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ ) ) ) # ( !\inst19|LessThan0~2_combout\ & ( 
-- !\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110000001100000011000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_ShiftLeft0~4_combout\,
	datab => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datad => \inst19|ALT_INV_LessThan0~0_combout\,
	datae => \inst19|ALT_INV_LessThan0~2_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst19|F9[9]~8_combout\);

-- Location: MLABCELL_X8_Y5_N45
\inst19|F9[15]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|F9[15]~7_combout\ = ( \inst19|F9[15]~0_combout\ & ( !\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	dataf => \inst19|ALT_INV_F9[15]~0_combout\,
	combout => \inst19|F9[15]~7_combout\);

-- Location: MLABCELL_X3_Y3_N24
\inst19|ShiftLeft0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|ShiftLeft0~3_combout\ = ( \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \RS|A\(0) & ( !\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ ) ) ) # ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \RS|A\(0) & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & \RS|A\(1)) ) ) ) # ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\RS|A\(0) & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & \RS|A\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000001100000011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \RS|ALT_INV_A\(1),
	datae => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \RS|ALT_INV_A\(0),
	combout => \inst19|ShiftLeft0~3_combout\);

-- Location: MLABCELL_X8_Y5_N18
\inst19|F9[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|F9[7]~6_combout\ = ( !\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\) # (\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datad => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst19|F9[7]~6_combout\);

-- Location: MLABCELL_X8_Y5_N42
\inst19|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux7~1_combout\ = ( \inst19|F9[7]~6_combout\ & ( \inst19|ShiftLeft0~3_combout\ ) ) # ( !\inst19|F9[7]~6_combout\ & ( (\inst19|ShiftLeft0~3_combout\ & (((!\inst19|F9[15]~7_combout\ & 
-- \inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\)) # (\inst19|F9[9]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9[9]~8_combout\,
	datab => \inst19|ALT_INV_F9[15]~7_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datad => \inst19|ALT_INV_ShiftLeft0~3_combout\,
	dataf => \inst19|ALT_INV_F9[7]~6_combout\,
	combout => \inst19|Mux7~1_combout\);

-- Location: MLABCELL_X8_Y5_N48
\inst19|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux7~0_combout\ = ( \inst19|F9[15]~0_combout\ & ( (\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- !\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datad => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	dataf => \inst19|ALT_INV_F9[15]~0_combout\,
	combout => \inst19|Mux7~0_combout\);

-- Location: LABCELL_X9_Y5_N48
\inst19|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux7~2_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (\inst19|F9[15]~7_combout\ & (!\inst19|F9[7]~6_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\ & 
-- !\inst19|F9[9]~8_combout\))) ) ) # ( !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (!\inst19|F9[7]~6_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\ & !\inst19|F9[9]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9[15]~7_combout\,
	datab => \inst19|ALT_INV_F9[7]~6_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w9_n0_mux_dataout~0_combout\,
	datad => \inst19|ALT_INV_F9[9]~8_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux7~2_combout\);

-- Location: MLABCELL_X8_Y4_N51
\inst19|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux7~4_combout\ = ( \inst19|LessThan0~0_combout\ & ( \inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( (!\inst19|LessThan0~2_combout\ & \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\) ) ) ) # ( 
-- !\inst19|LessThan0~0_combout\ & ( \inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ ) ) ) # ( \inst19|LessThan0~0_combout\ & ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & 
-- ((!\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))) # (\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & (((!\inst19|LessThan0~2_combout\)))) ) ) ) # ( !\inst19|LessThan0~0_combout\ & ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( ((\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & !\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\)) # 
-- (\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111000000110000001111000011110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datab => \inst19|ALT_INV_LessThan0~2_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datad => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datae => \inst19|ALT_INV_LessThan0~0_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux7~4_combout\);

-- Location: LABCELL_X7_Y5_N6
\inst19|Mux7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux7~5_combout\ = ( !\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ 
-- & ((!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\) # ((!\inst19|ShiftLeft0~2_combout\ & \inst19|Mux7~4_combout\))))) ) ) # ( \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- (\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & (\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & 
-- ((!\inst19|ShiftLeft0~4_combout\) # (\inst19|Mux7~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1000100010101000000100000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datab => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	datac => \inst19|ALT_INV_ShiftLeft0~4_combout\,
	datad => \inst19|ALT_INV_Mux7~4_combout\,
	datae => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datag => \inst19|ALT_INV_ShiftLeft0~2_combout\,
	combout => \inst19|Mux7~5_combout\);

-- Location: MLABCELL_X8_Y5_N24
\inst19|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux7~3_combout\ = ( \inst19|Mux7~2_combout\ & ( \inst19|Mux7~5_combout\ ) ) # ( !\inst19|Mux7~2_combout\ & ( \inst19|Mux7~5_combout\ & ( (((\inst19|Add0~41_sumout\ & \inst19|Mux4~0_combout\)) # (\inst19|Mux7~0_combout\)) # 
-- (\inst19|Mux7~1_combout\) ) ) ) # ( \inst19|Mux7~2_combout\ & ( !\inst19|Mux7~5_combout\ & ( ((\inst19|Add0~41_sumout\ & \inst19|Mux4~0_combout\)) # (\inst19|Mux7~0_combout\) ) ) ) # ( !\inst19|Mux7~2_combout\ & ( !\inst19|Mux7~5_combout\ & ( 
-- ((\inst19|Add0~41_sumout\ & \inst19|Mux4~0_combout\)) # (\inst19|Mux7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Add0~41_sumout\,
	datab => \inst19|ALT_INV_Mux7~1_combout\,
	datac => \inst19|ALT_INV_Mux7~0_combout\,
	datad => \inst19|ALT_INV_Mux4~0_combout\,
	datae => \inst19|ALT_INV_Mux7~2_combout\,
	dataf => \inst19|ALT_INV_Mux7~5_combout\,
	combout => \inst19|Mux7~3_combout\);

-- Location: FF_X8_Y5_N25
\inst19|F9[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(9));

-- Location: MLABCELL_X3_Y3_N21
\inst19|ShiftLeft0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|ShiftLeft0~5_combout\ = ( \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \RS|A\(1) & ( !\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ ) ) ) # ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \RS|A\(1) & ( (\RS|A\(0) & \inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\) ) ) ) # ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\RS|A\(1) & ( (\RS|A\(0) & \inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000011000000111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RS|ALT_INV_A\(0),
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datae => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \RS|ALT_INV_A\(1),
	combout => \inst19|ShiftLeft0~5_combout\);

-- Location: LABCELL_X9_Y5_N51
\inst19|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux6~1_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (\inst19|ShiftLeft0~5_combout\ & ((!\inst19|F9[15]~7_combout\) # ((\inst19|F9[9]~8_combout\) # (\inst19|F9[7]~6_combout\)))) ) ) # ( 
-- !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (\inst19|ShiftLeft0~5_combout\ & ((\inst19|F9[9]~8_combout\) # (\inst19|F9[7]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000101111110000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9[15]~7_combout\,
	datab => \inst19|ALT_INV_F9[7]~6_combout\,
	datac => \inst19|ALT_INV_F9[9]~8_combout\,
	datad => \inst19|ALT_INV_ShiftLeft0~5_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux6~1_combout\);

-- Location: LABCELL_X12_Y5_N24
\inst14|LPM_MUX_component|auto_generated|l1_w10_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w10_n0_mux_dataout~0_combout\ = ( \RT|A\(10) & ( (\inst22|Mux6~0_combout\) # (\inst22|Mux10~0_combout\) ) ) # ( !\RT|A\(10) & ( (!\inst22|Mux10~0_combout\ & \inst22|Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux10~0_combout\,
	datab => \inst22|ALT_INV_Mux6~0_combout\,
	dataf => \RT|ALT_INV_A\(10),
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w10_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X8_Y5_N0
\inst19|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux6~2_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (!\inst19|F9[7]~6_combout\ & (\inst19|F9[15]~7_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w10_n0_mux_dataout~0_combout\ & 
-- !\inst19|F9[9]~8_combout\))) ) ) # ( !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (!\inst19|F9[7]~6_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w10_n0_mux_dataout~0_combout\ & !\inst19|F9[9]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9[7]~6_combout\,
	datab => \inst19|ALT_INV_F9[15]~7_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w10_n0_mux_dataout~0_combout\,
	datad => \inst19|ALT_INV_F9[9]~8_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux6~2_combout\);

-- Location: LABCELL_X7_Y5_N27
\inst19|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux6~0_combout\ = ( \inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & 
-- \inst19|F9[15]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	datad => \inst19|ALT_INV_F9[15]~0_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux6~0_combout\);

-- Location: LABCELL_X10_Y5_N33
\inst19|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~45_sumout\ = SUM(( !\inst14|LPM_MUX_component|auto_generated|l1_w10_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( GND ) + ( \inst19|Add0~42\ ))
-- \inst19|Add0~46\ = CARRY(( !\inst14|LPM_MUX_component|auto_generated|l1_w10_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( GND ) + ( \inst19|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110111100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst22|ALT_INV_Mux10~0_combout\,
	datac => \inst22|ALT_INV_Mux3~0_combout\,
	datad => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w10_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~42\,
	sumout => \inst19|Add0~45_sumout\,
	cout => \inst19|Add0~46\);

-- Location: LABCELL_X7_Y5_N48
\inst19|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux6~3_combout\ = ( \inst19|Mux6~0_combout\ & ( \inst19|Add0~45_sumout\ ) ) # ( !\inst19|Mux6~0_combout\ & ( \inst19|Add0~45_sumout\ & ( ((\inst19|Mux7~5_combout\ & ((\inst19|Mux6~2_combout\) # (\inst19|Mux6~1_combout\)))) # 
-- (\inst19|Mux4~0_combout\) ) ) ) # ( \inst19|Mux6~0_combout\ & ( !\inst19|Add0~45_sumout\ ) ) # ( !\inst19|Mux6~0_combout\ & ( !\inst19|Add0~45_sumout\ & ( (\inst19|Mux7~5_combout\ & ((\inst19|Mux6~2_combout\) # (\inst19|Mux6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011111111111111111100010011111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Mux6~1_combout\,
	datab => \inst19|ALT_INV_Mux7~5_combout\,
	datac => \inst19|ALT_INV_Mux6~2_combout\,
	datad => \inst19|ALT_INV_Mux4~0_combout\,
	datae => \inst19|ALT_INV_Mux6~0_combout\,
	dataf => \inst19|ALT_INV_Add0~45_sumout\,
	combout => \inst19|Mux6~3_combout\);

-- Location: FF_X7_Y5_N49
\inst19|F9[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(10));

-- Location: LABCELL_X7_Y5_N24
\inst19|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux5~0_combout\ = ( \inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & 
-- \inst19|F9[15]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datab => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	datac => \inst19|ALT_INV_F9[15]~0_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux5~0_combout\);

-- Location: LABCELL_X9_Y5_N54
\inst19|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux5~1_combout\ = ( \inst19|F9[7]~6_combout\ & ( \inst19|ShiftLeft0~6_combout\ ) ) # ( !\inst19|F9[7]~6_combout\ & ( (\inst19|ShiftLeft0~6_combout\ & (((\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & 
-- !\inst19|F9[15]~7_combout\)) # (\inst19|F9[9]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001111000000000100111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datab => \inst19|ALT_INV_F9[15]~7_combout\,
	datac => \inst19|ALT_INV_F9[9]~8_combout\,
	datad => \inst19|ALT_INV_ShiftLeft0~6_combout\,
	dataf => \inst19|ALT_INV_F9[7]~6_combout\,
	combout => \inst19|Mux5~1_combout\);

-- Location: FF_X11_Y5_N23
\RT|A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w11_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(11));

-- Location: LABCELL_X11_Y5_N6
\inst14|LPM_MUX_component|auto_generated|l1_w11_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w11_n0_mux_dataout~0_combout\ = ( \inst22|Mux10~0_combout\ & ( \RT|A\(11) ) ) # ( !\inst22|Mux10~0_combout\ & ( \inst22|Mux6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst22|ALT_INV_Mux6~0_combout\,
	datac => \RT|ALT_INV_A\(11),
	dataf => \inst22|ALT_INV_Mux10~0_combout\,
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w11_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X9_Y5_N15
\inst19|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux5~2_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (\inst19|F9[15]~7_combout\ & (!\inst19|F9[7]~6_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w11_n0_mux_dataout~0_combout\ & 
-- !\inst19|F9[9]~8_combout\))) ) ) # ( !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (!\inst19|F9[7]~6_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w11_n0_mux_dataout~0_combout\ & !\inst19|F9[9]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9[15]~7_combout\,
	datab => \inst19|ALT_INV_F9[7]~6_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w11_n0_mux_dataout~0_combout\,
	datad => \inst19|ALT_INV_F9[9]~8_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux5~2_combout\);

-- Location: LABCELL_X10_Y5_N36
\inst19|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~49_sumout\ = SUM(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w11_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~46\ ))
-- \inst19|Add0~50\ = CARRY(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w11_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010100011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst22|ALT_INV_Mux3~0_combout\,
	datac => \inst22|ALT_INV_Mux10~0_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w11_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~46\,
	sumout => \inst19|Add0~49_sumout\,
	cout => \inst19|Add0~50\);

-- Location: LABCELL_X11_Y5_N36
\inst19|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux5~3_combout\ = ( \inst19|Mux5~2_combout\ & ( \inst19|Add0~49_sumout\ & ( ((\inst19|Mux4~0_combout\) # (\inst19|Mux7~5_combout\)) # (\inst19|Mux5~0_combout\) ) ) ) # ( !\inst19|Mux5~2_combout\ & ( \inst19|Add0~49_sumout\ & ( 
-- (((\inst19|Mux7~5_combout\ & \inst19|Mux5~1_combout\)) # (\inst19|Mux4~0_combout\)) # (\inst19|Mux5~0_combout\) ) ) ) # ( \inst19|Mux5~2_combout\ & ( !\inst19|Add0~49_sumout\ & ( (\inst19|Mux7~5_combout\) # (\inst19|Mux5~0_combout\) ) ) ) # ( 
-- !\inst19|Mux5~2_combout\ & ( !\inst19|Add0~49_sumout\ & ( ((\inst19|Mux7~5_combout\ & \inst19|Mux5~1_combout\)) # (\inst19|Mux5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111011101110111011101010111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Mux5~0_combout\,
	datab => \inst19|ALT_INV_Mux7~5_combout\,
	datac => \inst19|ALT_INV_Mux5~1_combout\,
	datad => \inst19|ALT_INV_Mux4~0_combout\,
	datae => \inst19|ALT_INV_Mux5~2_combout\,
	dataf => \inst19|ALT_INV_Add0~49_sumout\,
	combout => \inst19|Mux5~3_combout\);

-- Location: FF_X11_Y5_N37
\inst19|F9[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(11));

-- Location: LABCELL_X12_Y5_N0
\inst14|LPM_MUX_component|auto_generated|l1_w13_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w13_n0_mux_dataout~0_combout\ = (!\inst22|Mux10~0_combout\ & (\inst22|Mux6~0_combout\)) # (\inst22|Mux10~0_combout\ & ((\RT|A\(13))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux10~0_combout\,
	datab => \inst22|ALT_INV_Mux6~0_combout\,
	datac => \RT|ALT_INV_A\(13),
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w13_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X8_Y5_N3
\inst19|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux3~2_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (!\inst19|F9[7]~6_combout\ & (\inst19|F9[15]~7_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w13_n0_mux_dataout~0_combout\ & 
-- !\inst19|F9[9]~8_combout\))) ) ) # ( !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (!\inst19|F9[7]~6_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w13_n0_mux_dataout~0_combout\ & !\inst19|F9[9]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9[7]~6_combout\,
	datab => \inst19|ALT_INV_F9[15]~7_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w13_n0_mux_dataout~0_combout\,
	datad => \inst19|ALT_INV_F9[9]~8_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux3~2_combout\);

-- Location: MLABCELL_X8_Y5_N9
\inst19|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux3~0_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (\inst19|F9[15]~0_combout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & 
-- \inst14|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst19|ALT_INV_F9[15]~0_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	datad => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux3~0_combout\);

-- Location: MLABCELL_X8_Y5_N51
\inst19|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux3~1_combout\ = ( \inst19|F9[7]~6_combout\ & ( \inst19|ShiftLeft0~3_combout\ ) ) # ( !\inst19|F9[7]~6_combout\ & ( (\inst19|ShiftLeft0~3_combout\ & (((\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & 
-- !\inst19|F9[15]~7_combout\)) # (\inst19|F9[9]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001111000001000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datab => \inst19|ALT_INV_F9[15]~7_combout\,
	datac => \inst19|ALT_INV_ShiftLeft0~3_combout\,
	datad => \inst19|ALT_INV_F9[9]~8_combout\,
	dataf => \inst19|ALT_INV_F9[7]~6_combout\,
	combout => \inst19|Mux3~1_combout\);

-- Location: LABCELL_X7_Y5_N42
\inst19|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux3~4_combout\ = ( \inst19|LessThan0~2_combout\ & ( \inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & 
-- (!\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\))) # (\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & 
-- (((!\inst19|LessThan0~0_combout\)))) ) ) ) # ( !\inst19|LessThan0~2_combout\ & ( \inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( ((!\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & 
-- \inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\)) # (\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\) ) ) ) # ( \inst19|LessThan0~2_combout\ & ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & !\inst19|LessThan0~0_combout\) ) ) ) # ( !\inst19|LessThan0~2_combout\ & ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010000000001011101010111010101110100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datab => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datad => \inst19|ALT_INV_LessThan0~0_combout\,
	datae => \inst19|ALT_INV_LessThan0~2_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux3~4_combout\);

-- Location: LABCELL_X7_Y5_N12
\inst19|Mux3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux3~5_combout\ = ( !\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ 
-- & ((!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\) # ((!\inst19|ShiftLeft0~2_combout\ & \inst19|Mux3~4_combout\))))) ) ) # ( \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- (\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & (\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & 
-- ((!\inst19|ShiftLeft0~4_combout\) # (\inst19|Mux3~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1000100010101000000100000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datab => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	datac => \inst19|ALT_INV_ShiftLeft0~4_combout\,
	datad => \inst19|ALT_INV_Mux3~4_combout\,
	datae => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datag => \inst19|ALT_INV_ShiftLeft0~2_combout\,
	combout => \inst19|Mux3~5_combout\);

-- Location: LABCELL_X12_Y5_N51
\inst14|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\ = ( \inst22|Mux6~0_combout\ & ( (!\inst22|Mux10~0_combout\) # (\RT|A\(12)) ) ) # ( !\inst22|Mux6~0_combout\ & ( (\inst22|Mux10~0_combout\ & \RT|A\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux10~0_combout\,
	datac => \RT|ALT_INV_A\(12),
	dataf => \inst22|ALT_INV_Mux6~0_combout\,
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X10_Y5_N39
\inst19|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~53_sumout\ = SUM(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~50\ ))
-- \inst19|Add0~54\ = CARRY(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010100011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst22|ALT_INV_Mux3~0_combout\,
	datac => \inst22|ALT_INV_Mux10~0_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w12_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~50\,
	sumout => \inst19|Add0~53_sumout\,
	cout => \inst19|Add0~54\);

-- Location: LABCELL_X10_Y5_N42
\inst19|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~57_sumout\ = SUM(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w13_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~54\ ))
-- \inst19|Add0~58\ = CARRY(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w13_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010100011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst22|ALT_INV_Mux3~0_combout\,
	datac => \inst22|ALT_INV_Mux10~0_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w13_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~54\,
	sumout => \inst19|Add0~57_sumout\,
	cout => \inst19|Add0~58\);

-- Location: MLABCELL_X8_Y5_N12
\inst19|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux3~3_combout\ = ( \inst19|Mux3~5_combout\ & ( \inst19|Add0~57_sumout\ & ( (((\inst19|Mux4~0_combout\) # (\inst19|Mux3~1_combout\)) # (\inst19|Mux3~0_combout\)) # (\inst19|Mux3~2_combout\) ) ) ) # ( !\inst19|Mux3~5_combout\ & ( 
-- \inst19|Add0~57_sumout\ & ( (\inst19|Mux4~0_combout\) # (\inst19|Mux3~0_combout\) ) ) ) # ( \inst19|Mux3~5_combout\ & ( !\inst19|Add0~57_sumout\ & ( ((\inst19|Mux3~1_combout\) # (\inst19|Mux3~0_combout\)) # (\inst19|Mux3~2_combout\) ) ) ) # ( 
-- !\inst19|Mux3~5_combout\ & ( !\inst19|Add0~57_sumout\ & ( \inst19|Mux3~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011011111110111111100110011111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Mux3~2_combout\,
	datab => \inst19|ALT_INV_Mux3~0_combout\,
	datac => \inst19|ALT_INV_Mux3~1_combout\,
	datad => \inst19|ALT_INV_Mux4~0_combout\,
	datae => \inst19|ALT_INV_Mux3~5_combout\,
	dataf => \inst19|ALT_INV_Add0~57_sumout\,
	combout => \inst19|Mux3~3_combout\);

-- Location: FF_X8_Y5_N13
\inst19|F9[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(13));

-- Location: LABCELL_X12_Y5_N27
\inst14|LPM_MUX_component|auto_generated|l1_w15_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w15_n0_mux_dataout~0_combout\ = (!\inst22|Mux10~0_combout\ & (\inst22|Mux6~0_combout\)) # (\inst22|Mux10~0_combout\ & ((\RT|A\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux10~0_combout\,
	datab => \inst22|ALT_INV_Mux6~0_combout\,
	datac => \RT|ALT_INV_A\(15),
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w15_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X9_Y5_N30
\inst19|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux1~2_combout\ = ( \inst14|LPM_MUX_component|auto_generated|l1_w15_n0_mux_dataout~0_combout\ & ( (!\inst19|F9[7]~6_combout\ & (!\inst19|F9[9]~8_combout\ & ((!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\) # 
-- (\inst19|F9[15]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001100000000001000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datab => \inst19|ALT_INV_F9[7]~6_combout\,
	datac => \inst19|ALT_INV_F9[15]~7_combout\,
	datad => \inst19|ALT_INV_F9[9]~8_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w15_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux1~2_combout\);

-- Location: LABCELL_X9_Y5_N57
\inst19|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux1~1_combout\ = ( \inst19|F9[9]~8_combout\ & ( \inst19|ShiftLeft0~6_combout\ ) ) # ( !\inst19|F9[9]~8_combout\ & ( (\inst19|ShiftLeft0~6_combout\ & (((\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & 
-- !\inst19|F9[15]~7_combout\)) # (\inst19|F9[7]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001111000000000100111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datab => \inst19|ALT_INV_F9[15]~7_combout\,
	datac => \inst19|ALT_INV_F9[7]~6_combout\,
	datad => \inst19|ALT_INV_ShiftLeft0~6_combout\,
	dataf => \inst19|ALT_INV_F9[9]~8_combout\,
	combout => \inst19|Mux1~1_combout\);

-- Location: LABCELL_X9_Y5_N33
\inst19|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux1~0_combout\ = ( \inst19|F9[15]~0_combout\ & ( (\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & 
-- \inst14|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	datad => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	dataf => \inst19|ALT_INV_F9[15]~0_combout\,
	combout => \inst19|Mux1~0_combout\);

-- Location: LABCELL_X12_Y5_N3
\inst14|LPM_MUX_component|auto_generated|l1_w14_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w14_n0_mux_dataout~0_combout\ = ( \RT|A\(14) & ( (\inst22|Mux6~0_combout\) # (\inst22|Mux10~0_combout\) ) ) # ( !\RT|A\(14) & ( (!\inst22|Mux10~0_combout\ & \inst22|Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux10~0_combout\,
	datab => \inst22|ALT_INV_Mux6~0_combout\,
	dataf => \RT|ALT_INV_A\(14),
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w14_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X10_Y5_N45
\inst19|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~61_sumout\ = SUM(( !\inst14|LPM_MUX_component|auto_generated|l1_w14_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( GND ) + ( \inst19|Add0~58\ ))
-- \inst19|Add0~62\ = CARRY(( !\inst14|LPM_MUX_component|auto_generated|l1_w14_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( GND ) + ( \inst19|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011010111001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst22|ALT_INV_Mux3~0_combout\,
	datac => \inst22|ALT_INV_Mux10~0_combout\,
	datad => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w14_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~58\,
	sumout => \inst19|Add0~61_sumout\,
	cout => \inst19|Add0~62\);

-- Location: LABCELL_X10_Y5_N48
\inst19|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Add0~65_sumout\ = SUM(( GND ) + ( !\inst14|LPM_MUX_component|auto_generated|l1_w15_n0_mux_dataout~0_combout\ $ (((!\inst22|Mux10~0_combout\ & ((!\inst22|Mux3~0_combout\))) # (\inst22|Mux10~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) + ( \inst19|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010100011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst22|ALT_INV_Mux3~0_combout\,
	datac => \inst22|ALT_INV_Mux10~0_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w15_n0_mux_dataout~0_combout\,
	cin => \inst19|Add0~62\,
	sumout => \inst19|Add0~65_sumout\);

-- Location: LABCELL_X10_Y5_N54
\inst19|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux1~3_combout\ = ( \inst19|Mux1~0_combout\ & ( \inst19|Add0~65_sumout\ ) ) # ( !\inst19|Mux1~0_combout\ & ( \inst19|Add0~65_sumout\ & ( ((\inst19|Mux3~5_combout\ & ((\inst19|Mux1~1_combout\) # (\inst19|Mux1~2_combout\)))) # 
-- (\inst19|Mux4~0_combout\) ) ) ) # ( \inst19|Mux1~0_combout\ & ( !\inst19|Add0~65_sumout\ ) ) # ( !\inst19|Mux1~0_combout\ & ( !\inst19|Add0~65_sumout\ & ( (\inst19|Mux3~5_combout\ & ((\inst19|Mux1~1_combout\) # (\inst19|Mux1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011111111111111111100011111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Mux1~2_combout\,
	datab => \inst19|ALT_INV_Mux3~5_combout\,
	datac => \inst19|ALT_INV_Mux4~0_combout\,
	datad => \inst19|ALT_INV_Mux1~1_combout\,
	datae => \inst19|ALT_INV_Mux1~0_combout\,
	dataf => \inst19|ALT_INV_Add0~65_sumout\,
	combout => \inst19|Mux1~3_combout\);

-- Location: FF_X10_Y5_N55
\inst19|F9[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(15));

-- Location: M10K_X5_Y3_N0
\inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E0000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "cpu_ram.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM:inst20|altsyncram:altsyncram_component|altsyncram_5a44:auto_generated|altsyncram_2n13:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 20,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst22|Mux4~0_combout\,
	portare => \inst22|ALT_INV_Mux4~0_combout\,
	portbwe => \inst20|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	portbre => VCC,
	clk0 => \inst3~combout\,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\,
	portbdatain => \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\,
	portaaddr => \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\,
	portbdataout => \inst20|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X6_Y3_N18
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[15]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(15),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[15]~feeder_combout\);

-- Location: LABCELL_X4_Y3_N48
\inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(1),
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][3]~q\,
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(2),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][1]~q\,
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_shift_cntr_reg\(0),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\);

-- Location: LABCELL_X4_Y3_N3
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_reg[1]~0_combout\,
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~2_combout\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\);

-- Location: FF_X6_Y3_N20
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[15]~feeder_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15));

-- Location: MLABCELL_X6_Y3_N54
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[14]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(14),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[14]~feeder_combout\);

-- Location: FF_X6_Y3_N55
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[14]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15),
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14));

-- Location: MLABCELL_X6_Y3_N57
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[13]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(13),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[13]~feeder_combout\);

-- Location: FF_X6_Y3_N58
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[13]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14),
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13));

-- Location: MLABCELL_X6_Y3_N39
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[12]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(12),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[12]~feeder_combout\);

-- Location: FF_X6_Y3_N41
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[12]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13),
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12));

-- Location: MLABCELL_X6_Y3_N36
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[11]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(11),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[11]~feeder_combout\);

-- Location: FF_X6_Y3_N38
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[11]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12),
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11));

-- Location: MLABCELL_X6_Y3_N21
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[10]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(10),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[10]~feeder_combout\);

-- Location: FF_X6_Y3_N22
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[10]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11),
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10));

-- Location: MLABCELL_X6_Y3_N27
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[9]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(9),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[9]~feeder_combout\);

-- Location: FF_X6_Y3_N28
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[9]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10),
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9));

-- Location: MLABCELL_X6_Y3_N24
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[8]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(8),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[8]~feeder_combout\);

-- Location: FF_X6_Y3_N26
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[8]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9),
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8));

-- Location: MLABCELL_X6_Y3_N3
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(7),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]~feeder_combout\);

-- Location: FF_X6_Y3_N5
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8),
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7));

-- Location: MLABCELL_X6_Y3_N0
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(6),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]~feeder_combout\);

-- Location: FF_X6_Y3_N1
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7),
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6));

-- Location: MLABCELL_X6_Y3_N45
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(5),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]~feeder_combout\);

-- Location: FF_X6_Y3_N46
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6),
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5));

-- Location: MLABCELL_X6_Y3_N48
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(4),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]~feeder_combout\);

-- Location: FF_X6_Y3_N49
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5),
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4));

-- Location: MLABCELL_X6_Y3_N33
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(3),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]~feeder_combout\);

-- Location: FF_X6_Y3_N34
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4),
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3));

-- Location: MLABCELL_X6_Y3_N30
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(2),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~feeder_combout\);

-- Location: FF_X6_Y3_N32
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3),
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2));

-- Location: MLABCELL_X6_Y3_N9
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(1),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~feeder_combout\);

-- Location: FF_X6_Y3_N11
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2),
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1));

-- Location: LABCELL_X11_Y5_N42
\inst8|LPM_MUX_component|auto_generated|l1_w15_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w15_n0_mux_dataout~0_combout\ = ( \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(15) & ( (\inst22|Mux12~0_combout\ & ((\inst19|F9\(15)) # (\inst22|Mux7~0_combout\))) ) ) # ( 
-- !\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(15) & ( (!\inst22|Mux7~0_combout\ & (\inst19|F9\(15) & \inst22|Mux12~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux7~0_combout\,
	datac => \inst19|ALT_INV_F9\(15),
	datad => \inst22|ALT_INV_Mux12~0_combout\,
	dataf => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(15),
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w15_n0_mux_dataout~0_combout\);

-- Location: FF_X12_Y5_N26
\RT|A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	asdata => \inst8|LPM_MUX_component|auto_generated|l1_w15_n0_mux_dataout~0_combout\,
	sload => VCC,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(15));

-- Location: LABCELL_X7_Y6_N33
\inst8|LPM_MUX_component|auto_generated|l1_w13_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w13_n0_mux_dataout~0_combout\ = ( \inst22|Mux12~0_combout\ & ( (!\inst22|Mux7~0_combout\ & (\inst19|F9\(13))) # (\inst22|Mux7~0_combout\ & ((\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9\(13),
	datab => \inst22|ALT_INV_Mux7~0_combout\,
	datac => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(13),
	dataf => \inst22|ALT_INV_Mux12~0_combout\,
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w13_n0_mux_dataout~0_combout\);

-- Location: FF_X7_Y6_N34
\RT|A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w13_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(13));

-- Location: MLABCELL_X8_Y4_N30
\inst19|Mux4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux4~4_combout\ = ( \inst19|Mux4~1_combout\ & ( \inst19|ShiftLeft0~4_combout\ & ( (\inst14|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\ & ((!\inst19|LessThan0~2_combout\) # (!\inst19|LessThan0~0_combout\))) ) ) ) # ( 
-- \inst19|Mux4~1_combout\ & ( !\inst19|ShiftLeft0~4_combout\ & ( \inst14|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w12_n0_mux_dataout~0_combout\,
	datab => \inst19|ALT_INV_LessThan0~2_combout\,
	datac => \inst19|ALT_INV_LessThan0~0_combout\,
	datae => \inst19|ALT_INV_Mux4~1_combout\,
	dataf => \inst19|ALT_INV_ShiftLeft0~4_combout\,
	combout => \inst19|Mux4~4_combout\);

-- Location: LABCELL_X7_Y5_N54
\inst19|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux4~2_combout\ = ( \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \RS|A\(1) & ( (\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- (!\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & \inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\)) ) ) ) # ( !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \RS|A\(1) & ( 
-- (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\RS|A\(0) & (\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & \inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\))) ) ) ) # ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\RS|A\(1) & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\RS|A\(0) & 
-- (\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & \inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datab => \RS|ALT_INV_A\(0),
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datad => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datae => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \RS|ALT_INV_A\(1),
	combout => \inst19|Mux4~2_combout\);

-- Location: LABCELL_X7_Y5_N0
\inst19|Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux4~3_combout\ = ( \inst19|ShiftLeft0~2_combout\ & ( \inst14|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & 
-- ((!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\) # (\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\))) ) ) ) # ( !\inst19|ShiftLeft0~2_combout\ & ( 
-- \inst14|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\ & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & 
-- ((!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\) # (\inst19|Mux4~2_combout\)))) # (\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & 
-- (((!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\)))) ) ) ) # ( \inst19|ShiftLeft0~2_combout\ & ( !\inst14|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\ & ( 
-- (\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & !\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\)) ) ) ) # ( 
-- !\inst19|ShiftLeft0~2_combout\ & ( !\inst14|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & 
-- (!\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & (\inst19|Mux4~2_combout\ & \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\))) # (\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & 
-- (\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ((!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001000000100010000000010111011000010001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datab => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datac => \inst19|ALT_INV_Mux4~2_combout\,
	datad => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	datae => \inst19|ALT_INV_ShiftLeft0~2_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w12_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux4~3_combout\);

-- Location: MLABCELL_X8_Y5_N6
\inst19|Mux4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux4~5_combout\ = ( \inst19|Mux4~3_combout\ & ( (((\inst19|Mux4~0_combout\ & \inst19|Add0~53_sumout\)) # (\inst19|Mux4~4_combout\)) # (\inst19|F9[15]~0_combout\) ) ) # ( !\inst19|Mux4~3_combout\ & ( ((\inst19|Mux4~0_combout\ & 
-- \inst19|Add0~53_sumout\)) # (\inst19|Mux4~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Mux4~0_combout\,
	datab => \inst19|ALT_INV_F9[15]~0_combout\,
	datac => \inst19|ALT_INV_Mux4~4_combout\,
	datad => \inst19|ALT_INV_Add0~53_sumout\,
	dataf => \inst19|ALT_INV_Mux4~3_combout\,
	combout => \inst19|Mux4~5_combout\);

-- Location: FF_X8_Y5_N8
\inst19|F9[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(12));

-- Location: MLABCELL_X8_Y5_N21
\inst8|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\ = ( \inst19|F9\(12) & ( (\inst22|Mux12~0_combout\ & ((!\inst22|Mux7~0_combout\) # (\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(12)))) ) ) # ( !\inst19|F9\(12) & ( 
-- (\inst22|Mux12~0_combout\ & (\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(12) & \inst22|Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux12~0_combout\,
	datab => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(12),
	datad => \inst22|ALT_INV_Mux7~0_combout\,
	dataf => \inst19|ALT_INV_F9\(12),
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\);

-- Location: FF_X8_Y5_N22
\RT|A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w12_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(12));

-- Location: LABCELL_X11_Y5_N21
\inst8|LPM_MUX_component|auto_generated|l1_w11_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w11_n0_mux_dataout~0_combout\ = ( \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(11) & ( (\inst22|Mux12~0_combout\ & ((\inst19|F9\(11)) # (\inst22|Mux7~0_combout\))) ) ) # ( 
-- !\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(11) & ( (!\inst22|Mux7~0_combout\ & (\inst22|Mux12~0_combout\ & \inst19|F9\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux7~0_combout\,
	datab => \inst22|ALT_INV_Mux12~0_combout\,
	datac => \inst19|ALT_INV_F9\(11),
	dataf => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(11),
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w11_n0_mux_dataout~0_combout\);

-- Location: FF_X11_Y5_N22
\RT|A[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w11_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A[11]~DUPLICATE_q\);

-- Location: LABCELL_X11_Y5_N18
\inst8|LPM_MUX_component|auto_generated|l1_w10_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w10_n0_mux_dataout~0_combout\ = ( \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(10) & ( (\inst22|Mux12~0_combout\ & ((\inst19|F9\(10)) # (\inst22|Mux7~0_combout\))) ) ) # ( 
-- !\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(10) & ( (!\inst22|Mux7~0_combout\ & (\inst22|Mux12~0_combout\ & \inst19|F9\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux7~0_combout\,
	datab => \inst22|ALT_INV_Mux12~0_combout\,
	datad => \inst19|ALT_INV_F9\(10),
	dataf => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(10),
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w10_n0_mux_dataout~0_combout\);

-- Location: FF_X11_Y5_N19
\RT|A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w10_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(10));

-- Location: MLABCELL_X8_Y5_N39
\inst8|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\ = ( \inst22|Mux12~0_combout\ & ( (!\inst22|Mux7~0_combout\ & (\inst19|F9\(9))) # (\inst22|Mux7~0_combout\ & ((\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux7~0_combout\,
	datac => \inst19|ALT_INV_F9\(9),
	datad => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(9),
	dataf => \inst22|ALT_INV_Mux12~0_combout\,
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\);

-- Location: FF_X8_Y5_N40
\RT|A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(9));

-- Location: MLABCELL_X8_Y4_N39
\inst8|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ = ( \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(8) & ( \inst22|Mux7~0_combout\ & ( \inst22|Mux12~0_combout\ ) ) ) # ( 
-- \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(8) & ( !\inst22|Mux7~0_combout\ & ( (\inst22|Mux12~0_combout\ & \inst19|F9\(8)) ) ) ) # ( !\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(8) & ( !\inst22|Mux7~0_combout\ & ( 
-- (\inst22|Mux12~0_combout\ & \inst19|F9\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux12~0_combout\,
	datab => \inst19|ALT_INV_F9\(8),
	datae => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(8),
	dataf => \inst22|ALT_INV_Mux7~0_combout\,
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\);

-- Location: FF_X8_Y4_N40
\RT|A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(8));

-- Location: LABCELL_X10_Y7_N0
\inst8|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = (\inst22|Mux12~0_combout\ & ((!\inst22|Mux7~0_combout\ & (\inst19|F9\(7))) # (\inst22|Mux7~0_combout\ & ((\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux7~0_combout\,
	datab => \inst22|ALT_INV_Mux12~0_combout\,
	datac => \inst19|ALT_INV_F9\(7),
	datad => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(7),
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: FF_X10_Y7_N1
\RT|A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(7));

-- Location: LABCELL_X11_Y5_N24
\inst14|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\ = ( \RT|A\(7) & ( \inst2|altsyncram_component|auto_generated|q_a\(7) ) ) # ( !\RT|A\(7) & ( \inst2|altsyncram_component|auto_generated|q_a\(7) & ( 
-- (((\inst2|altsyncram_component|auto_generated|q_a\(14)) # (\inst2|altsyncram_component|auto_generated|q_a\(13))) # (\inst2|altsyncram_component|auto_generated|q_a\(12))) # (\inst2|altsyncram_component|auto_generated|q_a\(15)) ) ) ) # ( \RT|A\(7) & ( 
-- !\inst2|altsyncram_component|auto_generated|q_a\(7) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(15) & (!\inst2|altsyncram_component|auto_generated|q_a\(12) & (!\inst2|altsyncram_component|auto_generated|q_a\(13) & 
-- !\inst2|altsyncram_component|auto_generated|q_a\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datae => \RT|ALT_INV_A\(7),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X9_Y5_N0
\inst19|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux9~0_combout\ = ( \inst19|Add0~13_sumout\ & ( (!\inst19|F9[7]~3_combout\ & (\inst19|F9[7]~4_combout\ & ((\inst19|ShiftLeft0~6_combout\)))) # (\inst19|F9[7]~3_combout\ & ((!\inst19|F9[7]~4_combout\) # 
-- ((\inst14|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\)))) ) ) # ( !\inst19|Add0~13_sumout\ & ( (\inst19|F9[7]~4_combout\ & ((!\inst19|F9[7]~3_combout\ & ((\inst19|ShiftLeft0~6_combout\))) # (\inst19|F9[7]~3_combout\ & 
-- (\inst14|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9[7]~3_combout\,
	datab => \inst19|ALT_INV_F9[7]~4_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	datad => \inst19|ALT_INV_ShiftLeft0~6_combout\,
	dataf => \inst19|ALT_INV_Add0~13_sumout\,
	combout => \inst19|Mux9~0_combout\);

-- Location: FF_X9_Y5_N1
\inst19|F9[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(7));

-- Location: LABCELL_X10_Y7_N57
\inst8|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(6) & ( (\inst22|Mux12~0_combout\ & ((\inst19|F9\(6)) # (\inst22|Mux7~0_combout\))) ) ) # ( 
-- !\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(6) & ( (!\inst22|Mux7~0_combout\ & (\inst22|Mux12~0_combout\ & \inst19|F9\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux7~0_combout\,
	datac => \inst22|ALT_INV_Mux12~0_combout\,
	datad => \inst19|ALT_INV_F9\(6),
	dataf => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(6),
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: FF_X10_Y7_N58
\RT|A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(6));

-- Location: LABCELL_X11_Y5_N27
\inst14|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\ = ( \RT|A\(6) & ( \inst2|altsyncram_component|auto_generated|q_a\(6) ) ) # ( !\RT|A\(6) & ( \inst2|altsyncram_component|auto_generated|q_a\(6) & ( 
-- (((\inst2|altsyncram_component|auto_generated|q_a\(13)) # (\inst2|altsyncram_component|auto_generated|q_a\(14))) # (\inst2|altsyncram_component|auto_generated|q_a\(12))) # (\inst2|altsyncram_component|auto_generated|q_a\(15)) ) ) ) # ( \RT|A\(6) & ( 
-- !\inst2|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(15) & (!\inst2|altsyncram_component|auto_generated|q_a\(12) & (!\inst2|altsyncram_component|auto_generated|q_a\(14) & 
-- !\inst2|altsyncram_component|auto_generated|q_a\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datae => \RT|ALT_INV_A\(6),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X9_Y5_N3
\inst19|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux10~0_combout\ = ( \inst14|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & ( (!\inst19|F9[7]~3_combout\ & (\inst19|F9[7]~4_combout\ & ((\inst19|ShiftLeft0~5_combout\)))) # (\inst19|F9[7]~3_combout\ & 
-- (((\inst19|Add0~9_sumout\)) # (\inst19|F9[7]~4_combout\))) ) ) # ( !\inst14|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & ( (!\inst19|F9[7]~3_combout\ & (\inst19|F9[7]~4_combout\ & ((\inst19|ShiftLeft0~5_combout\)))) # 
-- (\inst19|F9[7]~3_combout\ & (!\inst19|F9[7]~4_combout\ & (\inst19|Add0~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9[7]~3_combout\,
	datab => \inst19|ALT_INV_F9[7]~4_combout\,
	datac => \inst19|ALT_INV_Add0~9_sumout\,
	datad => \inst19|ALT_INV_ShiftLeft0~5_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux10~0_combout\);

-- Location: FF_X9_Y5_N5
\inst19|F9[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(6));

-- Location: LABCELL_X10_Y7_N3
\inst8|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(3) & ( (\inst22|Mux12~0_combout\ & ((\inst19|F9\(3)) # (\inst22|Mux7~0_combout\))) ) ) # ( 
-- !\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(3) & ( (!\inst22|Mux7~0_combout\ & (\inst22|Mux12~0_combout\ & \inst19|F9\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux7~0_combout\,
	datab => \inst22|ALT_INV_Mux12~0_combout\,
	datac => \inst19|ALT_INV_F9\(3),
	dataf => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(3),
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: FF_X10_Y7_N4
\RT|A[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A[3]~DUPLICATE_q\);

-- Location: MLABCELL_X6_Y5_N9
\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ = ( \RT|A[3]~DUPLICATE_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(3) ) ) # ( !\RT|A[3]~DUPLICATE_q\ & ( \inst2|altsyncram_component|auto_generated|q_a\(3) & ( 
-- (((\inst2|altsyncram_component|auto_generated|q_a\(15)) # (\inst2|altsyncram_component|auto_generated|q_a\(14))) # (\inst2|altsyncram_component|auto_generated|q_a\(12))) # (\inst2|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( 
-- \RT|A[3]~DUPLICATE_q\ & ( !\inst2|altsyncram_component|auto_generated|q_a\(3) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13) & (!\inst2|altsyncram_component|auto_generated|q_a\(12) & (!\inst2|altsyncram_component|auto_generated|q_a\(14) & 
-- !\inst2|altsyncram_component|auto_generated|q_a\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datae => \RT|ALT_INV_A[3]~DUPLICATE_q\,
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X4_Y4_N18
\inst19|F9[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|F9[7]~1_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( \inst19|ShiftLeft0~2_combout\ & ( (\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- !\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\) ) ) ) # ( !\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( \inst19|ShiftLeft0~2_combout\ & ( 
-- (\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & !\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\) ) ) ) # ( \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( 
-- !\inst19|ShiftLeft0~2_combout\ & ( (\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & !\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\) ) ) ) # ( 
-- !\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( !\inst19|ShiftLeft0~2_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- (!\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & (!\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\))) # (\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- (((!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111110000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datab => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datad => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	datae => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	dataf => \inst19|ALT_INV_ShiftLeft0~2_combout\,
	combout => \inst19|F9[7]~1_combout\);

-- Location: LABCELL_X9_Y5_N24
\inst19|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux14~0_combout\ = ( !\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & 
-- ((!\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & (\inst19|F9[7]~1_combout\ & (\inst19|ShiftLeft0~5_combout\ & !\inst19|F9[7]~2_combout\))) # (\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & 
-- (((\inst19|F9[7]~2_combout\)))))) ) ) # ( \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ((!\inst19|F9[7]~2_combout\ & (\inst19|F9[7]~1_combout\ & 
-- ((\inst19|Add0~25_sumout\)))) # (\inst19|F9[7]~2_combout\ & (((\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000110011000001010011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9[7]~1_combout\,
	datab => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst19|ALT_INV_Add0~25_sumout\,
	datad => \inst19|ALT_INV_F9[7]~2_combout\,
	datae => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datag => \inst19|ALT_INV_ShiftLeft0~5_combout\,
	combout => \inst19|Mux14~0_combout\);

-- Location: FF_X9_Y5_N25
\inst19|F9[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(2));

-- Location: MLABCELL_X8_Y5_N54
\inst19|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux2~0_combout\ = ( \inst19|F9[15]~0_combout\ & ( (\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w6_n0_mux_dataout~0_combout\ & 
-- !\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w6_n0_mux_dataout~0_combout\,
	datad => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	dataf => \inst19|ALT_INV_F9[15]~0_combout\,
	combout => \inst19|Mux2~0_combout\);

-- Location: MLABCELL_X8_Y5_N57
\inst19|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux2~2_combout\ = ( !\inst19|F9[7]~6_combout\ & ( (!\inst19|F9[9]~8_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w14_n0_mux_dataout~0_combout\ & ((!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\) # 
-- (\inst19|F9[15]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001100000000001000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datab => \inst19|ALT_INV_F9[9]~8_combout\,
	datac => \inst19|ALT_INV_F9[15]~7_combout\,
	datad => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w14_n0_mux_dataout~0_combout\,
	dataf => \inst19|ALT_INV_F9[7]~6_combout\,
	combout => \inst19|Mux2~2_combout\);

-- Location: LABCELL_X9_Y5_N12
\inst19|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux2~1_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (\inst19|ShiftLeft0~5_combout\ & ((!\inst19|F9[15]~7_combout\) # ((\inst19|F9[9]~8_combout\) # (\inst19|F9[7]~6_combout\)))) ) ) # ( 
-- !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( (\inst19|ShiftLeft0~5_combout\ & ((\inst19|F9[9]~8_combout\) # (\inst19|F9[7]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001011000011110000101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9[15]~7_combout\,
	datab => \inst19|ALT_INV_F9[7]~6_combout\,
	datac => \inst19|ALT_INV_ShiftLeft0~5_combout\,
	datad => \inst19|ALT_INV_F9[9]~8_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux2~1_combout\);

-- Location: MLABCELL_X8_Y5_N30
\inst19|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux2~3_combout\ = ( \inst19|Add0~61_sumout\ & ( \inst19|Mux2~1_combout\ & ( ((\inst19|Mux4~0_combout\) # (\inst19|Mux3~5_combout\)) # (\inst19|Mux2~0_combout\) ) ) ) # ( !\inst19|Add0~61_sumout\ & ( \inst19|Mux2~1_combout\ & ( 
-- (\inst19|Mux3~5_combout\) # (\inst19|Mux2~0_combout\) ) ) ) # ( \inst19|Add0~61_sumout\ & ( !\inst19|Mux2~1_combout\ & ( (((\inst19|Mux2~2_combout\ & \inst19|Mux3~5_combout\)) # (\inst19|Mux4~0_combout\)) # (\inst19|Mux2~0_combout\) ) ) ) # ( 
-- !\inst19|Add0~61_sumout\ & ( !\inst19|Mux2~1_combout\ & ( ((\inst19|Mux2~2_combout\ & \inst19|Mux3~5_combout\)) # (\inst19|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101111111111101011111010111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Mux2~0_combout\,
	datab => \inst19|ALT_INV_Mux2~2_combout\,
	datac => \inst19|ALT_INV_Mux3~5_combout\,
	datad => \inst19|ALT_INV_Mux4~0_combout\,
	datae => \inst19|ALT_INV_Add0~61_sumout\,
	dataf => \inst19|ALT_INV_Mux2~1_combout\,
	combout => \inst19|Mux2~3_combout\);

-- Location: FF_X8_Y5_N32
\inst19|F9[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(14));

-- Location: MLABCELL_X8_Y5_N36
\inst8|LPM_MUX_component|auto_generated|l1_w14_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w14_n0_mux_dataout~0_combout\ = ( \inst19|F9\(14) & ( (\inst22|Mux12~0_combout\ & ((!\inst22|Mux7~0_combout\) # (\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(14)))) ) ) # ( !\inst19|F9\(14) & ( 
-- (\inst22|Mux7~0_combout\ & (\inst22|Mux12~0_combout\ & \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux7~0_combout\,
	datab => \inst22|ALT_INV_Mux12~0_combout\,
	datac => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(14),
	dataf => \inst19|ALT_INV_F9\(14),
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w14_n0_mux_dataout~0_combout\);

-- Location: FF_X8_Y5_N37
\RT|A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w14_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(14));

-- Location: LABCELL_X12_Y5_N6
\inst19|ShiftLeft0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|ShiftLeft0~7_combout\ = ( !\RT|A\(6) & ( !\RT|A\(5) & ( (!\RT|A\(14) & (!\RT|A\(12) & (!\RT|A\(13) & !\RT|A\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(14),
	datab => \RT|ALT_INV_A\(12),
	datac => \RT|ALT_INV_A\(13),
	datad => \RT|ALT_INV_A\(15),
	datae => \RT|ALT_INV_A\(6),
	dataf => \RT|ALT_INV_A\(5),
	combout => \inst19|ShiftLeft0~7_combout\);

-- Location: LABCELL_X12_Y5_N18
\inst19|ShiftLeft0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|ShiftLeft0~8_combout\ = ( \RT|A[11]~DUPLICATE_q\ & ( \RT|A\(10) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(5) & (!\inst22|Mux10~0_combout\ & !\inst2|altsyncram_component|auto_generated|q_a\(6))) ) ) ) # ( !\RT|A[11]~DUPLICATE_q\ & ( 
-- \RT|A\(10) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(5) & (!\inst22|Mux10~0_combout\ & !\inst2|altsyncram_component|auto_generated|q_a\(6))) ) ) ) # ( \RT|A[11]~DUPLICATE_q\ & ( !\RT|A\(10) & ( 
-- (!\inst2|altsyncram_component|auto_generated|q_a\(5) & (!\inst22|Mux10~0_combout\ & !\inst2|altsyncram_component|auto_generated|q_a\(6))) ) ) ) # ( !\RT|A[11]~DUPLICATE_q\ & ( !\RT|A\(10) & ( (!\inst22|Mux10~0_combout\ & 
-- (!\inst2|altsyncram_component|auto_generated|q_a\(5) & ((!\inst2|altsyncram_component|auto_generated|q_a\(6))))) # (\inst22|Mux10~0_combout\ & (((\inst19|ShiftLeft0~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001100000011101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datab => \inst19|ALT_INV_ShiftLeft0~7_combout\,
	datac => \inst22|ALT_INV_Mux10~0_combout\,
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \RT|ALT_INV_A[11]~DUPLICATE_q\,
	dataf => \RT|ALT_INV_A\(10),
	combout => \inst19|ShiftLeft0~8_combout\);

-- Location: LABCELL_X12_Y5_N54
\inst19|ShiftLeft0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|ShiftLeft0~2_combout\ = ( \inst14|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\ & ( \inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ ) ) # ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\ & ( \inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ ) ) # ( \inst14|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\ & ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ ) ) # ( !\inst14|LPM_MUX_component|auto_generated|l1_w9_n0_mux_dataout~0_combout\ & ( !\inst14|LPM_MUX_component|auto_generated|l1_w8_n0_mux_dataout~0_combout\ & ( 
-- (!\inst19|ShiftLeft0~8_combout\) # (((!\inst22|Mux10~0_combout\ & \inst22|Mux6~0_combout\)) # (\inst14|LPM_MUX_component|auto_generated|l1_w7_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux10~0_combout\,
	datab => \inst22|ALT_INV_Mux6~0_combout\,
	datac => \inst19|ALT_INV_ShiftLeft0~8_combout\,
	datad => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w7_n0_mux_dataout~0_combout\,
	datae => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w9_n0_mux_dataout~0_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w8_n0_mux_dataout~0_combout\,
	combout => \inst19|ShiftLeft0~2_combout\);

-- Location: LABCELL_X10_Y6_N48
\inst19|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux15~0_combout\ = ( \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \RS|A\(0) & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & !\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\)) ) ) ) # ( !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \RS|A\(0) & ( 
-- (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\RS|A\(1) & ((!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\) # (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\)))) ) ) ) # ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\RS|A\(0) & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\RS|A\(1) & 
-- ((!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\) # (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000000000000000000000101010001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datab => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datad => \RS|ALT_INV_A\(1),
	datae => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \RS|ALT_INV_A\(0),
	combout => \inst19|Mux15~0_combout\);

-- Location: LABCELL_X10_Y6_N30
\inst19|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux15~1_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ( \inst19|Mux15~0_combout\ & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & 
-- (!\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & (!\inst19|ShiftLeft0~2_combout\ & !\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datab => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst19|ALT_INV_ShiftLeft0~2_combout\,
	datad => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datae => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	dataf => \inst19|ALT_INV_Mux15~0_combout\,
	combout => \inst19|Mux15~1_combout\);

-- Location: LABCELL_X10_Y6_N0
\inst19|F9[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|F9[7]~5_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst19|F9[7]~5_combout\);

-- Location: LABCELL_X10_Y6_N6
\inst19|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux15~3_combout\ = ( \RS|A\(1) & ( \inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & 
-- ((!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\) # (\inst19|Add0~21_sumout\))) ) ) ) # ( !\RS|A\(1) & ( \inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ((!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\)) # 
-- (\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((\inst19|Add0~21_sumout\))))) ) ) ) # ( \RS|A\(1) & ( !\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ((!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\)) # 
-- (\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((\inst19|Add0~21_sumout\))))) ) ) ) # ( !\RS|A\(1) & ( !\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & (\inst19|Add0~21_sumout\ & \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100100010000000110010001000000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datab => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	datac => \inst19|ALT_INV_Add0~21_sumout\,
	datad => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datae => \RS|ALT_INV_A\(1),
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux15~3_combout\);

-- Location: LABCELL_X7_Y5_N33
\inst19|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux15~2_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	datad => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux15~2_combout\);

-- Location: LABCELL_X7_Y5_N30
\inst19|Mux15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux15~5_combout\ = ( \inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst19|Mux15~2_combout\ ) ) # ( !\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( (\inst19|ShiftLeft0~4_combout\ & 
-- (\RS|A\(1) & (\inst19|Mux15~2_combout\ & \inst19|LessThan0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_ShiftLeft0~4_combout\,
	datab => \RS|ALT_INV_A\(1),
	datac => \inst19|ALT_INV_Mux15~2_combout\,
	datad => \inst19|ALT_INV_LessThan0~2_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux15~5_combout\);

-- Location: LABCELL_X10_Y6_N54
\inst19|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux15~4_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( \inst19|Mux15~5_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & \inst19|F9[7]~5_combout\) ) ) ) # ( 
-- !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( \inst19|Mux15~5_combout\ ) ) # ( \inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( !\inst19|Mux15~5_combout\ & ( 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & \inst19|F9[7]~5_combout\) ) ) ) # ( !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( !\inst19|Mux15~5_combout\ & ( (\inst19|Mux15~3_combout\) # 
-- (\inst19|Mux15~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111000010100000101011111111111111110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datab => \inst19|ALT_INV_Mux15~1_combout\,
	datac => \inst19|ALT_INV_F9[7]~5_combout\,
	datad => \inst19|ALT_INV_Mux15~3_combout\,
	datae => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst19|ALT_INV_Mux15~5_combout\,
	combout => \inst19|Mux15~4_combout\);

-- Location: FF_X10_Y6_N56
\inst19|F9[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(1));

-- Location: LABCELL_X10_Y7_N18
\inst8|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(1) & ( (!\inst22|Mux12~0_combout\ & (((\inst2|altsyncram_component|auto_generated|q_a\(9))))) # 
-- (\inst22|Mux12~0_combout\ & (((\inst19|F9\(1))) # (\inst22|Mux7~0_combout\))) ) ) # ( !\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(1) & ( (!\inst22|Mux12~0_combout\ & (((\inst2|altsyncram_component|auto_generated|q_a\(9))))) # 
-- (\inst22|Mux12~0_combout\ & (!\inst22|Mux7~0_combout\ & ((\inst19|F9\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux7~0_combout\,
	datab => \inst22|ALT_INV_Mux12~0_combout\,
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \inst19|ALT_INV_F9\(1),
	dataf => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(1),
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: FF_X10_Y7_N19
\RT|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(1));

-- Location: MLABCELL_X6_Y5_N51
\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ = ( \RT|A\(1) & ( \inst2|altsyncram_component|auto_generated|q_a\(1) ) ) # ( !\RT|A\(1) & ( \inst2|altsyncram_component|auto_generated|q_a\(1) & ( 
-- (((\inst2|altsyncram_component|auto_generated|q_a\(15)) # (\inst2|altsyncram_component|auto_generated|q_a\(14))) # (\inst2|altsyncram_component|auto_generated|q_a\(12))) # (\inst2|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( \RT|A\(1) & ( 
-- !\inst2|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13) & (!\inst2|altsyncram_component|auto_generated|q_a\(12) & (!\inst2|altsyncram_component|auto_generated|q_a\(14) & 
-- !\inst2|altsyncram_component|auto_generated|q_a\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datae => \RT|ALT_INV_A\(1),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X10_Y6_N3
\inst19|ShiftLeft0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|ShiftLeft0~0_combout\ = ( \RS|A\(0) & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (((\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) # (\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\RS|A\(1) & (!\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & 
-- \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) # ( !\RS|A\(0) & ( (\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\RS|A\(1) & 
-- (!\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000001010000100000000101000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datab => \RS|ALT_INV_A\(1),
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datad => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \RS|ALT_INV_A\(0),
	combout => \inst19|ShiftLeft0~0_combout\);

-- Location: LABCELL_X4_Y4_N36
\inst19|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux12~0_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ( \inst19|F9[15]~0_combout\ & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & (\inst19|ShiftLeft0~0_combout\ & 
-- (!\inst19|ShiftLeft0~2_combout\ & !\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\))) ) ) ) # ( !\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ( \inst19|F9[15]~0_combout\ & ( 
-- \inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datab => \inst19|ALT_INV_ShiftLeft0~0_combout\,
	datac => \inst19|ALT_INV_ShiftLeft0~2_combout\,
	datad => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datae => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	dataf => \inst19|ALT_INV_F9[15]~0_combout\,
	combout => \inst19|Mux12~0_combout\);

-- Location: LABCELL_X4_Y4_N30
\inst19|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux12~1_combout\ = ( !\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ( ((!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & 
-- (((\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & \inst19|Add0~1_sumout\)) # (\inst19|Mux12~0_combout\)))) ) ) # ( \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ( 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & (((\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & 
-- \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\))) # (\inst19|Mux12~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011100110111001100110011011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datab => \inst19|ALT_INV_Mux12~0_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datad => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datae => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datag => \inst19|ALT_INV_Add0~1_sumout\,
	combout => \inst19|Mux12~1_combout\);

-- Location: FF_X4_Y4_N31
\inst19|F9[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(4));

-- Location: LABCELL_X10_Y7_N51
\inst8|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \inst22|Mux12~0_combout\ & ( \inst22|Mux7~0_combout\ & ( \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(4) ) ) ) # ( \inst22|Mux12~0_combout\ & ( 
-- !\inst22|Mux7~0_combout\ & ( \inst19|F9\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst19|ALT_INV_F9\(4),
	datac => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(4),
	datae => \inst22|ALT_INV_Mux12~0_combout\,
	dataf => \inst22|ALT_INV_Mux7~0_combout\,
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: FF_X10_Y7_N52
\RT|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(4));

-- Location: LABCELL_X11_Y5_N57
\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ = ( \RT|A\(4) & ( \inst2|altsyncram_component|auto_generated|q_a\(4) ) ) # ( !\RT|A\(4) & ( \inst2|altsyncram_component|auto_generated|q_a\(4) & ( 
-- (((\inst2|altsyncram_component|auto_generated|q_a\(15)) # (\inst2|altsyncram_component|auto_generated|q_a\(12))) # (\inst2|altsyncram_component|auto_generated|q_a\(14))) # (\inst2|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( \RT|A\(4) & ( 
-- !\inst2|altsyncram_component|auto_generated|q_a\(4) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13) & (!\inst2|altsyncram_component|auto_generated|q_a\(14) & (!\inst2|altsyncram_component|auto_generated|q_a\(12) & 
-- !\inst2|altsyncram_component|auto_generated|q_a\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datae => \RT|ALT_INV_A\(4),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X10_Y6_N12
\inst19|Mux16~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux16~3_combout\ = ( \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \RS|A\(0) & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\RS|A\(1) & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ $ (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\)))) ) ) ) # ( !\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \RS|A\(0) & ( 
-- (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ((!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\) # (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\))) ) ) ) # ( 
-- \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\RS|A\(0) & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\RS|A\(1) & (!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ 
-- $ (!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010100010101000101010000000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datab => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datad => \RS|ALT_INV_A\(1),
	datae => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \RS|ALT_INV_A\(0),
	combout => \inst19|Mux16~3_combout\);

-- Location: LABCELL_X10_Y6_N33
\inst19|Mux16~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux16~4_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & ( \inst19|Mux16~3_combout\ & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & 
-- (!\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & (!\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & !\inst19|ShiftLeft0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	datab => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datad => \inst19|ALT_INV_ShiftLeft0~2_combout\,
	datae => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	dataf => \inst19|ALT_INV_Mux16~3_combout\,
	combout => \inst19|Mux16~4_combout\);

-- Location: LABCELL_X10_Y6_N18
\inst19|Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux16~2_combout\ = ( \inst19|Add0~17_sumout\ & ( \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & (((\RS|A\(0) & 
-- \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\))) ) ) ) # ( !\inst19|Add0~17_sumout\ & ( 
-- \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( (\RS|A\(0) & (!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- !\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\))) ) ) ) # ( \inst19|Add0~17_sumout\ & ( !\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & (((\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\)) # (\RS|A\(0)))) ) ) ) # ( 
-- !\inst19|Add0~17_sumout\ & ( !\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ 
-- & ((\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\RS|A\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000000011111110000000000000100000000000011011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RS|ALT_INV_A\(0),
	datab => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datac => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	datae => \inst19|ALT_INV_Add0~17_sumout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	combout => \inst19|Mux16~2_combout\);

-- Location: MLABCELL_X3_Y3_N45
\inst19|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux16~0_combout\ = ( !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ ) 
-- ) ) # ( !\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ( !\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & ( !\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datae => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	dataf => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	combout => \inst19|Mux16~0_combout\);

-- Location: MLABCELL_X3_Y3_N12
\inst19|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux16~1_combout\ = ( \inst19|Mux16~0_combout\ & ( \inst19|ShiftLeft0~4_combout\ & ( (!\inst19|LessThan0~0_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst19|LessThan0~0_combout\ & 
-- ((!\inst19|LessThan0~2_combout\ & (\inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst19|LessThan0~2_combout\ & ((\RS|A\(0)))))) ) ) ) # ( \inst19|Mux16~0_combout\ & ( !\inst19|ShiftLeft0~4_combout\ & ( 
-- \inst14|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \RS|ALT_INV_A\(0),
	datac => \inst19|ALT_INV_LessThan0~0_combout\,
	datad => \inst19|ALT_INV_LessThan0~2_combout\,
	datae => \inst19|ALT_INV_Mux16~0_combout\,
	dataf => \inst19|ALT_INV_ShiftLeft0~4_combout\,
	combout => \inst19|Mux16~1_combout\);

-- Location: LABCELL_X10_Y6_N24
\inst19|Mux16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux16~5_combout\ = ( \inst19|F9[7]~5_combout\ & ( \inst19|Mux16~1_combout\ ) ) # ( !\inst19|F9[7]~5_combout\ & ( \inst19|Mux16~1_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ((\inst19|Mux16~2_combout\) # 
-- (\inst19|Mux16~4_combout\))) ) ) ) # ( \inst19|F9[7]~5_combout\ & ( !\inst19|Mux16~1_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & (((\inst19|Mux16~2_combout\)) # (\inst19|Mux16~4_combout\))) # 
-- (\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & (((!\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\)))) ) ) ) # ( !\inst19|F9[7]~5_combout\ & ( !\inst19|Mux16~1_combout\ & ( 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ((\inst19|Mux16~2_combout\) # (\inst19|Mux16~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100011101001111110001000100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_Mux16~4_combout\,
	datab => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datad => \inst19|ALT_INV_Mux16~2_combout\,
	datae => \inst19|ALT_INV_F9[7]~5_combout\,
	dataf => \inst19|ALT_INV_Mux16~1_combout\,
	combout => \inst19|Mux16~5_combout\);

-- Location: FF_X10_Y6_N25
\inst19|F9[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux16~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(0));

-- Location: MLABCELL_X6_Y5_N36
\inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst22|Mux7~0_combout\ & ( (!\inst22|Mux12~0_combout\ & (\inst2|altsyncram_component|auto_generated|q_a\(8))) # (\inst22|Mux12~0_combout\ & 
-- ((\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(0)))) ) ) # ( !\inst22|Mux7~0_combout\ & ( (!\inst22|Mux12~0_combout\ & ((\inst2|altsyncram_component|auto_generated|q_a\(8)))) # (\inst22|Mux12~0_combout\ & (\inst19|F9\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux12~0_combout\,
	datab => \inst19|ALT_INV_F9\(0),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(0),
	dataf => \inst22|ALT_INV_Mux7~0_combout\,
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X6_Y5_N37
\RT|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(0));

-- Location: MLABCELL_X6_Y3_N12
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_b\(0),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~feeder_combout\);

-- Location: FF_X6_Y3_N13
\inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~feeder_combout\,
	asdata => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1),
	sload => \inst20|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	ena => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

-- Location: FF_X4_Y4_N50
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\);

-- Location: LABCELL_X4_Y3_N12
\inst20|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000001111111000011110000111100000000010111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][1]~q\,
	datab => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_bypass_reg_out~q\,
	datac => \inst20|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|ALT_INV_WORD_SR\(0),
	datad => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_data_reg\(0),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][5]~q\,
	datag => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][2]~q\,
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|adapted_tdo~0_combout\);

-- Location: LABCELL_X1_Y1_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	dataf => \inst20|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_adapted_tdo~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: MLABCELL_X6_Y2_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110111111101011111010111110101111101111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~5_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~3_combout\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~0_combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~2_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\);

-- Location: FF_X1_Y2_N50
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\);

-- Location: MLABCELL_X3_Y3_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal0~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(1),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X3_Y3_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\);

-- Location: LABCELL_X4_Y3_N45
\inst20|altsyncram_component|auto_generated|mgl_prim2|enable_write~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][2]~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(5),
	combout => \inst20|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\);

-- Location: LABCELL_X10_Y7_N21
\inst8|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \inst19|F9\(2) & ( (\inst22|Mux12~0_combout\ & ((!\inst22|Mux7~0_combout\) # (\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(2)))) ) ) # ( !\inst19|F9\(2) & ( 
-- (\inst22|Mux7~0_combout\ & (\inst22|Mux12~0_combout\ & \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux7~0_combout\,
	datab => \inst22|ALT_INV_Mux12~0_combout\,
	datac => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(2),
	dataf => \inst19|ALT_INV_F9\(2),
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: FF_X10_Y7_N22
\RT|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(2));

-- Location: MLABCELL_X6_Y5_N48
\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ = ( \RT|A\(2) & ( \inst2|altsyncram_component|auto_generated|q_a\(2) ) ) # ( !\RT|A\(2) & ( \inst2|altsyncram_component|auto_generated|q_a\(2) & ( 
-- (((\inst2|altsyncram_component|auto_generated|q_a\(14)) # (\inst2|altsyncram_component|auto_generated|q_a\(15))) # (\inst2|altsyncram_component|auto_generated|q_a\(12))) # (\inst2|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( \RT|A\(2) & ( 
-- !\inst2|altsyncram_component|auto_generated|q_a\(2) & ( (!\inst2|altsyncram_component|auto_generated|q_a\(13) & (!\inst2|altsyncram_component|auto_generated|q_a\(12) & (!\inst2|altsyncram_component|auto_generated|q_a\(15) & 
-- !\inst2|altsyncram_component|auto_generated|q_a\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datae => \RT|ALT_INV_A\(2),
	dataf => \inst2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X12_Y5_N9
\inst19|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~1_combout\ = ( !\RT|A[11]~DUPLICATE_q\ & ( !\RT|A\(10) & ( (!\RT|A\(14) & (!\RT|A\(12) & (!\RT|A\(15) & !\RT|A\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(14),
	datab => \RT|ALT_INV_A\(12),
	datac => \RT|ALT_INV_A\(15),
	datad => \RT|ALT_INV_A\(13),
	datae => \RT|ALT_INV_A[11]~DUPLICATE_q\,
	dataf => \RT|ALT_INV_A\(10),
	combout => \inst19|LessThan0~1_combout\);

-- Location: MLABCELL_X8_Y4_N9
\inst19|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~2_combout\ = ( \inst22|Mux10~0_combout\ & ( !\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( (!\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & (\inst19|LessThan0~1_combout\ & 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\)) ) ) ) # ( !\inst22|Mux10~0_combout\ & ( !\inst14|LPM_MUX_component|auto_generated|l1_w4_n0_mux_dataout~0_combout\ & ( 
-- (!\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & (!\inst22|Mux6~0_combout\ & !\inst14|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000001000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	datab => \inst19|ALT_INV_LessThan0~1_combout\,
	datac => \inst22|ALT_INV_Mux6~0_combout\,
	datad => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datae => \inst22|ALT_INV_Mux10~0_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w4_n0_mux_dataout~0_combout\,
	combout => \inst19|LessThan0~2_combout\);

-- Location: MLABCELL_X3_Y3_N36
\inst19|F9[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|F9[7]~2_combout\ = ( \inst19|LessThan0~0_combout\ & ( \inst19|ShiftLeft0~4_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & (((!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- !\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\)))) # (\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & (!\inst19|LessThan0~2_combout\ & 
-- (\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\))) ) ) ) # ( !\inst19|LessThan0~0_combout\ & ( \inst19|ShiftLeft0~4_combout\ & ( 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & !\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\)) # 
-- (\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & (\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\)) ) ) ) # ( 
-- \inst19|LessThan0~0_combout\ & ( !\inst19|ShiftLeft0~4_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- !\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\)) # (\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & (\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & 
-- \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\)) ) ) ) # ( !\inst19|LessThan0~0_combout\ & ( !\inst19|ShiftLeft0~4_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & !\inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\)) # (\inst9|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~1_combout\ & 
-- (\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & \inst9|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000101101000000000010110100000000001011010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~1_combout\,
	datab => \inst19|ALT_INV_LessThan0~2_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datad => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datae => \inst19|ALT_INV_LessThan0~0_combout\,
	dataf => \inst19|ALT_INV_ShiftLeft0~4_combout\,
	combout => \inst19|F9[7]~2_combout\);

-- Location: LABCELL_X9_Y5_N39
\inst19|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux11~1_combout\ = ( \inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (\inst19|F9[7]~1_combout\ & ((\inst19|ShiftLeft0~3_combout\) # (\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\))) ) ) # ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w2_n0_mux_dataout~0_combout\ & ( (\inst19|F9[7]~1_combout\ & \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9[7]~1_combout\,
	datab => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	datad => \inst19|ALT_INV_ShiftLeft0~3_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w2_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux11~1_combout\);

-- Location: LABCELL_X9_Y5_N18
\inst19|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|Mux11~0_combout\ = ( \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst14|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ 
-- & (((\inst19|Add0~5_sumout\ & \inst19|Mux11~1_combout\)) # (\inst19|F9[7]~2_combout\))) ) ) ) # ( !\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( \inst14|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & ((\inst19|Mux11~1_combout\) # (\inst19|F9[7]~2_combout\))) ) ) ) # ( \inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( 
-- !\inst14|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( (!\inst19|F9[7]~2_combout\ & (\inst19|Add0~5_sumout\ & (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & \inst19|Mux11~1_combout\))) ) ) ) # ( 
-- !\inst9|LPM_MUX_component|auto_generated|l1_w1_n0_mux_dataout~0_combout\ & ( !\inst14|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\ & ( (!\inst19|F9[7]~2_combout\ & 
-- (!\inst9|LPM_MUX_component|auto_generated|l1_w3_n0_mux_dataout~0_combout\ & \inst19|Mux11~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000000010000001010000111100000101000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9[7]~2_combout\,
	datab => \inst19|ALT_INV_Add0~5_sumout\,
	datac => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w3_n0_mux_dataout~0_combout\,
	datad => \inst19|ALT_INV_Mux11~1_combout\,
	datae => \inst9|LPM_MUX_component|auto_generated|ALT_INV_l1_w1_n0_mux_dataout~0_combout\,
	dataf => \inst14|LPM_MUX_component|auto_generated|ALT_INV_l1_w5_n0_mux_dataout~0_combout\,
	combout => \inst19|Mux11~0_combout\);

-- Location: FF_X9_Y5_N19
\inst19|F9[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst19|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|F9\(5));

-- Location: LABCELL_X10_Y7_N54
\inst8|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\ = ( \inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(5) & ( (\inst22|Mux12~0_combout\ & ((\inst19|F9\(5)) # (\inst22|Mux7~0_combout\))) ) ) # ( 
-- !\inst20|altsyncram_component|auto_generated|altsyncram1|q_a\(5) & ( (!\inst22|Mux7~0_combout\ & (\inst22|Mux12~0_combout\ & \inst19|F9\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Mux7~0_combout\,
	datab => \inst22|ALT_INV_Mux12~0_combout\,
	datad => \inst19|ALT_INV_F9\(5),
	dataf => \inst20|altsyncram_component|auto_generated|altsyncram1|ALT_INV_q_a\(5),
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\);

-- Location: FF_X10_Y7_N56
\RT|A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst8|LPM_MUX_component|auto_generated|l1_w5_n0_mux_dataout~0_combout\,
	ena => \inst22|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RT|A\(5));

-- Location: LABCELL_X12_Y5_N15
\inst10|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux7~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\RT|A\(4) & (!\RT|A\(5) & (!\RT|A\(7) $ (\RT|A\(6))))) # (\RT|A\(4) & (!\RT|A\(7) & (!\RT|A\(5) $ (\RT|A\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000100100000101000010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(5),
	datab => \RT|ALT_INV_A\(7),
	datac => \RT|ALT_INV_A\(6),
	datad => \RT|ALT_INV_A\(4),
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst10|Mux7~0_combout\);

-- Location: LABCELL_X12_Y5_N30
\inst10|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux8~0_combout\ = ( \RT|A\(4) & ( ((\RT|A\(5) & (\RT|A\(7) & \RT|A\(6)))) # (\BLANKTEST~input_o\) ) ) # ( !\RT|A\(4) & ( ((!\RT|A\(7) & (\RT|A\(5) & !\RT|A\(6))) # (\RT|A\(7) & ((\RT|A\(6))))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100111111010011110011111100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(5),
	datab => \RT|ALT_INV_A\(7),
	datac => \ALT_INV_BLANKTEST~input_o\,
	datad => \RT|ALT_INV_A\(6),
	dataf => \RT|ALT_INV_A\(4),
	combout => \inst10|Mux8~0_combout\);

-- Location: LABCELL_X12_Y5_N33
\inst10|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux9~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\RT|A\(5) & (\RT|A\(6) & (!\RT|A\(7) $ (!\RT|A\(4))))) # (\RT|A\(5) & ((!\RT|A\(4) & ((\RT|A\(6)))) # (\RT|A\(4) & (\RT|A\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100011001000001110001100111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(5),
	datab => \RT|ALT_INV_A\(7),
	datac => \RT|ALT_INV_A\(6),
	datad => \RT|ALT_INV_A\(4),
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst10|Mux9~0_combout\);

-- Location: LABCELL_X12_Y5_N36
\inst10|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux10~0_combout\ = ( \RT|A\(4) & ( ((!\RT|A\(5) & (!\RT|A\(7) $ (\RT|A\(6)))) # (\RT|A\(5) & (\RT|A\(7) & !\RT|A\(6)))) # (\BLANKTEST~input_o\) ) ) # ( !\RT|A\(4) & ( ((!\RT|A\(5) & (!\RT|A\(7) & \RT|A\(6)))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110001111000011111000111110011111001011111001111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(5),
	datab => \RT|ALT_INV_A\(7),
	datac => \ALT_INV_BLANKTEST~input_o\,
	datad => \RT|ALT_INV_A\(6),
	dataf => \RT|ALT_INV_A\(4),
	combout => \inst10|Mux10~0_combout\);

-- Location: LABCELL_X12_Y5_N39
\inst10|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux11~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\RT|A\(5) & (\RT|A\(4) & (!\RT|A\(7) $ (\RT|A\(6))))) # (\RT|A\(5) & (!\RT|A\(7) & ((!\RT|A\(6)) # (\RT|A\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000110010000001100011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(5),
	datab => \RT|ALT_INV_A\(7),
	datac => \RT|ALT_INV_A\(6),
	datad => \RT|ALT_INV_A\(4),
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst10|Mux11~0_combout\);

-- Location: LABCELL_X12_Y5_N12
\inst10|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux12~0_combout\ = ( \RT|A\(4) & ( (!\RT|A\(7)) # (((!\RT|A\(5) & !\RT|A\(6))) # (\BLANKTEST~input_o\)) ) ) # ( !\RT|A\(4) & ( ((!\RT|A\(5) & (!\RT|A\(7) & \RT|A\(6)))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110001111000011111000111111101111110011111110111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(5),
	datab => \RT|ALT_INV_A\(7),
	datac => \ALT_INV_BLANKTEST~input_o\,
	datad => \RT|ALT_INV_A\(6),
	dataf => \RT|ALT_INV_A\(4),
	combout => \inst10|Mux12~0_combout\);

-- Location: LABCELL_X12_Y5_N42
\inst10|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux13~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\RT|A\(5) & (!\RT|A\(7) & (!\RT|A\(6) $ (!\RT|A\(4))))) # (\RT|A\(5) & ((!\RT|A\(6) & (!\RT|A\(4) & \RT|A\(7))) # (\RT|A\(6) & (\RT|A\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100101000001001010010100000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(5),
	datab => \RT|ALT_INV_A\(6),
	datac => \RT|ALT_INV_A\(4),
	datad => \RT|ALT_INV_A\(7),
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst10|Mux13~0_combout\);

-- Location: LABCELL_X85_Y11_N36
\inst10|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux0~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\RT|A\(0) & (!\RT|A\(1) & (!\RT|A\(2) $ (\RT|A[3]~DUPLICATE_q\)))) # (\RT|A\(0) & (!\RT|A[3]~DUPLICATE_q\ & (!\RT|A\(2) $ (\RT|A\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100101000000100010010100000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(2),
	datab => \RT|ALT_INV_A\(1),
	datac => \RT|ALT_INV_A\(0),
	datad => \RT|ALT_INV_A[3]~DUPLICATE_q\,
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst10|Mux0~0_combout\);

-- Location: LABCELL_X85_Y11_N39
\inst10|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux1~0_combout\ = ( \RT|A\(0) & ( ((\RT|A\(2) & (\RT|A\(1) & \RT|A[3]~DUPLICATE_q\))) # (\BLANKTEST~input_o\) ) ) # ( !\RT|A\(0) & ( ((!\RT|A\(2) & (\RT|A\(1) & !\RT|A[3]~DUPLICATE_q\)) # (\RT|A\(2) & ((\RT|A[3]~DUPLICATE_q\)))) # 
-- (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111101011111001011110101111100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(2),
	datab => \RT|ALT_INV_A\(1),
	datac => \ALT_INV_BLANKTEST~input_o\,
	datad => \RT|ALT_INV_A[3]~DUPLICATE_q\,
	dataf => \RT|ALT_INV_A\(0),
	combout => \inst10|Mux1~0_combout\);

-- Location: LABCELL_X85_Y11_N30
\inst10|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux2~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\RT|A\(1) & (\RT|A\(2) & (!\RT|A\(0) $ (!\RT|A[3]~DUPLICATE_q\)))) # (\RT|A\(1) & ((!\RT|A\(0) & (\RT|A\(2))) # (\RT|A\(0) & ((\RT|A[3]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001010011000101000101001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(2),
	datab => \RT|ALT_INV_A\(1),
	datac => \RT|ALT_INV_A\(0),
	datad => \RT|ALT_INV_A[3]~DUPLICATE_q\,
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst10|Mux2~0_combout\);

-- Location: LABCELL_X85_Y11_N24
\inst10|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux3~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\RT|A\(2) & (\RT|A\(0) & (!\RT|A\(1) $ (\RT|A[3]~DUPLICATE_q\)))) # (\RT|A\(2) & (!\RT|A\(1) & (!\RT|A\(0) $ (\RT|A[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000110010010000000011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(2),
	datab => \RT|ALT_INV_A\(1),
	datac => \RT|ALT_INV_A\(0),
	datad => \RT|ALT_INV_A[3]~DUPLICATE_q\,
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst10|Mux3~0_combout\);

-- Location: LABCELL_X85_Y11_N27
\inst10|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux4~0_combout\ = ( \RT|A\(0) & ( (!\RT|A[3]~DUPLICATE_q\ $ (((\RT|A\(2) & !\RT|A\(1))))) # (\BLANKTEST~input_o\) ) ) # ( !\RT|A\(0) & ( ((!\RT|A\(2) & (\RT|A\(1) & !\RT|A[3]~DUPLICATE_q\))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001111001011110000111110111111010011111011111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(2),
	datab => \RT|ALT_INV_A\(1),
	datac => \ALT_INV_BLANKTEST~input_o\,
	datad => \RT|ALT_INV_A[3]~DUPLICATE_q\,
	dataf => \RT|ALT_INV_A\(0),
	combout => \inst10|Mux4~0_combout\);

-- Location: LABCELL_X85_Y11_N33
\inst10|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux5~0_combout\ = ( \RT|A\(0) & ( ((!\RT|A[3]~DUPLICATE_q\) # ((!\RT|A\(2) & !\RT|A\(1)))) # (\BLANKTEST~input_o\) ) ) # ( !\RT|A\(0) & ( ((\RT|A\(2) & (!\RT|A\(1) & !\RT|A[3]~DUPLICATE_q\))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100001111010011110000111111111111100011111111111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(2),
	datab => \RT|ALT_INV_A\(1),
	datac => \ALT_INV_BLANKTEST~input_o\,
	datad => \RT|ALT_INV_A[3]~DUPLICATE_q\,
	dataf => \RT|ALT_INV_A\(0),
	combout => \inst10|Mux5~0_combout\);

-- Location: LABCELL_X85_Y11_N18
\inst10|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Mux6~0_combout\ = ( \RT|A[3]~DUPLICATE_q\ & ( \RT|A\(1) & ( (!\RT|A\(2) $ (\RT|A\(0))) # (\BLANKTEST~input_o\) ) ) ) # ( !\RT|A[3]~DUPLICATE_q\ & ( \RT|A\(1) & ( ((\RT|A\(2) & \RT|A\(0))) # (\BLANKTEST~input_o\) ) ) ) # ( \RT|A[3]~DUPLICATE_q\ & ( 
-- !\RT|A\(1) & ( \BLANKTEST~input_o\ ) ) ) # ( !\RT|A[3]~DUPLICATE_q\ & ( !\RT|A\(1) & ( (!\RT|A\(2) $ (!\RT|A\(0))) # (\BLANKTEST~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101111011001100110011001100110111001101111011011110110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RT|ALT_INV_A\(2),
	datab => \ALT_INV_BLANKTEST~input_o\,
	datac => \RT|ALT_INV_A\(0),
	datae => \RT|ALT_INV_A[3]~DUPLICATE_q\,
	dataf => \RT|ALT_INV_A\(1),
	combout => \inst10|Mux6~0_combout\);

-- Location: LABCELL_X10_Y7_N36
\inst11|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux7~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\inst19|F9\(4) & (!\inst19|F9\(5) & (!\inst19|F9\(6) $ (\inst19|F9\(7))))) # (\inst19|F9\(4) & (!\inst19|F9\(7) & (!\inst19|F9\(6) $ (\inst19|F9\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000100100100001000010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9\(6),
	datab => \inst19|ALT_INV_F9\(7),
	datac => \inst19|ALT_INV_F9\(5),
	datad => \inst19|ALT_INV_F9\(4),
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst11|Mux7~0_combout\);

-- Location: LABCELL_X10_Y7_N39
\inst11|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux8~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\inst19|F9\(6) & (!\inst19|F9\(7) & (!\inst19|F9\(4) & \inst19|F9\(5)))) # (\inst19|F9\(6) & (\inst19|F9\(7) & ((!\inst19|F9\(4)) # (\inst19|F9\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010010001000100001001000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9\(6),
	datab => \inst19|ALT_INV_F9\(7),
	datac => \inst19|ALT_INV_F9\(4),
	datad => \inst19|ALT_INV_F9\(5),
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst11|Mux8~0_combout\);

-- Location: LABCELL_X10_Y7_N45
\inst11|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux9~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\inst19|F9\(7) & (\inst19|F9\(6) & (!\inst19|F9\(4) $ (!\inst19|F9\(5))))) # (\inst19|F9\(7) & ((!\inst19|F9\(4) & (\inst19|F9\(6))) # (\inst19|F9\(4) & ((\inst19|F9\(5)))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001010011000101000101001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9\(6),
	datab => \inst19|ALT_INV_F9\(7),
	datac => \inst19|ALT_INV_F9\(4),
	datad => \inst19|ALT_INV_F9\(5),
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst11|Mux9~0_combout\);

-- Location: LABCELL_X10_Y7_N42
\inst11|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux10~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\inst19|F9\(6) & (\inst19|F9\(4) & (!\inst19|F9\(7) $ (\inst19|F9\(5))))) # (\inst19|F9\(6) & (!\inst19|F9\(5) & (!\inst19|F9\(7) $ (\inst19|F9\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010010010010000001001001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9\(6),
	datab => \inst19|ALT_INV_F9\(7),
	datac => \inst19|ALT_INV_F9\(5),
	datad => \inst19|ALT_INV_F9\(4),
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst11|Mux10~0_combout\);

-- Location: LABCELL_X10_Y7_N12
\inst11|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux11~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\inst19|F9\(6) & (!\inst19|F9\(7) & ((\inst19|F9\(4)) # (\inst19|F9\(5))))) # (\inst19|F9\(6) & (\inst19|F9\(4) & (!\inst19|F9\(7) $ (!\inst19|F9\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010011100000010001001110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9\(6),
	datab => \inst19|ALT_INV_F9\(7),
	datac => \inst19|ALT_INV_F9\(5),
	datad => \inst19|ALT_INV_F9\(4),
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst11|Mux11~0_combout\);

-- Location: LABCELL_X10_Y7_N15
\inst11|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux12~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\inst19|F9\(5) & ((!\inst19|F9\(6) & ((\inst19|F9\(4)))) # (\inst19|F9\(6) & (!\inst19|F9\(7))))) # (\inst19|F9\(5) & (((!\inst19|F9\(7) & \inst19|F9\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111000001100010011100000110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9\(6),
	datab => \inst19|ALT_INV_F9\(7),
	datac => \inst19|ALT_INV_F9\(4),
	datad => \inst19|ALT_INV_F9\(5),
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst11|Mux12~0_combout\);

-- Location: LABCELL_X10_Y7_N30
\inst11|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux13~0_combout\ = ( \inst19|F9\(5) & ( \BLANKTEST~input_o\ ) ) # ( !\inst19|F9\(5) & ( \BLANKTEST~input_o\ ) ) # ( \inst19|F9\(5) & ( !\BLANKTEST~input_o\ & ( (!\inst19|F9\(6) & (\inst19|F9\(7) & !\inst19|F9\(4))) # (\inst19|F9\(6) & 
-- ((\inst19|F9\(4)))) ) ) ) # ( !\inst19|F9\(5) & ( !\BLANKTEST~input_o\ & ( (!\inst19|F9\(7) & (!\inst19|F9\(6) $ (!\inst19|F9\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000010100000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9\(7),
	datac => \inst19|ALT_INV_F9\(6),
	datad => \inst19|ALT_INV_F9\(4),
	datae => \inst19|ALT_INV_F9\(5),
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst11|Mux13~0_combout\);

-- Location: LABCELL_X10_Y6_N39
\inst11|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux0~0_combout\ = ( \inst19|F9\(3) & ( ((!\inst19|F9\(1) & (!\inst19|F9\(0) & \inst19|F9\(2)))) # (\BLANKTEST~input_o\) ) ) # ( !\inst19|F9\(3) & ( ((!\inst19|F9\(1) & ((!\inst19|F9\(2)))) # (\inst19|F9\(1) & (\inst19|F9\(0) & \inst19|F9\(2)))) # 
-- (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100110111101110110011011100110011101100110011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9\(1),
	datab => \ALT_INV_BLANKTEST~input_o\,
	datac => \inst19|ALT_INV_F9\(0),
	datad => \inst19|ALT_INV_F9\(2),
	dataf => \inst19|ALT_INV_F9\(3),
	combout => \inst11|Mux0~0_combout\);

-- Location: LABCELL_X10_Y7_N27
\inst11|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux1~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\inst19|F9\(2) & (\inst19|F9\(1) & (!\inst19|F9\(3) & !\inst19|F9\(0)))) # (\inst19|F9\(2) & (\inst19|F9\(3) & ((!\inst19|F9\(0)) # (\inst19|F9\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001100000001010000110000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9\(1),
	datab => \inst19|ALT_INV_F9\(2),
	datac => \inst19|ALT_INV_F9\(3),
	datad => \inst19|ALT_INV_F9\(0),
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst11|Mux1~0_combout\);

-- Location: LABCELL_X10_Y7_N6
\inst11|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux2~0_combout\ = ( \inst19|F9\(3) & ( ((!\inst19|F9\(0) & ((\inst19|F9\(2)))) # (\inst19|F9\(0) & (\inst19|F9\(1)))) # (\BLANKTEST~input_o\) ) ) # ( !\inst19|F9\(3) & ( ((\inst19|F9\(2) & (!\inst19|F9\(1) $ (!\inst19|F9\(0))))) # 
-- (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100101111000111110010111100111111010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9\(1),
	datab => \inst19|ALT_INV_F9\(2),
	datac => \ALT_INV_BLANKTEST~input_o\,
	datad => \inst19|ALT_INV_F9\(0),
	dataf => \inst19|ALT_INV_F9\(3),
	combout => \inst11|Mux2~0_combout\);

-- Location: LABCELL_X10_Y7_N9
\inst11|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux3~0_combout\ = ( \BLANKTEST~input_o\ ) # ( !\BLANKTEST~input_o\ & ( (!\inst19|F9\(2) & (\inst19|F9\(0) & (!\inst19|F9\(1) $ (\inst19|F9\(3))))) # (\inst19|F9\(2) & (!\inst19|F9\(1) & (!\inst19|F9\(3) $ (\inst19|F9\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000110001000001000011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9\(1),
	datab => \inst19|ALT_INV_F9\(2),
	datac => \inst19|ALT_INV_F9\(3),
	datad => \inst19|ALT_INV_F9\(0),
	dataf => \ALT_INV_BLANKTEST~input_o\,
	combout => \inst11|Mux3~0_combout\);

-- Location: LABCELL_X10_Y6_N36
\inst11|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux4~0_combout\ = ( \inst19|F9\(0) & ( (!\inst19|F9\(3) $ (((!\inst19|F9\(1) & \inst19|F9\(2))))) # (\BLANKTEST~input_o\) ) ) # ( !\inst19|F9\(0) & ( ((\inst19|F9\(1) & (!\inst19|F9\(3) & !\inst19|F9\(2)))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100110011011100110011001111110011011110111111001101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9\(1),
	datab => \ALT_INV_BLANKTEST~input_o\,
	datac => \inst19|ALT_INV_F9\(3),
	datad => \inst19|ALT_INV_F9\(2),
	dataf => \inst19|ALT_INV_F9\(0),
	combout => \inst11|Mux4~0_combout\);

-- Location: LABCELL_X10_Y7_N24
\inst11|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux5~0_combout\ = ( \inst19|F9\(3) & ( ((!\inst19|F9\(1) & (!\inst19|F9\(2) & \inst19|F9\(0)))) # (\BLANKTEST~input_o\) ) ) # ( !\inst19|F9\(3) & ( (((!\inst19|F9\(1) & \inst19|F9\(2))) # (\inst19|F9\(0))) # (\BLANKTEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111111111111001011111111111100001111100011110000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9\(1),
	datab => \inst19|ALT_INV_F9\(2),
	datac => \ALT_INV_BLANKTEST~input_o\,
	datad => \inst19|ALT_INV_F9\(0),
	dataf => \inst19|ALT_INV_F9\(3),
	combout => \inst11|Mux5~0_combout\);

-- Location: LABCELL_X10_Y6_N42
\inst11|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux6~0_combout\ = ( \inst19|F9\(2) & ( \inst19|F9\(0) & ( (\BLANKTEST~input_o\) # (\inst19|F9\(1)) ) ) ) # ( !\inst19|F9\(2) & ( \inst19|F9\(0) & ( ((!\inst19|F9\(1) & !\inst19|F9\(3))) # (\BLANKTEST~input_o\) ) ) ) # ( \inst19|F9\(2) & ( 
-- !\inst19|F9\(0) & ( ((!\inst19|F9\(1) & !\inst19|F9\(3))) # (\BLANKTEST~input_o\) ) ) ) # ( !\inst19|F9\(2) & ( !\inst19|F9\(0) & ( ((\inst19|F9\(1) & \inst19|F9\(3))) # (\BLANKTEST~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111101100111011001110110011101100110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_F9\(1),
	datab => \ALT_INV_BLANKTEST~input_o\,
	datac => \inst19|ALT_INV_F9\(3),
	datae => \inst19|ALT_INV_F9\(2),
	dataf => \inst19|ALT_INV_F9\(0),
	combout => \inst11|Mux6~0_combout\);

-- Location: FF_X3_Y4_N32
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\);

-- Location: FF_X6_Y2_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\);

-- Location: MLABCELL_X47_Y20_N0
\auto_hub|~GND\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;

-- Location: MLABCELL_X3_Y2_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LABCELL_X1_Y1_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: LABCELL_X29_Y33_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


