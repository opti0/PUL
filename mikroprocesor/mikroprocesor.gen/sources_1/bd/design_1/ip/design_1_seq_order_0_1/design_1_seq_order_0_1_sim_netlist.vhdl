-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Jan 22 11:52:33 2024
-- Host        : Maciek-Laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Maciek/Desktop/PUL/mikroprocesor/mikroprocesor.gen/sources_1/bd/design_1/ip/design_1_seq_order_0_1/design_1_seq_order_0_1_sim_netlist.vhdl
-- Design      : design_1_seq_order_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_seq_order_0_1_seq_order is
  port (
    IOADR : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IOOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    GPIO : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IOWR : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    IOIN : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_seq_order_0_1_seq_order : entity is "seq_order";
end design_1_seq_order_0_1_seq_order;

architecture STRUCTURE of design_1_seq_order_0_1_seq_order is
  signal \^gpio\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \GPIO[4]_i_1_n_0\ : STD_LOGIC;
  signal \GPIO[6]_i_1_n_0\ : STD_LOGIC;
  signal \GPIO[7]_i_1_n_0\ : STD_LOGIC;
  signal \GPIO[7]_i_2_n_0\ : STD_LOGIC;
  signal \IOADR[7]_i_1_n_0\ : STD_LOGIC;
  signal \^iowr\ : STD_LOGIC;
  signal IOWR_i_1_n_0 : STD_LOGIC;
  signal IR0 : STD_LOGIC;
  signal \IR_reg_n_0_[4]\ : STD_LOGIC;
  signal \IR_reg_n_0_[6]\ : STD_LOGIC;
  signal \PC[0]_i_1_n_0\ : STD_LOGIC;
  signal \PC[0]_i_2_n_0\ : STD_LOGIC;
  signal \PC[0]_i_3_n_0\ : STD_LOGIC;
  signal \PC[0]_i_4_n_0\ : STD_LOGIC;
  signal \PC[1]_i_1_n_0\ : STD_LOGIC;
  signal \PC[1]_i_2_n_0\ : STD_LOGIC;
  signal \PC[1]_i_4_n_0\ : STD_LOGIC;
  signal \PC[1]_i_5_n_0\ : STD_LOGIC;
  signal \PC[1]_i_6_n_0\ : STD_LOGIC;
  signal \PC[1]_i_7_n_0\ : STD_LOGIC;
  signal \PC[1]_i_8_n_0\ : STD_LOGIC;
  signal \PC[2]_i_1_n_0\ : STD_LOGIC;
  signal \PC[2]_i_2_n_0\ : STD_LOGIC;
  signal \PC[2]_i_3_n_0\ : STD_LOGIC;
  signal \PC[3]_i_1_n_0\ : STD_LOGIC;
  signal \PC[3]_i_2_n_0\ : STD_LOGIC;
  signal \PC[3]_i_3_n_0\ : STD_LOGIC;
  signal \PC[4]_i_1_n_0\ : STD_LOGIC;
  signal \PC[4]_i_2_n_0\ : STD_LOGIC;
  signal \PC[4]_i_3_n_0\ : STD_LOGIC;
  signal \PC[4]_i_4_n_0\ : STD_LOGIC;
  signal \PC[4]_i_6_n_0\ : STD_LOGIC;
  signal \PC[4]_i_7_n_0\ : STD_LOGIC;
  signal \PC_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \PC_reg[1]_i_3_n_1\ : STD_LOGIC;
  signal \PC_reg[1]_i_3_n_2\ : STD_LOGIC;
  signal \PC_reg[1]_i_3_n_3\ : STD_LOGIC;
  signal \PC_reg[1]_i_3_n_4\ : STD_LOGIC;
  signal \PC_reg[1]_i_3_n_5\ : STD_LOGIC;
  signal \PC_reg[1]_i_3_n_6\ : STD_LOGIC;
  signal \PC_reg[1]_i_3_n_7\ : STD_LOGIC;
  signal \PC_reg[4]_i_5_n_7\ : STD_LOGIC;
  signal \PC_reg_n_0_[0]\ : STD_LOGIC;
  signal \PC_reg_n_0_[1]\ : STD_LOGIC;
  signal \PC_reg_n_0_[2]\ : STD_LOGIC;
  signal \PC_reg_n_0_[3]\ : STD_LOGIC;
  signal \PC_reg_n_0_[4]\ : STD_LOGIC;
  signal \ROM[0]_0\ : STD_LOGIC_VECTOR ( 14 downto 4 );
  signal \R[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \R[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \R[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \R[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \R[0][3]_i_3_n_0\ : STD_LOGIC;
  signal \R[0][3]_i_4_n_0\ : STD_LOGIC;
  signal \R[0][3]_i_5_n_0\ : STD_LOGIC;
  signal \R[0][3]_i_6_n_0\ : STD_LOGIC;
  signal \R[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \R[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \R[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \R[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \R[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \R[0][7]_i_4_n_0\ : STD_LOGIC;
  signal \R[0][7]_i_5_n_0\ : STD_LOGIC;
  signal \R[0][7]_i_6_n_0\ : STD_LOGIC;
  signal \R[0][7]_i_7_n_0\ : STD_LOGIC;
  signal \R[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \R[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \R[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \R[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \R[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \R[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \R[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \R[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \R[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \R[3][7]_i_3_n_0\ : STD_LOGIC;
  signal \R[3][7]_i_4_n_0\ : STD_LOGIC;
  signal \R[4][0]_i_1_n_0\ : STD_LOGIC;
  signal \R[4][0]_i_2_n_0\ : STD_LOGIC;
  signal \R[4][0]_i_3_n_0\ : STD_LOGIC;
  signal \R[4][1]_i_1_n_0\ : STD_LOGIC;
  signal \R[4][1]_i_2_n_0\ : STD_LOGIC;
  signal \R[4][1]_i_3_n_0\ : STD_LOGIC;
  signal \R[4][2]_i_1_n_0\ : STD_LOGIC;
  signal \R[4][2]_i_2_n_0\ : STD_LOGIC;
  signal \R[4][2]_i_3_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_10_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_11_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_12_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_13_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_14_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_15_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_16_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_17_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_18_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_19_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_1_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_20_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_21_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_22_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_23_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_24_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_25_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_26_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_27_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_2_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_6_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_7_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_8_n_0\ : STD_LOGIC;
  signal \R[4][3]_i_9_n_0\ : STD_LOGIC;
  signal \R[4][4]_i_1_n_0\ : STD_LOGIC;
  signal \R[4][4]_i_2_n_0\ : STD_LOGIC;
  signal \R[4][4]_i_3_n_0\ : STD_LOGIC;
  signal \R[4][5]_i_1_n_0\ : STD_LOGIC;
  signal \R[4][5]_i_2_n_0\ : STD_LOGIC;
  signal \R[4][5]_i_3_n_0\ : STD_LOGIC;
  signal \R[4][6]_i_1_n_0\ : STD_LOGIC;
  signal \R[4][6]_i_2_n_0\ : STD_LOGIC;
  signal \R[4][6]_i_3_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_10_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_11_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_12_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_13_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_14_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_15_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_16_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_17_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_18_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_19_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_20_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_21_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_22_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_23_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_24_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_25_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_26_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_2_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_3_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_4_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_5_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_6_n_0\ : STD_LOGIC;
  signal \R[4][7]_i_7_n_0\ : STD_LOGIC;
  signal \R[5][0]_i_1_n_0\ : STD_LOGIC;
  signal \R[5][0]_i_2_n_0\ : STD_LOGIC;
  signal \R[5][1]_i_1_n_0\ : STD_LOGIC;
  signal \R[5][1]_i_2_n_0\ : STD_LOGIC;
  signal \R[5][2]_i_1_n_0\ : STD_LOGIC;
  signal \R[5][2]_i_2_n_0\ : STD_LOGIC;
  signal \R[5][3]_i_1_n_0\ : STD_LOGIC;
  signal \R[5][3]_i_2_n_0\ : STD_LOGIC;
  signal \R[5][4]_i_1_n_0\ : STD_LOGIC;
  signal \R[5][4]_i_2_n_0\ : STD_LOGIC;
  signal \R[5][5]_i_1_n_0\ : STD_LOGIC;
  signal \R[5][5]_i_2_n_0\ : STD_LOGIC;
  signal \R[5][6]_i_1_n_0\ : STD_LOGIC;
  signal \R[5][6]_i_2_n_0\ : STD_LOGIC;
  signal \R[5][7]_i_2_n_0\ : STD_LOGIC;
  signal \R[5][7]_i_3_n_0\ : STD_LOGIC;
  signal \R[5][7]_i_4_n_0\ : STD_LOGIC;
  signal \R[5][7]_i_5_n_0\ : STD_LOGIC;
  signal \R[6][0]_i_1_n_0\ : STD_LOGIC;
  signal \R[6][1]_i_1_n_0\ : STD_LOGIC;
  signal \R[6][2]_i_1_n_0\ : STD_LOGIC;
  signal \R[6][3]_i_1_n_0\ : STD_LOGIC;
  signal \R[6][4]_i_1_n_0\ : STD_LOGIC;
  signal \R[6][5]_i_1_n_0\ : STD_LOGIC;
  signal \R[6][6]_i_1_n_0\ : STD_LOGIC;
  signal \R[6][7]_i_2_n_0\ : STD_LOGIC;
  signal \R[6][7]_i_3_n_0\ : STD_LOGIC;
  signal \R[6][7]_i_4_n_0\ : STD_LOGIC;
  signal \R[6][7]_i_5_n_0\ : STD_LOGIC;
  signal \R[6][7]_i_6_n_0\ : STD_LOGIC;
  signal \R[7][0]_i_1_n_0\ : STD_LOGIC;
  signal \R[7][1]_i_1_n_0\ : STD_LOGIC;
  signal \R[7][2]_i_1_n_0\ : STD_LOGIC;
  signal \R[7][3]_i_1_n_0\ : STD_LOGIC;
  signal \R[7][4]_i_1_n_0\ : STD_LOGIC;
  signal \R[7][5]_i_1_n_0\ : STD_LOGIC;
  signal \R[7][6]_i_1_n_0\ : STD_LOGIC;
  signal \R[7][7]_i_2_n_0\ : STD_LOGIC;
  signal \R[7][7]_i_3_n_0\ : STD_LOGIC;
  signal \R_reg[0][3]_i_2_n_0\ : STD_LOGIC;
  signal \R_reg[0][3]_i_2_n_1\ : STD_LOGIC;
  signal \R_reg[0][3]_i_2_n_2\ : STD_LOGIC;
  signal \R_reg[0][3]_i_2_n_3\ : STD_LOGIC;
  signal \R_reg[0][3]_i_2_n_4\ : STD_LOGIC;
  signal \R_reg[0][3]_i_2_n_5\ : STD_LOGIC;
  signal \R_reg[0][3]_i_2_n_6\ : STD_LOGIC;
  signal \R_reg[0][3]_i_2_n_7\ : STD_LOGIC;
  signal \R_reg[0][7]_i_3_n_1\ : STD_LOGIC;
  signal \R_reg[0][7]_i_3_n_2\ : STD_LOGIC;
  signal \R_reg[0][7]_i_3_n_3\ : STD_LOGIC;
  signal \R_reg[0][7]_i_3_n_5\ : STD_LOGIC;
  signal \R_reg[0][7]_i_3_n_6\ : STD_LOGIC;
  signal \R_reg[0][7]_i_3_n_7\ : STD_LOGIC;
  signal \R_reg[1]0\ : STD_LOGIC;
  signal \R_reg[3]0\ : STD_LOGIC;
  signal \R_reg[4]0\ : STD_LOGIC;
  signal \R_reg[4][3]_i_4_n_0\ : STD_LOGIC;
  signal \R_reg[4][3]_i_4_n_1\ : STD_LOGIC;
  signal \R_reg[4][3]_i_4_n_2\ : STD_LOGIC;
  signal \R_reg[4][3]_i_4_n_3\ : STD_LOGIC;
  signal \R_reg[4][3]_i_4_n_4\ : STD_LOGIC;
  signal \R_reg[4][3]_i_4_n_5\ : STD_LOGIC;
  signal \R_reg[4][3]_i_4_n_6\ : STD_LOGIC;
  signal \R_reg[4][3]_i_4_n_7\ : STD_LOGIC;
  signal \R_reg[4][3]_i_5_n_0\ : STD_LOGIC;
  signal \R_reg[4][3]_i_5_n_1\ : STD_LOGIC;
  signal \R_reg[4][3]_i_5_n_2\ : STD_LOGIC;
  signal \R_reg[4][3]_i_5_n_3\ : STD_LOGIC;
  signal \R_reg[4][3]_i_5_n_5\ : STD_LOGIC;
  signal \R_reg[4][3]_i_5_n_6\ : STD_LOGIC;
  signal \R_reg[4][3]_i_5_n_7\ : STD_LOGIC;
  signal \R_reg[4][7]_i_8_n_1\ : STD_LOGIC;
  signal \R_reg[4][7]_i_8_n_2\ : STD_LOGIC;
  signal \R_reg[4][7]_i_8_n_3\ : STD_LOGIC;
  signal \R_reg[4][7]_i_8_n_5\ : STD_LOGIC;
  signal \R_reg[4][7]_i_8_n_6\ : STD_LOGIC;
  signal \R_reg[4][7]_i_8_n_7\ : STD_LOGIC;
  signal \R_reg[4][7]_i_9_n_1\ : STD_LOGIC;
  signal \R_reg[4][7]_i_9_n_2\ : STD_LOGIC;
  signal \R_reg[4][7]_i_9_n_3\ : STD_LOGIC;
  signal \R_reg[4][7]_i_9_n_5\ : STD_LOGIC;
  signal \R_reg[4][7]_i_9_n_6\ : STD_LOGIC;
  signal \R_reg[4][7]_i_9_n_7\ : STD_LOGIC;
  signal \R_reg[5]0\ : STD_LOGIC;
  signal \R_reg[6]0\ : STD_LOGIC;
  signal \R_reg[7]0\ : STD_LOGIC;
  signal \R_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \R_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \R_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \R_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \R_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \R_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \R_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \R_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \R_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \R_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][5]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][6]\ : STD_LOGIC;
  signal \R_reg_n_0_[4][7]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][4]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][5]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][6]\ : STD_LOGIC;
  signal \R_reg_n_0_[5][7]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][4]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][5]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][6]\ : STD_LOGIC;
  signal \R_reg_n_0_[6][7]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][4]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][5]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][6]\ : STD_LOGIC;
  signal \R_reg_n_0_[7][7]\ : STD_LOGIC;
  signal \SREG[0]_i_10_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_12_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_13_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_14_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_15_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_16_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_17_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_18_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_19_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_1_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_20_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_22_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_23_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_24_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_25_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_26_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_27_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_28_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_29_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_2_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_30_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_31_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_32_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_33_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_34_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_35_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_36_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_37_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_3_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_4_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_5_n_0\ : STD_LOGIC;
  signal \SREG[0]_i_9_n_0\ : STD_LOGIC;
  signal \SREG_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \SREG_reg[0]_i_11_n_1\ : STD_LOGIC;
  signal \SREG_reg[0]_i_11_n_2\ : STD_LOGIC;
  signal \SREG_reg[0]_i_11_n_3\ : STD_LOGIC;
  signal \SREG_reg[0]_i_21_n_0\ : STD_LOGIC;
  signal \SREG_reg[0]_i_21_n_1\ : STD_LOGIC;
  signal \SREG_reg[0]_i_21_n_2\ : STD_LOGIC;
  signal \SREG_reg[0]_i_21_n_3\ : STD_LOGIC;
  signal \SREG_reg[0]_i_6_n_1\ : STD_LOGIC;
  signal \SREG_reg[0]_i_6_n_2\ : STD_LOGIC;
  signal \SREG_reg[0]_i_6_n_3\ : STD_LOGIC;
  signal \SREG_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \SREG_reg[0]_i_8_n_1\ : STD_LOGIC;
  signal \SREG_reg[0]_i_8_n_2\ : STD_LOGIC;
  signal \SREG_reg[0]_i_8_n_3\ : STD_LOGIC;
  signal \SREG_reg[0]_i_8_n_4\ : STD_LOGIC;
  signal \SREG_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in11_in : STD_LOGIC;
  signal p_0_in14_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_2_in21_in : STD_LOGIC;
  signal p_2_in4_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_6_in99_in : STD_LOGIC;
  signal p_8_in76_in : STD_LOGIC;
  signal state : STD_LOGIC;
  signal state_reg_n_0 : STD_LOGIC;
  signal \NLW_PC_reg[4]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PC_reg[4]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_R_reg[0][7]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_R_reg[4][7]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_R_reg[4][7]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_SREG_reg[0]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SREG_reg[0]_i_21_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SREG_reg[0]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_SREG_reg[0]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_SREG_reg[0]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_SREG_reg[0]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of IOWR_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \IR[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \IR[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \IR[14]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \IR[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \IR[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \PC[0]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \PC[0]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \PC[0]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \PC[1]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \PC[1]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \PC[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \PC[4]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \PC[4]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \PC[4]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \R[0][0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \R[0][2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \R[0][3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \R[0][4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \R[0][5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \R[0][6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \R[0][7]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \R[1][0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \R[1][1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \R[1][2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \R[1][3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \R[1][4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \R[1][5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \R[1][6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \R[1][7]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \R[3][7]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \R[4][0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \R[4][1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \R[4][2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \R[4][3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \R[4][4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \R[4][5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \R[4][6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \R[4][7]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \R[4][7]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \R[4][7]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \R[5][7]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \R[5][7]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R[6][6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \R[6][7]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \R[6][7]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \R[6][7]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \R[6][7]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \R[6][7]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R[7][7]_i_3\ : label is "soft_lutpair18";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \R_reg[0][3]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \R_reg[0][7]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \R_reg[4][3]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \R_reg[4][3]_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \R_reg[4][7]_i_8\ : label is 35;
  attribute ADDER_THRESHOLD of \R_reg[4][7]_i_9\ : label is 35;
  attribute SOFT_HLUTNM of \SREG[0]_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \SREG[0]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \SREG[0]_i_9\ : label is "soft_lutpair11";
  attribute ADDER_THRESHOLD of \SREG_reg[0]_i_11\ : label is 35;
  attribute ADDER_THRESHOLD of \SREG_reg[0]_i_21\ : label is 35;
  attribute ADDER_THRESHOLD of \SREG_reg[0]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \SREG_reg[0]_i_8\ : label is 35;
  attribute SOFT_HLUTNM of state_i_1 : label is "soft_lutpair10";
begin
  GPIO(2 downto 0) <= \^gpio\(2 downto 0);
  IOWR <= \^iowr\;
\GPIO[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFF01000000"
    )
        port map (
      I0 => p_5_in(0),
      I1 => p_3_in,
      I2 => p_2_in4_in,
      I3 => \IR_reg_n_0_[4]\,
      I4 => \GPIO[7]_i_2_n_0\,
      I5 => \^gpio\(0),
      O => \GPIO[4]_i_1_n_0\
    );
\GPIO[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => p_2_in4_in,
      I1 => \IR_reg_n_0_[6]\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => \GPIO[7]_i_2_n_0\,
      I5 => \^gpio\(1),
      O => \GPIO[6]_i_1_n_0\
    );
\GPIO[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => p_2_in4_in,
      I1 => p_2_in21_in,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => \GPIO[7]_i_2_n_0\,
      I5 => \^gpio\(2),
      O => \GPIO[7]_i_1_n_0\
    );
\GPIO[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F10000000000"
    )
        port map (
      I0 => p_2_in21_in,
      I1 => \IR_reg_n_0_[6]\,
      I2 => p_2_in4_in,
      I3 => p_5_in(0),
      I4 => p_3_in,
      I5 => state_reg_n_0,
      O => \GPIO[7]_i_2_n_0\
    );
\GPIO_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => \GPIO[4]_i_1_n_0\,
      Q => \^gpio\(0)
    );
\GPIO_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => \GPIO[6]_i_1_n_0\,
      Q => \^gpio\(1)
    );
\GPIO_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => \GPIO[7]_i_1_n_0\,
      Q => \^gpio\(2)
    );
\IOADR[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_3_in,
      I1 => p_5_in(0),
      I2 => p_2_in4_in,
      I3 => state_reg_n_0,
      O => \IOADR[7]_i_1_n_0\
    );
\IOADR_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \IOADR[7]_i_1_n_0\,
      CLR => RESET,
      D => \IR_reg_n_0_[4]\,
      Q => IOADR(0)
    );
\IOADR_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \IOADR[7]_i_1_n_0\,
      CLR => RESET,
      D => \IR_reg_n_0_[6]\,
      Q => IOADR(1)
    );
\IOADR_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \IOADR[7]_i_1_n_0\,
      CLR => RESET,
      D => p_2_in21_in,
      Q => IOADR(2)
    );
\IOOUT_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \IOADR[7]_i_1_n_0\,
      CLR => RESET,
      D => \R_reg_n_0_[0][0]\,
      Q => IOOUT(0)
    );
\IOOUT_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \IOADR[7]_i_1_n_0\,
      CLR => RESET,
      D => \R_reg_n_0_[0][1]\,
      Q => IOOUT(1)
    );
\IOOUT_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \IOADR[7]_i_1_n_0\,
      CLR => RESET,
      D => \R_reg_n_0_[0][2]\,
      Q => IOOUT(2)
    );
\IOOUT_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \IOADR[7]_i_1_n_0\,
      CLR => RESET,
      D => \R_reg_n_0_[0][3]\,
      Q => IOOUT(3)
    );
\IOOUT_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \IOADR[7]_i_1_n_0\,
      CLR => RESET,
      D => \R_reg_n_0_[0][4]\,
      Q => IOOUT(4)
    );
\IOOUT_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \IOADR[7]_i_1_n_0\,
      CLR => RESET,
      D => \R_reg_n_0_[0][5]\,
      Q => IOOUT(5)
    );
\IOOUT_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \IOADR[7]_i_1_n_0\,
      CLR => RESET,
      D => \R_reg_n_0_[0][6]\,
      Q => IOOUT(6)
    );
\IOOUT_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \IOADR[7]_i_1_n_0\,
      CLR => RESET,
      D => \R_reg_n_0_[0][7]\,
      Q => IOOUT(7)
    );
IOWR_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55554000"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => p_3_in,
      I2 => p_5_in(0),
      I3 => p_2_in4_in,
      I4 => \^iowr\,
      O => IOWR_i_1_n_0
    );
IOWR_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => IOWR_i_1_n_0,
      Q => \^iowr\
    );
\IR[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000316B"
    )
        port map (
      I0 => \PC_reg_n_0_[0]\,
      I1 => \PC_reg_n_0_[3]\,
      I2 => \PC_reg_n_0_[1]\,
      I3 => \PC_reg_n_0_[2]\,
      I4 => \PC_reg_n_0_[4]\,
      O => \ROM[0]_0\(11)
    );
\IR[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00430018"
    )
        port map (
      I0 => \PC_reg_n_0_[3]\,
      I1 => \PC_reg_n_0_[1]\,
      I2 => \PC_reg_n_0_[0]\,
      I3 => \PC_reg_n_0_[4]\,
      I4 => \PC_reg_n_0_[2]\,
      O => \ROM[0]_0\(12)
    );
\IR[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => RESET,
      O => IR0
    );
\IR[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10010410"
    )
        port map (
      I0 => \PC_reg_n_0_[4]\,
      I1 => \PC_reg_n_0_[3]\,
      I2 => \PC_reg_n_0_[0]\,
      I3 => \PC_reg_n_0_[1]\,
      I4 => \PC_reg_n_0_[2]\,
      O => \ROM[0]_0\(14)
    );
\IR[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004325"
    )
        port map (
      I0 => \PC_reg_n_0_[3]\,
      I1 => \PC_reg_n_0_[2]\,
      I2 => \PC_reg_n_0_[1]\,
      I3 => \PC_reg_n_0_[0]\,
      I4 => \PC_reg_n_0_[4]\,
      O => \ROM[0]_0\(4)
    );
\IR[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \PC_reg_n_0_[2]\,
      I1 => \PC_reg_n_0_[1]\,
      I2 => \PC_reg_n_0_[4]\,
      I3 => \PC_reg_n_0_[0]\,
      I4 => \PC_reg_n_0_[3]\,
      O => \ROM[0]_0\(6)
    );
\IR[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000009"
    )
        port map (
      I0 => \PC_reg_n_0_[1]\,
      I1 => \PC_reg_n_0_[2]\,
      I2 => \PC_reg_n_0_[3]\,
      I3 => \PC_reg_n_0_[0]\,
      I4 => \PC_reg_n_0_[4]\,
      O => \ROM[0]_0\(7)
    );
\IR_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => IR0,
      D => \ROM[0]_0\(11),
      Q => p_3_in,
      R => '0'
    );
\IR_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => IR0,
      D => \ROM[0]_0\(12),
      Q => p_2_in4_in,
      R => '0'
    );
\IR_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => IR0,
      D => \ROM[0]_0\(14),
      Q => p_5_in(0),
      R => '0'
    );
\IR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => IR0,
      D => \ROM[0]_0\(4),
      Q => \IR_reg_n_0_[4]\,
      R => '0'
    );
\IR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => IR0,
      D => \ROM[0]_0\(6),
      Q => \IR_reg_n_0_[6]\,
      R => '0'
    );
\IR_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => IR0,
      D => \ROM[0]_0\(7),
      Q => p_2_in21_in,
      R => '0'
    );
\PC[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAFEAAAEFFFF"
    )
        port map (
      I0 => \PC[4]_i_4_n_0\,
      I1 => \PC_reg[1]_i_3_n_7\,
      I2 => \PC[0]_i_2_n_0\,
      I3 => \PC[0]_i_3_n_0\,
      I4 => \PC_reg_n_0_[0]\,
      I5 => \PC[0]_i_4_n_0\,
      O => \PC[0]_i_1_n_0\
    );
\PC[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => p_2_in4_in,
      I1 => p_3_in,
      I2 => \SREG_reg_n_0_[0]\,
      O => \PC[0]_i_2_n_0\
    );
\PC[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_3_in,
      I1 => p_5_in(0),
      O => \PC[0]_i_3_n_0\
    );
\PC[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FFF010"
    )
        port map (
      I0 => p_2_in21_in,
      I1 => \IR_reg_n_0_[6]\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => p_2_in4_in,
      O => \PC[0]_i_4_n_0\
    );
\PC[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEEEAEFFAEAAAA"
    )
        port map (
      I0 => \PC[1]_i_2_n_0\,
      I1 => \PC_reg[1]_i_3_n_6\,
      I2 => \PC[4]_i_6_n_0\,
      I3 => \PC[1]_i_4_n_0\,
      I4 => \PC[2]_i_2_n_0\,
      I5 => p_3_in,
      O => \PC[1]_i_1_n_0\
    );
\PC[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \IR_reg_n_0_[6]\,
      I1 => p_3_in,
      I2 => p_5_in(0),
      I3 => p_2_in4_in,
      O => \PC[1]_i_2_n_0\
    );
\PC[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \PC_reg_n_0_[0]\,
      I1 => \PC_reg_n_0_[1]\,
      O => \PC[1]_i_4_n_0\
    );
\PC[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \PC_reg_n_0_[3]\,
      I1 => p_2_in21_in,
      O => \PC[1]_i_5_n_0\
    );
\PC[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \PC_reg_n_0_[2]\,
      I1 => \IR_reg_n_0_[6]\,
      O => \PC[1]_i_6_n_0\
    );
\PC[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \PC_reg_n_0_[1]\,
      I1 => \IR_reg_n_0_[6]\,
      O => \PC[1]_i_7_n_0\
    );
\PC[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \PC_reg_n_0_[0]\,
      I1 => \IR_reg_n_0_[4]\,
      O => \PC[1]_i_8_n_0\
    );
\PC[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6A00"
    )
        port map (
      I0 => \PC_reg_n_0_[2]\,
      I1 => \PC_reg_n_0_[1]\,
      I2 => \PC_reg_n_0_[0]\,
      I3 => \PC[2]_i_2_n_0\,
      I4 => \PC[2]_i_3_n_0\,
      O => \PC[2]_i_1_n_0\
    );
\PC[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F2FFF3C3C2FFF3"
    )
        port map (
      I0 => p_2_in21_in,
      I1 => p_2_in4_in,
      I2 => p_3_in,
      I3 => \IR_reg_n_0_[6]\,
      I4 => p_5_in(0),
      I5 => \SREG_reg_n_0_[0]\,
      O => \PC[2]_i_2_n_0\
    );
\PC[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00220C0000220000"
    )
        port map (
      I0 => \IR_reg_n_0_[6]\,
      I1 => p_5_in(0),
      I2 => \SREG_reg_n_0_[0]\,
      I3 => p_3_in,
      I4 => p_2_in4_in,
      I5 => \PC_reg[1]_i_3_n_5\,
      O => \PC[2]_i_3_n_0\
    );
\PC[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14444444"
    )
        port map (
      I0 => \PC[3]_i_2_n_0\,
      I1 => \PC_reg_n_0_[3]\,
      I2 => \PC_reg_n_0_[2]\,
      I3 => \PC_reg_n_0_[0]\,
      I4 => \PC_reg_n_0_[1]\,
      I5 => \PC[3]_i_3_n_0\,
      O => \PC[3]_i_1_n_0\
    );
\PC[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000200FFAA02"
    )
        port map (
      I0 => p_5_in(0),
      I1 => \IR_reg_n_0_[6]\,
      I2 => p_2_in21_in,
      I3 => p_3_in,
      I4 => p_2_in4_in,
      I5 => \SREG_reg_n_0_[0]\,
      O => \PC[3]_i_2_n_0\
    );
\PC[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00220C0000220000"
    )
        port map (
      I0 => p_2_in21_in,
      I1 => p_5_in(0),
      I2 => \SREG_reg_n_0_[0]\,
      I3 => p_3_in,
      I4 => p_2_in4_in,
      I5 => \PC_reg[1]_i_3_n_4\,
      O => \PC[3]_i_3_n_0\
    );
\PC[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \PC[4]_i_2_n_0\,
      I1 => \PC[4]_i_3_n_0\,
      I2 => \PC[4]_i_4_n_0\,
      I3 => \PC_reg[4]_i_5_n_7\,
      I4 => \PC[4]_i_6_n_0\,
      O => \PC[4]_i_1_n_0\
    );
\PC[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C4C0F4C00000300"
    )
        port map (
      I0 => \SREG_reg_n_0_[0]\,
      I1 => p_5_in(0),
      I2 => p_3_in,
      I3 => p_2_in4_in,
      I4 => \IR_reg_n_0_[4]\,
      I5 => \R[3][7]_i_4_n_0\,
      O => \PC[4]_i_2_n_0\
    );
\PC[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \PC_reg_n_0_[4]\,
      I1 => \PC_reg_n_0_[3]\,
      I2 => \PC_reg_n_0_[1]\,
      I3 => \PC_reg_n_0_[0]\,
      I4 => \PC_reg_n_0_[2]\,
      O => \PC[4]_i_3_n_0\
    );
\PC[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \IR_reg_n_0_[4]\,
      I1 => p_5_in(0),
      I2 => p_2_in4_in,
      I3 => p_3_in,
      O => \PC[4]_i_4_n_0\
    );
\PC[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => p_5_in(0),
      I1 => \SREG_reg_n_0_[0]\,
      I2 => p_3_in,
      I3 => p_2_in4_in,
      O => \PC[4]_i_6_n_0\
    );
\PC[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \IR_reg_n_0_[4]\,
      I1 => \PC_reg_n_0_[4]\,
      O => \PC[4]_i_7_n_0\
    );
\PC_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => state_reg_n_0,
      CLR => RESET,
      D => \PC[0]_i_1_n_0\,
      Q => \PC_reg_n_0_[0]\
    );
\PC_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => state_reg_n_0,
      CLR => RESET,
      D => \PC[1]_i_1_n_0\,
      Q => \PC_reg_n_0_[1]\
    );
\PC_reg[1]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \PC_reg[1]_i_3_n_0\,
      CO(2) => \PC_reg[1]_i_3_n_1\,
      CO(1) => \PC_reg[1]_i_3_n_2\,
      CO(0) => \PC_reg[1]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \PC_reg_n_0_[3]\,
      DI(2) => \PC_reg_n_0_[2]\,
      DI(1) => \PC_reg_n_0_[1]\,
      DI(0) => \PC_reg_n_0_[0]\,
      O(3) => \PC_reg[1]_i_3_n_4\,
      O(2) => \PC_reg[1]_i_3_n_5\,
      O(1) => \PC_reg[1]_i_3_n_6\,
      O(0) => \PC_reg[1]_i_3_n_7\,
      S(3) => \PC[1]_i_5_n_0\,
      S(2) => \PC[1]_i_6_n_0\,
      S(1) => \PC[1]_i_7_n_0\,
      S(0) => \PC[1]_i_8_n_0\
    );
\PC_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => state_reg_n_0,
      CLR => RESET,
      D => \PC[2]_i_1_n_0\,
      Q => \PC_reg_n_0_[2]\
    );
\PC_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => state_reg_n_0,
      CLR => RESET,
      D => \PC[3]_i_1_n_0\,
      Q => \PC_reg_n_0_[3]\
    );
\PC_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => state_reg_n_0,
      CLR => RESET,
      D => \PC[4]_i_1_n_0\,
      Q => \PC_reg_n_0_[4]\
    );
\PC_reg[4]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_reg[1]_i_3_n_0\,
      CO(3 downto 0) => \NLW_PC_reg[4]_i_5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_PC_reg[4]_i_5_O_UNCONNECTED\(3 downto 1),
      O(0) => \PC_reg[4]_i_5_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \PC[4]_i_7_n_0\
    );
\R[0][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \IR_reg_n_0_[4]\,
      I1 => p_2_in4_in,
      I2 => \R_reg[0][3]_i_2_n_7\,
      O => \R[0][0]_i_1_n_0\
    );
\R[0][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \IR_reg_n_0_[6]\,
      I1 => \R_reg[0][3]_i_2_n_6\,
      I2 => p_2_in4_in,
      O => \R[0][1]_i_1_n_0\
    );
\R[0][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \IR_reg_n_0_[6]\,
      I1 => p_2_in4_in,
      I2 => \R_reg[0][3]_i_2_n_5\,
      O => \R[0][2]_i_1_n_0\
    );
\R[0][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => p_2_in21_in,
      I1 => p_2_in4_in,
      I2 => \R_reg[0][3]_i_2_n_4\,
      O => \R[0][3]_i_1_n_0\
    );
\R[0][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_2_in21_in,
      I1 => \R_reg_n_0_[0][3]\,
      O => \R[0][3]_i_3_n_0\
    );
\R[0][3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \IR_reg_n_0_[6]\,
      I1 => \R_reg_n_0_[0][2]\,
      O => \R[0][3]_i_4_n_0\
    );
\R[0][3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \IR_reg_n_0_[6]\,
      I1 => \R_reg_n_0_[0][1]\,
      O => \R[0][3]_i_5_n_0\
    );
\R[0][3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SREG_reg_n_0_[0]\,
      I1 => \IR_reg_n_0_[4]\,
      O => \R[0][3]_i_6_n_0\
    );
\R[0][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \R_reg[0][7]_i_3_n_7\,
      I1 => \IR_reg_n_0_[4]\,
      I2 => p_2_in4_in,
      O => \R[0][4]_i_1_n_0\
    );
\R[0][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \IR_reg_n_0_[6]\,
      I1 => p_2_in4_in,
      I2 => \R_reg[0][7]_i_3_n_6\,
      O => \R[0][5]_i_1_n_0\
    );
\R[0][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \IR_reg_n_0_[6]\,
      I1 => p_2_in4_in,
      I2 => \R_reg[0][7]_i_3_n_5\,
      O => \R[0][6]_i_1_n_0\
    );
\R[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => RESET,
      I1 => state_reg_n_0,
      I2 => p_5_in(0),
      I3 => p_3_in,
      O => \R[0][7]_i_1_n_0\
    );
\R[0][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => p_2_in21_in,
      I1 => p_2_in4_in,
      I2 => p_0_in5_in,
      O => \R[0][7]_i_2_n_0\
    );
\R[0][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \R_reg_n_0_[0][7]\,
      I1 => p_2_in21_in,
      O => \R[0][7]_i_4_n_0\
    );
\R[0][7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \IR_reg_n_0_[6]\,
      I1 => \R_reg_n_0_[0][6]\,
      O => \R[0][7]_i_5_n_0\
    );
\R[0][7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \IR_reg_n_0_[6]\,
      I1 => \R_reg_n_0_[0][5]\,
      O => \R[0][7]_i_6_n_0\
    );
\R[0][7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \IR_reg_n_0_[4]\,
      I1 => \R_reg_n_0_[0][4]\,
      O => \R[0][7]_i_7_n_0\
    );
\R[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => \R[6][7]_i_5_n_0\,
      I2 => IOIN(0),
      O => \R[1][0]_i_1_n_0\
    );
\R[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => \R[6][7]_i_5_n_0\,
      I2 => IOIN(1),
      O => \R[1][1]_i_1_n_0\
    );
\R[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => \R[6][7]_i_5_n_0\,
      I2 => IOIN(2),
      O => \R[1][2]_i_1_n_0\
    );
\R[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => \R[6][7]_i_5_n_0\,
      I2 => IOIN(3),
      O => \R[1][3]_i_1_n_0\
    );
\R[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => \R[6][7]_i_5_n_0\,
      I2 => IOIN(4),
      O => \R[1][4]_i_1_n_0\
    );
\R[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => \R[6][7]_i_5_n_0\,
      I2 => IOIN(5),
      O => \R[1][5]_i_1_n_0\
    );
\R[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => \R[6][7]_i_5_n_0\,
      I2 => IOIN(6),
      O => \R[1][6]_i_1_n_0\
    );
\R[1][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \R[3][7]_i_3_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => p_2_in21_in,
      I3 => \IR_reg_n_0_[4]\,
      O => \R_reg[1]0\
    );
\R[1][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => \R[6][7]_i_5_n_0\,
      I2 => IOIN(7),
      O => \R[1][7]_i_2_n_0\
    );
\R[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \R[3][7]_i_3_n_0\,
      I1 => \IR_reg_n_0_[4]\,
      I2 => \IR_reg_n_0_[6]\,
      I3 => p_2_in21_in,
      I4 => p_5_in(0),
      I5 => \R[3][7]_i_4_n_0\,
      O => \R[3][7]_i_1_n_0\
    );
\R[3][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \R[3][7]_i_3_n_0\,
      I1 => \IR_reg_n_0_[4]\,
      I2 => \IR_reg_n_0_[6]\,
      I3 => p_2_in21_in,
      O => \R_reg[3]0\
    );
\R[3][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => p_2_in4_in,
      I1 => p_2_in21_in,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => state_reg_n_0,
      I5 => RESET,
      O => \R[3][7]_i_3_n_0\
    );
\R[3][7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEF"
    )
        port map (
      I0 => p_2_in4_in,
      I1 => p_3_in,
      I2 => \IR_reg_n_0_[6]\,
      I3 => p_2_in21_in,
      O => \R[3][7]_i_4_n_0\
    );
\R[4][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => IOIN(0),
      I1 => \R[4][7]_i_5_n_0\,
      I2 => \R[4][0]_i_2_n_0\,
      O => \R[4][0]_i_1_n_0\
    );
\R[4][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBFF2B00E80028"
    )
        port map (
      I0 => \R[4][0]_i_3_n_0\,
      I1 => p_2_in21_in,
      I2 => \IR_reg_n_0_[6]\,
      I3 => \R[4][7]_i_7_n_0\,
      I4 => \R_reg[4][3]_i_4_n_7\,
      I5 => \R_reg[4][3]_i_5_n_7\,
      O => \R[4][0]_i_2_n_0\
    );
\R[4][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000AACCAACC"
    )
        port map (
      I0 => \R_reg_n_0_[1][0]\,
      I1 => \R_reg_n_0_[0][0]\,
      I2 => \R_reg_n_0_[7][0]\,
      I3 => \IR_reg_n_0_[4]\,
      I4 => \R_reg_n_0_[6][0]\,
      I5 => \IR_reg_n_0_[6]\,
      O => \R[4][0]_i_3_n_0\
    );
\R[4][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => IOIN(1),
      I1 => \R[4][7]_i_5_n_0\,
      I2 => \R[4][1]_i_2_n_0\,
      O => \R[4][1]_i_1_n_0\
    );
\R[4][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBFF2B00E80028"
    )
        port map (
      I0 => \R[4][1]_i_3_n_0\,
      I1 => p_2_in21_in,
      I2 => \IR_reg_n_0_[6]\,
      I3 => \R[4][7]_i_7_n_0\,
      I4 => \R_reg[4][3]_i_4_n_6\,
      I5 => \R_reg[4][3]_i_5_n_6\,
      O => \R[4][1]_i_2_n_0\
    );
\R[4][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000AACCAACC"
    )
        port map (
      I0 => \R_reg_n_0_[1][1]\,
      I1 => \R_reg_n_0_[0][1]\,
      I2 => \R_reg_n_0_[7][1]\,
      I3 => \IR_reg_n_0_[4]\,
      I4 => \R_reg_n_0_[6][1]\,
      I5 => \IR_reg_n_0_[6]\,
      O => \R[4][1]_i_3_n_0\
    );
\R[4][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => IOIN(2),
      I1 => \R[4][7]_i_5_n_0\,
      I2 => \R[4][2]_i_2_n_0\,
      O => \R[4][2]_i_1_n_0\
    );
\R[4][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBFF2B00E80028"
    )
        port map (
      I0 => \R[4][2]_i_3_n_0\,
      I1 => p_2_in21_in,
      I2 => \IR_reg_n_0_[6]\,
      I3 => \R[4][7]_i_7_n_0\,
      I4 => \R_reg[4][3]_i_4_n_5\,
      I5 => \R_reg[4][3]_i_5_n_5\,
      O => \R[4][2]_i_2_n_0\
    );
\R[4][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000AACCAACC"
    )
        port map (
      I0 => \R_reg_n_0_[1][2]\,
      I1 => \R_reg_n_0_[0][2]\,
      I2 => \R_reg_n_0_[7][2]\,
      I3 => \IR_reg_n_0_[4]\,
      I4 => \R_reg_n_0_[6][2]\,
      I5 => \IR_reg_n_0_[6]\,
      O => \R[4][2]_i_3_n_0\
    );
\R[4][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => IOIN(3),
      I1 => \R[4][7]_i_5_n_0\,
      I2 => \R[4][3]_i_2_n_0\,
      O => \R[4][3]_i_1_n_0\
    );
\R[4][3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SREG_reg_n_0_[0]\,
      I1 => \R[4][0]_i_3_n_0\,
      O => \R[4][3]_i_10_n_0\
    );
\R[4][3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A207A752F257F7"
    )
        port map (
      I0 => \IR_reg_n_0_[6]\,
      I1 => \R_reg_n_0_[6][0]\,
      I2 => \IR_reg_n_0_[4]\,
      I3 => \R_reg_n_0_[7][0]\,
      I4 => \R_reg_n_0_[0][0]\,
      I5 => \R_reg_n_0_[1][0]\,
      O => \R[4][3]_i_11_n_0\
    );
\R[4][3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R[4][3]_i_22_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_23_n_0\,
      O => \R[4][3]_i_12_n_0\
    );
\R[4][3]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R[4][3]_i_24_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_25_n_0\,
      O => \R[4][3]_i_13_n_0\
    );
\R[4][3]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R[4][3]_i_26_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_27_n_0\,
      O => \R[4][3]_i_14_n_0\
    );
\R[4][3]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R[4][3]_i_20_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_21_n_0\,
      O => \R[4][3]_i_15_n_0\
    );
\R[4][3]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \R[4][3]_i_22_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_23_n_0\,
      I3 => p_8_in76_in,
      O => \R[4][3]_i_16_n_0\
    );
\R[4][3]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \R[4][3]_i_24_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_25_n_0\,
      I3 => \R[4][2]_i_3_n_0\,
      O => \R[4][3]_i_17_n_0\
    );
