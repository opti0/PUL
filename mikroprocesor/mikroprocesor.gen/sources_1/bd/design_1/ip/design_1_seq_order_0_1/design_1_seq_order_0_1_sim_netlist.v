// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jan 22 11:52:32 2024
// Host        : Maciek-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Maciek/Desktop/PUL/mikroprocesor/mikroprocesor.gen/sources_1/bd/design_1/ip/design_1_seq_order_0_1/design_1_seq_order_0_1_sim_netlist.v
// Design      : design_1_seq_order_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_seq_order_0_1,seq_order,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "seq_order,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_seq_order_0_1
   (Z,
    INT,
    IOIN,
    CLK,
    RESET,
    IOADR,
    IOOUT,
    IOWR,
    IORD,
    GPIO);
  input Z;
  input INT;
  input [7:0]IOIN;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RESET RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input RESET;
  output [7:0]IOADR;
  output [7:0]IOOUT;
  output IOWR;
  output IORD;
  output [7:0]GPIO;

  wire \<const0> ;
  wire CLK;
  wire [7:4]\^GPIO ;
  wire [7:4]\^IOADR ;
  wire [7:0]IOIN;
  wire [7:0]IOOUT;
  wire IOWR;
  wire RESET;

  assign GPIO[7:6] = \^GPIO [7:6];
  assign GPIO[5] = \^GPIO [6];
  assign GPIO[4] = \^GPIO [4];
  assign GPIO[3:2] = \^GPIO [7:6];
  assign GPIO[1] = \^GPIO [6];
  assign GPIO[0] = \^GPIO [4];
  assign IOADR[7:6] = \^IOADR [7:6];
  assign IOADR[5] = \^IOADR [6];
  assign IOADR[4] = \^IOADR [4];
  assign IOADR[3:2] = \^IOADR [7:6];
  assign IOADR[1] = \^IOADR [6];
  assign IOADR[0] = \^IOADR [4];
  assign IORD = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_seq_order_0_1_seq_order U0
       (.CLK(CLK),
        .GPIO({\^GPIO [7:6],\^GPIO [4]}),
        .IOADR({\^IOADR [7:6],\^IOADR [4]}),
        .IOIN(IOIN),
        .IOOUT(IOOUT),
        .IOWR(IOWR),
        .RESET(RESET));
endmodule