\R[4][3]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \R[4][3]_i_26_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_27_n_0\,
      I3 => \R[4][1]_i_3_n_0\,
      O => \R[4][3]_i_18_n_0\
    );
\R[4][3]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \R[4][3]_i_20_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_21_n_0\,
      I3 => \SREG_reg_n_0_[0]\,
      O => \R[4][3]_i_19_n_0\
    );
\R[4][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBFF2B00E80028"
    )
        port map (
      I0 => p_8_in76_in,
      I1 => p_2_in21_in,
      I2 => \IR_reg_n_0_[6]\,
      I3 => \R[4][7]_i_7_n_0\,
      I4 => \R_reg[4][3]_i_4_n_4\,
      I5 => p_6_in99_in,
      O => \R[4][3]_i_2_n_0\
    );
\R[4][3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][0]\,
      I1 => \R_reg_n_0_[6][0]\,
      I2 => \IR_reg_n_0_[4]\,
      I3 => \R_reg_n_0_[5][0]\,
      I4 => p_2_in21_in,
      I5 => \R_reg_n_0_[4][0]\,
      O => \R[4][3]_i_20_n_0\
    );
\R[4][3]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \R_reg_n_0_[3][0]\,
      I1 => \IR_reg_n_0_[4]\,
      I2 => \R_reg_n_0_[1][0]\,
      I3 => p_2_in21_in,
      I4 => \R_reg_n_0_[0][0]\,
      O => \R[4][3]_i_21_n_0\
    );
\R[4][3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][3]\,
      I1 => \R_reg_n_0_[6][3]\,
      I2 => \IR_reg_n_0_[4]\,
      I3 => \R_reg_n_0_[5][3]\,
      I4 => p_2_in21_in,
      I5 => \R_reg_n_0_[4][3]\,
      O => \R[4][3]_i_22_n_0\
    );
\R[4][3]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \R_reg_n_0_[3][3]\,
      I1 => \IR_reg_n_0_[4]\,
      I2 => \R_reg_n_0_[1][3]\,
      I3 => p_2_in21_in,
      I4 => \R_reg_n_0_[0][3]\,
      O => \R[4][3]_i_23_n_0\
    );
\R[4][3]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][2]\,
      I1 => \R_reg_n_0_[6][2]\,
      I2 => \IR_reg_n_0_[4]\,
      I3 => \R_reg_n_0_[5][2]\,
      I4 => p_2_in21_in,
      I5 => \R_reg_n_0_[4][2]\,
      O => \R[4][3]_i_24_n_0\
    );
\R[4][3]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \R_reg_n_0_[3][2]\,
      I1 => \IR_reg_n_0_[4]\,
      I2 => \R_reg_n_0_[1][2]\,
      I3 => p_2_in21_in,
      I4 => \R_reg_n_0_[0][2]\,
      O => \R[4][3]_i_25_n_0\
    );