(* ORIG_REF_NAME = "seq_order" *) 
module design_1_seq_order_0_1_seq_order
   (IOADR,
    IOOUT,
    GPIO,
    IOWR,
    CLK,
    RESET,
    IOIN);
  output [2:0]IOADR;
  output [7:0]IOOUT;
  output [2:0]GPIO;
  output IOWR;
  input CLK;
  input RESET;
  input [7:0]IOIN;

  wire CLK;
  wire [2:0]GPIO;
  wire \GPIO[4]_i_1_n_0 ;
  wire \GPIO[6]_i_1_n_0 ;
  wire \GPIO[7]_i_1_n_0 ;
  wire \GPIO[7]_i_2_n_0 ;
  wire [2:0]IOADR;
  wire \IOADR[7]_i_1_n_0 ;
  wire [7:0]IOIN;
  wire [7:0]IOOUT;
  wire IOWR;
  wire IOWR_i_1_n_0;
  wire IR0;
  wire \IR_reg_n_0_[4] ;
  wire \IR_reg_n_0_[6] ;
  wire \PC[0]_i_1_n_0 ;
  wire \PC[0]_i_2_n_0 ;
  wire \PC[0]_i_3_n_0 ;
  wire \PC[0]_i_4_n_0 ;
  wire \PC[1]_i_1_n_0 ;
  wire \PC[1]_i_2_n_0 ;
  wire \PC[1]_i_4_n_0 ;
  wire \PC[1]_i_5_n_0 ;
  wire \PC[1]_i_6_n_0 ;
  wire \PC[1]_i_7_n_0 ;
  wire \PC[1]_i_8_n_0 ;
  wire \PC[2]_i_1_n_0 ;
  wire \PC[2]_i_2_n_0 ;
  wire \PC[2]_i_3_n_0 ;
  wire \PC[3]_i_1_n_0 ;
  wire \PC[3]_i_2_n_0 ;
  wire \PC[3]_i_3_n_0 ;
  wire \PC[4]_i_1_n_0 ;
  wire \PC[4]_i_2_n_0 ;
  wire \PC[4]_i_3_n_0 ;
  wire \PC[4]_i_4_n_0 ;
  wire \PC[4]_i_6_n_0 ;
  wire \PC[4]_i_7_n_0 ;
  wire \PC_reg[1]_i_3_n_0 ;
  wire \PC_reg[1]_i_3_n_1 ;
  wire \PC_reg[1]_i_3_n_2 ;
  wire \PC_reg[1]_i_3_n_3 ;
  wire \PC_reg[1]_i_3_n_4 ;
  wire \PC_reg[1]_i_3_n_5 ;
  wire \PC_reg[1]_i_3_n_6 ;
  wire \PC_reg[1]_i_3_n_7 ;
  wire \PC_reg[4]_i_5_n_7 ;
  wire \PC_reg_n_0_[0] ;
  wire \PC_reg_n_0_[1] ;
  wire \PC_reg_n_0_[2] ;
  wire \PC_reg_n_0_[3] ;
  wire \PC_reg_n_0_[4] ;
  wire RESET;
  wire [14:4]\ROM[0]_0 ;
  wire \R[0][0]_i_1_n_0 ;
  wire \R[0][1]_i_1_n_0 ;
  wire \R[0][2]_i_1_n_0 ;
  wire \R[0][3]_i_1_n_0 ;
  wire \R[0][3]_i_3_n_0 ;
  wire \R[0][3]_i_4_n_0 ;
  wire \R[0][3]_i_5_n_0 ;
  wire \R[0][3]_i_6_n_0 ;
  wire \R[0][4]_i_1_n_0 ;
  wire \R[0][5]_i_1_n_0 ;
  wire \R[0][6]_i_1_n_0 ;
  wire \R[0][7]_i_1_n_0 ;
  wire \R[0][7]_i_2_n_0 ;
  wire \R[0][7]_i_4_n_0 ;
  wire \R[0][7]_i_5_n_0 ;
  wire \R[0][7]_i_6_n_0 ;
  wire \R[0][7]_i_7_n_0 ;
  wire \R[1][0]_i_1_n_0 ;
  wire \R[1][1]_i_1_n_0 ;
  wire \R[1][2]_i_1_n_0 ;
  wire \R[1][3]_i_1_n_0 ;
  wire \R[1][4]_i_1_n_0 ;
  wire \R[1][5]_i_1_n_0 ;
  wire \R[1][6]_i_1_n_0 ;
  wire \R[1][7]_i_2_n_0 ;
  wire \R[3][7]_i_1_n_0 ;
  wire \R[3][7]_i_3_n_0 ;
  wire \R[3][7]_i_4_n_0 ;
  wire \R[4][0]_i_1_n_0 ;
  wire \R[4][0]_i_2_n_0 ;
  wire \R[4][0]_i_3_n_0 ;
  wire \R[4][1]_i_1_n_0 ;
  wire \R[4][1]_i_2_n_0 ;
  wire \R[4][1]_i_3_n_0 ;
  wire \R[4][2]_i_1_n_0 ;
  wire \R[4][2]_i_2_n_0 ;
  wire \R[4][2]_i_3_n_0 ;
  wire \R[4][3]_i_10_n_0 ;
  wire \R[4][3]_i_11_n_0 ;
  wire \R[4][3]_i_12_n_0 ;
  wire \R[4][3]_i_13_n_0 ;
  wire \R[4][3]_i_14_n_0 ;
  wire \R[4][3]_i_15_n_0 ;
  wire \R[4][3]_i_16_n_0 ;
  wire \R[4][3]_i_17_n_0 ;
  wire \R[4][3]_i_18_n_0 ;
  wire \R[4][3]_i_19_n_0 ;
  wire \R[4][3]_i_1_n_0 ;
  wire \R[4][3]_i_20_n_0 ;
  wire \R[4][3]_i_21_n_0 ;
  wire \R[4][3]_i_22_n_0 ;
  wire \R[4][3]_i_23_n_0 ;
  wire \R[4][3]_i_24_n_0 ;
  wire \R[4][3]_i_25_n_0 ;
  wire \R[4][3]_i_26_n_0 ;
  wire \R[4][3]_i_27_n_0 ;
  wire \R[4][3]_i_2_n_0 ;
  wire \R[4][3]_i_6_n_0 ;
  wire \R[4][3]_i_7_n_0 ;
  wire \R[4][3]_i_8_n_0 ;
  wire \R[4][3]_i_9_n_0 ;
  wire \R[4][4]_i_1_n_0 ;
  wire \R[4][4]_i_2_n_0 ;
  wire \R[4][4]_i_3_n_0 ;
  wire \R[4][5]_i_1_n_0 ;
  wire \R[4][5]_i_2_n_0 ;
  wire \R[4][5]_i_3_n_0 ;
  wire \R[4][6]_i_1_n_0 ;
  wire \R[4][6]_i_2_n_0 ;
  wire \R[4][6]_i_3_n_0 ;
  wire \R[4][7]_i_10_n_0 ;
  wire \R[4][7]_i_11_n_0 ;
  wire \R[4][7]_i_12_n_0 ;
  wire \R[4][7]_i_13_n_0 ;
  wire \R[4][7]_i_14_n_0 ;
  wire \R[4][7]_i_15_n_0 ;
  wire \R[4][7]_i_16_n_0 ;
  wire \R[4][7]_i_17_n_0 ;
  wire \R[4][7]_i_18_n_0 ;
  wire \R[4][7]_i_19_n_0 ;
  wire \R[4][7]_i_20_n_0 ;
  wire \R[4][7]_i_21_n_0 ;
  wire \R[4][7]_i_22_n_0 ;
  wire \R[4][7]_i_23_n_0 ;
  wire \R[4][7]_i_24_n_0 ;
  wire \R[4][7]_i_25_n_0 ;
  wire \R[4][7]_i_26_n_0 ;
  wire \R[4][7]_i_2_n_0 ;
  wire \R[4][7]_i_3_n_0 ;
  wire \R[4][7]_i_4_n_0 ;
  wire \R[4][7]_i_5_n_0 ;
  wire \R[4][7]_i_6_n_0 ;
  wire \R[4][7]_i_7_n_0 ;
  wire \R[5][0]_i_1_n_0 ;
  wire \R[5][0]_i_2_n_0 ;
  wire \R[5][1]_i_1_n_0 ;
  wire \R[5][1]_i_2_n_0 ;
  wire \R[5][2]_i_1_n_0 ;
  wire \R[5][2]_i_2_n_0 ;
  wire \R[5][3]_i_1_n_0 ;
  wire \R[5][3]_i_2_n_0 ;
  wire \R[5][4]_i_1_n_0 ;
  wire \R[5][4]_i_2_n_0 ;
  wire \R[5][5]_i_1_n_0 ;
  wire \R[5][5]_i_2_n_0 ;
  wire \R[5][6]_i_1_n_0 ;
  wire \R[5][6]_i_2_n_0 ;
  wire \R[5][7]_i_2_n_0 ;
  wire \R[5][7]_i_3_n_0 ;
  wire \R[5][7]_i_4_n_0 ;
  wire \R[5][7]_i_5_n_0 ;
  wire \R[6][0]_i_1_n_0 ;
  wire \R[6][1]_i_1_n_0 ;
  wire \R[6][2]_i_1_n_0 ;
  wire \R[6][3]_i_1_n_0 ;
  wire \R[6][4]_i_1_n_0 ;
  wire \R[6][5]_i_1_n_0 ;
  wire \R[6][6]_i_1_n_0 ;
  wire \R[6][7]_i_2_n_0 ;
  wire \R[6][7]_i_3_n_0 ;
  wire \R[6][7]_i_4_n_0 ;
  wire \R[6][7]_i_5_n_0 ;
  wire \R[6][7]_i_6_n_0 ;
  wire \R[7][0]_i_1_n_0 ;
  wire \R[7][1]_i_1_n_0 ;
  wire \R[7][2]_i_1_n_0 ;
  wire \R[7][3]_i_1_n_0 ;
  wire \R[7][4]_i_1_n_0 ;
  wire \R[7][5]_i_1_n_0 ;
  wire \R[7][6]_i_1_n_0 ;
  wire \R[7][7]_i_2_n_0 ;
  wire \R[7][7]_i_3_n_0 ;
  wire \R_reg[0][3]_i_2_n_0 ;
  wire \R_reg[0][3]_i_2_n_1 ;
  wire \R_reg[0][3]_i_2_n_2 ;
  wire \R_reg[0][3]_i_2_n_3 ;
  wire \R_reg[0][3]_i_2_n_4 ;
  wire \R_reg[0][3]_i_2_n_5 ;
  wire \R_reg[0][3]_i_2_n_6 ;
  wire \R_reg[0][3]_i_2_n_7 ;
  wire \R_reg[0][7]_i_3_n_1 ;
  wire \R_reg[0][7]_i_3_n_2 ;
  wire \R_reg[0][7]_i_3_n_3 ;
  wire \R_reg[0][7]_i_3_n_5 ;
  wire \R_reg[0][7]_i_3_n_6 ;
  wire \R_reg[0][7]_i_3_n_7 ;
  wire \R_reg[1]0 ;
  wire \R_reg[3]0 ;
  wire \R_reg[4]0 ;
  wire \R_reg[4][3]_i_4_n_0 ;
  wire \R_reg[4][3]_i_4_n_1 ;
  wire \R_reg[4][3]_i_4_n_2 ;
  wire \R_reg[4][3]_i_4_n_3 ;
  wire \R_reg[4][3]_i_4_n_4 ;
  wire \R_reg[4][3]_i_4_n_5 ;
  wire \R_reg[4][3]_i_4_n_6 ;
  wire \R_reg[4][3]_i_4_n_7 ;
  wire \R_reg[4][3]_i_5_n_0 ;
  wire \R_reg[4][3]_i_5_n_1 ;
  wire \R_reg[4][3]_i_5_n_2 ;
  wire \R_reg[4][3]_i_5_n_3 ;
  wire \R_reg[4][3]_i_5_n_5 ;
  wire \R_reg[4][3]_i_5_n_6 ;
  wire \R_reg[4][3]_i_5_n_7 ;
  wire \R_reg[4][7]_i_8_n_1 ;
  wire \R_reg[4][7]_i_8_n_2 ;
  wire \R_reg[4][7]_i_8_n_3 ;
  wire \R_reg[4][7]_i_8_n_5 ;
  wire \R_reg[4][7]_i_8_n_6 ;
  wire \R_reg[4][7]_i_8_n_7 ;
  wire \R_reg[4][7]_i_9_n_1 ;
  wire \R_reg[4][7]_i_9_n_2 ;
  wire \R_reg[4][7]_i_9_n_3 ;
  wire \R_reg[4][7]_i_9_n_5 ;
  wire \R_reg[4][7]_i_9_n_6 ;
  wire \R_reg[4][7]_i_9_n_7 ;
  wire \R_reg[5]0 ;
  wire \R_reg[6]0 ;
  wire \R_reg[7]0 ;
  wire \R_reg_n_0_[0][0] ;
  wire \R_reg_n_0_[0][1] ;
  wire \R_reg_n_0_[0][2] ;
  wire \R_reg_n_0_[0][3] ;
  wire \R_reg_n_0_[0][4] ;
  wire \R_reg_n_0_[0][5] ;
  wire \R_reg_n_0_[0][6] ;
  wire \R_reg_n_0_[0][7] ;
  wire \R_reg_n_0_[1][0] ;
  wire \R_reg_n_0_[1][1] ;
  wire \R_reg_n_0_[1][2] ;
  wire \R_reg_n_0_[1][3] ;
  wire \R_reg_n_0_[1][4] ;
  wire \R_reg_n_0_[1][5] ;
  wire \R_reg_n_0_[1][6] ;
  wire \R_reg_n_0_[1][7] ;
  wire \R_reg_n_0_[3][0] ;
  wire \R_reg_n_0_[3][1] ;
  wire \R_reg_n_0_[3][2] ;
  wire \R_reg_n_0_[3][3] ;
  wire \R_reg_n_0_[3][4] ;
  wire \R_reg_n_0_[3][5] ;
  wire \R_reg_n_0_[3][6] ;
  wire \R_reg_n_0_[3][7] ;
  wire \R_reg_n_0_[4][0] ;
  wire \R_reg_n_0_[4][1] ;
  wire \R_reg_n_0_[4][2] ;
  wire \R_reg_n_0_[4][3] ;
  wire \R_reg_n_0_[4][4] ;
  wire \R_reg_n_0_[4][5] ;
  wire \R_reg_n_0_[4][6] ;
  wire \R_reg_n_0_[4][7] ;
  wire \R_reg_n_0_[5][0] ;
  wire \R_reg_n_0_[5][1] ;
  wire \R_reg_n_0_[5][2] ;
  wire \R_reg_n_0_[5][3] ;
  wire \R_reg_n_0_[5][4] ;
  wire \R_reg_n_0_[5][5] ;
  wire \R_reg_n_0_[5][6] ;
  wire \R_reg_n_0_[5][7] ;
  wire \R_reg_n_0_[6][0] ;
  wire \R_reg_n_0_[6][1] ;
  wire \R_reg_n_0_[6][2] ;
  wire \R_reg_n_0_[6][3] ;
  wire \R_reg_n_0_[6][4] ;
  wire \R_reg_n_0_[6][5] ;
  wire \R_reg_n_0_[6][6] ;
  wire \R_reg_n_0_[6][7] ;
  wire \R_reg_n_0_[7][0] ;
  wire \R_reg_n_0_[7][1] ;
  wire \R_reg_n_0_[7][2] ;
  wire \R_reg_n_0_[7][3] ;
  wire \R_reg_n_0_[7][4] ;
  wire \R_reg_n_0_[7][5] ;
  wire \R_reg_n_0_[7][6] ;
  wire \R_reg_n_0_[7][7] ;
  wire \SREG[0]_i_10_n_0 ;
  wire \SREG[0]_i_12_n_0 ;
  wire \SREG[0]_i_13_n_0 ;
  wire \SREG[0]_i_14_n_0 ;
  wire \SREG[0]_i_15_n_0 ;
  wire \SREG[0]_i_16_n_0 ;
  wire \SREG[0]_i_17_n_0 ;
  wire \SREG[0]_i_18_n_0 ;
  wire \SREG[0]_i_19_n_0 ;
  wire \SREG[0]_i_1_n_0 ;
  wire \SREG[0]_i_20_n_0 ;
  wire \SREG[0]_i_22_n_0 ;
  wire \SREG[0]_i_23_n_0 ;
  wire \SREG[0]_i_24_n_0 ;
  wire \SREG[0]_i_25_n_0 ;
  wire \SREG[0]_i_26_n_0 ;
  wire \SREG[0]_i_27_n_0 ;
  wire \SREG[0]_i_28_n_0 ;
  wire \SREG[0]_i_29_n_0 ;
  wire \SREG[0]_i_2_n_0 ;
  wire \SREG[0]_i_30_n_0 ;
  wire \SREG[0]_i_31_n_0 ;
  wire \SREG[0]_i_32_n_0 ;
  wire \SREG[0]_i_33_n_0 ;
  wire \SREG[0]_i_34_n_0 ;
  wire \SREG[0]_i_35_n_0 ;
  wire \SREG[0]_i_36_n_0 ;
  wire \SREG[0]_i_37_n_0 ;
  wire \SREG[0]_i_3_n_0 ;
  wire \SREG[0]_i_4_n_0 ;
  wire \SREG[0]_i_5_n_0 ;
  wire \SREG[0]_i_9_n_0 ;
  wire \SREG_reg[0]_i_11_n_0 ;
  wire \SREG_reg[0]_i_11_n_1 ;
  wire \SREG_reg[0]_i_11_n_2 ;
  wire \SREG_reg[0]_i_11_n_3 ;
  wire \SREG_reg[0]_i_21_n_0 ;
  wire \SREG_reg[0]_i_21_n_1 ;
  wire \SREG_reg[0]_i_21_n_2 ;
  wire \SREG_reg[0]_i_21_n_3 ;
  wire \SREG_reg[0]_i_6_n_1 ;
  wire \SREG_reg[0]_i_6_n_2 ;
  wire \SREG_reg[0]_i_6_n_3 ;
  wire \SREG_reg[0]_i_7_n_0 ;
  wire \SREG_reg[0]_i_8_n_1 ;
  wire \SREG_reg[0]_i_8_n_2 ;
  wire \SREG_reg[0]_i_8_n_3 ;
  wire \SREG_reg[0]_i_8_n_4 ;
  wire \SREG_reg_n_0_[0] ;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in5_in;
  wire p_0_in8_in;
  wire p_2_in21_in;
  wire p_2_in4_in;
  wire p_3_in;
  wire [0:0]p_5_in;
  wire p_6_in99_in;
  wire p_8_in76_in;
  wire state;
  wire state_reg_n_0;
  wire [3:0]\NLW_PC_reg[4]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_PC_reg[4]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_R_reg[0][7]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_R_reg[4][7]_i_8_CO_UNCONNECTED ;
  wire [3:3]\NLW_R_reg[4][7]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_SREG_reg[0]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_SREG_reg[0]_i_21_O_UNCONNECTED ;
  wire [3:3]\NLW_SREG_reg[0]_i_6_CO_UNCONNECTED ;
  wire [2:0]\NLW_SREG_reg[0]_i_6_O_UNCONNECTED ;
  wire [3:3]\NLW_SREG_reg[0]_i_8_CO_UNCONNECTED ;
  wire [2:0]\NLW_SREG_reg[0]_i_8_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \GPIO[4]_i_1 
       (.I0(p_5_in),
        .I1(p_3_in),
        .I2(p_2_in4_in),
        .I3(\IR_reg_n_0_[4] ),
        .I4(\GPIO[7]_i_2_n_0 ),
        .I5(GPIO[0]),
        .O(\GPIO[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \GPIO[6]_i_1 
       (.I0(p_2_in4_in),
        .I1(\IR_reg_n_0_[6] ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(\GPIO[7]_i_2_n_0 ),
        .I5(GPIO[1]),
        .O(\GPIO[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \GPIO[7]_i_1 
       (.I0(p_2_in4_in),
        .I1(p_2_in21_in),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(\GPIO[7]_i_2_n_0 ),
        .I5(GPIO[2]),
        .O(\GPIO[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000F10000000000)) 
    \GPIO[7]_i_2 
       (.I0(p_2_in21_in),
        .I1(\IR_reg_n_0_[6] ),
        .I2(p_2_in4_in),
        .I3(p_5_in),
        .I4(p_3_in),
        .I5(state_reg_n_0),
        .O(\GPIO[7]_i_2_n_0 ));
  FDCE \GPIO_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(\GPIO[4]_i_1_n_0 ),
        .Q(GPIO[0]));
  FDCE \GPIO_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(\GPIO[6]_i_1_n_0 ),
        .Q(GPIO[1]));
  FDCE \GPIO_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(\GPIO[7]_i_1_n_0 ),
        .Q(GPIO[2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \IOADR[7]_i_1 
       (.I0(p_3_in),
        .I1(p_5_in),
        .I2(p_2_in4_in),
        .I3(state_reg_n_0),
        .O(\IOADR[7]_i_1_n_0 ));
  FDCE \IOADR_reg[4] 
       (.C(CLK),
        .CE(\IOADR[7]_i_1_n_0 ),
        .CLR(RESET),
        .D(\IR_reg_n_0_[4] ),
        .Q(IOADR[0]));
  FDCE \IOADR_reg[6] 
       (.C(CLK),
        .CE(\IOADR[7]_i_1_n_0 ),
        .CLR(RESET),
        .D(\IR_reg_n_0_[6] ),
        .Q(IOADR[1]));
  FDCE \IOADR_reg[7] 
       (.C(CLK),
        .CE(\IOADR[7]_i_1_n_0 ),
        .CLR(RESET),
        .D(p_2_in21_in),
        .Q(IOADR[2]));
  FDCE \IOOUT_reg[0] 
       (.C(CLK),
        .CE(\IOADR[7]_i_1_n_0 ),
        .CLR(RESET),
        .D(\R_reg_n_0_[0][0] ),
        .Q(IOOUT[0]));
  FDCE \IOOUT_reg[1] 
       (.C(CLK),
        .CE(\IOADR[7]_i_1_n_0 ),
        .CLR(RESET),
        .D(\R_reg_n_0_[0][1] ),
        .Q(IOOUT[1]));
  FDCE \IOOUT_reg[2] 
       (.C(CLK),
        .CE(\IOADR[7]_i_1_n_0 ),
        .CLR(RESET),
        .D(\R_reg_n_0_[0][2] ),
        .Q(IOOUT[2]));
  FDCE \IOOUT_reg[3] 
       (.C(CLK),
        .CE(\IOADR[7]_i_1_n_0 ),
        .CLR(RESET),
        .D(\R_reg_n_0_[0][3] ),
        .Q(IOOUT[3]));
  FDCE \IOOUT_reg[4] 
       (.C(CLK),
        .CE(\IOADR[7]_i_1_n_0 ),
        .CLR(RESET),
        .D(\R_reg_n_0_[0][4] ),
        .Q(IOOUT[4]));
  FDCE \IOOUT_reg[5] 
       (.C(CLK),
        .CE(\IOADR[7]_i_1_n_0 ),
        .CLR(RESET),
        .D(\R_reg_n_0_[0][5] ),
        .Q(IOOUT[5]));
  FDCE \IOOUT_reg[6] 
       (.C(CLK),
        .CE(\IOADR[7]_i_1_n_0 ),
        .CLR(RESET),
        .D(\R_reg_n_0_[0][6] ),
        .Q(IOOUT[6]));
  FDCE \IOOUT_reg[7] 
       (.C(CLK),
        .CE(\IOADR[7]_i_1_n_0 ),
        .CLR(RESET),
        .D(\R_reg_n_0_[0][7] ),
        .Q(IOOUT[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h55554000)) 
    IOWR_i_1
       (.I0(state_reg_n_0),
        .I1(p_3_in),
        .I2(p_5_in),
        .I3(p_2_in4_in),
        .I4(IOWR),
        .O(IOWR_i_1_n_0));
  FDCE IOWR_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(IOWR_i_1_n_0),
        .Q(IOWR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000316B)) 
    \IR[11]_i_1 
       (.I0(\PC_reg_n_0_[0] ),
        .I1(\PC_reg_n_0_[3] ),
        .I2(\PC_reg_n_0_[1] ),
        .I3(\PC_reg_n_0_[2] ),
        .I4(\PC_reg_n_0_[4] ),
        .O(\ROM[0]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00430018)) 
    \IR[12]_i_1 
       (.I0(\PC_reg_n_0_[3] ),
        .I1(\PC_reg_n_0_[1] ),
        .I2(\PC_reg_n_0_[0] ),
        .I3(\PC_reg_n_0_[4] ),
        .I4(\PC_reg_n_0_[2] ),
        .O(\ROM[0]_0 [12]));
  LUT2 #(
    .INIT(4'h1)) 
    \IR[14]_i_1 
       (.I0(state_reg_n_0),
        .I1(RESET),
        .O(IR0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h10010410)) 
    \IR[14]_i_2 
       (.I0(\PC_reg_n_0_[4] ),
        .I1(\PC_reg_n_0_[3] ),
        .I2(\PC_reg_n_0_[0] ),
        .I3(\PC_reg_n_0_[1] ),
        .I4(\PC_reg_n_0_[2] ),
        .O(\ROM[0]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00004325)) 
    \IR[4]_i_1 
       (.I0(\PC_reg_n_0_[3] ),
        .I1(\PC_reg_n_0_[2] ),
        .I2(\PC_reg_n_0_[1] ),
        .I3(\PC_reg_n_0_[0] ),
        .I4(\PC_reg_n_0_[4] ),
        .O(\ROM[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \IR[6]_i_1 
       (.I0(\PC_reg_n_0_[2] ),
        .I1(\PC_reg_n_0_[1] ),
        .I2(\PC_reg_n_0_[4] ),
        .I3(\PC_reg_n_0_[0] ),
        .I4(\PC_reg_n_0_[3] ),
        .O(\ROM[0]_0 [6]));
  LUT5 #(
    .INIT(32'h00000009)) 
    \IR[7]_i_1 
       (.I0(\PC_reg_n_0_[1] ),
        .I1(\PC_reg_n_0_[2] ),
        .I2(\PC_reg_n_0_[3] ),
        .I3(\PC_reg_n_0_[0] ),
        .I4(\PC_reg_n_0_[4] ),
        .O(\ROM[0]_0 [7]));
  FDRE \IR_reg[11] 
       (.C(CLK),
        .CE(IR0),
        .D(\ROM[0]_0 [11]),
        .Q(p_3_in),
        .R(1'b0));
  FDRE \IR_reg[12] 
       (.C(CLK),
        .CE(IR0),
        .D(\ROM[0]_0 [12]),
        .Q(p_2_in4_in),
        .R(1'b0));
  FDRE \IR_reg[14] 
       (.C(CLK),
        .CE(IR0),
        .D(\ROM[0]_0 [14]),
        .Q(p_5_in),
        .R(1'b0));
  FDRE \IR_reg[4] 
       (.C(CLK),
        .CE(IR0),
        .D(\ROM[0]_0 [4]),
        .Q(\IR_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \IR_reg[6] 
       (.C(CLK),
        .CE(IR0),
        .D(\ROM[0]_0 [6]),
        .Q(\IR_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \IR_reg[7] 
       (.C(CLK),
        .CE(IR0),
        .D(\ROM[0]_0 [7]),
        .Q(p_2_in21_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAEAAFEAAAEFFFF)) 
    \PC[0]_i_1 
       (.I0(\PC[4]_i_4_n_0 ),
        .I1(\PC_reg[1]_i_3_n_7 ),
        .I2(\PC[0]_i_2_n_0 ),
        .I3(\PC[0]_i_3_n_0 ),
        .I4(\PC_reg_n_0_[0] ),
        .I5(\PC[0]_i_4_n_0 ),
        .O(\PC[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \PC[0]_i_2 
       (.I0(p_2_in4_in),
        .I1(p_3_in),
        .I2(\SREG_reg_n_0_[0] ),
        .O(\PC[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \PC[0]_i_3 
       (.I0(p_3_in),
        .I1(p_5_in),
        .O(\PC[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0FFF010)) 
    \PC[0]_i_4 
       (.I0(p_2_in21_in),
        .I1(\IR_reg_n_0_[6] ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(p_2_in4_in),
        .O(\PC[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEEEAEFFAEAAAA)) 
    \PC[1]_i_1 
       (.I0(\PC[1]_i_2_n_0 ),
        .I1(\PC_reg[1]_i_3_n_6 ),
        .I2(\PC[4]_i_6_n_0 ),
        .I3(\PC[1]_i_4_n_0 ),
        .I4(\PC[2]_i_2_n_0 ),
        .I5(p_3_in),
        .O(\PC[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \PC[1]_i_2 
       (.I0(\IR_reg_n_0_[6] ),
        .I1(p_3_in),
        .I2(p_5_in),
        .I3(p_2_in4_in),
        .O(\PC[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PC[1]_i_4 
       (.I0(\PC_reg_n_0_[0] ),
        .I1(\PC_reg_n_0_[1] ),
        .O(\PC[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC[1]_i_5 
       (.I0(\PC_reg_n_0_[3] ),
        .I1(p_2_in21_in),
        .O(\PC[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC[1]_i_6 
       (.I0(\PC_reg_n_0_[2] ),
        .I1(\IR_reg_n_0_[6] ),
        .O(\PC[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC[1]_i_7 
       (.I0(\PC_reg_n_0_[1] ),
        .I1(\IR_reg_n_0_[6] ),
        .O(\PC[1]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC[1]_i_8 
       (.I0(\PC_reg_n_0_[0] ),
        .I1(\IR_reg_n_0_[4] ),
        .O(\PC[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF6A00)) 
    \PC[2]_i_1 
       (.I0(\PC_reg_n_0_[2] ),
        .I1(\PC_reg_n_0_[1] ),
        .I2(\PC_reg_n_0_[0] ),
        .I3(\PC[2]_i_2_n_0 ),
        .I4(\PC[2]_i_3_n_0 ),
        .O(\PC[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3F2FFF3C3C2FFF3)) 
    \PC[2]_i_2 
       (.I0(p_2_in21_in),
        .I1(p_2_in4_in),
        .I2(p_3_in),
        .I3(\IR_reg_n_0_[6] ),
        .I4(p_5_in),
        .I5(\SREG_reg_n_0_[0] ),
        .O(\PC[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00220C0000220000)) 
    \PC[2]_i_3 
       (.I0(\IR_reg_n_0_[6] ),
        .I1(p_5_in),
        .I2(\SREG_reg_n_0_[0] ),
        .I3(p_3_in),
        .I4(p_2_in4_in),
        .I5(\PC_reg[1]_i_3_n_5 ),
        .O(\PC[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14444444)) 
    \PC[3]_i_1 
       (.I0(\PC[3]_i_2_n_0 ),
        .I1(\PC_reg_n_0_[3] ),
        .I2(\PC_reg_n_0_[2] ),
        .I3(\PC_reg_n_0_[0] ),
        .I4(\PC_reg_n_0_[1] ),
        .I5(\PC[3]_i_3_n_0 ),
        .O(\PC[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF000200FFAA02)) 
    \PC[3]_i_2 
       (.I0(p_5_in),
        .I1(\IR_reg_n_0_[6] ),
        .I2(p_2_in21_in),
        .I3(p_3_in),
        .I4(p_2_in4_in),
        .I5(\SREG_reg_n_0_[0] ),
        .O(\PC[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00220C0000220000)) 
    \PC[3]_i_3 
       (.I0(p_2_in21_in),
        .I1(p_5_in),
        .I2(\SREG_reg_n_0_[0] ),
        .I3(p_3_in),
        .I4(p_2_in4_in),
        .I5(\PC_reg[1]_i_3_n_4 ),
        .O(\PC[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \PC[4]_i_1 
       (.I0(\PC[4]_i_2_n_0 ),
        .I1(\PC[4]_i_3_n_0 ),
        .I2(\PC[4]_i_4_n_0 ),
        .I3(\PC_reg[4]_i_5_n_7 ),
        .I4(\PC[4]_i_6_n_0 ),
        .O(\PC[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C4C0F4C00000300)) 
    \PC[4]_i_2 
       (.I0(\SREG_reg_n_0_[0] ),
        .I1(p_5_in),
        .I2(p_3_in),
        .I3(p_2_in4_in),
        .I4(\IR_reg_n_0_[4] ),
        .I5(\R[3][7]_i_4_n_0 ),
        .O(\PC[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \PC[4]_i_3 
       (.I0(\PC_reg_n_0_[4] ),
        .I1(\PC_reg_n_0_[3] ),
        .I2(\PC_reg_n_0_[1] ),
        .I3(\PC_reg_n_0_[0] ),
        .I4(\PC_reg_n_0_[2] ),
        .O(\PC[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \PC[4]_i_4 
       (.I0(\IR_reg_n_0_[4] ),
        .I1(p_5_in),
        .I2(p_2_in4_in),
        .I3(p_3_in),
        .O(\PC[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \PC[4]_i_6 
       (.I0(p_5_in),
        .I1(\SREG_reg_n_0_[0] ),
        .I2(p_3_in),
        .I3(p_2_in4_in),
        .O(\PC[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PC[4]_i_7 
       (.I0(\IR_reg_n_0_[4] ),
        .I1(\PC_reg_n_0_[4] ),
        .O(\PC[4]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[0] 
       (.C(CLK),
        .CE(state_reg_n_0),
        .CLR(RESET),
        .D(\PC[0]_i_1_n_0 ),
        .Q(\PC_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[1] 
       (.C(CLK),
        .CE(state_reg_n_0),
        .CLR(RESET),
        .D(\PC[1]_i_1_n_0 ),
        .Q(\PC_reg_n_0_[1] ));
  CARRY4 \PC_reg[1]_i_3 
       (.CI(1'b0),
        .CO({\PC_reg[1]_i_3_n_0 ,\PC_reg[1]_i_3_n_1 ,\PC_reg[1]_i_3_n_2 ,\PC_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\PC_reg_n_0_[3] ,\PC_reg_n_0_[2] ,\PC_reg_n_0_[1] ,\PC_reg_n_0_[0] }),
        .O({\PC_reg[1]_i_3_n_4 ,\PC_reg[1]_i_3_n_5 ,\PC_reg[1]_i_3_n_6 ,\PC_reg[1]_i_3_n_7 }),
        .S({\PC[1]_i_5_n_0 ,\PC[1]_i_6_n_0 ,\PC[1]_i_7_n_0 ,\PC[1]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[2] 
       (.C(CLK),
        .CE(state_reg_n_0),
        .CLR(RESET),
        .D(\PC[2]_i_1_n_0 ),
        .Q(\PC_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[3] 
       (.C(CLK),
        .CE(state_reg_n_0),
        .CLR(RESET),
        .D(\PC[3]_i_1_n_0 ),
        .Q(\PC_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[4] 
       (.C(CLK),
        .CE(state_reg_n_0),
        .CLR(RESET),
        .D(\PC[4]_i_1_n_0 ),
        .Q(\PC_reg_n_0_[4] ));
  CARRY4 \PC_reg[4]_i_5 
       (.CI(\PC_reg[1]_i_3_n_0 ),
        .CO(\NLW_PC_reg[4]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_PC_reg[4]_i_5_O_UNCONNECTED [3:1],\PC_reg[4]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b0,\PC[4]_i_7_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \R[0][0]_i_1 
       (.I0(\IR_reg_n_0_[4] ),
        .I1(p_2_in4_in),
        .I2(\R_reg[0][3]_i_2_n_7 ),
        .O(\R[0][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \R[0][1]_i_1 
       (.I0(\IR_reg_n_0_[6] ),
        .I1(\R_reg[0][3]_i_2_n_6 ),
        .I2(p_2_in4_in),
        .O(\R[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \R[0][2]_i_1 
       (.I0(\IR_reg_n_0_[6] ),
        .I1(p_2_in4_in),
        .I2(\R_reg[0][3]_i_2_n_5 ),
        .O(\R[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \R[0][3]_i_1 
       (.I0(p_2_in21_in),
        .I1(p_2_in4_in),
        .I2(\R_reg[0][3]_i_2_n_4 ),
        .O(\R[0][3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \R[0][3]_i_3 
       (.I0(p_2_in21_in),
        .I1(\R_reg_n_0_[0][3] ),
        .O(\R[0][3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \R[0][3]_i_4 
       (.I0(\IR_reg_n_0_[6] ),
        .I1(\R_reg_n_0_[0][2] ),
        .O(\R[0][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \R[0][3]_i_5 
       (.I0(\IR_reg_n_0_[6] ),
        .I1(\R_reg_n_0_[0][1] ),
        .O(\R[0][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \R[0][3]_i_6 
       (.I0(\SREG_reg_n_0_[0] ),
        .I1(\IR_reg_n_0_[4] ),
        .O(\R[0][3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \R[0][4]_i_1 
       (.I0(\R_reg[0][7]_i_3_n_7 ),
        .I1(\IR_reg_n_0_[4] ),
        .I2(p_2_in4_in),
        .O(\R[0][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \R[0][5]_i_1 
       (.I0(\IR_reg_n_0_[6] ),
        .I1(p_2_in4_in),
        .I2(\R_reg[0][7]_i_3_n_6 ),
        .O(\R[0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \R[0][6]_i_1 
       (.I0(\IR_reg_n_0_[6] ),
        .I1(p_2_in4_in),
        .I2(\R_reg[0][7]_i_3_n_5 ),
        .O(\R[0][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \R[0][7]_i_1 
       (.I0(RESET),
        .I1(state_reg_n_0),
        .I2(p_5_in),
        .I3(p_3_in),
        .O(\R[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \R[0][7]_i_2 
       (.I0(p_2_in21_in),
        .I1(p_2_in4_in),
        .I2(p_0_in5_in),
        .O(\R[0][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \R[0][7]_i_4 
       (.I0(\R_reg_n_0_[0][7] ),
        .I1(p_2_in21_in),
        .O(\R[0][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \R[0][7]_i_5 
       (.I0(\IR_reg_n_0_[6] ),
        .I1(\R_reg_n_0_[0][6] ),
        .O(\R[0][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \R[0][7]_i_6 
       (.I0(\IR_reg_n_0_[6] ),
        .I1(\R_reg_n_0_[0][5] ),
        .O(\R[0][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \R[0][7]_i_7 
       (.I0(\IR_reg_n_0_[4] ),
        .I1(\R_reg_n_0_[0][4] ),
        .O(\R[0][7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \R[1][0]_i_1 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(\R[6][7]_i_5_n_0 ),
        .I2(IOIN[0]),
        .O(\R[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \R[1][1]_i_1 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(\R[6][7]_i_5_n_0 ),
        .I2(IOIN[1]),
        .O(\R[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \R[1][2]_i_1 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(\R[6][7]_i_5_n_0 ),
        .I2(IOIN[2]),
        .O(\R[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \R[1][3]_i_1 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(\R[6][7]_i_5_n_0 ),
        .I2(IOIN[3]),
        .O(\R[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \R[1][4]_i_1 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(\R[6][7]_i_5_n_0 ),
        .I2(IOIN[4]),
        .O(\R[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \R[1][5]_i_1 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(\R[6][7]_i_5_n_0 ),
        .I2(IOIN[5]),
        .O(\R[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \R[1][6]_i_1 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(\R[6][7]_i_5_n_0 ),
        .I2(IOIN[6]),
        .O(\R[1][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \R[1][7]_i_1 
       (.I0(\R[3][7]_i_3_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(p_2_in21_in),
        .I3(\IR_reg_n_0_[4] ),
        .O(\R_reg[1]0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \R[1][7]_i_2 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(\R[6][7]_i_5_n_0 ),
        .I2(IOIN[7]),
        .O(\R[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \R[3][7]_i_1 
       (.I0(\R[3][7]_i_3_n_0 ),
        .I1(\IR_reg_n_0_[4] ),
        .I2(\IR_reg_n_0_[6] ),
        .I3(p_2_in21_in),
        .I4(p_5_in),
        .I5(\R[3][7]_i_4_n_0 ),
        .O(\R[3][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \R[3][7]_i_2 
       (.I0(\R[3][7]_i_3_n_0 ),
        .I1(\IR_reg_n_0_[4] ),
        .I2(\IR_reg_n_0_[6] ),
        .I3(p_2_in21_in),
        .O(\R_reg[3]0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \R[3][7]_i_3 
       (.I0(p_2_in4_in),
        .I1(p_2_in21_in),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(state_reg_n_0),
        .I5(RESET),
        .O(\R[3][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEEEF)) 
    \R[3][7]_i_4 
       (.I0(p_2_in4_in),
        .I1(p_3_in),
        .I2(\IR_reg_n_0_[6] ),
        .I3(p_2_in21_in),
        .O(\R[3][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[4][0]_i_1 
       (.I0(IOIN[0]),
        .I1(\R[4][7]_i_5_n_0 ),
        .I2(\R[4][0]_i_2_n_0 ),
        .O(\R[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEBFF2B00E80028)) 
    \R[4][0]_i_2 
       (.I0(\R[4][0]_i_3_n_0 ),
        .I1(p_2_in21_in),
        .I2(\IR_reg_n_0_[6] ),
        .I3(\R[4][7]_i_7_n_0 ),
        .I4(\R_reg[4][3]_i_4_n_7 ),
        .I5(\R_reg[4][3]_i_5_n_7 ),
        .O(\R[4][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \R[4][0]_i_3 
       (.I0(\R_reg_n_0_[1][0] ),
        .I1(\R_reg_n_0_[0][0] ),
        .I2(\R_reg_n_0_[7][0] ),
        .I3(\IR_reg_n_0_[4] ),
        .I4(\R_reg_n_0_[6][0] ),
        .I5(\IR_reg_n_0_[6] ),
        .O(\R[4][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[4][1]_i_1 
       (.I0(IOIN[1]),
        .I1(\R[4][7]_i_5_n_0 ),
        .I2(\R[4][1]_i_2_n_0 ),
        .O(\R[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEBFF2B00E80028)) 
    \R[4][1]_i_2 
       (.I0(\R[4][1]_i_3_n_0 ),
        .I1(p_2_in21_in),
        .I2(\IR_reg_n_0_[6] ),
        .I3(\R[4][7]_i_7_n_0 ),
        .I4(\R_reg[4][3]_i_4_n_6 ),
        .I5(\R_reg[4][3]_i_5_n_6 ),
        .O(\R[4][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \R[4][1]_i_3 
       (.I0(\R_reg_n_0_[1][1] ),
        .I1(\R_reg_n_0_[0][1] ),
        .I2(\R_reg_n_0_[7][1] ),
        .I3(\IR_reg_n_0_[4] ),
        .I4(\R_reg_n_0_[6][1] ),
        .I5(\IR_reg_n_0_[6] ),
        .O(\R[4][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[4][2]_i_1 
       (.I0(IOIN[2]),
        .I1(\R[4][7]_i_5_n_0 ),
        .I2(\R[4][2]_i_2_n_0 ),
        .O(\R[4][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEBFF2B00E80028)) 
    \R[4][2]_i_2 
       (.I0(\R[4][2]_i_3_n_0 ),
        .I1(p_2_in21_in),
        .I2(\IR_reg_n_0_[6] ),
        .I3(\R[4][7]_i_7_n_0 ),
        .I4(\R_reg[4][3]_i_4_n_5 ),
        .I5(\R_reg[4][3]_i_5_n_5 ),
        .O(\R[4][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \R[4][2]_i_3 
       (.I0(\R_reg_n_0_[1][2] ),
        .I1(\R_reg_n_0_[0][2] ),
        .I2(\R_reg_n_0_[7][2] ),
        .I3(\IR_reg_n_0_[4] ),
        .I4(\R_reg_n_0_[6][2] ),
        .I5(\IR_reg_n_0_[6] ),
        .O(\R[4][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[4][3]_i_1 
       (.I0(IOIN[3]),
        .I1(\R[4][7]_i_5_n_0 ),
        .I2(\R[4][3]_i_2_n_0 ),
        .O(\R[4][3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \R[4][3]_i_10 
       (.I0(\SREG_reg_n_0_[0] ),
        .I1(\R[4][0]_i_3_n_0 ),
        .O(\R[4][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h02A207A752F257F7)) 
    \R[4][3]_i_11 
       (.I0(\IR_reg_n_0_[6] ),
        .I1(\R_reg_n_0_[6][0] ),
        .I2(\IR_reg_n_0_[4] ),
        .I3(\R_reg_n_0_[7][0] ),
        .I4(\R_reg_n_0_[0][0] ),
        .I5(\R_reg_n_0_[1][0] ),
        .O(\R[4][3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R[4][3]_i_12 
       (.I0(\R[4][3]_i_22_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_23_n_0 ),
        .O(\R[4][3]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R[4][3]_i_13 
       (.I0(\R[4][3]_i_24_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_25_n_0 ),
        .O(\R[4][3]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R[4][3]_i_14 
       (.I0(\R[4][3]_i_26_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_27_n_0 ),
        .O(\R[4][3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R[4][3]_i_15 
       (.I0(\R[4][3]_i_20_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_21_n_0 ),
        .O(\R[4][3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \R[4][3]_i_16 
       (.I0(\R[4][3]_i_22_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_23_n_0 ),
        .I3(p_8_in76_in),
        .O(\R[4][3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \R[4][3]_i_17 
       (.I0(\R[4][3]_i_24_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_25_n_0 ),
        .I3(\R[4][2]_i_3_n_0 ),
        .O(\R[4][3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \R[4][3]_i_18 
       (.I0(\R[4][3]_i_26_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_27_n_0 ),
        .I3(\R[4][1]_i_3_n_0 ),
        .O(\R[4][3]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \R[4][3]_i_19 
       (.I0(\R[4][3]_i_20_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_21_n_0 ),
        .I3(\SREG_reg_n_0_[0] ),
        .O(\R[4][3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFEBFF2B00E80028)) 
    \R[4][3]_i_2 
       (.I0(p_8_in76_in),
        .I1(p_2_in21_in),
        .I2(\IR_reg_n_0_[6] ),
        .I3(\R[4][7]_i_7_n_0 ),
        .I4(\R_reg[4][3]_i_4_n_4 ),
        .I5(p_6_in99_in),
        .O(\R[4][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4][3]_i_20 
       (.I0(\R_reg_n_0_[7][0] ),
        .I1(\R_reg_n_0_[6][0] ),
        .I2(\IR_reg_n_0_[4] ),
        .I3(\R_reg_n_0_[5][0] ),
        .I4(p_2_in21_in),
        .I5(\R_reg_n_0_[4][0] ),
        .O(\R[4][3]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \R[4][3]_i_21 
       (.I0(\R_reg_n_0_[3][0] ),
        .I1(\IR_reg_n_0_[4] ),
        .I2(\R_reg_n_0_[1][0] ),
        .I3(p_2_in21_in),
        .I4(\R_reg_n_0_[0][0] ),
        .O(\R[4][3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4][3]_i_22 
       (.I0(\R_reg_n_0_[7][3] ),
        .I1(\R_reg_n_0_[6][3] ),
        .I2(\IR_reg_n_0_[4] ),
        .I3(\R_reg_n_0_[5][3] ),
        .I4(p_2_in21_in),
        .I5(\R_reg_n_0_[4][3] ),
        .O(\R[4][3]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \R[4][3]_i_23 
       (.I0(\R_reg_n_0_[3][3] ),
        .I1(\IR_reg_n_0_[4] ),
        .I2(\R_reg_n_0_[1][3] ),
        .I3(p_2_in21_in),
        .I4(\R_reg_n_0_[0][3] ),
        .O(\R[4][3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4][3]_i_24 
       (.I0(\R_reg_n_0_[7][2] ),
        .I1(\R_reg_n_0_[6][2] ),
        .I2(\IR_reg_n_0_[4] ),
        .I3(\R_reg_n_0_[5][2] ),
        .I4(p_2_in21_in),
        .I5(\R_reg_n_0_[4][2] ),
        .O(\R[4][3]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \R[4][3]_i_25 
       (.I0(\R_reg_n_0_[3][2] ),
        .I1(\IR_reg_n_0_[4] ),
        .I2(\R_reg_n_0_[1][2] ),
        .I3(p_2_in21_in),
        .I4(\R_reg_n_0_[0][2] ),
        .O(\R[4][3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4][3]_i_26 
       (.I0(\R_reg_n_0_[7][1] ),
        .I1(\R_reg_n_0_[6][1] ),
        .I2(\IR_reg_n_0_[4] ),
        .I3(\R_reg_n_0_[5][1] ),
        .I4(p_2_in21_in),
        .I5(\R_reg_n_0_[4][1] ),
        .O(\R[4][3]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \R[4][3]_i_27 
       (.I0(\R_reg_n_0_[3][1] ),
        .I1(\IR_reg_n_0_[4] ),
        .I2(\R_reg_n_0_[1][1] ),
        .I3(p_2_in21_in),
        .I4(\R_reg_n_0_[0][1] ),
        .O(\R[4][3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \R[4][3]_i_3 
       (.I0(\R_reg_n_0_[1][3] ),
        .I1(\R_reg_n_0_[0][3] ),
        .I2(\R_reg_n_0_[7][3] ),
        .I3(\IR_reg_n_0_[4] ),
        .I4(\R_reg_n_0_[6][3] ),
        .I5(\IR_reg_n_0_[6] ),
        .O(p_8_in76_in));
  LUT3 #(
    .INIT(8'hB8)) 
    \R[4][3]_i_6 
       (.I0(\R[4][3]_i_20_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_21_n_0 ),
        .O(\R[4][3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \R[4][3]_i_7 
       (.I0(\R[4][3]_i_22_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_23_n_0 ),
        .I3(p_8_in76_in),
        .O(\R[4][3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \R[4][3]_i_8 
       (.I0(\R[4][3]_i_24_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_25_n_0 ),
        .I3(\R[4][2]_i_3_n_0 ),
        .O(\R[4][3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \R[4][3]_i_9 
       (.I0(\R[4][3]_i_26_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_27_n_0 ),
        .I3(\R[4][1]_i_3_n_0 ),
        .O(\R[4][3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[4][4]_i_1 
       (.I0(IOIN[4]),
        .I1(\R[4][7]_i_5_n_0 ),
        .I2(\R[4][4]_i_2_n_0 ),
        .O(\R[4][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEBFF2B00E80028)) 
    \R[4][4]_i_2 
       (.I0(\R[4][4]_i_3_n_0 ),
        .I1(p_2_in21_in),
        .I2(\IR_reg_n_0_[6] ),
        .I3(\R[4][7]_i_7_n_0 ),
        .I4(\R_reg[4][7]_i_8_n_7 ),
        .I5(\R_reg[4][7]_i_9_n_7 ),
        .O(\R[4][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \R[4][4]_i_3 
       (.I0(\R_reg_n_0_[1][4] ),
        .I1(\R_reg_n_0_[0][4] ),
        .I2(\R_reg_n_0_[7][4] ),
        .I3(\IR_reg_n_0_[4] ),
        .I4(\R_reg_n_0_[6][4] ),
        .I5(\IR_reg_n_0_[6] ),
        .O(\R[4][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[4][5]_i_1 
       (.I0(IOIN[5]),
        .I1(\R[4][7]_i_5_n_0 ),
        .I2(\R[4][5]_i_2_n_0 ),
        .O(\R[4][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEBFF2B00E80028)) 
    \R[4][5]_i_2 
       (.I0(\R[4][5]_i_3_n_0 ),
        .I1(p_2_in21_in),
        .I2(\IR_reg_n_0_[6] ),
        .I3(\R[4][7]_i_7_n_0 ),
        .I4(\R_reg[4][7]_i_8_n_6 ),
        .I5(\R_reg[4][7]_i_9_n_6 ),
        .O(\R[4][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \R[4][5]_i_3 
       (.I0(\R_reg_n_0_[1][5] ),
        .I1(\R_reg_n_0_[0][5] ),
        .I2(\R_reg_n_0_[7][5] ),
        .I3(\IR_reg_n_0_[4] ),
        .I4(\R_reg_n_0_[6][5] ),
        .I5(\IR_reg_n_0_[6] ),
        .O(\R[4][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[4][6]_i_1 
       (.I0(IOIN[6]),
        .I1(\R[4][7]_i_5_n_0 ),
        .I2(\R[4][6]_i_2_n_0 ),
        .O(\R[4][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEBFF2B00E80028)) 
    \R[4][6]_i_2 
       (.I0(\R[4][6]_i_3_n_0 ),
        .I1(p_2_in21_in),
        .I2(\IR_reg_n_0_[6] ),
        .I3(\R[4][7]_i_7_n_0 ),
        .I4(\R_reg[4][7]_i_8_n_5 ),
        .I5(\R_reg[4][7]_i_9_n_5 ),
        .O(\R[4][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \R[4][6]_i_3 
       (.I0(\R_reg_n_0_[1][6] ),
        .I1(\R_reg_n_0_[0][6] ),
        .I2(\R_reg_n_0_[7][6] ),
        .I3(\IR_reg_n_0_[4] ),
        .I4(\R_reg_n_0_[6][6] ),
        .I5(\IR_reg_n_0_[6] ),
        .O(\R[4][6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \R[4][7]_i_1 
       (.I0(\IR_reg_n_0_[4] ),
        .I1(p_2_in4_in),
        .I2(p_2_in21_in),
        .I3(\R[4][7]_i_3_n_0 ),
        .I4(\IR_reg_n_0_[6] ),
        .O(\R_reg[4]0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \R[4][7]_i_10 
       (.I0(\SREG_reg[0]_i_7_n_0 ),
        .I1(\R[4][7]_i_6_n_0 ),
        .O(\R[4][7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \R[4][7]_i_11 
       (.I0(\R[4][7]_i_21_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][7]_i_22_n_0 ),
        .I3(\R[4][6]_i_3_n_0 ),
        .O(\R[4][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \R[4][7]_i_12 
       (.I0(\R[4][7]_i_23_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][7]_i_24_n_0 ),
        .I3(\R[4][5]_i_3_n_0 ),
        .O(\R[4][7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \R[4][7]_i_13 
       (.I0(\R[4][7]_i_25_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][7]_i_26_n_0 ),
        .I3(\R[4][4]_i_3_n_0 ),
        .O(\R[4][7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R[4][7]_i_14 
       (.I0(\R[4][7]_i_21_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][7]_i_22_n_0 ),
        .O(\R[4][7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R[4][7]_i_15 
       (.I0(\R[4][7]_i_23_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][7]_i_24_n_0 ),
        .O(\R[4][7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \R[4][7]_i_16 
       (.I0(\R[4][7]_i_25_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][7]_i_26_n_0 ),
        .O(\R[4][7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \R[4][7]_i_17 
       (.I0(\SREG_reg[0]_i_7_n_0 ),
        .I1(\R[4][7]_i_6_n_0 ),
        .O(\R[4][7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \R[4][7]_i_18 
       (.I0(\R[4][7]_i_21_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][7]_i_22_n_0 ),
        .I3(\R[4][6]_i_3_n_0 ),
        .O(\R[4][7]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \R[4][7]_i_19 
       (.I0(\R[4][7]_i_23_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][7]_i_24_n_0 ),
        .I3(\R[4][5]_i_3_n_0 ),
        .O(\R[4][7]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \R[4][7]_i_2 
       (.I0(IOIN[7]),
        .I1(\R[4][7]_i_4_n_0 ),
        .I2(\R[4][7]_i_5_n_0 ),
        .O(\R[4][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \R[4][7]_i_20 
       (.I0(\R[4][7]_i_25_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][7]_i_26_n_0 ),
        .I3(\R[4][4]_i_3_n_0 ),
        .O(\R[4][7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4][7]_i_21 
       (.I0(\R_reg_n_0_[7][6] ),
        .I1(\R_reg_n_0_[6][6] ),
        .I2(\IR_reg_n_0_[4] ),
        .I3(\R_reg_n_0_[5][6] ),
        .I4(p_2_in21_in),
        .I5(\R_reg_n_0_[4][6] ),
        .O(\R[4][7]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \R[4][7]_i_22 
       (.I0(\R_reg_n_0_[3][6] ),
        .I1(\IR_reg_n_0_[4] ),
        .I2(\R_reg_n_0_[1][6] ),
        .I3(p_2_in21_in),
        .I4(\R_reg_n_0_[0][6] ),
        .O(\R[4][7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4][7]_i_23 
       (.I0(\R_reg_n_0_[7][5] ),
        .I1(\R_reg_n_0_[6][5] ),
        .I2(\IR_reg_n_0_[4] ),
        .I3(\R_reg_n_0_[5][5] ),
        .I4(p_2_in21_in),
        .I5(\R_reg_n_0_[4][5] ),
        .O(\R[4][7]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \R[4][7]_i_24 
       (.I0(\R_reg_n_0_[3][5] ),
        .I1(\IR_reg_n_0_[4] ),
        .I2(\R_reg_n_0_[1][5] ),
        .I3(p_2_in21_in),
        .I4(\R_reg_n_0_[0][5] ),
        .O(\R[4][7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4][7]_i_25 
       (.I0(\R_reg_n_0_[7][4] ),
        .I1(\R_reg_n_0_[6][4] ),
        .I2(\IR_reg_n_0_[4] ),
        .I3(\R_reg_n_0_[5][4] ),
        .I4(p_2_in21_in),
        .I5(\R_reg_n_0_[4][4] ),
        .O(\R[4][7]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \R[4][7]_i_26 
       (.I0(\R_reg_n_0_[3][4] ),
        .I1(\IR_reg_n_0_[4] ),
        .I2(\R_reg_n_0_[1][4] ),
        .I3(p_2_in21_in),
        .I4(\R_reg_n_0_[0][4] ),
        .O(\R[4][7]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \R[4][7]_i_3 
       (.I0(RESET),
        .I1(state_reg_n_0),
        .I2(p_3_in),
        .I3(p_5_in),
        .O(\R[4][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h002800E8FF2BFFEB)) 
    \R[4][7]_i_4 
       (.I0(\R[4][7]_i_6_n_0 ),
        .I1(p_2_in21_in),
        .I2(\IR_reg_n_0_[6] ),
        .I3(\R[4][7]_i_7_n_0 ),
        .I4(p_0_in14_in),
        .I5(p_0_in11_in),
        .O(\R[4][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \R[4][7]_i_5 
       (.I0(\IR_reg_n_0_[4] ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(p_2_in21_in),
        .I3(p_2_in4_in),
        .I4(p_3_in),
        .I5(p_5_in),
        .O(\R[4][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \R[4][7]_i_6 
       (.I0(\R_reg_n_0_[1][7] ),
        .I1(\R_reg_n_0_[0][7] ),
        .I2(\IR_reg_n_0_[6] ),
        .I3(\R_reg_n_0_[7][7] ),
        .I4(\IR_reg_n_0_[4] ),
        .I5(\R_reg_n_0_[6][7] ),
        .O(\R[4][7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \R[4][7]_i_7 
       (.I0(p_3_in),
        .I1(p_2_in4_in),
        .O(\R[4][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC4FCCCCCCCCCC)) 
    \R[5][0]_i_1 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(IOIN[0]),
        .I2(\R[5][0]_i_2_n_0 ),
        .I3(\R[5][7]_i_5_n_0 ),
        .I4(p_3_in),
        .I5(p_5_in),
        .O(\R[5][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFCFDFFF)) 
    \R[5][0]_i_2 
       (.I0(\R_reg[4][3]_i_4_n_7 ),
        .I1(\R[4][7]_i_7_n_0 ),
        .I2(\IR_reg_n_0_[6] ),
        .I3(p_2_in21_in),
        .I4(\R[4][0]_i_3_n_0 ),
        .O(\R[5][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC4FCCCCCCCCCC)) 
    \R[5][1]_i_1 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(IOIN[1]),
        .I2(\R[5][1]_i_2_n_0 ),
        .I3(\R[5][7]_i_5_n_0 ),
        .I4(p_3_in),
        .I5(p_5_in),
        .O(\R[5][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFCFDFFF)) 
    \R[5][1]_i_2 
       (.I0(\R_reg[4][3]_i_4_n_6 ),
        .I1(\R[4][7]_i_7_n_0 ),
        .I2(\IR_reg_n_0_[6] ),
        .I3(p_2_in21_in),
        .I4(\R[4][1]_i_3_n_0 ),
        .O(\R[5][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00003000)) 
    \R[5][2]_i_1 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(\R[5][2]_i_2_n_0 ),
        .I2(\R[5][7]_i_5_n_0 ),
        .I3(p_5_in),
        .I4(p_3_in),
        .I5(IOIN[2]),
        .O(\R[5][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFCFDFFF)) 
    \R[5][2]_i_2 
       (.I0(\R_reg[4][3]_i_4_n_5 ),
        .I1(\R[4][7]_i_7_n_0 ),
        .I2(\IR_reg_n_0_[6] ),
        .I3(p_2_in21_in),
        .I4(\R[4][2]_i_3_n_0 ),
        .O(\R[5][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC4FCCCCCCCCCC)) 
    \R[5][3]_i_1 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(IOIN[3]),
        .I2(\R[5][3]_i_2_n_0 ),
        .I3(\R[5][7]_i_5_n_0 ),
        .I4(p_3_in),
        .I5(p_5_in),
        .O(\R[5][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFCFDFFF)) 
    \R[5][3]_i_2 
       (.I0(\R_reg[4][3]_i_4_n_4 ),
        .I1(\R[4][7]_i_7_n_0 ),
        .I2(\IR_reg_n_0_[6] ),
        .I3(p_2_in21_in),
        .I4(p_8_in76_in),
        .O(\R[5][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC4FCCCCCCCCCC)) 
    \R[5][4]_i_1 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(IOIN[4]),
        .I2(\R[5][4]_i_2_n_0 ),
        .I3(\R[5][7]_i_5_n_0 ),
        .I4(p_3_in),
        .I5(p_5_in),
        .O(\R[5][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFCFDFFF)) 
    \R[5][4]_i_2 
       (.I0(\R_reg[4][7]_i_8_n_7 ),
        .I1(\R[4][7]_i_7_n_0 ),
        .I2(\IR_reg_n_0_[6] ),
        .I3(p_2_in21_in),
        .I4(\R[4][4]_i_3_n_0 ),
        .O(\R[5][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00003000)) 
    \R[5][5]_i_1 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(\R[5][5]_i_2_n_0 ),
        .I2(\R[5][7]_i_5_n_0 ),
        .I3(p_5_in),
        .I4(p_3_in),
        .I5(IOIN[5]),
        .O(\R[5][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFCFDFFF)) 
    \R[5][5]_i_2 
       (.I0(\R_reg[4][7]_i_8_n_6 ),
        .I1(\R[4][7]_i_7_n_0 ),
        .I2(\IR_reg_n_0_[6] ),
        .I3(p_2_in21_in),
        .I4(\R[4][5]_i_3_n_0 ),
        .O(\R[5][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC4FCCCCCCCCCC)) 
    \R[5][6]_i_1 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(IOIN[6]),
        .I2(\R[5][6]_i_2_n_0 ),
        .I3(\R[5][7]_i_5_n_0 ),
        .I4(p_3_in),
        .I5(p_5_in),
        .O(\R[5][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFCFDFFF)) 
    \R[5][6]_i_2 
       (.I0(\R_reg[4][7]_i_8_n_5 ),
        .I1(\R[4][7]_i_7_n_0 ),
        .I2(\IR_reg_n_0_[6] ),
        .I3(p_2_in21_in),
        .I4(\R[4][6]_i_3_n_0 ),
        .O(\R[5][6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \R[5][7]_i_1 
       (.I0(\R[3][7]_i_3_n_0 ),
        .I1(p_2_in21_in),
        .I2(\IR_reg_n_0_[6] ),
        .I3(\IR_reg_n_0_[4] ),
        .O(\R_reg[5]0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00003000)) 
    \R[5][7]_i_2 
       (.I0(\R[5][7]_i_3_n_0 ),
        .I1(\R[5][7]_i_4_n_0 ),
        .I2(\R[5][7]_i_5_n_0 ),
        .I3(p_5_in),
        .I4(p_3_in),
        .I5(IOIN[7]),
        .O(\R[5][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \R[5][7]_i_3 
       (.I0(p_2_in21_in),
        .I1(p_2_in4_in),
        .I2(p_3_in),
        .O(\R[5][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF74FFFF)) 
    \R[5][7]_i_4 
       (.I0(p_0_in14_in),
        .I1(p_2_in21_in),
        .I2(\R[4][7]_i_6_n_0 ),
        .I3(\R[4][7]_i_7_n_0 ),
        .I4(\IR_reg_n_0_[6] ),
        .O(\R[5][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \R[5][7]_i_5 
       (.I0(\IR_reg_n_0_[4] ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(p_2_in21_in),
        .O(\R[5][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[6][0]_i_1 
       (.I0(\R[5][0]_i_2_n_0 ),
        .I1(\R[6][7]_i_6_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[0]),
        .O(\R[6][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[6][1]_i_1 
       (.I0(\R[5][1]_i_2_n_0 ),
        .I1(\R[6][7]_i_6_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[1]),
        .O(\R[6][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[6][2]_i_1 
       (.I0(\R[5][2]_i_2_n_0 ),
        .I1(\R[6][7]_i_6_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[2]),
        .O(\R[6][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[6][3]_i_1 
       (.I0(\R[5][3]_i_2_n_0 ),
        .I1(\R[6][7]_i_6_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[3]),
        .O(\R[6][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[6][4]_i_1 
       (.I0(\R[5][4]_i_2_n_0 ),
        .I1(\R[6][7]_i_6_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[4]),
        .O(\R[6][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[6][5]_i_1 
       (.I0(\R[5][5]_i_2_n_0 ),
        .I1(\R[6][7]_i_6_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[5]),
        .O(\R[6][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[6][6]_i_1 
       (.I0(\R[5][6]_i_2_n_0 ),
        .I1(\R[6][7]_i_6_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[6]),
        .O(\R[6][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \R[6][7]_i_1 
       (.I0(\R[6][7]_i_3_n_0 ),
        .I1(p_2_in21_in),
        .I2(\R[6][7]_i_4_n_0 ),
        .I3(RESET),
        .I4(state_reg_n_0),
        .I5(\R[6][7]_i_5_n_0 ),
        .O(\R_reg[6]0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[6][7]_i_2 
       (.I0(\R[5][7]_i_4_n_0 ),
        .I1(\R[6][7]_i_6_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[7]),
        .O(\R[6][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \R[6][7]_i_3 
       (.I0(\IR_reg_n_0_[4] ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(p_2_in21_in),
        .O(\R[6][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R[6][7]_i_4 
       (.I0(\IR_reg_n_0_[6] ),
        .I1(p_2_in4_in),
        .O(\R[6][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R[6][7]_i_5 
       (.I0(p_5_in),
        .I1(p_3_in),
        .O(\R[6][7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \R[6][7]_i_6 
       (.I0(\IR_reg_n_0_[4] ),
        .I1(p_2_in21_in),
        .I2(\IR_reg_n_0_[6] ),
        .I3(p_3_in),
        .I4(p_2_in4_in),
        .O(\R[6][7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[7][0]_i_1 
       (.I0(\R[5][0]_i_2_n_0 ),
        .I1(\R[5][7]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[0]),
        .O(\R[7][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[7][1]_i_1 
       (.I0(\R[5][1]_i_2_n_0 ),
        .I1(\R[5][7]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[1]),
        .O(\R[7][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[7][2]_i_1 
       (.I0(\R[5][2]_i_2_n_0 ),
        .I1(\R[5][7]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[2]),
        .O(\R[7][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[7][3]_i_1 
       (.I0(\R[5][3]_i_2_n_0 ),
        .I1(\R[5][7]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[3]),
        .O(\R[7][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[7][4]_i_1 
       (.I0(\R[5][4]_i_2_n_0 ),
        .I1(\R[5][7]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[4]),
        .O(\R[7][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[7][5]_i_1 
       (.I0(\R[5][5]_i_2_n_0 ),
        .I1(\R[5][7]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[5]),
        .O(\R[7][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[7][6]_i_1 
       (.I0(\R[5][6]_i_2_n_0 ),
        .I1(\R[5][7]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[6]),
        .O(\R[7][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \R[7][7]_i_1 
       (.I0(\R[7][7]_i_3_n_0 ),
        .I1(RESET),
        .I2(state_reg_n_0),
        .I3(\R[6][7]_i_5_n_0 ),
        .I4(p_2_in21_in),
        .I5(p_2_in4_in),
        .O(\R_reg[7]0 ));
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    \R[7][7]_i_2 
       (.I0(\R[5][7]_i_4_n_0 ),
        .I1(\R[5][7]_i_3_n_0 ),
        .I2(p_5_in),
        .I3(p_3_in),
        .I4(IOIN[7]),
        .O(\R[7][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R[7][7]_i_3 
       (.I0(\IR_reg_n_0_[4] ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(p_2_in21_in),
        .O(\R[7][7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[0][0] 
       (.C(CLK),
        .CE(\R[0][7]_i_1_n_0 ),
        .D(\R[0][0]_i_1_n_0 ),
        .Q(\R_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[0][1] 
       (.C(CLK),
        .CE(\R[0][7]_i_1_n_0 ),
        .D(\R[0][1]_i_1_n_0 ),
        .Q(\R_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[0][2] 
       (.C(CLK),
        .CE(\R[0][7]_i_1_n_0 ),
        .D(\R[0][2]_i_1_n_0 ),
        .Q(\R_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[0][3] 
       (.C(CLK),
        .CE(\R[0][7]_i_1_n_0 ),
        .D(\R[0][3]_i_1_n_0 ),
        .Q(\R_reg_n_0_[0][3] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \R_reg[0][3]_i_2 
       (.CI(1'b0),
        .CO({\R_reg[0][3]_i_2_n_0 ,\R_reg[0][3]_i_2_n_1 ,\R_reg[0][3]_i_2_n_2 ,\R_reg[0][3]_i_2_n_3 }),
        .CYINIT(\R_reg_n_0_[0][0] ),
        .DI({p_2_in21_in,\IR_reg_n_0_[6] ,\IR_reg_n_0_[6] ,\SREG_reg_n_0_[0] }),
        .O({\R_reg[0][3]_i_2_n_4 ,\R_reg[0][3]_i_2_n_5 ,\R_reg[0][3]_i_2_n_6 ,\R_reg[0][3]_i_2_n_7 }),
        .S({\R[0][3]_i_3_n_0 ,\R[0][3]_i_4_n_0 ,\R[0][3]_i_5_n_0 ,\R[0][3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[0][4] 
       (.C(CLK),
        .CE(\R[0][7]_i_1_n_0 ),
        .D(\R[0][4]_i_1_n_0 ),
        .Q(\R_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[0][5] 
       (.C(CLK),
        .CE(\R[0][7]_i_1_n_0 ),
        .D(\R[0][5]_i_1_n_0 ),
        .Q(\R_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[0][6] 
       (.C(CLK),
        .CE(\R[0][7]_i_1_n_0 ),
        .D(\R[0][6]_i_1_n_0 ),
        .Q(\R_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[0][7] 
       (.C(CLK),
        .CE(\R[0][7]_i_1_n_0 ),
        .D(\R[0][7]_i_2_n_0 ),
        .Q(\R_reg_n_0_[0][7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \R_reg[0][7]_i_3 
       (.CI(\R_reg[0][3]_i_2_n_0 ),
        .CO({\NLW_R_reg[0][7]_i_3_CO_UNCONNECTED [3],\R_reg[0][7]_i_3_n_1 ,\R_reg[0][7]_i_3_n_2 ,\R_reg[0][7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\IR_reg_n_0_[6] ,\IR_reg_n_0_[6] ,\IR_reg_n_0_[4] }),
        .O({p_0_in5_in,\R_reg[0][7]_i_3_n_5 ,\R_reg[0][7]_i_3_n_6 ,\R_reg[0][7]_i_3_n_7 }),
        .S({\R[0][7]_i_4_n_0 ,\R[0][7]_i_5_n_0 ,\R[0][7]_i_6_n_0 ,\R[0][7]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[1][0] 
       (.C(CLK),
        .CE(\R_reg[1]0 ),
        .D(\R[1][0]_i_1_n_0 ),
        .Q(\R_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[1][1] 
       (.C(CLK),
        .CE(\R_reg[1]0 ),
        .D(\R[1][1]_i_1_n_0 ),
        .Q(\R_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[1][2] 
       (.C(CLK),
        .CE(\R_reg[1]0 ),
        .D(\R[1][2]_i_1_n_0 ),
        .Q(\R_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[1][3] 
       (.C(CLK),
        .CE(\R_reg[1]0 ),
        .D(\R[1][3]_i_1_n_0 ),
        .Q(\R_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[1][4] 
       (.C(CLK),
        .CE(\R_reg[1]0 ),
        .D(\R[1][4]_i_1_n_0 ),
        .Q(\R_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[1][5] 
       (.C(CLK),
        .CE(\R_reg[1]0 ),
        .D(\R[1][5]_i_1_n_0 ),
        .Q(\R_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[1][6] 
       (.C(CLK),
        .CE(\R_reg[1]0 ),
        .D(\R[1][6]_i_1_n_0 ),
        .Q(\R_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[1][7] 
       (.C(CLK),
        .CE(\R_reg[1]0 ),
        .D(\R[1][7]_i_2_n_0 ),
        .Q(\R_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[3][0] 
       (.C(CLK),
        .CE(\R_reg[3]0 ),
        .D(IOIN[0]),
        .Q(\R_reg_n_0_[3][0] ),
        .R(\R[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[3][1] 
       (.C(CLK),
        .CE(\R_reg[3]0 ),
        .D(IOIN[1]),
        .Q(\R_reg_n_0_[3][1] ),
        .R(\R[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[3][2] 
       (.C(CLK),
        .CE(\R_reg[3]0 ),
        .D(IOIN[2]),
        .Q(\R_reg_n_0_[3][2] ),
        .R(\R[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[3][3] 
       (.C(CLK),
        .CE(\R_reg[3]0 ),
        .D(IOIN[3]),
        .Q(\R_reg_n_0_[3][3] ),
        .R(\R[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[3][4] 
       (.C(CLK),
        .CE(\R_reg[3]0 ),
        .D(IOIN[4]),
        .Q(\R_reg_n_0_[3][4] ),
        .R(\R[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[3][5] 
       (.C(CLK),
        .CE(\R_reg[3]0 ),
        .D(IOIN[5]),
        .Q(\R_reg_n_0_[3][5] ),
        .R(\R[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[3][6] 
       (.C(CLK),
        .CE(\R_reg[3]0 ),
        .D(IOIN[6]),
        .Q(\R_reg_n_0_[3][6] ),
        .R(\R[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[3][7] 
       (.C(CLK),
        .CE(\R_reg[3]0 ),
        .D(IOIN[7]),
        .Q(\R_reg_n_0_[3][7] ),
        .R(\R[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[4][0] 
       (.C(CLK),
        .CE(\R_reg[4]0 ),
        .D(\R[4][0]_i_1_n_0 ),
        .Q(\R_reg_n_0_[4][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[4][1] 
       (.C(CLK),
        .CE(\R_reg[4]0 ),
        .D(\R[4][1]_i_1_n_0 ),
        .Q(\R_reg_n_0_[4][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[4][2] 
       (.C(CLK),
        .CE(\R_reg[4]0 ),
        .D(\R[4][2]_i_1_n_0 ),
        .Q(\R_reg_n_0_[4][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[4][3] 
       (.C(CLK),
        .CE(\R_reg[4]0 ),
        .D(\R[4][3]_i_1_n_0 ),
        .Q(\R_reg_n_0_[4][3] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \R_reg[4][3]_i_4 
       (.CI(1'b0),
        .CO({\R_reg[4][3]_i_4_n_0 ,\R_reg[4][3]_i_4_n_1 ,\R_reg[4][3]_i_4_n_2 ,\R_reg[4][3]_i_4_n_3 }),
        .CYINIT(\R[4][3]_i_6_n_0 ),
        .DI({p_8_in76_in,\R[4][2]_i_3_n_0 ,\R[4][1]_i_3_n_0 ,\SREG_reg_n_0_[0] }),
        .O({\R_reg[4][3]_i_4_n_4 ,\R_reg[4][3]_i_4_n_5 ,\R_reg[4][3]_i_4_n_6 ,\R_reg[4][3]_i_4_n_7 }),
        .S({\R[4][3]_i_7_n_0 ,\R[4][3]_i_8_n_0 ,\R[4][3]_i_9_n_0 ,\R[4][3]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \R_reg[4][3]_i_5 
       (.CI(1'b0),
        .CO({\R_reg[4][3]_i_5_n_0 ,\R_reg[4][3]_i_5_n_1 ,\R_reg[4][3]_i_5_n_2 ,\R_reg[4][3]_i_5_n_3 }),
        .CYINIT(\R[4][3]_i_11_n_0 ),
        .DI({\R[4][3]_i_12_n_0 ,\R[4][3]_i_13_n_0 ,\R[4][3]_i_14_n_0 ,\R[4][3]_i_15_n_0 }),
        .O({p_6_in99_in,\R_reg[4][3]_i_5_n_5 ,\R_reg[4][3]_i_5_n_6 ,\R_reg[4][3]_i_5_n_7 }),
        .S({\R[4][3]_i_16_n_0 ,\R[4][3]_i_17_n_0 ,\R[4][3]_i_18_n_0 ,\R[4][3]_i_19_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[4][4] 
       (.C(CLK),
        .CE(\R_reg[4]0 ),
        .D(\R[4][4]_i_1_n_0 ),
        .Q(\R_reg_n_0_[4][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[4][5] 
       (.C(CLK),
        .CE(\R_reg[4]0 ),
        .D(\R[4][5]_i_1_n_0 ),
        .Q(\R_reg_n_0_[4][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[4][6] 
       (.C(CLK),
        .CE(\R_reg[4]0 ),
        .D(\R[4][6]_i_1_n_0 ),
        .Q(\R_reg_n_0_[4][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[4][7] 
       (.C(CLK),
        .CE(\R_reg[4]0 ),
        .D(\R[4][7]_i_2_n_0 ),
        .Q(\R_reg_n_0_[4][7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \R_reg[4][7]_i_8 
       (.CI(\R_reg[4][3]_i_4_n_0 ),
        .CO({\NLW_R_reg[4][7]_i_8_CO_UNCONNECTED [3],\R_reg[4][7]_i_8_n_1 ,\R_reg[4][7]_i_8_n_2 ,\R_reg[4][7]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\R[4][6]_i_3_n_0 ,\R[4][5]_i_3_n_0 ,\R[4][4]_i_3_n_0 }),
        .O({p_0_in14_in,\R_reg[4][7]_i_8_n_5 ,\R_reg[4][7]_i_8_n_6 ,\R_reg[4][7]_i_8_n_7 }),
        .S({\R[4][7]_i_10_n_0 ,\R[4][7]_i_11_n_0 ,\R[4][7]_i_12_n_0 ,\R[4][7]_i_13_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \R_reg[4][7]_i_9 
       (.CI(\R_reg[4][3]_i_5_n_0 ),
        .CO({\NLW_R_reg[4][7]_i_9_CO_UNCONNECTED [3],\R_reg[4][7]_i_9_n_1 ,\R_reg[4][7]_i_9_n_2 ,\R_reg[4][7]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\R[4][7]_i_14_n_0 ,\R[4][7]_i_15_n_0 ,\R[4][7]_i_16_n_0 }),
        .O({p_0_in11_in,\R_reg[4][7]_i_9_n_5 ,\R_reg[4][7]_i_9_n_6 ,\R_reg[4][7]_i_9_n_7 }),
        .S({\R[4][7]_i_17_n_0 ,\R[4][7]_i_18_n_0 ,\R[4][7]_i_19_n_0 ,\R[4][7]_i_20_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[5][0] 
       (.C(CLK),
        .CE(\R_reg[5]0 ),
        .D(\R[5][0]_i_1_n_0 ),
        .Q(\R_reg_n_0_[5][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[5][1] 
       (.C(CLK),
        .CE(\R_reg[5]0 ),
        .D(\R[5][1]_i_1_n_0 ),
        .Q(\R_reg_n_0_[5][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[5][2] 
       (.C(CLK),
        .CE(\R_reg[5]0 ),
        .D(\R[5][2]_i_1_n_0 ),
        .Q(\R_reg_n_0_[5][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[5][3] 
       (.C(CLK),
        .CE(\R_reg[5]0 ),
        .D(\R[5][3]_i_1_n_0 ),
        .Q(\R_reg_n_0_[5][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[5][4] 
       (.C(CLK),
        .CE(\R_reg[5]0 ),
        .D(\R[5][4]_i_1_n_0 ),
        .Q(\R_reg_n_0_[5][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[5][5] 
       (.C(CLK),
        .CE(\R_reg[5]0 ),
        .D(\R[5][5]_i_1_n_0 ),
        .Q(\R_reg_n_0_[5][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[5][6] 
       (.C(CLK),
        .CE(\R_reg[5]0 ),
        .D(\R[5][6]_i_1_n_0 ),
        .Q(\R_reg_n_0_[5][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[5][7] 
       (.C(CLK),
        .CE(\R_reg[5]0 ),
        .D(\R[5][7]_i_2_n_0 ),
        .Q(\R_reg_n_0_[5][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[6][0] 
       (.C(CLK),
        .CE(\R_reg[6]0 ),
        .D(\R[6][0]_i_1_n_0 ),
        .Q(\R_reg_n_0_[6][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[6][1] 
       (.C(CLK),
        .CE(\R_reg[6]0 ),
        .D(\R[6][1]_i_1_n_0 ),
        .Q(\R_reg_n_0_[6][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[6][2] 
       (.C(CLK),
        .CE(\R_reg[6]0 ),
        .D(\R[6][2]_i_1_n_0 ),
        .Q(\R_reg_n_0_[6][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[6][3] 
       (.C(CLK),
        .CE(\R_reg[6]0 ),
        .D(\R[6][3]_i_1_n_0 ),
        .Q(\R_reg_n_0_[6][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[6][4] 
       (.C(CLK),
        .CE(\R_reg[6]0 ),
        .D(\R[6][4]_i_1_n_0 ),
        .Q(\R_reg_n_0_[6][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[6][5] 
       (.C(CLK),
        .CE(\R_reg[6]0 ),
        .D(\R[6][5]_i_1_n_0 ),
        .Q(\R_reg_n_0_[6][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[6][6] 
       (.C(CLK),
        .CE(\R_reg[6]0 ),
        .D(\R[6][6]_i_1_n_0 ),
        .Q(\R_reg_n_0_[6][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[6][7] 
       (.C(CLK),
        .CE(\R_reg[6]0 ),
        .D(\R[6][7]_i_2_n_0 ),
        .Q(\R_reg_n_0_[6][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[7][0] 
       (.C(CLK),
        .CE(\R_reg[7]0 ),
        .D(\R[7][0]_i_1_n_0 ),
        .Q(\R_reg_n_0_[7][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[7][1] 
       (.C(CLK),
        .CE(\R_reg[7]0 ),
        .D(\R[7][1]_i_1_n_0 ),
        .Q(\R_reg_n_0_[7][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[7][2] 
       (.C(CLK),
        .CE(\R_reg[7]0 ),
        .D(\R[7][2]_i_1_n_0 ),
        .Q(\R_reg_n_0_[7][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[7][3] 
       (.C(CLK),
        .CE(\R_reg[7]0 ),
        .D(\R[7][3]_i_1_n_0 ),
        .Q(\R_reg_n_0_[7][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[7][4] 
       (.C(CLK),
        .CE(\R_reg[7]0 ),
        .D(\R[7][4]_i_1_n_0 ),
        .Q(\R_reg_n_0_[7][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[7][5] 
       (.C(CLK),
        .CE(\R_reg[7]0 ),
        .D(\R[7][5]_i_1_n_0 ),
        .Q(\R_reg_n_0_[7][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[7][6] 
       (.C(CLK),
        .CE(\R_reg[7]0 ),
        .D(\R[7][6]_i_1_n_0 ),
        .Q(\R_reg_n_0_[7][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[7][7] 
       (.C(CLK),
        .CE(\R_reg[7]0 ),
        .D(\R[7][7]_i_2_n_0 ),
        .Q(\R_reg_n_0_[7][7] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    \SREG[0]_i_1 
       (.I0(\SREG[0]_i_2_n_0 ),
        .I1(\SREG[0]_i_3_n_0 ),
        .I2(\SREG[0]_i_4_n_0 ),
        .I3(\SREG[0]_i_5_n_0 ),
        .I4(\SREG_reg_n_0_[0] ),
        .O(\SREG[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SREG[0]_i_10 
       (.I0(p_3_in),
        .I1(p_5_in),
        .O(\SREG[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SREG[0]_i_12 
       (.I0(\R[4][7]_i_21_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][7]_i_22_n_0 ),
        .O(\SREG[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SREG[0]_i_13 
       (.I0(\R[4][7]_i_23_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][7]_i_24_n_0 ),
        .O(\SREG[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SREG[0]_i_14 
       (.I0(\R[4][7]_i_25_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][7]_i_26_n_0 ),
        .O(\SREG[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SREG[0]_i_15 
       (.I0(\SREG_reg[0]_i_7_n_0 ),
        .I1(\R[4][7]_i_6_n_0 ),
        .O(\SREG[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \SREG[0]_i_16 
       (.I0(\R[4][7]_i_21_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][7]_i_22_n_0 ),
        .I3(\R[4][6]_i_3_n_0 ),
        .O(\SREG[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \SREG[0]_i_17 
       (.I0(\R[4][7]_i_23_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][7]_i_24_n_0 ),
        .I3(\R[4][5]_i_3_n_0 ),
        .O(\SREG[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \SREG[0]_i_18 
       (.I0(\R[4][7]_i_25_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][7]_i_26_n_0 ),
        .I3(\R[4][4]_i_3_n_0 ),
        .O(\SREG[0]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \SREG[0]_i_19 
       (.I0(\R_reg_n_0_[3][7] ),
        .I1(\IR_reg_n_0_[4] ),
        .I2(\R_reg_n_0_[1][7] ),
        .I3(p_2_in21_in),
        .I4(\R_reg_n_0_[0][7] ),
        .O(\SREG[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00A0088AA0AA088A)) 
    \SREG[0]_i_2 
       (.I0(\R[6][7]_i_5_n_0 ),
        .I1(p_0_in8_in),
        .I2(\SREG_reg[0]_i_7_n_0 ),
        .I3(\R[4][7]_i_6_n_0 ),
        .I4(\IR_reg_n_0_[6] ),
        .I5(p_0_in14_in),
        .O(\SREG[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SREG[0]_i_20 
       (.I0(\R_reg_n_0_[7][7] ),
        .I1(\R_reg_n_0_[6][7] ),
        .I2(\IR_reg_n_0_[4] ),
        .I3(\R_reg_n_0_[5][7] ),
        .I4(p_2_in21_in),
        .I5(\R_reg_n_0_[4][7] ),
        .O(\SREG[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SREG[0]_i_22 
       (.I0(p_2_in21_in),
        .I1(\R_reg_n_0_[0][7] ),
        .O(\SREG[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SREG[0]_i_23 
       (.I0(\R_reg_n_0_[0][6] ),
        .I1(\IR_reg_n_0_[6] ),
        .O(\SREG[0]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SREG[0]_i_24 
       (.I0(\R_reg_n_0_[0][5] ),
        .I1(\IR_reg_n_0_[6] ),
        .O(\SREG[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SREG[0]_i_25 
       (.I0(\R_reg_n_0_[0][4] ),
        .I1(\IR_reg_n_0_[4] ),
        .O(\SREG[0]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SREG[0]_i_26 
       (.I0(\R[4][3]_i_22_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_23_n_0 ),
        .O(\SREG[0]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SREG[0]_i_27 
       (.I0(\R[4][3]_i_24_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_25_n_0 ),
        .O(\SREG[0]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SREG[0]_i_28 
       (.I0(\R[4][3]_i_26_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_27_n_0 ),
        .O(\SREG[0]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SREG[0]_i_29 
       (.I0(\R[4][3]_i_20_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_21_n_0 ),
        .O(\SREG[0]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB2000000)) 
    \SREG[0]_i_3 
       (.I0(\SREG_reg[0]_i_8_n_4 ),
        .I1(\R_reg_n_0_[0][7] ),
        .I2(p_2_in21_in),
        .I3(p_3_in),
        .I4(p_5_in),
        .O(\SREG[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \SREG[0]_i_30 
       (.I0(\R[4][3]_i_22_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_23_n_0 ),
        .I3(p_8_in76_in),
        .O(\SREG[0]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \SREG[0]_i_31 
       (.I0(\R[4][3]_i_24_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_25_n_0 ),
        .I3(\R[4][2]_i_3_n_0 ),
        .O(\SREG[0]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \SREG[0]_i_32 
       (.I0(\R[4][3]_i_26_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_27_n_0 ),
        .I3(\R[4][1]_i_3_n_0 ),
        .O(\SREG[0]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \SREG[0]_i_33 
       (.I0(\R[4][3]_i_20_n_0 ),
        .I1(\IR_reg_n_0_[6] ),
        .I2(\R[4][3]_i_21_n_0 ),
        .I3(\R[4][0]_i_3_n_0 ),
        .O(\SREG[0]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SREG[0]_i_34 
       (.I0(\R_reg_n_0_[0][3] ),
        .I1(p_2_in21_in),
        .O(\SREG[0]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SREG[0]_i_35 
       (.I0(\R_reg_n_0_[0][2] ),
        .I1(\IR_reg_n_0_[6] ),
        .O(\SREG[0]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SREG[0]_i_36 
       (.I0(\R_reg_n_0_[0][1] ),
        .I1(\IR_reg_n_0_[6] ),
        .O(\SREG[0]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SREG[0]_i_37 
       (.I0(\R_reg_n_0_[0][0] ),
        .I1(\IR_reg_n_0_[4] ),
        .O(\SREG[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAABABABAAA)) 
    \SREG[0]_i_4 
       (.I0(\SREG[0]_i_9_n_0 ),
        .I1(p_5_in),
        .I2(p_3_in),
        .I3(\R_reg_n_0_[0][7] ),
        .I4(p_2_in21_in),
        .I5(p_0_in5_in),
        .O(\SREG[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \SREG[0]_i_5 
       (.I0(\IR_reg_n_0_[6] ),
        .I1(\R[3][7]_i_3_n_0 ),
        .I2(p_2_in4_in),
        .I3(RESET),
        .I4(state_reg_n_0),
        .I5(\SREG[0]_i_10_n_0 ),
        .O(\SREG[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \SREG[0]_i_9 
       (.I0(p_5_in),
        .I1(p_3_in),
        .I2(\SREG_reg_n_0_[0] ),
        .I3(\IR_reg_n_0_[4] ),
        .O(\SREG[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SREG_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\SREG[0]_i_1_n_0 ),
        .Q(\SREG_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \SREG_reg[0]_i_11 
       (.CI(1'b0),
        .CO({\SREG_reg[0]_i_11_n_0 ,\SREG_reg[0]_i_11_n_1 ,\SREG_reg[0]_i_11_n_2 ,\SREG_reg[0]_i_11_n_3 }),
        .CYINIT(1'b1),
        .DI({\SREG[0]_i_26_n_0 ,\SREG[0]_i_27_n_0 ,\SREG[0]_i_28_n_0 ,\SREG[0]_i_29_n_0 }),
        .O(\NLW_SREG_reg[0]_i_11_O_UNCONNECTED [3:0]),
        .S({\SREG[0]_i_30_n_0 ,\SREG[0]_i_31_n_0 ,\SREG[0]_i_32_n_0 ,\SREG[0]_i_33_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \SREG_reg[0]_i_21 
       (.CI(1'b0),
        .CO({\SREG_reg[0]_i_21_n_0 ,\SREG_reg[0]_i_21_n_1 ,\SREG_reg[0]_i_21_n_2 ,\SREG_reg[0]_i_21_n_3 }),
        .CYINIT(1'b1),
        .DI({\R_reg_n_0_[0][3] ,\R_reg_n_0_[0][2] ,\R_reg_n_0_[0][1] ,\R_reg_n_0_[0][0] }),
        .O(\NLW_SREG_reg[0]_i_21_O_UNCONNECTED [3:0]),
        .S({\SREG[0]_i_34_n_0 ,\SREG[0]_i_35_n_0 ,\SREG[0]_i_36_n_0 ,\SREG[0]_i_37_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \SREG_reg[0]_i_6 
       (.CI(\SREG_reg[0]_i_11_n_0 ),
        .CO({\NLW_SREG_reg[0]_i_6_CO_UNCONNECTED [3],\SREG_reg[0]_i_6_n_1 ,\SREG_reg[0]_i_6_n_2 ,\SREG_reg[0]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\SREG[0]_i_12_n_0 ,\SREG[0]_i_13_n_0 ,\SREG[0]_i_14_n_0 }),
        .O({p_0_in8_in,\NLW_SREG_reg[0]_i_6_O_UNCONNECTED [2:0]}),
        .S({\SREG[0]_i_15_n_0 ,\SREG[0]_i_16_n_0 ,\SREG[0]_i_17_n_0 ,\SREG[0]_i_18_n_0 }));
  MUXF7 \SREG_reg[0]_i_7 
       (.I0(\SREG[0]_i_19_n_0 ),
        .I1(\SREG[0]_i_20_n_0 ),
        .O(\SREG_reg[0]_i_7_n_0 ),
        .S(\IR_reg_n_0_[6] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \SREG_reg[0]_i_8 
       (.CI(\SREG_reg[0]_i_21_n_0 ),
        .CO({\NLW_SREG_reg[0]_i_8_CO_UNCONNECTED [3],\SREG_reg[0]_i_8_n_1 ,\SREG_reg[0]_i_8_n_2 ,\SREG_reg[0]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\R_reg_n_0_[0][6] ,\R_reg_n_0_[0][5] ,\R_reg_n_0_[0][4] }),
        .O({\SREG_reg[0]_i_8_n_4 ,\NLW_SREG_reg[0]_i_8_O_UNCONNECTED [2:0]}),
        .S({\SREG[0]_i_22_n_0 ,\SREG[0]_i_23_n_0 ,\SREG[0]_i_24_n_0 ,\SREG[0]_i_25_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    state_i_1
       (.I0(state_reg_n_0),
        .O(state));
  FDCE state_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RESET),
        .D(state),
        .Q(state_reg_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