\R[4][3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][1]\,
      I1 => \R_reg_n_0_[6][1]\,
      I2 => \IR_reg_n_0_[4]\,
      I3 => \R_reg_n_0_[5][1]\,
      I4 => p_2_in21_in,
      I5 => \R_reg_n_0_[4][1]\,
      O => \R[4][3]_i_26_n_0\
    );
\R[4][3]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \R_reg_n_0_[3][1]\,
      I1 => \IR_reg_n_0_[4]\,
      I2 => \R_reg_n_0_[1][1]\,
      I3 => p_2_in21_in,
      I4 => \R_reg_n_0_[0][1]\,
      O => \R[4][3]_i_27_n_0\
    );
\R[4][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000AACCAACC"
    )
        port map (
      I0 => \R_reg_n_0_[1][3]\,
      I1 => \R_reg_n_0_[0][3]\,
      I2 => \R_reg_n_0_[7][3]\,
      I3 => \IR_reg_n_0_[4]\,
      I4 => \R_reg_n_0_[6][3]\,
      I5 => \IR_reg_n_0_[6]\,
      O => p_8_in76_in
    );
\R[4][3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R[4][3]_i_20_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_21_n_0\,
      O => \R[4][3]_i_6_n_0\
    );
\R[4][3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \R[4][3]_i_22_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_23_n_0\,
      I3 => p_8_in76_in,
      O => \R[4][3]_i_7_n_0\
    );
\R[4][3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \R[4][3]_i_24_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_25_n_0\,
      I3 => \R[4][2]_i_3_n_0\,
      O => \R[4][3]_i_8_n_0\
    );
\R[4][3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \R[4][3]_i_26_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_27_n_0\,
      I3 => \R[4][1]_i_3_n_0\,
      O => \R[4][3]_i_9_n_0\
    );
\R[4][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => IOIN(4),
      I1 => \R[4][7]_i_5_n_0\,
      I2 => \R[4][4]_i_2_n_0\,
      O => \R[4][4]_i_1_n_0\
    );
\R[4][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBFF2B00E80028"
    )
        port map (
      I0 => \R[4][4]_i_3_n_0\,
      I1 => p_2_in21_in,
      I2 => \IR_reg_n_0_[6]\,
      I3 => \R[4][7]_i_7_n_0\,
      I4 => \R_reg[4][7]_i_8_n_7\,
      I5 => \R_reg[4][7]_i_9_n_7\,
      O => \R[4][4]_i_2_n_0\
    );
\R[4][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000AACCAACC"
    )
        port map (
      I0 => \R_reg_n_0_[1][4]\,
      I1 => \R_reg_n_0_[0][4]\,
      I2 => \R_reg_n_0_[7][4]\,
      I3 => \IR_reg_n_0_[4]\,
      I4 => \R_reg_n_0_[6][4]\,
      I5 => \IR_reg_n_0_[6]\,
      O => \R[4][4]_i_3_n_0\
    );
\R[4][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => IOIN(5),
      I1 => \R[4][7]_i_5_n_0\,
      I2 => \R[4][5]_i_2_n_0\,
      O => \R[4][5]_i_1_n_0\
    );
\R[4][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBFF2B00E80028"
    )
        port map (
      I0 => \R[4][5]_i_3_n_0\,
      I1 => p_2_in21_in,
      I2 => \IR_reg_n_0_[6]\,
      I3 => \R[4][7]_i_7_n_0\,
      I4 => \R_reg[4][7]_i_8_n_6\,
      I5 => \R_reg[4][7]_i_9_n_6\,
      O => \R[4][5]_i_2_n_0\
    );
\R[4][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000AACCAACC"
    )
        port map (
      I0 => \R_reg_n_0_[1][5]\,
      I1 => \R_reg_n_0_[0][5]\,
      I2 => \R_reg_n_0_[7][5]\,
      I3 => \IR_reg_n_0_[4]\,
      I4 => \R_reg_n_0_[6][5]\,
      I5 => \IR_reg_n_0_[6]\,
      O => \R[4][5]_i_3_n_0\
    );
\R[4][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => IOIN(6),
      I1 => \R[4][7]_i_5_n_0\,
      I2 => \R[4][6]_i_2_n_0\,
      O => \R[4][6]_i_1_n_0\
    );
\R[4][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBFF2B00E80028"
    )
        port map (
      I0 => \R[4][6]_i_3_n_0\,
      I1 => p_2_in21_in,
      I2 => \IR_reg_n_0_[6]\,
      I3 => \R[4][7]_i_7_n_0\,
      I4 => \R_reg[4][7]_i_8_n_5\,
      I5 => \R_reg[4][7]_i_9_n_5\,
      O => \R[4][6]_i_2_n_0\
    );
\R[4][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000AACCAACC"
    )
        port map (
      I0 => \R_reg_n_0_[1][6]\,
      I1 => \R_reg_n_0_[0][6]\,
      I2 => \R_reg_n_0_[7][6]\,
      I3 => \IR_reg_n_0_[4]\,
      I4 => \R_reg_n_0_[6][6]\,
      I5 => \IR_reg_n_0_[6]\,
      O => \R[4][6]_i_3_n_0\
    );
\R[4][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \IR_reg_n_0_[4]\,
      I1 => p_2_in4_in,
      I2 => p_2_in21_in,
      I3 => \R[4][7]_i_3_n_0\,
      I4 => \IR_reg_n_0_[6]\,
      O => \R_reg[4]0\
    );
\R[4][7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \SREG_reg[0]_i_7_n_0\,
      I1 => \R[4][7]_i_6_n_0\,
      O => \R[4][7]_i_10_n_0\
    );
\R[4][7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \R[4][7]_i_21_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][7]_i_22_n_0\,
      I3 => \R[4][6]_i_3_n_0\,
      O => \R[4][7]_i_11_n_0\
    );
\R[4][7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \R[4][7]_i_23_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][7]_i_24_n_0\,
      I3 => \R[4][5]_i_3_n_0\,
      O => \R[4][7]_i_12_n_0\
    );
\R[4][7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \R[4][7]_i_25_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][7]_i_26_n_0\,
      I3 => \R[4][4]_i_3_n_0\,
      O => \R[4][7]_i_13_n_0\
    );
\R[4][7]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R[4][7]_i_21_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][7]_i_22_n_0\,
      O => \R[4][7]_i_14_n_0\
    );
\R[4][7]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R[4][7]_i_23_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][7]_i_24_n_0\,
      O => \R[4][7]_i_15_n_0\
    );
\R[4][7]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R[4][7]_i_25_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][7]_i_26_n_0\,
      O => \R[4][7]_i_16_n_0\
    );
\R[4][7]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SREG_reg[0]_i_7_n_0\,
      I1 => \R[4][7]_i_6_n_0\,
      O => \R[4][7]_i_17_n_0\
    );
\R[4][7]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \R[4][7]_i_21_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][7]_i_22_n_0\,
      I3 => \R[4][6]_i_3_n_0\,
      O => \R[4][7]_i_18_n_0\
    );
\R[4][7]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \R[4][7]_i_23_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][7]_i_24_n_0\,
      I3 => \R[4][5]_i_3_n_0\,
      O => \R[4][7]_i_19_n_0\
    );
\R[4][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => IOIN(7),
      I1 => \R[4][7]_i_4_n_0\,
      I2 => \R[4][7]_i_5_n_0\,
      O => \R[4][7]_i_2_n_0\
    );
\R[4][7]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \R[4][7]_i_25_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][7]_i_26_n_0\,
      I3 => \R[4][4]_i_3_n_0\,
      O => \R[4][7]_i_20_n_0\
    );
\R[4][7]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][6]\,
      I1 => \R_reg_n_0_[6][6]\,
      I2 => \IR_reg_n_0_[4]\,
      I3 => \R_reg_n_0_[5][6]\,
      I4 => p_2_in21_in,
      I5 => \R_reg_n_0_[4][6]\,
      O => \R[4][7]_i_21_n_0\
    );
\R[4][7]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \R_reg_n_0_[3][6]\,
      I1 => \IR_reg_n_0_[4]\,
      I2 => \R_reg_n_0_[1][6]\,
      I3 => p_2_in21_in,
      I4 => \R_reg_n_0_[0][6]\,
      O => \R[4][7]_i_22_n_0\
    );
\R[4][7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][5]\,
      I1 => \R_reg_n_0_[6][5]\,
      I2 => \IR_reg_n_0_[4]\,
      I3 => \R_reg_n_0_[5][5]\,
      I4 => p_2_in21_in,
      I5 => \R_reg_n_0_[4][5]\,
      O => \R[4][7]_i_23_n_0\
    );
\R[4][7]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \R_reg_n_0_[3][5]\,
      I1 => \IR_reg_n_0_[4]\,
      I2 => \R_reg_n_0_[1][5]\,
      I3 => p_2_in21_in,
      I4 => \R_reg_n_0_[0][5]\,
      O => \R[4][7]_i_24_n_0\
    );
\R[4][7]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][4]\,
      I1 => \R_reg_n_0_[6][4]\,
      I2 => \IR_reg_n_0_[4]\,
      I3 => \R_reg_n_0_[5][4]\,
      I4 => p_2_in21_in,
      I5 => \R_reg_n_0_[4][4]\,
      O => \R[4][7]_i_25_n_0\
    );
\R[4][7]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \R_reg_n_0_[3][4]\,
      I1 => \IR_reg_n_0_[4]\,
      I2 => \R_reg_n_0_[1][4]\,
      I3 => p_2_in21_in,
      I4 => \R_reg_n_0_[0][4]\,
      O => \R[4][7]_i_26_n_0\
    );
\R[4][7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => RESET,
      I1 => state_reg_n_0,
      I2 => p_3_in,
      I3 => p_5_in(0),
      O => \R[4][7]_i_3_n_0\
    );
\R[4][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002800E8FF2BFFEB"
    )
        port map (
      I0 => \R[4][7]_i_6_n_0\,
      I1 => p_2_in21_in,
      I2 => \IR_reg_n_0_[6]\,
      I3 => \R[4][7]_i_7_n_0\,
      I4 => p_0_in14_in,
      I5 => p_0_in11_in,
      O => \R[4][7]_i_4_n_0\
    );
\R[4][7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFFFFFF"
    )
        port map (
      I0 => \IR_reg_n_0_[4]\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => p_2_in21_in,
      I3 => p_2_in4_in,
      I4 => p_3_in,
      I5 => p_5_in(0),
      O => \R[4][7]_i_5_n_0\
    );
\R[4][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => \R_reg_n_0_[1][7]\,
      I1 => \R_reg_n_0_[0][7]\,
      I2 => \IR_reg_n_0_[6]\,
      I3 => \R_reg_n_0_[7][7]\,
      I4 => \IR_reg_n_0_[4]\,
      I5 => \R_reg_n_0_[6][7]\,
      O => \R[4][7]_i_6_n_0\
    );
\R[4][7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_3_in,
      I1 => p_2_in4_in,
      O => \R[4][7]_i_7_n_0\
    );
\R[5][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC4FCCCCCCCCCC"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => IOIN(0),
      I2 => \R[5][0]_i_2_n_0\,
      I3 => \R[5][7]_i_5_n_0\,
      I4 => p_3_in,
      I5 => p_5_in(0),
      O => \R[5][0]_i_1_n_0\
    );
\R[5][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFCFDFFF"
    )
        port map (
      I0 => \R_reg[4][3]_i_4_n_7\,
      I1 => \R[4][7]_i_7_n_0\,
      I2 => \IR_reg_n_0_[6]\,
      I3 => p_2_in21_in,
      I4 => \R[4][0]_i_3_n_0\,
      O => \R[5][0]_i_2_n_0\
    );
\R[5][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC4FCCCCCCCCCC"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => IOIN(1),
      I2 => \R[5][1]_i_2_n_0\,
      I3 => \R[5][7]_i_5_n_0\,
      I4 => p_3_in,
      I5 => p_5_in(0),
      O => \R[5][1]_i_1_n_0\
    );
\R[5][1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFCFDFFF"
    )
        port map (
      I0 => \R_reg[4][3]_i_4_n_6\,
      I1 => \R[4][7]_i_7_n_0\,
      I2 => \IR_reg_n_0_[6]\,
      I3 => p_2_in21_in,
      I4 => \R[4][1]_i_3_n_0\,
      O => \R[5][1]_i_2_n_0\
    );
\R[5][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00003000"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => \R[5][2]_i_2_n_0\,
      I2 => \R[5][7]_i_5_n_0\,
      I3 => p_5_in(0),
      I4 => p_3_in,
      I5 => IOIN(2),
      O => \R[5][2]_i_1_n_0\
    );
\R[5][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFCFDFFF"
    )
        port map (
      I0 => \R_reg[4][3]_i_4_n_5\,
      I1 => \R[4][7]_i_7_n_0\,
      I2 => \IR_reg_n_0_[6]\,
      I3 => p_2_in21_in,
      I4 => \R[4][2]_i_3_n_0\,
      O => \R[5][2]_i_2_n_0\
    );
\R[5][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC4FCCCCCCCCCC"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => IOIN(3),
      I2 => \R[5][3]_i_2_n_0\,
      I3 => \R[5][7]_i_5_n_0\,
      I4 => p_3_in,
      I5 => p_5_in(0),
      O => \R[5][3]_i_1_n_0\
    );
\R[5][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFCFDFFF"
    )
        port map (
      I0 => \R_reg[4][3]_i_4_n_4\,
      I1 => \R[4][7]_i_7_n_0\,
      I2 => \IR_reg_n_0_[6]\,
      I3 => p_2_in21_in,
      I4 => p_8_in76_in,
      O => \R[5][3]_i_2_n_0\
    );
\R[5][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC4FCCCCCCCCCC"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => IOIN(4),
      I2 => \R[5][4]_i_2_n_0\,
      I3 => \R[5][7]_i_5_n_0\,
      I4 => p_3_in,
      I5 => p_5_in(0),
      O => \R[5][4]_i_1_n_0\
    );
\R[5][4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFCFDFFF"
    )
        port map (
      I0 => \R_reg[4][7]_i_8_n_7\,
      I1 => \R[4][7]_i_7_n_0\,
      I2 => \IR_reg_n_0_[6]\,
      I3 => p_2_in21_in,
      I4 => \R[4][4]_i_3_n_0\,
      O => \R[5][4]_i_2_n_0\
    );
\R[5][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00003000"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => \R[5][5]_i_2_n_0\,
      I2 => \R[5][7]_i_5_n_0\,
      I3 => p_5_in(0),
      I4 => p_3_in,
      I5 => IOIN(5),
      O => \R[5][5]_i_1_n_0\
    );
\R[5][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFCFDFFF"
    )
        port map (
      I0 => \R_reg[4][7]_i_8_n_6\,
      I1 => \R[4][7]_i_7_n_0\,
      I2 => \IR_reg_n_0_[6]\,
      I3 => p_2_in21_in,
      I4 => \R[4][5]_i_3_n_0\,
      O => \R[5][5]_i_2_n_0\
    );
\R[5][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC4FCCCCCCCCCC"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => IOIN(6),
      I2 => \R[5][6]_i_2_n_0\,
      I3 => \R[5][7]_i_5_n_0\,
      I4 => p_3_in,
      I5 => p_5_in(0),
      O => \R[5][6]_i_1_n_0\
    );
\R[5][6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFCFDFFF"
    )
        port map (
      I0 => \R_reg[4][7]_i_8_n_5\,
      I1 => \R[4][7]_i_7_n_0\,
      I2 => \IR_reg_n_0_[6]\,
      I3 => p_2_in21_in,
      I4 => \R[4][6]_i_3_n_0\,
      O => \R[5][6]_i_2_n_0\
    );
\R[5][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \R[3][7]_i_3_n_0\,
      I1 => p_2_in21_in,
      I2 => \IR_reg_n_0_[6]\,
      I3 => \IR_reg_n_0_[4]\,
      O => \R_reg[5]0\
    );
\R[5][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00003000"
    )
        port map (
      I0 => \R[5][7]_i_3_n_0\,
      I1 => \R[5][7]_i_4_n_0\,
      I2 => \R[5][7]_i_5_n_0\,
      I3 => p_5_in(0),
      I4 => p_3_in,
      I5 => IOIN(7),
      O => \R[5][7]_i_2_n_0\
    );
\R[5][7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_2_in21_in,
      I1 => p_2_in4_in,
      I2 => p_3_in,
      O => \R[5][7]_i_3_n_0\
    );
\R[5][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF74FFFF"
    )
        port map (
      I0 => p_0_in14_in,
      I1 => p_2_in21_in,
      I2 => \R[4][7]_i_6_n_0\,
      I3 => \R[4][7]_i_7_n_0\,
      I4 => \IR_reg_n_0_[6]\,
      O => \R[5][7]_i_4_n_0\
    );
\R[5][7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \IR_reg_n_0_[4]\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => p_2_in21_in,
      O => \R[5][7]_i_5_n_0\
    );
\R[6][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][0]_i_2_n_0\,
      I1 => \R[6][7]_i_6_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(0),
      O => \R[6][0]_i_1_n_0\
    );
\R[6][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][1]_i_2_n_0\,
      I1 => \R[6][7]_i_6_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(1),
      O => \R[6][1]_i_1_n_0\
    );
\R[6][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][2]_i_2_n_0\,
      I1 => \R[6][7]_i_6_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(2),
      O => \R[6][2]_i_1_n_0\
    );
\R[6][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][3]_i_2_n_0\,
      I1 => \R[6][7]_i_6_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(3),
      O => \R[6][3]_i_1_n_0\
    );
\R[6][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][4]_i_2_n_0\,
      I1 => \R[6][7]_i_6_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(4),
      O => \R[6][4]_i_1_n_0\
    );
\R[6][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][5]_i_2_n_0\,
      I1 => \R[6][7]_i_6_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(5),
      O => \R[6][5]_i_1_n_0\
    );
\R[6][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][6]_i_2_n_0\,
      I1 => \R[6][7]_i_6_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(6),
      O => \R[6][6]_i_1_n_0\
    );
\R[6][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \R[6][7]_i_3_n_0\,
      I1 => p_2_in21_in,
      I2 => \R[6][7]_i_4_n_0\,
      I3 => RESET,
      I4 => state_reg_n_0,
      I5 => \R[6][7]_i_5_n_0\,
      O => \R_reg[6]0\
    );
\R[6][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][7]_i_4_n_0\,
      I1 => \R[6][7]_i_6_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(7),
      O => \R[6][7]_i_2_n_0\
    );
\R[6][7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \IR_reg_n_0_[4]\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => p_2_in21_in,
      O => \R[6][7]_i_3_n_0\
    );
\R[6][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \IR_reg_n_0_[6]\,
      I1 => p_2_in4_in,
      O => \R[6][7]_i_4_n_0\
    );
\R[6][7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_5_in(0),
      I1 => p_3_in,
      O => \R[6][7]_i_5_n_0\
    );
\R[6][7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \IR_reg_n_0_[4]\,
      I1 => p_2_in21_in,
      I2 => \IR_reg_n_0_[6]\,
      I3 => p_3_in,
      I4 => p_2_in4_in,
      O => \R[6][7]_i_6_n_0\
    );
\R[7][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][0]_i_2_n_0\,
      I1 => \R[5][7]_i_3_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(0),
      O => \R[7][0]_i_1_n_0\
    );
\R[7][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][1]_i_2_n_0\,
      I1 => \R[5][7]_i_3_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(1),
      O => \R[7][1]_i_1_n_0\
    );
\R[7][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][2]_i_2_n_0\,
      I1 => \R[5][7]_i_3_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(2),
      O => \R[7][2]_i_1_n_0\
    );
\R[7][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][3]_i_2_n_0\,
      I1 => \R[5][7]_i_3_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(3),
      O => \R[7][3]_i_1_n_0\
    );
\R[7][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][4]_i_2_n_0\,
      I1 => \R[5][7]_i_3_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(4),
      O => \R[7][4]_i_1_n_0\
    );
\R[7][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][5]_i_2_n_0\,
      I1 => \R[5][7]_i_3_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(5),
      O => \R[7][5]_i_1_n_0\
    );
\R[7][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][6]_i_2_n_0\,
      I1 => \R[5][7]_i_3_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(6),
      O => \R[7][6]_i_1_n_0\
    );
\R[7][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \R[7][7]_i_3_n_0\,
      I1 => RESET,
      I2 => state_reg_n_0,
      I3 => \R[6][7]_i_5_n_0\,
      I4 => p_2_in21_in,
      I5 => p_2_in4_in,
      O => \R_reg[7]0\
    );
\R[7][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0050"
    )
        port map (
      I0 => \R[5][7]_i_4_n_0\,
      I1 => \R[5][7]_i_3_n_0\,
      I2 => p_5_in(0),
      I3 => p_3_in,
      I4 => IOIN(7),
      O => \R[7][7]_i_2_n_0\
    );
\R[7][7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \IR_reg_n_0_[4]\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => p_2_in21_in,
      O => \R[7][7]_i_3_n_0\
    );
\R_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R[0][7]_i_1_n_0\,
      D => \R[0][0]_i_1_n_0\,
      Q => \R_reg_n_0_[0][0]\,
      R => '0'
    );
\R_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R[0][7]_i_1_n_0\,
      D => \R[0][1]_i_1_n_0\,
      Q => \R_reg_n_0_[0][1]\,
      R => '0'
    );
\R_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R[0][7]_i_1_n_0\,
      D => \R[0][2]_i_1_n_0\,
      Q => \R_reg_n_0_[0][2]\,
      R => '0'
    );
\R_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R[0][7]_i_1_n_0\,
      D => \R[0][3]_i_1_n_0\,
      Q => \R_reg_n_0_[0][3]\,
      R => '0'
    );
\R_reg[0][3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \R_reg[0][3]_i_2_n_0\,
      CO(2) => \R_reg[0][3]_i_2_n_1\,
      CO(1) => \R_reg[0][3]_i_2_n_2\,
      CO(0) => \R_reg[0][3]_i_2_n_3\,
      CYINIT => \R_reg_n_0_[0][0]\,
      DI(3) => p_2_in21_in,
      DI(2) => \IR_reg_n_0_[6]\,
      DI(1) => \IR_reg_n_0_[6]\,
      DI(0) => \SREG_reg_n_0_[0]\,
      O(3) => \R_reg[0][3]_i_2_n_4\,
      O(2) => \R_reg[0][3]_i_2_n_5\,
      O(1) => \R_reg[0][3]_i_2_n_6\,
      O(0) => \R_reg[0][3]_i_2_n_7\,
      S(3) => \R[0][3]_i_3_n_0\,
      S(2) => \R[0][3]_i_4_n_0\,
      S(1) => \R[0][3]_i_5_n_0\,
      S(0) => \R[0][3]_i_6_n_0\
    );
\R_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R[0][7]_i_1_n_0\,
      D => \R[0][4]_i_1_n_0\,
      Q => \R_reg_n_0_[0][4]\,
      R => '0'
    );
\R_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R[0][7]_i_1_n_0\,
      D => \R[0][5]_i_1_n_0\,
      Q => \R_reg_n_0_[0][5]\,
      R => '0'
    );
\R_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R[0][7]_i_1_n_0\,
      D => \R[0][6]_i_1_n_0\,
      Q => \R_reg_n_0_[0][6]\,
      R => '0'
    );
\R_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R[0][7]_i_1_n_0\,
      D => \R[0][7]_i_2_n_0\,
      Q => \R_reg_n_0_[0][7]\,
      R => '0'
    );
\R_reg[0][7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_reg[0][3]_i_2_n_0\,
      CO(3) => \NLW_R_reg[0][7]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \R_reg[0][7]_i_3_n_1\,
      CO(1) => \R_reg[0][7]_i_3_n_2\,
      CO(0) => \R_reg[0][7]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \IR_reg_n_0_[6]\,
      DI(1) => \IR_reg_n_0_[6]\,
      DI(0) => \IR_reg_n_0_[4]\,
      O(3) => p_0_in5_in,
      O(2) => \R_reg[0][7]_i_3_n_5\,
      O(1) => \R_reg[0][7]_i_3_n_6\,
      O(0) => \R_reg[0][7]_i_3_n_7\,
      S(3) => \R[0][7]_i_4_n_0\,
      S(2) => \R[0][7]_i_5_n_0\,
      S(1) => \R[0][7]_i_6_n_0\,
      S(0) => \R[0][7]_i_7_n_0\
    );
\R_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[1]0\,
      D => \R[1][0]_i_1_n_0\,
      Q => \R_reg_n_0_[1][0]\,
      R => '0'
    );
\R_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[1]0\,
      D => \R[1][1]_i_1_n_0\,
      Q => \R_reg_n_0_[1][1]\,
      R => '0'
    );
\R_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[1]0\,
      D => \R[1][2]_i_1_n_0\,
      Q => \R_reg_n_0_[1][2]\,
      R => '0'
    );
\R_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[1]0\,
      D => \R[1][3]_i_1_n_0\,
      Q => \R_reg_n_0_[1][3]\,
      R => '0'
    );
\R_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[1]0\,
      D => \R[1][4]_i_1_n_0\,
      Q => \R_reg_n_0_[1][4]\,
      R => '0'
    );
\R_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[1]0\,
      D => \R[1][5]_i_1_n_0\,
      Q => \R_reg_n_0_[1][5]\,
      R => '0'
    );
\R_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[1]0\,
      D => \R[1][6]_i_1_n_0\,
      Q => \R_reg_n_0_[1][6]\,
      R => '0'
    );
\R_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[1]0\,
      D => \R[1][7]_i_2_n_0\,
      Q => \R_reg_n_0_[1][7]\,
      R => '0'
    );
\R_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[3]0\,
      D => IOIN(0),
      Q => \R_reg_n_0_[3][0]\,
      R => \R[3][7]_i_1_n_0\
    );
\R_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[3]0\,
      D => IOIN(1),
      Q => \R_reg_n_0_[3][1]\,
      R => \R[3][7]_i_1_n_0\
    );
\R_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[3]0\,
      D => IOIN(2),
      Q => \R_reg_n_0_[3][2]\,
      R => \R[3][7]_i_1_n_0\
    );
\R_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[3]0\,
      D => IOIN(3),
      Q => \R_reg_n_0_[3][3]\,
      R => \R[3][7]_i_1_n_0\
    );
\R_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[3]0\,
      D => IOIN(4),
      Q => \R_reg_n_0_[3][4]\,
      R => \R[3][7]_i_1_n_0\
    );
\R_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[3]0\,
      D => IOIN(5),
      Q => \R_reg_n_0_[3][5]\,
      R => \R[3][7]_i_1_n_0\
    );
\R_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[3]0\,
      D => IOIN(6),
      Q => \R_reg_n_0_[3][6]\,
      R => \R[3][7]_i_1_n_0\
    );
\R_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[3]0\,
      D => IOIN(7),
      Q => \R_reg_n_0_[3][7]\,
      R => \R[3][7]_i_1_n_0\
    );
\R_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[4]0\,
      D => \R[4][0]_i_1_n_0\,
      Q => \R_reg_n_0_[4][0]\,
      R => '0'
    );
\R_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[4]0\,
      D => \R[4][1]_i_1_n_0\,
      Q => \R_reg_n_0_[4][1]\,
      R => '0'
    );
\R_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[4]0\,
      D => \R[4][2]_i_1_n_0\,
      Q => \R_reg_n_0_[4][2]\,
      R => '0'
    );
\R_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[4]0\,
      D => \R[4][3]_i_1_n_0\,
      Q => \R_reg_n_0_[4][3]\,
      R => '0'
    );
\R_reg[4][3]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \R_reg[4][3]_i_4_n_0\,
      CO(2) => \R_reg[4][3]_i_4_n_1\,
      CO(1) => \R_reg[4][3]_i_4_n_2\,
      CO(0) => \R_reg[4][3]_i_4_n_3\,
      CYINIT => \R[4][3]_i_6_n_0\,
      DI(3) => p_8_in76_in,
      DI(2) => \R[4][2]_i_3_n_0\,
      DI(1) => \R[4][1]_i_3_n_0\,
      DI(0) => \SREG_reg_n_0_[0]\,
      O(3) => \R_reg[4][3]_i_4_n_4\,
      O(2) => \R_reg[4][3]_i_4_n_5\,
      O(1) => \R_reg[4][3]_i_4_n_6\,
      O(0) => \R_reg[4][3]_i_4_n_7\,
      S(3) => \R[4][3]_i_7_n_0\,
      S(2) => \R[4][3]_i_8_n_0\,
      S(1) => \R[4][3]_i_9_n_0\,
      S(0) => \R[4][3]_i_10_n_0\
    );
\R_reg[4][3]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \R_reg[4][3]_i_5_n_0\,
      CO(2) => \R_reg[4][3]_i_5_n_1\,
      CO(1) => \R_reg[4][3]_i_5_n_2\,
      CO(0) => \R_reg[4][3]_i_5_n_3\,
      CYINIT => \R[4][3]_i_11_n_0\,
      DI(3) => \R[4][3]_i_12_n_0\,
      DI(2) => \R[4][3]_i_13_n_0\,
      DI(1) => \R[4][3]_i_14_n_0\,
      DI(0) => \R[4][3]_i_15_n_0\,
      O(3) => p_6_in99_in,
      O(2) => \R_reg[4][3]_i_5_n_5\,
      O(1) => \R_reg[4][3]_i_5_n_6\,
      O(0) => \R_reg[4][3]_i_5_n_7\,
      S(3) => \R[4][3]_i_16_n_0\,
      S(2) => \R[4][3]_i_17_n_0\,
      S(1) => \R[4][3]_i_18_n_0\,
      S(0) => \R[4][3]_i_19_n_0\
    );
\R_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[4]0\,
      D => \R[4][4]_i_1_n_0\,
      Q => \R_reg_n_0_[4][4]\,
      R => '0'
    );
\R_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[4]0\,
      D => \R[4][5]_i_1_n_0\,
      Q => \R_reg_n_0_[4][5]\,
      R => '0'
    );
\R_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[4]0\,
      D => \R[4][6]_i_1_n_0\,
      Q => \R_reg_n_0_[4][6]\,
      R => '0'
    );
\R_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[4]0\,
      D => \R[4][7]_i_2_n_0\,
      Q => \R_reg_n_0_[4][7]\,
      R => '0'
    );
\R_reg[4][7]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_reg[4][3]_i_4_n_0\,
      CO(3) => \NLW_R_reg[4][7]_i_8_CO_UNCONNECTED\(3),
      CO(2) => \R_reg[4][7]_i_8_n_1\,
      CO(1) => \R_reg[4][7]_i_8_n_2\,
      CO(0) => \R_reg[4][7]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \R[4][6]_i_3_n_0\,
      DI(1) => \R[4][5]_i_3_n_0\,
      DI(0) => \R[4][4]_i_3_n_0\,
      O(3) => p_0_in14_in,
      O(2) => \R_reg[4][7]_i_8_n_5\,
      O(1) => \R_reg[4][7]_i_8_n_6\,
      O(0) => \R_reg[4][7]_i_8_n_7\,
      S(3) => \R[4][7]_i_10_n_0\,
      S(2) => \R[4][7]_i_11_n_0\,
      S(1) => \R[4][7]_i_12_n_0\,
      S(0) => \R[4][7]_i_13_n_0\
    );
\R_reg[4][7]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \R_reg[4][3]_i_5_n_0\,
      CO(3) => \NLW_R_reg[4][7]_i_9_CO_UNCONNECTED\(3),
      CO(2) => \R_reg[4][7]_i_9_n_1\,
      CO(1) => \R_reg[4][7]_i_9_n_2\,
      CO(0) => \R_reg[4][7]_i_9_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \R[4][7]_i_14_n_0\,
      DI(1) => \R[4][7]_i_15_n_0\,
      DI(0) => \R[4][7]_i_16_n_0\,
      O(3) => p_0_in11_in,
      O(2) => \R_reg[4][7]_i_9_n_5\,
      O(1) => \R_reg[4][7]_i_9_n_6\,
      O(0) => \R_reg[4][7]_i_9_n_7\,
      S(3) => \R[4][7]_i_17_n_0\,
      S(2) => \R[4][7]_i_18_n_0\,
      S(1) => \R[4][7]_i_19_n_0\,
      S(0) => \R[4][7]_i_20_n_0\
    );
\R_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[5]0\,
      D => \R[5][0]_i_1_n_0\,
      Q => \R_reg_n_0_[5][0]\,
      R => '0'
    );
\R_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[5]0\,
      D => \R[5][1]_i_1_n_0\,
      Q => \R_reg_n_0_[5][1]\,
      R => '0'
    );
\R_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[5]0\,
      D => \R[5][2]_i_1_n_0\,
      Q => \R_reg_n_0_[5][2]\,
      R => '0'
    );
\R_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[5]0\,
      D => \R[5][3]_i_1_n_0\,
      Q => \R_reg_n_0_[5][3]\,
      R => '0'
    );
\R_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[5]0\,
      D => \R[5][4]_i_1_n_0\,
      Q => \R_reg_n_0_[5][4]\,
      R => '0'
    );
\R_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[5]0\,
      D => \R[5][5]_i_1_n_0\,
      Q => \R_reg_n_0_[5][5]\,
      R => '0'
    );
\R_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[5]0\,
      D => \R[5][6]_i_1_n_0\,
      Q => \R_reg_n_0_[5][6]\,
      R => '0'
    );
\R_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[5]0\,
      D => \R[5][7]_i_2_n_0\,
      Q => \R_reg_n_0_[5][7]\,
      R => '0'
    );
\R_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[6]0\,
      D => \R[6][0]_i_1_n_0\,
      Q => \R_reg_n_0_[6][0]\,
      R => '0'
    );
\R_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[6]0\,
      D => \R[6][1]_i_1_n_0\,
      Q => \R_reg_n_0_[6][1]\,
      R => '0'
    );
\R_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[6]0\,
      D => \R[6][2]_i_1_n_0\,
      Q => \R_reg_n_0_[6][2]\,
      R => '0'
    );
\R_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[6]0\,
      D => \R[6][3]_i_1_n_0\,
      Q => \R_reg_n_0_[6][3]\,
      R => '0'
    );
\R_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[6]0\,
      D => \R[6][4]_i_1_n_0\,
      Q => \R_reg_n_0_[6][4]\,
      R => '0'
    );
\R_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[6]0\,
      D => \R[6][5]_i_1_n_0\,
      Q => \R_reg_n_0_[6][5]\,
      R => '0'
    );
\R_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[6]0\,
      D => \R[6][6]_i_1_n_0\,
      Q => \R_reg_n_0_[6][6]\,
      R => '0'
    );
\R_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[6]0\,
      D => \R[6][7]_i_2_n_0\,
      Q => \R_reg_n_0_[6][7]\,
      R => '0'
    );
\R_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[7]0\,
      D => \R[7][0]_i_1_n_0\,
      Q => \R_reg_n_0_[7][0]\,
      R => '0'
    );
\R_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[7]0\,
      D => \R[7][1]_i_1_n_0\,
      Q => \R_reg_n_0_[7][1]\,
      R => '0'
    );
\R_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[7]0\,
      D => \R[7][2]_i_1_n_0\,
      Q => \R_reg_n_0_[7][2]\,
      R => '0'
    );
\R_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[7]0\,
      D => \R[7][3]_i_1_n_0\,
      Q => \R_reg_n_0_[7][3]\,
      R => '0'
    );
\R_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[7]0\,
      D => \R[7][4]_i_1_n_0\,
      Q => \R_reg_n_0_[7][4]\,
      R => '0'
    );
\R_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[7]0\,
      D => \R[7][5]_i_1_n_0\,
      Q => \R_reg_n_0_[7][5]\,
      R => '0'
    );
\R_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[7]0\,
      D => \R[7][6]_i_1_n_0\,
      Q => \R_reg_n_0_[7][6]\,
      R => '0'
    );
\R_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \R_reg[7]0\,
      D => \R[7][7]_i_2_n_0\,
      Q => \R_reg_n_0_[7][7]\,
      R => '0'
    );
\SREG[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFE00"
    )
        port map (
      I0 => \SREG[0]_i_2_n_0\,
      I1 => \SREG[0]_i_3_n_0\,
      I2 => \SREG[0]_i_4_n_0\,
      I3 => \SREG[0]_i_5_n_0\,
      I4 => \SREG_reg_n_0_[0]\,
      O => \SREG[0]_i_1_n_0\
    );
\SREG[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_3_in,
      I1 => p_5_in(0),
      O => \SREG[0]_i_10_n_0\
    );
\SREG[0]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R[4][7]_i_21_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][7]_i_22_n_0\,
      O => \SREG[0]_i_12_n_0\
    );
\SREG[0]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R[4][7]_i_23_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][7]_i_24_n_0\,
      O => \SREG[0]_i_13_n_0\
    );
\SREG[0]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R[4][7]_i_25_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][7]_i_26_n_0\,
      O => \SREG[0]_i_14_n_0\
    );
\SREG[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SREG_reg[0]_i_7_n_0\,
      I1 => \R[4][7]_i_6_n_0\,
      O => \SREG[0]_i_15_n_0\
    );
\SREG[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \R[4][7]_i_21_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][7]_i_22_n_0\,
      I3 => \R[4][6]_i_3_n_0\,
      O => \SREG[0]_i_16_n_0\
    );
\SREG[0]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \R[4][7]_i_23_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][7]_i_24_n_0\,
      I3 => \R[4][5]_i_3_n_0\,
      O => \SREG[0]_i_17_n_0\
    );
\SREG[0]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \R[4][7]_i_25_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][7]_i_26_n_0\,
      I3 => \R[4][4]_i_3_n_0\,
      O => \SREG[0]_i_18_n_0\
    );
\SREG[0]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \R_reg_n_0_[3][7]\,
      I1 => \IR_reg_n_0_[4]\,
      I2 => \R_reg_n_0_[1][7]\,
      I3 => p_2_in21_in,
      I4 => \R_reg_n_0_[0][7]\,
      O => \SREG[0]_i_19_n_0\
    );
\SREG[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0088AA0AA088A"
    )
        port map (
      I0 => \R[6][7]_i_5_n_0\,
      I1 => p_0_in8_in,
      I2 => \SREG_reg[0]_i_7_n_0\,
      I3 => \R[4][7]_i_6_n_0\,
      I4 => \IR_reg_n_0_[6]\,
      I5 => p_0_in14_in,
      O => \SREG[0]_i_2_n_0\
    );
\SREG[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \R_reg_n_0_[7][7]\,
      I1 => \R_reg_n_0_[6][7]\,
      I2 => \IR_reg_n_0_[4]\,
      I3 => \R_reg_n_0_[5][7]\,
      I4 => p_2_in21_in,
      I5 => \R_reg_n_0_[4][7]\,
      O => \SREG[0]_i_20_n_0\
    );
\SREG[0]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_2_in21_in,
      I1 => \R_reg_n_0_[0][7]\,
      O => \SREG[0]_i_22_n_0\
    );
\SREG[0]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \R_reg_n_0_[0][6]\,
      I1 => \IR_reg_n_0_[6]\,
      O => \SREG[0]_i_23_n_0\
    );
\SREG[0]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \R_reg_n_0_[0][5]\,
      I1 => \IR_reg_n_0_[6]\,
      O => \SREG[0]_i_24_n_0\
    );
\SREG[0]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \R_reg_n_0_[0][4]\,
      I1 => \IR_reg_n_0_[4]\,
      O => \SREG[0]_i_25_n_0\
    );
\SREG[0]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R[4][3]_i_22_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_23_n_0\,
      O => \SREG[0]_i_26_n_0\
    );
\SREG[0]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R[4][3]_i_24_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_25_n_0\,
      O => \SREG[0]_i_27_n_0\
    );
\SREG[0]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R[4][3]_i_26_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_27_n_0\,
      O => \SREG[0]_i_28_n_0\
    );
\SREG[0]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \R[4][3]_i_20_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_21_n_0\,
      O => \SREG[0]_i_29_n_0\
    );
\SREG[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2000000"
    )
        port map (
      I0 => \SREG_reg[0]_i_8_n_4\,
      I1 => \R_reg_n_0_[0][7]\,
      I2 => p_2_in21_in,
      I3 => p_3_in,
      I4 => p_5_in(0),
      O => \SREG[0]_i_3_n_0\
    );
\SREG[0]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \R[4][3]_i_22_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_23_n_0\,
      I3 => p_8_in76_in,
      O => \SREG[0]_i_30_n_0\
    );
\SREG[0]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \R[4][3]_i_24_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_25_n_0\,
      I3 => \R[4][2]_i_3_n_0\,
      O => \SREG[0]_i_31_n_0\
    );
\SREG[0]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \R[4][3]_i_26_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_27_n_0\,
      I3 => \R[4][1]_i_3_n_0\,
      O => \SREG[0]_i_32_n_0\
    );
\SREG[0]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => \R[4][3]_i_20_n_0\,
      I1 => \IR_reg_n_0_[6]\,
      I2 => \R[4][3]_i_21_n_0\,
      I3 => \R[4][0]_i_3_n_0\,
      O => \SREG[0]_i_33_n_0\
    );
\SREG[0]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \R_reg_n_0_[0][3]\,
      I1 => p_2_in21_in,
      O => \SREG[0]_i_34_n_0\
    );
\SREG[0]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \R_reg_n_0_[0][2]\,
      I1 => \IR_reg_n_0_[6]\,
      O => \SREG[0]_i_35_n_0\
    );
\SREG[0]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \R_reg_n_0_[0][1]\,
      I1 => \IR_reg_n_0_[6]\,
      O => \SREG[0]_i_36_n_0\
    );
\SREG[0]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \R_reg_n_0_[0][0]\,
      I1 => \IR_reg_n_0_[4]\,
      O => \SREG[0]_i_37_n_0\
    );
\SREG[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAABABABAAA"
    )
        port map (
      I0 => \SREG[0]_i_9_n_0\,
      I1 => p_5_in(0),
      I2 => p_3_in,
      I3 => \R_reg_n_0_[0][7]\,
      I4 => p_2_in21_in,
      I5 => p_0_in5_in,
      O => \SREG[0]_i_4_n_0\
    );
\SREG[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8888888888888"
    )
        port map (
      I0 => \IR_reg_n_0_[6]\,
      I1 => \R[3][7]_i_3_n_0\,
      I2 => p_2_in4_in,
      I3 => RESET,
      I4 => state_reg_n_0,
      I5 => \SREG[0]_i_10_n_0\,
      O => \SREG[0]_i_5_n_0\
    );
\SREG[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => p_5_in(0),
      I1 => p_3_in,
      I2 => \SREG_reg_n_0_[0]\,
      I3 => \IR_reg_n_0_[4]\,
      O => \SREG[0]_i_9_n_0\
    );
\SREG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \SREG[0]_i_1_n_0\,
      Q => \SREG_reg_n_0_[0]\,
      R => '0'
    );
\SREG_reg[0]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \SREG_reg[0]_i_11_n_0\,
      CO(2) => \SREG_reg[0]_i_11_n_1\,
      CO(1) => \SREG_reg[0]_i_11_n_2\,
      CO(0) => \SREG_reg[0]_i_11_n_3\,
      CYINIT => '1',
      DI(3) => \SREG[0]_i_26_n_0\,
      DI(2) => \SREG[0]_i_27_n_0\,
      DI(1) => \SREG[0]_i_28_n_0\,
      DI(0) => \SREG[0]_i_29_n_0\,
      O(3 downto 0) => \NLW_SREG_reg[0]_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \SREG[0]_i_30_n_0\,
      S(2) => \SREG[0]_i_31_n_0\,
      S(1) => \SREG[0]_i_32_n_0\,
      S(0) => \SREG[0]_i_33_n_0\
    );
\SREG_reg[0]_i_21\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \SREG_reg[0]_i_21_n_0\,
      CO(2) => \SREG_reg[0]_i_21_n_1\,
      CO(1) => \SREG_reg[0]_i_21_n_2\,
      CO(0) => \SREG_reg[0]_i_21_n_3\,
      CYINIT => '1',
      DI(3) => \R_reg_n_0_[0][3]\,
      DI(2) => \R_reg_n_0_[0][2]\,
      DI(1) => \R_reg_n_0_[0][1]\,
      DI(0) => \R_reg_n_0_[0][0]\,
      O(3 downto 0) => \NLW_SREG_reg[0]_i_21_O_UNCONNECTED\(3 downto 0),
      S(3) => \SREG[0]_i_34_n_0\,
      S(2) => \SREG[0]_i_35_n_0\,
      S(1) => \SREG[0]_i_36_n_0\,
      S(0) => \SREG[0]_i_37_n_0\
    );
\SREG_reg[0]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \SREG_reg[0]_i_11_n_0\,
      CO(3) => \NLW_SREG_reg[0]_i_6_CO_UNCONNECTED\(3),
      CO(2) => \SREG_reg[0]_i_6_n_1\,
      CO(1) => \SREG_reg[0]_i_6_n_2\,
      CO(0) => \SREG_reg[0]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \SREG[0]_i_12_n_0\,
      DI(1) => \SREG[0]_i_13_n_0\,
      DI(0) => \SREG[0]_i_14_n_0\,
      O(3) => p_0_in8_in,
      O(2 downto 0) => \NLW_SREG_reg[0]_i_6_O_UNCONNECTED\(2 downto 0),
      S(3) => \SREG[0]_i_15_n_0\,
      S(2) => \SREG[0]_i_16_n_0\,
      S(1) => \SREG[0]_i_17_n_0\,
      S(0) => \SREG[0]_i_18_n_0\
    );
\SREG_reg[0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SREG[0]_i_19_n_0\,
      I1 => \SREG[0]_i_20_n_0\,
      O => \SREG_reg[0]_i_7_n_0\,
      S => \IR_reg_n_0_[6]\
    );
\SREG_reg[0]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \SREG_reg[0]_i_21_n_0\,
      CO(3) => \NLW_SREG_reg[0]_i_8_CO_UNCONNECTED\(3),
      CO(2) => \SREG_reg[0]_i_8_n_1\,
      CO(1) => \SREG_reg[0]_i_8_n_2\,
      CO(0) => \SREG_reg[0]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \R_reg_n_0_[0][6]\,
      DI(1) => \R_reg_n_0_[0][5]\,
      DI(0) => \R_reg_n_0_[0][4]\,
      O(3) => \SREG_reg[0]_i_8_n_4\,
      O(2 downto 0) => \NLW_SREG_reg[0]_i_8_O_UNCONNECTED\(2 downto 0),
      S(3) => \SREG[0]_i_22_n_0\,
      S(2) => \SREG[0]_i_23_n_0\,
      S(1) => \SREG[0]_i_24_n_0\,
      S(0) => \SREG[0]_i_25_n_0\
    );
state_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg_n_0,
      O => state
    );
state_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => RESET,
      D => state,
      Q => state_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_seq_order_0_1 is
  port (
    Z : in STD_LOGIC;
    INT : in STD_LOGIC;
    IOIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    IOADR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IOOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IOWR : out STD_LOGIC;
    IORD : out STD_LOGIC;
    GPIO : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_seq_order_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_seq_order_0_1 : entity is "design_1_seq_order_0_1,seq_order,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_seq_order_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_seq_order_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_seq_order_0_1 : entity is "seq_order,Vivado 2020.2";
end design_1_seq_order_0_1;

architecture STRUCTURE of design_1_seq_order_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \^gpio\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \^ioadr\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of RESET : signal is "xilinx.com:signal:reset:1.0 RESET RST";
  attribute x_interface_parameter of RESET : signal is "XIL_INTERFACENAME RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  GPIO(7 downto 6) <= \^gpio\(7 downto 6);
  GPIO(5) <= \^gpio\(6);
  GPIO(4) <= \^gpio\(4);
  GPIO(3 downto 2) <= \^gpio\(7 downto 6);
  GPIO(1) <= \^gpio\(6);
  GPIO(0) <= \^gpio\(4);
  IOADR(7 downto 6) <= \^ioadr\(7 downto 6);
  IOADR(5) <= \^ioadr\(6);
  IOADR(4) <= \^ioadr\(4);
  IOADR(3 downto 2) <= \^ioadr\(7 downto 6);
  IOADR(1) <= \^ioadr\(6);
  IOADR(0) <= \^ioadr\(4);
  IORD <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_seq_order_0_1_seq_order
     port map (
      CLK => CLK,
      GPIO(2 downto 1) => \^gpio\(7 downto 6),
      GPIO(0) => \^gpio\(4),
      IOADR(2 downto 1) => \^ioadr\(7 downto 6),
      IOADR(0) => \^ioadr\(4),
      IOIN(7 downto 0) => IOIN(7 downto 0),
      IOOUT(7 downto 0) => IOOUT(7 downto 0),
      IOWR => IOWR,
      RESET => RESET
    );
end STRUCTURE;
