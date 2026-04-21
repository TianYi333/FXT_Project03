// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Jun 25 12:26:08 2025
// Host        : FXT333 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_Sim_ad_data_gen_0_0_sim_netlist.v
// Design      : system_Sim_ad_data_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sim_ad_data_gen
   (m_axis_tdata,
    m_axis_tvalid,
    reset_n,
    clk_in,
    rx_data_last,
    rx_data_data,
    m_axis_tready,
    rx_cmd,
    rx_cmd_valid);
  output [7:0]m_axis_tdata;
  output m_axis_tvalid;
  input reset_n;
  input clk_in;
  input rx_data_last;
  input [7:0]rx_data_data;
  input m_axis_tready;
  input [15:0]rx_cmd;
  input rx_cmd_valid;

  wire clk_in;
  wire [15:0]high_cnt;
  wire \high_cnt[0]_i_1_n_0 ;
  wire \high_cnt[15]_i_1_n_0 ;
  wire high_cnt_2;
  wire \high_cnt_reg[12]_i_1_n_0 ;
  wire \high_cnt_reg[12]_i_1_n_1 ;
  wire \high_cnt_reg[12]_i_1_n_2 ;
  wire \high_cnt_reg[12]_i_1_n_3 ;
  wire \high_cnt_reg[15]_i_3_n_2 ;
  wire \high_cnt_reg[15]_i_3_n_3 ;
  wire \high_cnt_reg[4]_i_1_n_0 ;
  wire \high_cnt_reg[4]_i_1_n_1 ;
  wire \high_cnt_reg[4]_i_1_n_2 ;
  wire \high_cnt_reg[4]_i_1_n_3 ;
  wire \high_cnt_reg[8]_i_1_n_0 ;
  wire \high_cnt_reg[8]_i_1_n_1 ;
  wire \high_cnt_reg[8]_i_1_n_2 ;
  wire \high_cnt_reg[8]_i_1_n_3 ;
  wire [15:0]high_num;
  wire high_num_12;
  wire [15:0]low_cnt;
  wire \low_cnt[0]_i_1_n_0 ;
  wire \low_cnt[15]_i_1_n_0 ;
  wire low_cnt_1;
  wire \low_cnt_reg[12]_i_1_n_0 ;
  wire \low_cnt_reg[12]_i_1_n_1 ;
  wire \low_cnt_reg[12]_i_1_n_2 ;
  wire \low_cnt_reg[12]_i_1_n_3 ;
  wire \low_cnt_reg[12]_i_1_n_4 ;
  wire \low_cnt_reg[12]_i_1_n_5 ;
  wire \low_cnt_reg[12]_i_1_n_6 ;
  wire \low_cnt_reg[12]_i_1_n_7 ;
  wire \low_cnt_reg[15]_i_3_n_2 ;
  wire \low_cnt_reg[15]_i_3_n_3 ;
  wire \low_cnt_reg[15]_i_3_n_5 ;
  wire \low_cnt_reg[15]_i_3_n_6 ;
  wire \low_cnt_reg[15]_i_3_n_7 ;
  wire \low_cnt_reg[4]_i_1_n_0 ;
  wire \low_cnt_reg[4]_i_1_n_1 ;
  wire \low_cnt_reg[4]_i_1_n_2 ;
  wire \low_cnt_reg[4]_i_1_n_3 ;
  wire \low_cnt_reg[4]_i_1_n_4 ;
  wire \low_cnt_reg[4]_i_1_n_5 ;
  wire \low_cnt_reg[4]_i_1_n_6 ;
  wire \low_cnt_reg[4]_i_1_n_7 ;
  wire \low_cnt_reg[8]_i_1_n_0 ;
  wire \low_cnt_reg[8]_i_1_n_1 ;
  wire \low_cnt_reg[8]_i_1_n_2 ;
  wire \low_cnt_reg[8]_i_1_n_3 ;
  wire \low_cnt_reg[8]_i_1_n_4 ;
  wire \low_cnt_reg[8]_i_1_n_5 ;
  wire \low_cnt_reg[8]_i_1_n_6 ;
  wire \low_cnt_reg[8]_i_1_n_7 ;
  wire [15:0]low_num;
  wire ltOp;
  wire ltOp__23_carry__0_i_1_n_0;
  wire ltOp__23_carry__0_i_2_n_0;
  wire ltOp__23_carry__0_i_3_n_0;
  wire ltOp__23_carry__0_i_4_n_0;
  wire ltOp__23_carry__0_i_5_n_0;
  wire ltOp__23_carry__0_i_6_n_0;
  wire ltOp__23_carry__0_i_7_n_0;
  wire ltOp__23_carry__0_i_8_n_0;
  wire ltOp__23_carry__0_n_0;
  wire ltOp__23_carry__0_n_1;
  wire ltOp__23_carry__0_n_2;
  wire ltOp__23_carry__0_n_3;
  wire ltOp__23_carry_i_1_n_0;
  wire ltOp__23_carry_i_2_n_0;
  wire ltOp__23_carry_i_3_n_0;
  wire ltOp__23_carry_i_4_n_0;
  wire ltOp__23_carry_i_5_n_0;
  wire ltOp__23_carry_i_6_n_0;
  wire ltOp__23_carry_i_7_n_0;
  wire ltOp__23_carry_i_8_n_0;
  wire ltOp__23_carry_n_0;
  wire ltOp__23_carry_n_1;
  wire ltOp__23_carry_n_2;
  wire ltOp__23_carry_n_3;
  wire ltOp__7_carry__0_i_1_n_0;
  wire ltOp__7_carry__0_i_2_n_0;
  wire ltOp__7_carry__0_i_3_n_0;
  wire ltOp__7_carry__0_i_4_n_0;
  wire ltOp__7_carry__0_i_5_n_0;
  wire ltOp__7_carry__0_i_6_n_0;
  wire ltOp__7_carry__0_i_7_n_0;
  wire ltOp__7_carry__0_i_8_n_0;
  wire ltOp__7_carry__0_n_0;
  wire ltOp__7_carry__0_n_1;
  wire ltOp__7_carry__0_n_2;
  wire ltOp__7_carry__0_n_3;
  wire ltOp__7_carry__1_i_1_n_0;
  wire ltOp__7_carry__1_i_2_n_0;
  wire ltOp__7_carry__1_i_3_n_0;
  wire ltOp__7_carry__1_i_4_n_0;
  wire ltOp__7_carry__1_i_5_n_0;
  wire ltOp__7_carry__1_i_6_n_0;
  wire ltOp__7_carry__1_i_7_n_0;
  wire ltOp__7_carry__1_i_8_n_0;
  wire ltOp__7_carry__1_n_0;
  wire ltOp__7_carry__1_n_1;
  wire ltOp__7_carry__1_n_2;
  wire ltOp__7_carry__1_n_3;
  wire ltOp__7_carry__2_i_1_n_0;
  wire ltOp__7_carry__2_i_2_n_0;
  wire ltOp__7_carry__2_i_3_n_0;
  wire ltOp__7_carry__2_i_4_n_0;
  wire ltOp__7_carry__2_i_5_n_0;
  wire ltOp__7_carry__2_i_6_n_0;
  wire ltOp__7_carry__2_i_7_n_0;
  wire ltOp__7_carry__2_i_8_n_0;
  wire ltOp__7_carry__2_n_0;
  wire ltOp__7_carry__2_n_1;
  wire ltOp__7_carry__2_n_2;
  wire ltOp__7_carry__2_n_3;
  wire ltOp__7_carry_i_1_n_0;
  wire ltOp__7_carry_i_2_n_0;
  wire ltOp__7_carry_i_3_n_0;
  wire ltOp__7_carry_i_4_n_0;
  wire ltOp__7_carry_i_5_n_0;
  wire ltOp__7_carry_i_6_n_0;
  wire ltOp__7_carry_i_7_n_0;
  wire ltOp__7_carry_i_8_n_0;
  wire ltOp__7_carry_n_0;
  wire ltOp__7_carry_n_1;
  wire ltOp__7_carry_n_2;
  wire ltOp__7_carry_n_3;
  wire ltOp_carry__0_i_1_n_0;
  wire ltOp_carry__0_i_2_n_0;
  wire ltOp_carry__0_i_3_n_0;
  wire ltOp_carry__0_i_4_n_0;
  wire ltOp_carry__0_i_5_n_0;
  wire ltOp_carry__0_i_6_n_0;
  wire ltOp_carry__0_i_7_n_0;
  wire ltOp_carry__0_i_8_n_0;
  wire ltOp_carry__0_n_1;
  wire ltOp_carry__0_n_2;
  wire ltOp_carry__0_n_3;
  wire ltOp_carry_i_1_n_0;
  wire ltOp_carry_i_2_n_0;
  wire ltOp_carry_i_3_n_0;
  wire ltOp_carry_i_4_n_0;
  wire ltOp_carry_i_5_n_0;
  wire ltOp_carry_i_6_n_0;
  wire ltOp_carry_i_7_n_0;
  wire ltOp_carry_i_8_n_0;
  wire ltOp_carry_n_0;
  wire ltOp_carry_n_1;
  wire ltOp_carry_n_2;
  wire ltOp_carry_n_3;
  wire [7:0]m_axis_tdata;
  wire [7:0]m_axis_tdata1;
  wire \m_axis_tdata1[0]_i_1_n_0 ;
  wire \m_axis_tdata1[1]_i_1_n_0 ;
  wire \m_axis_tdata1[2]_i_1_n_0 ;
  wire \m_axis_tdata1[3]_i_1_n_0 ;
  wire \m_axis_tdata1[4]_i_1_n_0 ;
  wire \m_axis_tdata1[5]_i_1_n_0 ;
  wire \m_axis_tdata1[5]_i_2_n_0 ;
  wire \m_axis_tdata1[6]_i_1_n_0 ;
  wire \m_axis_tdata1[7]_i_2_n_0 ;
  wire \m_axis_tdata1[7]_i_3_n_0 ;
  wire m_axis_tdata1_0;
  wire m_axis_tready;
  wire m_axis_tready1;
  wire m_axis_tvalid;
  wire m_axis_tvalid1;
  wire m_axis_tvalid1_i_1_n_0;
  wire m_axis_tvalid1_i_2_n_0;
  wire [2:1]p_2_in;
  wire [15:1]plusOp;
  wire [31:0]re_cnt;
  wire \re_cnt[0]_i_1_n_0 ;
  wire \re_cnt[31]_i_1_n_0 ;
  wire re_cnt_11;
  wire \re_cnt_reg[12]_i_1_n_0 ;
  wire \re_cnt_reg[12]_i_1_n_1 ;
  wire \re_cnt_reg[12]_i_1_n_2 ;
  wire \re_cnt_reg[12]_i_1_n_3 ;
  wire \re_cnt_reg[12]_i_1_n_4 ;
  wire \re_cnt_reg[12]_i_1_n_5 ;
  wire \re_cnt_reg[12]_i_1_n_6 ;
  wire \re_cnt_reg[12]_i_1_n_7 ;
  wire \re_cnt_reg[16]_i_1_n_0 ;
  wire \re_cnt_reg[16]_i_1_n_1 ;
  wire \re_cnt_reg[16]_i_1_n_2 ;
  wire \re_cnt_reg[16]_i_1_n_3 ;
  wire \re_cnt_reg[16]_i_1_n_4 ;
  wire \re_cnt_reg[16]_i_1_n_5 ;
  wire \re_cnt_reg[16]_i_1_n_6 ;
  wire \re_cnt_reg[16]_i_1_n_7 ;
  wire \re_cnt_reg[20]_i_1_n_0 ;
  wire \re_cnt_reg[20]_i_1_n_1 ;
  wire \re_cnt_reg[20]_i_1_n_2 ;
  wire \re_cnt_reg[20]_i_1_n_3 ;
  wire \re_cnt_reg[20]_i_1_n_4 ;
  wire \re_cnt_reg[20]_i_1_n_5 ;
  wire \re_cnt_reg[20]_i_1_n_6 ;
  wire \re_cnt_reg[20]_i_1_n_7 ;
  wire \re_cnt_reg[24]_i_1_n_0 ;
  wire \re_cnt_reg[24]_i_1_n_1 ;
  wire \re_cnt_reg[24]_i_1_n_2 ;
  wire \re_cnt_reg[24]_i_1_n_3 ;
  wire \re_cnt_reg[24]_i_1_n_4 ;
  wire \re_cnt_reg[24]_i_1_n_5 ;
  wire \re_cnt_reg[24]_i_1_n_6 ;
  wire \re_cnt_reg[24]_i_1_n_7 ;
  wire \re_cnt_reg[28]_i_1_n_0 ;
  wire \re_cnt_reg[28]_i_1_n_1 ;
  wire \re_cnt_reg[28]_i_1_n_2 ;
  wire \re_cnt_reg[28]_i_1_n_3 ;
  wire \re_cnt_reg[28]_i_1_n_4 ;
  wire \re_cnt_reg[28]_i_1_n_5 ;
  wire \re_cnt_reg[28]_i_1_n_6 ;
  wire \re_cnt_reg[28]_i_1_n_7 ;
  wire \re_cnt_reg[31]_i_3_n_2 ;
  wire \re_cnt_reg[31]_i_3_n_3 ;
  wire \re_cnt_reg[31]_i_3_n_5 ;
  wire \re_cnt_reg[31]_i_3_n_6 ;
  wire \re_cnt_reg[31]_i_3_n_7 ;
  wire \re_cnt_reg[4]_i_1_n_0 ;
  wire \re_cnt_reg[4]_i_1_n_1 ;
  wire \re_cnt_reg[4]_i_1_n_2 ;
  wire \re_cnt_reg[4]_i_1_n_3 ;
  wire \re_cnt_reg[4]_i_1_n_4 ;
  wire \re_cnt_reg[4]_i_1_n_5 ;
  wire \re_cnt_reg[4]_i_1_n_6 ;
  wire \re_cnt_reg[4]_i_1_n_7 ;
  wire \re_cnt_reg[8]_i_1_n_0 ;
  wire \re_cnt_reg[8]_i_1_n_1 ;
  wire \re_cnt_reg[8]_i_1_n_2 ;
  wire \re_cnt_reg[8]_i_1_n_3 ;
  wire \re_cnt_reg[8]_i_1_n_4 ;
  wire \re_cnt_reg[8]_i_1_n_5 ;
  wire \re_cnt_reg[8]_i_1_n_6 ;
  wire \re_cnt_reg[8]_i_1_n_7 ;
  wire [31:0]re_num;
  wire reset_n;
  wire \rx_array_temp[0]_9 ;
  wire \rx_array_temp[1]_10 ;
  wire \rx_array_temp[2]_8 ;
  wire \rx_array_temp[3][7]_i_2_n_0 ;
  wire \rx_array_temp[3][7]_i_3_n_0 ;
  wire \rx_array_temp[3][7]_i_4_n_0 ;
  wire \rx_array_temp[3][7]_i_5_n_0 ;
  wire \rx_array_temp[3][7]_i_6_n_0 ;
  wire \rx_array_temp[3][7]_i_7_n_0 ;
  wire \rx_array_temp[3][7]_i_8_n_0 ;
  wire \rx_array_temp[3][7]_i_9_n_0 ;
  wire \rx_array_temp[3]_5 ;
  wire \rx_array_temp[4]_6 ;
  wire \rx_array_temp[5]_3 ;
  wire \rx_array_temp[6]_7 ;
  wire \rx_array_temp[7]_4 ;
  wire [7:0]\rx_array_temp_reg[0] ;
  wire [7:0]\rx_array_temp_reg[1] ;
  wire [7:0]\rx_array_temp_reg[2] ;
  wire [7:0]\rx_array_temp_reg[3] ;
  wire [7:0]\rx_array_temp_reg[4] ;
  wire [7:0]\rx_array_temp_reg[5] ;
  wire [7:0]\rx_array_temp_reg[6] ;
  wire [7:0]\rx_array_temp_reg[7] ;
  wire [15:0]rx_cmd;
  wire rx_cmd_valid;
  wire [7:0]rx_data_data;
  wire [7:0]rx_data_data1;
  wire rx_data_last;
  wire rx_data_last1;
  wire rx_index;
  wire [31:1]rx_index0;
  wire \rx_index[0]_i_1_n_0 ;
  wire \rx_index[31]_i_1_n_0 ;
  wire \rx_index_reg[12]_i_1_n_0 ;
  wire \rx_index_reg[12]_i_1_n_1 ;
  wire \rx_index_reg[12]_i_1_n_2 ;
  wire \rx_index_reg[12]_i_1_n_3 ;
  wire \rx_index_reg[16]_i_1_n_0 ;
  wire \rx_index_reg[16]_i_1_n_1 ;
  wire \rx_index_reg[16]_i_1_n_2 ;
  wire \rx_index_reg[16]_i_1_n_3 ;
  wire \rx_index_reg[20]_i_1_n_0 ;
  wire \rx_index_reg[20]_i_1_n_1 ;
  wire \rx_index_reg[20]_i_1_n_2 ;
  wire \rx_index_reg[20]_i_1_n_3 ;
  wire \rx_index_reg[24]_i_1_n_0 ;
  wire \rx_index_reg[24]_i_1_n_1 ;
  wire \rx_index_reg[24]_i_1_n_2 ;
  wire \rx_index_reg[24]_i_1_n_3 ;
  wire \rx_index_reg[28]_i_1_n_0 ;
  wire \rx_index_reg[28]_i_1_n_1 ;
  wire \rx_index_reg[28]_i_1_n_2 ;
  wire \rx_index_reg[28]_i_1_n_3 ;
  wire \rx_index_reg[31]_i_3_n_2 ;
  wire \rx_index_reg[31]_i_3_n_3 ;
  wire \rx_index_reg[4]_i_1_n_0 ;
  wire \rx_index_reg[4]_i_1_n_1 ;
  wire \rx_index_reg[4]_i_1_n_2 ;
  wire \rx_index_reg[4]_i_1_n_3 ;
  wire \rx_index_reg[8]_i_1_n_0 ;
  wire \rx_index_reg[8]_i_1_n_1 ;
  wire \rx_index_reg[8]_i_1_n_2 ;
  wire \rx_index_reg[8]_i_1_n_3 ;
  wire [31:0]sel0;
  wire state_main1;
  wire state_main1_carry__0_i_1_n_0;
  wire state_main1_carry__0_i_2_n_0;
  wire state_main1_carry__0_i_3_n_0;
  wire state_main1_carry__0_i_4_n_0;
  wire state_main1_carry__0_n_0;
  wire state_main1_carry__0_n_1;
  wire state_main1_carry__0_n_2;
  wire state_main1_carry__0_n_3;
  wire state_main1_carry__1_i_1_n_0;
  wire state_main1_carry__1_i_2_n_0;
  wire state_main1_carry__1_i_3_n_0;
  wire state_main1_carry__1_i_4_n_0;
  wire state_main1_carry__1_n_0;
  wire state_main1_carry__1_n_1;
  wire state_main1_carry__1_n_2;
  wire state_main1_carry__1_n_3;
  wire state_main1_carry__2_i_1_n_0;
  wire state_main1_carry__2_i_2_n_0;
  wire state_main1_carry__2_i_3_n_0;
  wire state_main1_carry__2_i_4_n_0;
  wire state_main1_carry__2_n_1;
  wire state_main1_carry__2_n_2;
  wire state_main1_carry__2_n_3;
  wire state_main1_carry_i_1_n_0;
  wire state_main1_carry_i_2_n_0;
  wire state_main1_carry_i_3_n_0;
  wire state_main1_carry_i_4_n_0;
  wire state_main1_carry_i_5_n_0;
  wire state_main1_carry_i_6_n_0;
  wire state_main1_carry_n_0;
  wire state_main1_carry_n_1;
  wire state_main1_carry_n_2;
  wire state_main1_carry_n_3;
  wire \state_main[0]_i_1_n_0 ;
  wire \state_main[0]_i_2_n_0 ;
  wire \state_main[1]_i_1_n_0 ;
  wire \state_main[2]_i_1_n_0 ;
  wire \state_main[2]_i_2_n_0 ;
  wire \state_main[2]_i_3_n_0 ;
  wire \state_main[2]_i_4_n_0 ;
  wire \state_main[2]_i_6_n_0 ;
  wire \state_main[2]_i_7_n_0 ;
  wire \state_main[2]_i_8_n_0 ;
  wire \state_main_reg_n_0_[0] ;
  wire \state_main_reg_n_0_[1] ;
  wire \state_main_reg_n_0_[2] ;
  wire [3:2]\NLW_high_cnt_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_high_cnt_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_low_cnt_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_low_cnt_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_ltOp__23_carry_O_UNCONNECTED;
  wire [3:0]NLW_ltOp__23_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ltOp__7_carry_O_UNCONNECTED;
  wire [3:0]NLW_ltOp__7_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ltOp__7_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ltOp__7_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__0_O_UNCONNECTED;
  wire [3:2]\NLW_re_cnt_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_re_cnt_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_rx_index_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_rx_index_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_state_main1_carry_O_UNCONNECTED;
  wire [3:0]NLW_state_main1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_state_main1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_state_main1_carry__2_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \high_cnt[0]_i_1 
       (.I0(high_cnt[0]),
        .O(\high_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020080808080)) 
    \high_cnt[15]_i_1 
       (.I0(reset_n),
        .I1(\state_main_reg_n_0_[0] ),
        .I2(\state_main_reg_n_0_[1] ),
        .I3(m_axis_tready1),
        .I4(ltOp__23_carry__0_n_0),
        .I5(\state_main_reg_n_0_[2] ),
        .O(\high_cnt[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0C200000)) 
    \high_cnt[15]_i_2 
       (.I0(m_axis_tready1),
        .I1(\state_main_reg_n_0_[1] ),
        .I2(\state_main_reg_n_0_[2] ),
        .I3(\state_main_reg_n_0_[0] ),
        .I4(reset_n),
        .O(high_cnt_2));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[0] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(\high_cnt[0]_i_1_n_0 ),
        .Q(high_cnt[0]),
        .R(\high_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[10] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(plusOp[10]),
        .Q(high_cnt[10]),
        .R(\high_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[11] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(plusOp[11]),
        .Q(high_cnt[11]),
        .R(\high_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[12] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(plusOp[12]),
        .Q(high_cnt[12]),
        .R(\high_cnt[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \high_cnt_reg[12]_i_1 
       (.CI(\high_cnt_reg[8]_i_1_n_0 ),
        .CO({\high_cnt_reg[12]_i_1_n_0 ,\high_cnt_reg[12]_i_1_n_1 ,\high_cnt_reg[12]_i_1_n_2 ,\high_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(high_cnt[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[13] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(plusOp[13]),
        .Q(high_cnt[13]),
        .R(\high_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[14] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(plusOp[14]),
        .Q(high_cnt[14]),
        .R(\high_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[15] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(plusOp[15]),
        .Q(high_cnt[15]),
        .R(\high_cnt[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \high_cnt_reg[15]_i_3 
       (.CI(\high_cnt_reg[12]_i_1_n_0 ),
        .CO({\NLW_high_cnt_reg[15]_i_3_CO_UNCONNECTED [3:2],\high_cnt_reg[15]_i_3_n_2 ,\high_cnt_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_high_cnt_reg[15]_i_3_O_UNCONNECTED [3],plusOp[15:13]}),
        .S({1'b0,high_cnt[15:13]}));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[1] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(plusOp[1]),
        .Q(high_cnt[1]),
        .R(\high_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[2] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(plusOp[2]),
        .Q(high_cnt[2]),
        .R(\high_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[3] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(plusOp[3]),
        .Q(high_cnt[3]),
        .R(\high_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[4] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(plusOp[4]),
        .Q(high_cnt[4]),
        .R(\high_cnt[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \high_cnt_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\high_cnt_reg[4]_i_1_n_0 ,\high_cnt_reg[4]_i_1_n_1 ,\high_cnt_reg[4]_i_1_n_2 ,\high_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(high_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(high_cnt[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[5] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(plusOp[5]),
        .Q(high_cnt[5]),
        .R(\high_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[6] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(plusOp[6]),
        .Q(high_cnt[6]),
        .R(\high_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[7] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(plusOp[7]),
        .Q(high_cnt[7]),
        .R(\high_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[8] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(plusOp[8]),
        .Q(high_cnt[8]),
        .R(\high_cnt[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \high_cnt_reg[8]_i_1 
       (.CI(\high_cnt_reg[4]_i_1_n_0 ),
        .CO({\high_cnt_reg[8]_i_1_n_0 ,\high_cnt_reg[8]_i_1_n_1 ,\high_cnt_reg[8]_i_1_n_2 ,\high_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(high_cnt[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \high_cnt_reg[9] 
       (.C(clk_in),
        .CE(high_cnt_2),
        .D(plusOp[9]),
        .Q(high_cnt[9]),
        .R(\high_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[0] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[1] [0]),
        .Q(high_num[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[10] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[0] [2]),
        .Q(high_num[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[11] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[0] [3]),
        .Q(high_num[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[12] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[0] [4]),
        .Q(high_num[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[13] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[0] [5]),
        .Q(high_num[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[14] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[0] [6]),
        .Q(high_num[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[15] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[0] [7]),
        .Q(high_num[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[1] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[1] [1]),
        .Q(high_num[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[2] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[1] [2]),
        .Q(high_num[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[3] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[1] [3]),
        .Q(high_num[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[4] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[1] [4]),
        .Q(high_num[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[5] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[1] [5]),
        .Q(high_num[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[6] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[1] [6]),
        .Q(high_num[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[7] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[1] [7]),
        .Q(high_num[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[8] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[0] [0]),
        .Q(high_num[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \high_num_reg[9] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[0] [1]),
        .Q(high_num[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \low_cnt[0]_i_1 
       (.I0(low_cnt[0]),
        .O(\low_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00088080)) 
    \low_cnt[15]_i_1 
       (.I0(reset_n),
        .I1(\state_main_reg_n_0_[0] ),
        .I2(\state_main_reg_n_0_[1] ),
        .I3(ltOp),
        .I4(\state_main_reg_n_0_[2] ),
        .O(\low_cnt[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \low_cnt[15]_i_2 
       (.I0(\state_main_reg_n_0_[1] ),
        .I1(\state_main_reg_n_0_[2] ),
        .I2(\state_main_reg_n_0_[0] ),
        .I3(reset_n),
        .O(low_cnt_1));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[0] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt[0]_i_1_n_0 ),
        .Q(low_cnt[0]),
        .R(\low_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[10] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt_reg[12]_i_1_n_6 ),
        .Q(low_cnt[10]),
        .R(\low_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[11] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt_reg[12]_i_1_n_5 ),
        .Q(low_cnt[11]),
        .R(\low_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[12] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt_reg[12]_i_1_n_4 ),
        .Q(low_cnt[12]),
        .R(\low_cnt[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \low_cnt_reg[12]_i_1 
       (.CI(\low_cnt_reg[8]_i_1_n_0 ),
        .CO({\low_cnt_reg[12]_i_1_n_0 ,\low_cnt_reg[12]_i_1_n_1 ,\low_cnt_reg[12]_i_1_n_2 ,\low_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\low_cnt_reg[12]_i_1_n_4 ,\low_cnt_reg[12]_i_1_n_5 ,\low_cnt_reg[12]_i_1_n_6 ,\low_cnt_reg[12]_i_1_n_7 }),
        .S(low_cnt[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[13] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt_reg[15]_i_3_n_7 ),
        .Q(low_cnt[13]),
        .R(\low_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[14] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt_reg[15]_i_3_n_6 ),
        .Q(low_cnt[14]),
        .R(\low_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[15] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt_reg[15]_i_3_n_5 ),
        .Q(low_cnt[15]),
        .R(\low_cnt[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \low_cnt_reg[15]_i_3 
       (.CI(\low_cnt_reg[12]_i_1_n_0 ),
        .CO({\NLW_low_cnt_reg[15]_i_3_CO_UNCONNECTED [3:2],\low_cnt_reg[15]_i_3_n_2 ,\low_cnt_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_low_cnt_reg[15]_i_3_O_UNCONNECTED [3],\low_cnt_reg[15]_i_3_n_5 ,\low_cnt_reg[15]_i_3_n_6 ,\low_cnt_reg[15]_i_3_n_7 }),
        .S({1'b0,low_cnt[15:13]}));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[1] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt_reg[4]_i_1_n_7 ),
        .Q(low_cnt[1]),
        .R(\low_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[2] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt_reg[4]_i_1_n_6 ),
        .Q(low_cnt[2]),
        .R(\low_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[3] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt_reg[4]_i_1_n_5 ),
        .Q(low_cnt[3]),
        .R(\low_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[4] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt_reg[4]_i_1_n_4 ),
        .Q(low_cnt[4]),
        .R(\low_cnt[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \low_cnt_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\low_cnt_reg[4]_i_1_n_0 ,\low_cnt_reg[4]_i_1_n_1 ,\low_cnt_reg[4]_i_1_n_2 ,\low_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(low_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\low_cnt_reg[4]_i_1_n_4 ,\low_cnt_reg[4]_i_1_n_5 ,\low_cnt_reg[4]_i_1_n_6 ,\low_cnt_reg[4]_i_1_n_7 }),
        .S(low_cnt[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[5] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt_reg[8]_i_1_n_7 ),
        .Q(low_cnt[5]),
        .R(\low_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[6] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt_reg[8]_i_1_n_6 ),
        .Q(low_cnt[6]),
        .R(\low_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[7] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt_reg[8]_i_1_n_5 ),
        .Q(low_cnt[7]),
        .R(\low_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[8] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt_reg[8]_i_1_n_4 ),
        .Q(low_cnt[8]),
        .R(\low_cnt[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \low_cnt_reg[8]_i_1 
       (.CI(\low_cnt_reg[4]_i_1_n_0 ),
        .CO({\low_cnt_reg[8]_i_1_n_0 ,\low_cnt_reg[8]_i_1_n_1 ,\low_cnt_reg[8]_i_1_n_2 ,\low_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\low_cnt_reg[8]_i_1_n_4 ,\low_cnt_reg[8]_i_1_n_5 ,\low_cnt_reg[8]_i_1_n_6 ,\low_cnt_reg[8]_i_1_n_7 }),
        .S(low_cnt[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \low_cnt_reg[9] 
       (.C(clk_in),
        .CE(low_cnt_1),
        .D(\low_cnt_reg[12]_i_1_n_7 ),
        .Q(low_cnt[9]),
        .R(\low_cnt[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \low_num[15]_i_1 
       (.I0(reset_n),
        .I1(\state_main_reg_n_0_[0] ),
        .I2(\state_main_reg_n_0_[2] ),
        .I3(\state_main_reg_n_0_[1] ),
        .O(high_num_12));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[0] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[3] [0]),
        .Q(low_num[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[10] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[2] [2]),
        .Q(low_num[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[11] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[2] [3]),
        .Q(low_num[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[12] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[2] [4]),
        .Q(low_num[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[13] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[2] [5]),
        .Q(low_num[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[14] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[2] [6]),
        .Q(low_num[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[15] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[2] [7]),
        .Q(low_num[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[1] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[3] [1]),
        .Q(low_num[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[2] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[3] [2]),
        .Q(low_num[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[3] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[3] [3]),
        .Q(low_num[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[4] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[3] [4]),
        .Q(low_num[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[5] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[3] [5]),
        .Q(low_num[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[6] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[3] [6]),
        .Q(low_num[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[7] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[3] [7]),
        .Q(low_num[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[8] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[2] [0]),
        .Q(low_num[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \low_num_reg[9] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[2] [1]),
        .Q(low_num[9]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltOp__23_carry
       (.CI(1'b0),
        .CO({ltOp__23_carry_n_0,ltOp__23_carry_n_1,ltOp__23_carry_n_2,ltOp__23_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp__23_carry_i_1_n_0,ltOp__23_carry_i_2_n_0,ltOp__23_carry_i_3_n_0,ltOp__23_carry_i_4_n_0}),
        .O(NLW_ltOp__23_carry_O_UNCONNECTED[3:0]),
        .S({ltOp__23_carry_i_5_n_0,ltOp__23_carry_i_6_n_0,ltOp__23_carry_i_7_n_0,ltOp__23_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltOp__23_carry__0
       (.CI(ltOp__23_carry_n_0),
        .CO({ltOp__23_carry__0_n_0,ltOp__23_carry__0_n_1,ltOp__23_carry__0_n_2,ltOp__23_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp__23_carry__0_i_1_n_0,ltOp__23_carry__0_i_2_n_0,ltOp__23_carry__0_i_3_n_0,ltOp__23_carry__0_i_4_n_0}),
        .O(NLW_ltOp__23_carry__0_O_UNCONNECTED[3:0]),
        .S({ltOp__23_carry__0_i_5_n_0,ltOp__23_carry__0_i_6_n_0,ltOp__23_carry__0_i_7_n_0,ltOp__23_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__23_carry__0_i_1
       (.I0(high_num[15]),
        .I1(high_cnt[15]),
        .I2(high_num[14]),
        .I3(high_cnt[14]),
        .O(ltOp__23_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__23_carry__0_i_2
       (.I0(high_num[13]),
        .I1(high_cnt[13]),
        .I2(high_num[12]),
        .I3(high_cnt[12]),
        .O(ltOp__23_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__23_carry__0_i_3
       (.I0(high_num[11]),
        .I1(high_cnt[11]),
        .I2(high_num[10]),
        .I3(high_cnt[10]),
        .O(ltOp__23_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__23_carry__0_i_4
       (.I0(high_num[9]),
        .I1(high_cnt[9]),
        .I2(high_num[8]),
        .I3(high_cnt[8]),
        .O(ltOp__23_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__23_carry__0_i_5
       (.I0(high_cnt[15]),
        .I1(high_num[15]),
        .I2(high_cnt[14]),
        .I3(high_num[14]),
        .O(ltOp__23_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__23_carry__0_i_6
       (.I0(high_cnt[13]),
        .I1(high_num[13]),
        .I2(high_cnt[12]),
        .I3(high_num[12]),
        .O(ltOp__23_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__23_carry__0_i_7
       (.I0(high_cnt[11]),
        .I1(high_num[11]),
        .I2(high_cnt[10]),
        .I3(high_num[10]),
        .O(ltOp__23_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__23_carry__0_i_8
       (.I0(high_cnt[9]),
        .I1(high_num[9]),
        .I2(high_cnt[8]),
        .I3(high_num[8]),
        .O(ltOp__23_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__23_carry_i_1
       (.I0(high_num[7]),
        .I1(high_cnt[7]),
        .I2(high_num[6]),
        .I3(high_cnt[6]),
        .O(ltOp__23_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__23_carry_i_2
       (.I0(high_num[5]),
        .I1(high_cnt[5]),
        .I2(high_num[4]),
        .I3(high_cnt[4]),
        .O(ltOp__23_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__23_carry_i_3
       (.I0(high_num[3]),
        .I1(high_cnt[3]),
        .I2(high_num[2]),
        .I3(high_cnt[2]),
        .O(ltOp__23_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__23_carry_i_4
       (.I0(high_num[1]),
        .I1(high_cnt[1]),
        .I2(high_num[0]),
        .I3(high_cnt[0]),
        .O(ltOp__23_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__23_carry_i_5
       (.I0(high_cnt[7]),
        .I1(high_num[7]),
        .I2(high_cnt[6]),
        .I3(high_num[6]),
        .O(ltOp__23_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__23_carry_i_6
       (.I0(high_cnt[5]),
        .I1(high_num[5]),
        .I2(high_cnt[4]),
        .I3(high_num[4]),
        .O(ltOp__23_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__23_carry_i_7
       (.I0(high_cnt[3]),
        .I1(high_num[3]),
        .I2(high_cnt[2]),
        .I3(high_num[2]),
        .O(ltOp__23_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__23_carry_i_8
       (.I0(high_cnt[1]),
        .I1(high_num[1]),
        .I2(high_cnt[0]),
        .I3(high_num[0]),
        .O(ltOp__23_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltOp__7_carry
       (.CI(1'b0),
        .CO({ltOp__7_carry_n_0,ltOp__7_carry_n_1,ltOp__7_carry_n_2,ltOp__7_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp__7_carry_i_1_n_0,ltOp__7_carry_i_2_n_0,ltOp__7_carry_i_3_n_0,ltOp__7_carry_i_4_n_0}),
        .O(NLW_ltOp__7_carry_O_UNCONNECTED[3:0]),
        .S({ltOp__7_carry_i_5_n_0,ltOp__7_carry_i_6_n_0,ltOp__7_carry_i_7_n_0,ltOp__7_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltOp__7_carry__0
       (.CI(ltOp__7_carry_n_0),
        .CO({ltOp__7_carry__0_n_0,ltOp__7_carry__0_n_1,ltOp__7_carry__0_n_2,ltOp__7_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp__7_carry__0_i_1_n_0,ltOp__7_carry__0_i_2_n_0,ltOp__7_carry__0_i_3_n_0,ltOp__7_carry__0_i_4_n_0}),
        .O(NLW_ltOp__7_carry__0_O_UNCONNECTED[3:0]),
        .S({ltOp__7_carry__0_i_5_n_0,ltOp__7_carry__0_i_6_n_0,ltOp__7_carry__0_i_7_n_0,ltOp__7_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry__0_i_1
       (.I0(re_num[15]),
        .I1(re_cnt[15]),
        .I2(re_num[14]),
        .I3(re_cnt[14]),
        .O(ltOp__7_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry__0_i_2
       (.I0(re_num[13]),
        .I1(re_cnt[13]),
        .I2(re_num[12]),
        .I3(re_cnt[12]),
        .O(ltOp__7_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry__0_i_3
       (.I0(re_num[11]),
        .I1(re_cnt[11]),
        .I2(re_num[10]),
        .I3(re_cnt[10]),
        .O(ltOp__7_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry__0_i_4
       (.I0(re_num[9]),
        .I1(re_cnt[9]),
        .I2(re_num[8]),
        .I3(re_cnt[8]),
        .O(ltOp__7_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry__0_i_5
       (.I0(re_cnt[15]),
        .I1(re_num[15]),
        .I2(re_cnt[14]),
        .I3(re_num[14]),
        .O(ltOp__7_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry__0_i_6
       (.I0(re_cnt[13]),
        .I1(re_num[13]),
        .I2(re_cnt[12]),
        .I3(re_num[12]),
        .O(ltOp__7_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry__0_i_7
       (.I0(re_cnt[11]),
        .I1(re_num[11]),
        .I2(re_cnt[10]),
        .I3(re_num[10]),
        .O(ltOp__7_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry__0_i_8
       (.I0(re_cnt[9]),
        .I1(re_num[9]),
        .I2(re_cnt[8]),
        .I3(re_num[8]),
        .O(ltOp__7_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltOp__7_carry__1
       (.CI(ltOp__7_carry__0_n_0),
        .CO({ltOp__7_carry__1_n_0,ltOp__7_carry__1_n_1,ltOp__7_carry__1_n_2,ltOp__7_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp__7_carry__1_i_1_n_0,ltOp__7_carry__1_i_2_n_0,ltOp__7_carry__1_i_3_n_0,ltOp__7_carry__1_i_4_n_0}),
        .O(NLW_ltOp__7_carry__1_O_UNCONNECTED[3:0]),
        .S({ltOp__7_carry__1_i_5_n_0,ltOp__7_carry__1_i_6_n_0,ltOp__7_carry__1_i_7_n_0,ltOp__7_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry__1_i_1
       (.I0(re_num[23]),
        .I1(re_cnt[23]),
        .I2(re_num[22]),
        .I3(re_cnt[22]),
        .O(ltOp__7_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry__1_i_2
       (.I0(re_num[21]),
        .I1(re_cnt[21]),
        .I2(re_num[20]),
        .I3(re_cnt[20]),
        .O(ltOp__7_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry__1_i_3
       (.I0(re_num[19]),
        .I1(re_cnt[19]),
        .I2(re_num[18]),
        .I3(re_cnt[18]),
        .O(ltOp__7_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry__1_i_4
       (.I0(re_num[17]),
        .I1(re_cnt[17]),
        .I2(re_num[16]),
        .I3(re_cnt[16]),
        .O(ltOp__7_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry__1_i_5
       (.I0(re_cnt[23]),
        .I1(re_num[23]),
        .I2(re_cnt[22]),
        .I3(re_num[22]),
        .O(ltOp__7_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry__1_i_6
       (.I0(re_cnt[21]),
        .I1(re_num[21]),
        .I2(re_cnt[20]),
        .I3(re_num[20]),
        .O(ltOp__7_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry__1_i_7
       (.I0(re_cnt[19]),
        .I1(re_num[19]),
        .I2(re_cnt[18]),
        .I3(re_num[18]),
        .O(ltOp__7_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry__1_i_8
       (.I0(re_cnt[17]),
        .I1(re_num[17]),
        .I2(re_cnt[16]),
        .I3(re_num[16]),
        .O(ltOp__7_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltOp__7_carry__2
       (.CI(ltOp__7_carry__1_n_0),
        .CO({ltOp__7_carry__2_n_0,ltOp__7_carry__2_n_1,ltOp__7_carry__2_n_2,ltOp__7_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp__7_carry__2_i_1_n_0,ltOp__7_carry__2_i_2_n_0,ltOp__7_carry__2_i_3_n_0,ltOp__7_carry__2_i_4_n_0}),
        .O(NLW_ltOp__7_carry__2_O_UNCONNECTED[3:0]),
        .S({ltOp__7_carry__2_i_5_n_0,ltOp__7_carry__2_i_6_n_0,ltOp__7_carry__2_i_7_n_0,ltOp__7_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry__2_i_1
       (.I0(re_num[31]),
        .I1(re_cnt[31]),
        .I2(re_num[30]),
        .I3(re_cnt[30]),
        .O(ltOp__7_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry__2_i_2
       (.I0(re_num[29]),
        .I1(re_cnt[29]),
        .I2(re_num[28]),
        .I3(re_cnt[28]),
        .O(ltOp__7_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry__2_i_3
       (.I0(re_num[27]),
        .I1(re_cnt[27]),
        .I2(re_num[26]),
        .I3(re_cnt[26]),
        .O(ltOp__7_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry__2_i_4
       (.I0(re_num[25]),
        .I1(re_cnt[25]),
        .I2(re_num[24]),
        .I3(re_cnt[24]),
        .O(ltOp__7_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry__2_i_5
       (.I0(re_cnt[31]),
        .I1(re_num[31]),
        .I2(re_cnt[30]),
        .I3(re_num[30]),
        .O(ltOp__7_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry__2_i_6
       (.I0(re_cnt[29]),
        .I1(re_num[29]),
        .I2(re_cnt[28]),
        .I3(re_num[28]),
        .O(ltOp__7_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry__2_i_7
       (.I0(re_cnt[27]),
        .I1(re_num[27]),
        .I2(re_cnt[26]),
        .I3(re_num[26]),
        .O(ltOp__7_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry__2_i_8
       (.I0(re_cnt[25]),
        .I1(re_num[25]),
        .I2(re_cnt[24]),
        .I3(re_num[24]),
        .O(ltOp__7_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry_i_1
       (.I0(re_num[7]),
        .I1(re_cnt[7]),
        .I2(re_num[6]),
        .I3(re_cnt[6]),
        .O(ltOp__7_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry_i_2
       (.I0(re_num[5]),
        .I1(re_cnt[5]),
        .I2(re_num[4]),
        .I3(re_cnt[4]),
        .O(ltOp__7_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry_i_3
       (.I0(re_num[3]),
        .I1(re_cnt[3]),
        .I2(re_num[2]),
        .I3(re_cnt[2]),
        .O(ltOp__7_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp__7_carry_i_4
       (.I0(re_num[1]),
        .I1(re_cnt[1]),
        .I2(re_num[0]),
        .I3(re_cnt[0]),
        .O(ltOp__7_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry_i_5
       (.I0(re_cnt[7]),
        .I1(re_num[7]),
        .I2(re_cnt[6]),
        .I3(re_num[6]),
        .O(ltOp__7_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry_i_6
       (.I0(re_cnt[5]),
        .I1(re_num[5]),
        .I2(re_cnt[4]),
        .I3(re_num[4]),
        .O(ltOp__7_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry_i_7
       (.I0(re_cnt[3]),
        .I1(re_num[3]),
        .I2(re_cnt[2]),
        .I3(re_num[2]),
        .O(ltOp__7_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp__7_carry_i_8
       (.I0(re_cnt[1]),
        .I1(re_num[1]),
        .I2(re_cnt[0]),
        .I3(re_num[0]),
        .O(ltOp__7_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltOp_carry
       (.CI(1'b0),
        .CO({ltOp_carry_n_0,ltOp_carry_n_1,ltOp_carry_n_2,ltOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp_carry_i_1_n_0,ltOp_carry_i_2_n_0,ltOp_carry_i_3_n_0,ltOp_carry_i_4_n_0}),
        .O(NLW_ltOp_carry_O_UNCONNECTED[3:0]),
        .S({ltOp_carry_i_5_n_0,ltOp_carry_i_6_n_0,ltOp_carry_i_7_n_0,ltOp_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltOp_carry__0
       (.CI(ltOp_carry_n_0),
        .CO({ltOp,ltOp_carry__0_n_1,ltOp_carry__0_n_2,ltOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp_carry__0_i_1_n_0,ltOp_carry__0_i_2_n_0,ltOp_carry__0_i_3_n_0,ltOp_carry__0_i_4_n_0}),
        .O(NLW_ltOp_carry__0_O_UNCONNECTED[3:0]),
        .S({ltOp_carry__0_i_5_n_0,ltOp_carry__0_i_6_n_0,ltOp_carry__0_i_7_n_0,ltOp_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__0_i_1
       (.I0(low_num[15]),
        .I1(low_cnt[15]),
        .I2(low_num[14]),
        .I3(low_cnt[14]),
        .O(ltOp_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__0_i_2
       (.I0(low_num[13]),
        .I1(low_cnt[13]),
        .I2(low_num[12]),
        .I3(low_cnt[12]),
        .O(ltOp_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__0_i_3
       (.I0(low_num[11]),
        .I1(low_cnt[11]),
        .I2(low_num[10]),
        .I3(low_cnt[10]),
        .O(ltOp_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry__0_i_4
       (.I0(low_num[9]),
        .I1(low_cnt[9]),
        .I2(low_num[8]),
        .I3(low_cnt[8]),
        .O(ltOp_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__0_i_5
       (.I0(low_cnt[15]),
        .I1(low_num[15]),
        .I2(low_cnt[14]),
        .I3(low_num[14]),
        .O(ltOp_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__0_i_6
       (.I0(low_cnt[13]),
        .I1(low_num[13]),
        .I2(low_cnt[12]),
        .I3(low_num[12]),
        .O(ltOp_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__0_i_7
       (.I0(low_cnt[11]),
        .I1(low_num[11]),
        .I2(low_cnt[10]),
        .I3(low_num[10]),
        .O(ltOp_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__0_i_8
       (.I0(low_cnt[9]),
        .I1(low_num[9]),
        .I2(low_cnt[8]),
        .I3(low_num[8]),
        .O(ltOp_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry_i_1
       (.I0(low_num[7]),
        .I1(low_cnt[7]),
        .I2(low_num[6]),
        .I3(low_cnt[6]),
        .O(ltOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry_i_2
       (.I0(low_num[5]),
        .I1(low_cnt[5]),
        .I2(low_num[4]),
        .I3(low_cnt[4]),
        .O(ltOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry_i_3
       (.I0(low_num[3]),
        .I1(low_cnt[3]),
        .I2(low_num[2]),
        .I3(low_cnt[2]),
        .O(ltOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ltOp_carry_i_4
       (.I0(low_num[1]),
        .I1(low_cnt[1]),
        .I2(low_num[0]),
        .I3(low_cnt[0]),
        .O(ltOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_5
       (.I0(low_cnt[7]),
        .I1(low_num[7]),
        .I2(low_cnt[6]),
        .I3(low_num[6]),
        .O(ltOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_6
       (.I0(low_cnt[5]),
        .I1(low_num[5]),
        .I2(low_cnt[4]),
        .I3(low_num[4]),
        .O(ltOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_7
       (.I0(low_cnt[3]),
        .I1(low_num[3]),
        .I2(low_cnt[2]),
        .I3(low_num[2]),
        .O(ltOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_8
       (.I0(low_cnt[1]),
        .I1(low_num[1]),
        .I2(low_cnt[0]),
        .I3(low_num[0]),
        .O(ltOp_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata1[0]_i_1 
       (.I0(\state_main_reg_n_0_[2] ),
        .I1(m_axis_tdata1[0]),
        .O(\m_axis_tdata1[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \m_axis_tdata1[1]_i_1 
       (.I0(m_axis_tdata1[0]),
        .I1(\state_main_reg_n_0_[2] ),
        .I2(m_axis_tdata1[1]),
        .O(\m_axis_tdata1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \m_axis_tdata1[2]_i_1 
       (.I0(m_axis_tdata1[0]),
        .I1(m_axis_tdata1[1]),
        .I2(\state_main_reg_n_0_[2] ),
        .I3(m_axis_tdata1[2]),
        .O(\m_axis_tdata1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \m_axis_tdata1[3]_i_1 
       (.I0(m_axis_tdata1[1]),
        .I1(m_axis_tdata1[0]),
        .I2(m_axis_tdata1[2]),
        .I3(\state_main_reg_n_0_[2] ),
        .I4(m_axis_tdata1[3]),
        .O(\m_axis_tdata1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \m_axis_tdata1[4]_i_1 
       (.I0(m_axis_tdata1[2]),
        .I1(m_axis_tdata1[0]),
        .I2(m_axis_tdata1[1]),
        .I3(m_axis_tdata1[3]),
        .I4(\state_main_reg_n_0_[2] ),
        .I5(m_axis_tdata1[4]),
        .O(\m_axis_tdata1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \m_axis_tdata1[5]_i_1 
       (.I0(\m_axis_tdata1[5]_i_2_n_0 ),
        .I1(\state_main_reg_n_0_[2] ),
        .I2(m_axis_tdata1[5]),
        .O(\m_axis_tdata1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \m_axis_tdata1[5]_i_2 
       (.I0(m_axis_tdata1[3]),
        .I1(m_axis_tdata1[1]),
        .I2(m_axis_tdata1[0]),
        .I3(m_axis_tdata1[2]),
        .I4(m_axis_tdata1[4]),
        .O(\m_axis_tdata1[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \m_axis_tdata1[6]_i_1 
       (.I0(\m_axis_tdata1[7]_i_3_n_0 ),
        .I1(\state_main_reg_n_0_[2] ),
        .I2(m_axis_tdata1[6]),
        .O(\m_axis_tdata1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F0080000000000)) 
    \m_axis_tdata1[7]_i_1 
       (.I0(m_axis_tready1),
        .I1(ltOp__23_carry__0_n_0),
        .I2(\state_main_reg_n_0_[1] ),
        .I3(\state_main_reg_n_0_[2] ),
        .I4(\state_main_reg_n_0_[0] ),
        .I5(reset_n),
        .O(m_axis_tdata1_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \m_axis_tdata1[7]_i_2 
       (.I0(\m_axis_tdata1[7]_i_3_n_0 ),
        .I1(m_axis_tdata1[6]),
        .I2(\state_main_reg_n_0_[2] ),
        .I3(m_axis_tdata1[7]),
        .O(\m_axis_tdata1[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \m_axis_tdata1[7]_i_3 
       (.I0(m_axis_tdata1[4]),
        .I1(m_axis_tdata1[2]),
        .I2(m_axis_tdata1[0]),
        .I3(m_axis_tdata1[1]),
        .I4(m_axis_tdata1[3]),
        .I5(m_axis_tdata1[5]),
        .O(\m_axis_tdata1[7]_i_3_n_0 ));
  FDRE \m_axis_tdata1_reg[0] 
       (.C(clk_in),
        .CE(m_axis_tdata1_0),
        .D(\m_axis_tdata1[0]_i_1_n_0 ),
        .Q(m_axis_tdata1[0]),
        .R(1'b0));
  FDRE \m_axis_tdata1_reg[1] 
       (.C(clk_in),
        .CE(m_axis_tdata1_0),
        .D(\m_axis_tdata1[1]_i_1_n_0 ),
        .Q(m_axis_tdata1[1]),
        .R(1'b0));
  FDRE \m_axis_tdata1_reg[2] 
       (.C(clk_in),
        .CE(m_axis_tdata1_0),
        .D(\m_axis_tdata1[2]_i_1_n_0 ),
        .Q(m_axis_tdata1[2]),
        .R(1'b0));
  FDRE \m_axis_tdata1_reg[3] 
       (.C(clk_in),
        .CE(m_axis_tdata1_0),
        .D(\m_axis_tdata1[3]_i_1_n_0 ),
        .Q(m_axis_tdata1[3]),
        .R(1'b0));
  FDRE \m_axis_tdata1_reg[4] 
       (.C(clk_in),
        .CE(m_axis_tdata1_0),
        .D(\m_axis_tdata1[4]_i_1_n_0 ),
        .Q(m_axis_tdata1[4]),
        .R(1'b0));
  FDRE \m_axis_tdata1_reg[5] 
       (.C(clk_in),
        .CE(m_axis_tdata1_0),
        .D(\m_axis_tdata1[5]_i_1_n_0 ),
        .Q(m_axis_tdata1[5]),
        .R(1'b0));
  FDRE \m_axis_tdata1_reg[6] 
       (.C(clk_in),
        .CE(m_axis_tdata1_0),
        .D(\m_axis_tdata1[6]_i_1_n_0 ),
        .Q(m_axis_tdata1[6]),
        .R(1'b0));
  FDRE \m_axis_tdata1_reg[7] 
       (.C(clk_in),
        .CE(m_axis_tdata1_0),
        .D(\m_axis_tdata1[7]_i_2_n_0 ),
        .Q(m_axis_tdata1[7]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(m_axis_tdata1[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(m_axis_tdata1[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(m_axis_tdata1[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(m_axis_tdata1[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(m_axis_tdata1[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(m_axis_tdata1[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(m_axis_tdata1[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(m_axis_tdata1[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_tready1_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(m_axis_tready),
        .Q(m_axis_tready1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF8FFFFFF08000000)) 
    m_axis_tvalid1_i_1
       (.I0(m_axis_tready1),
        .I1(ltOp__23_carry__0_n_0),
        .I2(\state_main_reg_n_0_[0] ),
        .I3(\state_main_reg_n_0_[2] ),
        .I4(m_axis_tvalid1_i_2_n_0),
        .I5(m_axis_tvalid1),
        .O(m_axis_tvalid1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    m_axis_tvalid1_i_2
       (.I0(reset_n),
        .I1(\state_main_reg_n_0_[1] ),
        .O(m_axis_tvalid1_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_tvalid1_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(m_axis_tvalid1_i_1_n_0),
        .Q(m_axis_tvalid1),
        .R(1'b0));
  FDRE m_axis_tvalid_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(m_axis_tvalid1),
        .Q(m_axis_tvalid),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \re_cnt[0]_i_1 
       (.I0(re_cnt[0]),
        .O(\re_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00802080)) 
    \re_cnt[31]_i_1 
       (.I0(reset_n),
        .I1(\state_main_reg_n_0_[0] ),
        .I2(\state_main_reg_n_0_[1] ),
        .I3(\state_main_reg_n_0_[2] ),
        .I4(ltOp__7_carry__2_n_0),
        .O(\re_cnt[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2800)) 
    \re_cnt[31]_i_2 
       (.I0(\state_main_reg_n_0_[1] ),
        .I1(\state_main_reg_n_0_[2] ),
        .I2(\state_main_reg_n_0_[0] ),
        .I3(reset_n),
        .O(re_cnt_11));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[0] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt[0]_i_1_n_0 ),
        .Q(re_cnt[0]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[10] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[12]_i_1_n_6 ),
        .Q(re_cnt[10]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[11] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[12]_i_1_n_5 ),
        .Q(re_cnt[11]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[12] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[12]_i_1_n_4 ),
        .Q(re_cnt[12]),
        .R(\re_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \re_cnt_reg[12]_i_1 
       (.CI(\re_cnt_reg[8]_i_1_n_0 ),
        .CO({\re_cnt_reg[12]_i_1_n_0 ,\re_cnt_reg[12]_i_1_n_1 ,\re_cnt_reg[12]_i_1_n_2 ,\re_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\re_cnt_reg[12]_i_1_n_4 ,\re_cnt_reg[12]_i_1_n_5 ,\re_cnt_reg[12]_i_1_n_6 ,\re_cnt_reg[12]_i_1_n_7 }),
        .S(re_cnt[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[13] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[16]_i_1_n_7 ),
        .Q(re_cnt[13]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[14] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[16]_i_1_n_6 ),
        .Q(re_cnt[14]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[15] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[16]_i_1_n_5 ),
        .Q(re_cnt[15]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[16] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[16]_i_1_n_4 ),
        .Q(re_cnt[16]),
        .R(\re_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \re_cnt_reg[16]_i_1 
       (.CI(\re_cnt_reg[12]_i_1_n_0 ),
        .CO({\re_cnt_reg[16]_i_1_n_0 ,\re_cnt_reg[16]_i_1_n_1 ,\re_cnt_reg[16]_i_1_n_2 ,\re_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\re_cnt_reg[16]_i_1_n_4 ,\re_cnt_reg[16]_i_1_n_5 ,\re_cnt_reg[16]_i_1_n_6 ,\re_cnt_reg[16]_i_1_n_7 }),
        .S(re_cnt[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[17] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[20]_i_1_n_7 ),
        .Q(re_cnt[17]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[18] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[20]_i_1_n_6 ),
        .Q(re_cnt[18]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[19] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[20]_i_1_n_5 ),
        .Q(re_cnt[19]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[1] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[4]_i_1_n_7 ),
        .Q(re_cnt[1]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[20] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[20]_i_1_n_4 ),
        .Q(re_cnt[20]),
        .R(\re_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \re_cnt_reg[20]_i_1 
       (.CI(\re_cnt_reg[16]_i_1_n_0 ),
        .CO({\re_cnt_reg[20]_i_1_n_0 ,\re_cnt_reg[20]_i_1_n_1 ,\re_cnt_reg[20]_i_1_n_2 ,\re_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\re_cnt_reg[20]_i_1_n_4 ,\re_cnt_reg[20]_i_1_n_5 ,\re_cnt_reg[20]_i_1_n_6 ,\re_cnt_reg[20]_i_1_n_7 }),
        .S(re_cnt[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[21] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[24]_i_1_n_7 ),
        .Q(re_cnt[21]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[22] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[24]_i_1_n_6 ),
        .Q(re_cnt[22]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[23] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[24]_i_1_n_5 ),
        .Q(re_cnt[23]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[24] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[24]_i_1_n_4 ),
        .Q(re_cnt[24]),
        .R(\re_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \re_cnt_reg[24]_i_1 
       (.CI(\re_cnt_reg[20]_i_1_n_0 ),
        .CO({\re_cnt_reg[24]_i_1_n_0 ,\re_cnt_reg[24]_i_1_n_1 ,\re_cnt_reg[24]_i_1_n_2 ,\re_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\re_cnt_reg[24]_i_1_n_4 ,\re_cnt_reg[24]_i_1_n_5 ,\re_cnt_reg[24]_i_1_n_6 ,\re_cnt_reg[24]_i_1_n_7 }),
        .S(re_cnt[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[25] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[28]_i_1_n_7 ),
        .Q(re_cnt[25]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[26] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[28]_i_1_n_6 ),
        .Q(re_cnt[26]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[27] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[28]_i_1_n_5 ),
        .Q(re_cnt[27]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[28] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[28]_i_1_n_4 ),
        .Q(re_cnt[28]),
        .R(\re_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \re_cnt_reg[28]_i_1 
       (.CI(\re_cnt_reg[24]_i_1_n_0 ),
        .CO({\re_cnt_reg[28]_i_1_n_0 ,\re_cnt_reg[28]_i_1_n_1 ,\re_cnt_reg[28]_i_1_n_2 ,\re_cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\re_cnt_reg[28]_i_1_n_4 ,\re_cnt_reg[28]_i_1_n_5 ,\re_cnt_reg[28]_i_1_n_6 ,\re_cnt_reg[28]_i_1_n_7 }),
        .S(re_cnt[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[29] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[31]_i_3_n_7 ),
        .Q(re_cnt[29]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[2] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[4]_i_1_n_6 ),
        .Q(re_cnt[2]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[30] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[31]_i_3_n_6 ),
        .Q(re_cnt[30]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[31] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[31]_i_3_n_5 ),
        .Q(re_cnt[31]),
        .R(\re_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \re_cnt_reg[31]_i_3 
       (.CI(\re_cnt_reg[28]_i_1_n_0 ),
        .CO({\NLW_re_cnt_reg[31]_i_3_CO_UNCONNECTED [3:2],\re_cnt_reg[31]_i_3_n_2 ,\re_cnt_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_re_cnt_reg[31]_i_3_O_UNCONNECTED [3],\re_cnt_reg[31]_i_3_n_5 ,\re_cnt_reg[31]_i_3_n_6 ,\re_cnt_reg[31]_i_3_n_7 }),
        .S({1'b0,re_cnt[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[3] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[4]_i_1_n_5 ),
        .Q(re_cnt[3]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[4] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[4]_i_1_n_4 ),
        .Q(re_cnt[4]),
        .R(\re_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \re_cnt_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\re_cnt_reg[4]_i_1_n_0 ,\re_cnt_reg[4]_i_1_n_1 ,\re_cnt_reg[4]_i_1_n_2 ,\re_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(re_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\re_cnt_reg[4]_i_1_n_4 ,\re_cnt_reg[4]_i_1_n_5 ,\re_cnt_reg[4]_i_1_n_6 ,\re_cnt_reg[4]_i_1_n_7 }),
        .S(re_cnt[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[5] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[8]_i_1_n_7 ),
        .Q(re_cnt[5]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[6] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[8]_i_1_n_6 ),
        .Q(re_cnt[6]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[7] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[8]_i_1_n_5 ),
        .Q(re_cnt[7]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[8] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[8]_i_1_n_4 ),
        .Q(re_cnt[8]),
        .R(\re_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \re_cnt_reg[8]_i_1 
       (.CI(\re_cnt_reg[4]_i_1_n_0 ),
        .CO({\re_cnt_reg[8]_i_1_n_0 ,\re_cnt_reg[8]_i_1_n_1 ,\re_cnt_reg[8]_i_1_n_2 ,\re_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\re_cnt_reg[8]_i_1_n_4 ,\re_cnt_reg[8]_i_1_n_5 ,\re_cnt_reg[8]_i_1_n_6 ,\re_cnt_reg[8]_i_1_n_7 }),
        .S(re_cnt[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \re_cnt_reg[9] 
       (.C(clk_in),
        .CE(re_cnt_11),
        .D(\re_cnt_reg[12]_i_1_n_7 ),
        .Q(re_cnt[9]),
        .R(\re_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[0] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[7] [0]),
        .Q(re_num[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[10] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[6] [2]),
        .Q(re_num[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[11] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[6] [3]),
        .Q(re_num[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[12] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[6] [4]),
        .Q(re_num[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[13] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[6] [5]),
        .Q(re_num[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[14] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[6] [6]),
        .Q(re_num[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[15] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[6] [7]),
        .Q(re_num[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[16] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[5] [0]),
        .Q(re_num[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[17] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[5] [1]),
        .Q(re_num[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[18] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[5] [2]),
        .Q(re_num[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[19] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[5] [3]),
        .Q(re_num[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[1] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[7] [1]),
        .Q(re_num[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[20] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[5] [4]),
        .Q(re_num[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[21] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[5] [5]),
        .Q(re_num[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[22] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[5] [6]),
        .Q(re_num[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[23] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[5] [7]),
        .Q(re_num[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[24] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[4] [0]),
        .Q(re_num[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[25] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[4] [1]),
        .Q(re_num[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[26] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[4] [2]),
        .Q(re_num[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[27] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[4] [3]),
        .Q(re_num[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[28] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[4] [4]),
        .Q(re_num[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[29] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[4] [5]),
        .Q(re_num[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[2] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[7] [2]),
        .Q(re_num[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[30] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[4] [6]),
        .Q(re_num[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[31] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[4] [7]),
        .Q(re_num[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[3] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[7] [3]),
        .Q(re_num[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[4] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[7] [4]),
        .Q(re_num[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[5] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[7] [5]),
        .Q(re_num[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[6] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[7] [6]),
        .Q(re_num[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[7] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[7] [7]),
        .Q(re_num[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[8] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[6] [0]),
        .Q(re_num[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \re_num_reg[9] 
       (.C(clk_in),
        .CE(high_num_12),
        .D(\rx_array_temp_reg[6] [1]),
        .Q(re_num[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0100)) 
    \rx_array_temp[0][7]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(\rx_array_temp[3][7]_i_2_n_0 ),
        .O(\rx_array_temp[0]_9 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \rx_array_temp[1][7]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(\rx_array_temp[3][7]_i_2_n_0 ),
        .O(\rx_array_temp[1]_10 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \rx_array_temp[2][7]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(\rx_array_temp[3][7]_i_2_n_0 ),
        .O(\rx_array_temp[2]_8 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_array_temp[3][7]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(\rx_array_temp[3][7]_i_2_n_0 ),
        .O(\rx_array_temp[3]_5 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \rx_array_temp[3][7]_i_2 
       (.I0(\rx_array_temp[3][7]_i_3_n_0 ),
        .I1(\rx_array_temp[3][7]_i_4_n_0 ),
        .I2(\rx_array_temp[3][7]_i_5_n_0 ),
        .I3(reset_n),
        .I4(\state_main_reg_n_0_[0] ),
        .I5(\state_main_reg_n_0_[2] ),
        .O(\rx_array_temp[3][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \rx_array_temp[3][7]_i_3 
       (.I0(\rx_array_temp[3][7]_i_6_n_0 ),
        .I1(\rx_array_temp[3][7]_i_7_n_0 ),
        .I2(sel0[23]),
        .I3(sel0[22]),
        .I4(sel0[21]),
        .I5(sel0[20]),
        .O(\rx_array_temp[3][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \rx_array_temp[3][7]_i_4 
       (.I0(sel0[12]),
        .I1(sel0[13]),
        .I2(sel0[14]),
        .I3(sel0[15]),
        .I4(\rx_array_temp[3][7]_i_8_n_0 ),
        .O(\rx_array_temp[3][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \rx_array_temp[3][7]_i_5 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .I4(\rx_array_temp[3][7]_i_9_n_0 ),
        .O(\rx_array_temp[3][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rx_array_temp[3][7]_i_6 
       (.I0(sel0[28]),
        .I1(sel0[29]),
        .I2(sel0[30]),
        .I3(sel0[31]),
        .I4(sel0[3]),
        .I5(\state_main_reg_n_0_[1] ),
        .O(\rx_array_temp[3][7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_array_temp[3][7]_i_7 
       (.I0(sel0[27]),
        .I1(sel0[26]),
        .I2(sel0[25]),
        .I3(sel0[24]),
        .O(\rx_array_temp[3][7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_array_temp[3][7]_i_8 
       (.I0(sel0[19]),
        .I1(sel0[18]),
        .I2(sel0[17]),
        .I3(sel0[16]),
        .O(\rx_array_temp[3][7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_array_temp[3][7]_i_9 
       (.I0(sel0[11]),
        .I1(sel0[10]),
        .I2(sel0[9]),
        .I3(sel0[8]),
        .O(\rx_array_temp[3][7]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \rx_array_temp[4][7]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(\rx_array_temp[3][7]_i_2_n_0 ),
        .O(\rx_array_temp[4]_6 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \rx_array_temp[5][7]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\rx_array_temp[3][7]_i_2_n_0 ),
        .O(\rx_array_temp[5]_3 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \rx_array_temp[6][7]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(\rx_array_temp[3][7]_i_2_n_0 ),
        .O(\rx_array_temp[6]_7 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \rx_array_temp[7][7]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(\rx_array_temp[3][7]_i_2_n_0 ),
        .O(\rx_array_temp[7]_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[0][0] 
       (.C(clk_in),
        .CE(\rx_array_temp[0]_9 ),
        .D(rx_data_data1[0]),
        .Q(\rx_array_temp_reg[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[0][1] 
       (.C(clk_in),
        .CE(\rx_array_temp[0]_9 ),
        .D(rx_data_data1[1]),
        .Q(\rx_array_temp_reg[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[0][2] 
       (.C(clk_in),
        .CE(\rx_array_temp[0]_9 ),
        .D(rx_data_data1[2]),
        .Q(\rx_array_temp_reg[0] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[0][3] 
       (.C(clk_in),
        .CE(\rx_array_temp[0]_9 ),
        .D(rx_data_data1[3]),
        .Q(\rx_array_temp_reg[0] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[0][4] 
       (.C(clk_in),
        .CE(\rx_array_temp[0]_9 ),
        .D(rx_data_data1[4]),
        .Q(\rx_array_temp_reg[0] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[0][5] 
       (.C(clk_in),
        .CE(\rx_array_temp[0]_9 ),
        .D(rx_data_data1[5]),
        .Q(\rx_array_temp_reg[0] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[0][6] 
       (.C(clk_in),
        .CE(\rx_array_temp[0]_9 ),
        .D(rx_data_data1[6]),
        .Q(\rx_array_temp_reg[0] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[0][7] 
       (.C(clk_in),
        .CE(\rx_array_temp[0]_9 ),
        .D(rx_data_data1[7]),
        .Q(\rx_array_temp_reg[0] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[1][0] 
       (.C(clk_in),
        .CE(\rx_array_temp[1]_10 ),
        .D(rx_data_data1[0]),
        .Q(\rx_array_temp_reg[1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[1][1] 
       (.C(clk_in),
        .CE(\rx_array_temp[1]_10 ),
        .D(rx_data_data1[1]),
        .Q(\rx_array_temp_reg[1] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[1][2] 
       (.C(clk_in),
        .CE(\rx_array_temp[1]_10 ),
        .D(rx_data_data1[2]),
        .Q(\rx_array_temp_reg[1] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[1][3] 
       (.C(clk_in),
        .CE(\rx_array_temp[1]_10 ),
        .D(rx_data_data1[3]),
        .Q(\rx_array_temp_reg[1] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[1][4] 
       (.C(clk_in),
        .CE(\rx_array_temp[1]_10 ),
        .D(rx_data_data1[4]),
        .Q(\rx_array_temp_reg[1] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[1][5] 
       (.C(clk_in),
        .CE(\rx_array_temp[1]_10 ),
        .D(rx_data_data1[5]),
        .Q(\rx_array_temp_reg[1] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[1][6] 
       (.C(clk_in),
        .CE(\rx_array_temp[1]_10 ),
        .D(rx_data_data1[6]),
        .Q(\rx_array_temp_reg[1] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[1][7] 
       (.C(clk_in),
        .CE(\rx_array_temp[1]_10 ),
        .D(rx_data_data1[7]),
        .Q(\rx_array_temp_reg[1] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[2][0] 
       (.C(clk_in),
        .CE(\rx_array_temp[2]_8 ),
        .D(rx_data_data1[0]),
        .Q(\rx_array_temp_reg[2] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[2][1] 
       (.C(clk_in),
        .CE(\rx_array_temp[2]_8 ),
        .D(rx_data_data1[1]),
        .Q(\rx_array_temp_reg[2] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[2][2] 
       (.C(clk_in),
        .CE(\rx_array_temp[2]_8 ),
        .D(rx_data_data1[2]),
        .Q(\rx_array_temp_reg[2] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[2][3] 
       (.C(clk_in),
        .CE(\rx_array_temp[2]_8 ),
        .D(rx_data_data1[3]),
        .Q(\rx_array_temp_reg[2] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[2][4] 
       (.C(clk_in),
        .CE(\rx_array_temp[2]_8 ),
        .D(rx_data_data1[4]),
        .Q(\rx_array_temp_reg[2] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[2][5] 
       (.C(clk_in),
        .CE(\rx_array_temp[2]_8 ),
        .D(rx_data_data1[5]),
        .Q(\rx_array_temp_reg[2] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[2][6] 
       (.C(clk_in),
        .CE(\rx_array_temp[2]_8 ),
        .D(rx_data_data1[6]),
        .Q(\rx_array_temp_reg[2] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[2][7] 
       (.C(clk_in),
        .CE(\rx_array_temp[2]_8 ),
        .D(rx_data_data1[7]),
        .Q(\rx_array_temp_reg[2] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[3][0] 
       (.C(clk_in),
        .CE(\rx_array_temp[3]_5 ),
        .D(rx_data_data1[0]),
        .Q(\rx_array_temp_reg[3] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[3][1] 
       (.C(clk_in),
        .CE(\rx_array_temp[3]_5 ),
        .D(rx_data_data1[1]),
        .Q(\rx_array_temp_reg[3] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[3][2] 
       (.C(clk_in),
        .CE(\rx_array_temp[3]_5 ),
        .D(rx_data_data1[2]),
        .Q(\rx_array_temp_reg[3] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[3][3] 
       (.C(clk_in),
        .CE(\rx_array_temp[3]_5 ),
        .D(rx_data_data1[3]),
        .Q(\rx_array_temp_reg[3] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[3][4] 
       (.C(clk_in),
        .CE(\rx_array_temp[3]_5 ),
        .D(rx_data_data1[4]),
        .Q(\rx_array_temp_reg[3] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[3][5] 
       (.C(clk_in),
        .CE(\rx_array_temp[3]_5 ),
        .D(rx_data_data1[5]),
        .Q(\rx_array_temp_reg[3] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[3][6] 
       (.C(clk_in),
        .CE(\rx_array_temp[3]_5 ),
        .D(rx_data_data1[6]),
        .Q(\rx_array_temp_reg[3] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[3][7] 
       (.C(clk_in),
        .CE(\rx_array_temp[3]_5 ),
        .D(rx_data_data1[7]),
        .Q(\rx_array_temp_reg[3] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[4][0] 
       (.C(clk_in),
        .CE(\rx_array_temp[4]_6 ),
        .D(rx_data_data1[0]),
        .Q(\rx_array_temp_reg[4] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[4][1] 
       (.C(clk_in),
        .CE(\rx_array_temp[4]_6 ),
        .D(rx_data_data1[1]),
        .Q(\rx_array_temp_reg[4] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[4][2] 
       (.C(clk_in),
        .CE(\rx_array_temp[4]_6 ),
        .D(rx_data_data1[2]),
        .Q(\rx_array_temp_reg[4] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[4][3] 
       (.C(clk_in),
        .CE(\rx_array_temp[4]_6 ),
        .D(rx_data_data1[3]),
        .Q(\rx_array_temp_reg[4] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[4][4] 
       (.C(clk_in),
        .CE(\rx_array_temp[4]_6 ),
        .D(rx_data_data1[4]),
        .Q(\rx_array_temp_reg[4] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[4][5] 
       (.C(clk_in),
        .CE(\rx_array_temp[4]_6 ),
        .D(rx_data_data1[5]),
        .Q(\rx_array_temp_reg[4] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[4][6] 
       (.C(clk_in),
        .CE(\rx_array_temp[4]_6 ),
        .D(rx_data_data1[6]),
        .Q(\rx_array_temp_reg[4] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[4][7] 
       (.C(clk_in),
        .CE(\rx_array_temp[4]_6 ),
        .D(rx_data_data1[7]),
        .Q(\rx_array_temp_reg[4] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[5][0] 
       (.C(clk_in),
        .CE(\rx_array_temp[5]_3 ),
        .D(rx_data_data1[0]),
        .Q(\rx_array_temp_reg[5] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[5][1] 
       (.C(clk_in),
        .CE(\rx_array_temp[5]_3 ),
        .D(rx_data_data1[1]),
        .Q(\rx_array_temp_reg[5] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[5][2] 
       (.C(clk_in),
        .CE(\rx_array_temp[5]_3 ),
        .D(rx_data_data1[2]),
        .Q(\rx_array_temp_reg[5] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[5][3] 
       (.C(clk_in),
        .CE(\rx_array_temp[5]_3 ),
        .D(rx_data_data1[3]),
        .Q(\rx_array_temp_reg[5] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[5][4] 
       (.C(clk_in),
        .CE(\rx_array_temp[5]_3 ),
        .D(rx_data_data1[4]),
        .Q(\rx_array_temp_reg[5] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[5][5] 
       (.C(clk_in),
        .CE(\rx_array_temp[5]_3 ),
        .D(rx_data_data1[5]),
        .Q(\rx_array_temp_reg[5] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[5][6] 
       (.C(clk_in),
        .CE(\rx_array_temp[5]_3 ),
        .D(rx_data_data1[6]),
        .Q(\rx_array_temp_reg[5] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[5][7] 
       (.C(clk_in),
        .CE(\rx_array_temp[5]_3 ),
        .D(rx_data_data1[7]),
        .Q(\rx_array_temp_reg[5] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[6][0] 
       (.C(clk_in),
        .CE(\rx_array_temp[6]_7 ),
        .D(rx_data_data1[0]),
        .Q(\rx_array_temp_reg[6] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[6][1] 
       (.C(clk_in),
        .CE(\rx_array_temp[6]_7 ),
        .D(rx_data_data1[1]),
        .Q(\rx_array_temp_reg[6] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[6][2] 
       (.C(clk_in),
        .CE(\rx_array_temp[6]_7 ),
        .D(rx_data_data1[2]),
        .Q(\rx_array_temp_reg[6] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[6][3] 
       (.C(clk_in),
        .CE(\rx_array_temp[6]_7 ),
        .D(rx_data_data1[3]),
        .Q(\rx_array_temp_reg[6] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[6][4] 
       (.C(clk_in),
        .CE(\rx_array_temp[6]_7 ),
        .D(rx_data_data1[4]),
        .Q(\rx_array_temp_reg[6] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[6][5] 
       (.C(clk_in),
        .CE(\rx_array_temp[6]_7 ),
        .D(rx_data_data1[5]),
        .Q(\rx_array_temp_reg[6] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[6][6] 
       (.C(clk_in),
        .CE(\rx_array_temp[6]_7 ),
        .D(rx_data_data1[6]),
        .Q(\rx_array_temp_reg[6] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[6][7] 
       (.C(clk_in),
        .CE(\rx_array_temp[6]_7 ),
        .D(rx_data_data1[7]),
        .Q(\rx_array_temp_reg[6] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[7][0] 
       (.C(clk_in),
        .CE(\rx_array_temp[7]_4 ),
        .D(rx_data_data1[0]),
        .Q(\rx_array_temp_reg[7] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[7][1] 
       (.C(clk_in),
        .CE(\rx_array_temp[7]_4 ),
        .D(rx_data_data1[1]),
        .Q(\rx_array_temp_reg[7] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[7][2] 
       (.C(clk_in),
        .CE(\rx_array_temp[7]_4 ),
        .D(rx_data_data1[2]),
        .Q(\rx_array_temp_reg[7] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[7][3] 
       (.C(clk_in),
        .CE(\rx_array_temp[7]_4 ),
        .D(rx_data_data1[3]),
        .Q(\rx_array_temp_reg[7] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[7][4] 
       (.C(clk_in),
        .CE(\rx_array_temp[7]_4 ),
        .D(rx_data_data1[4]),
        .Q(\rx_array_temp_reg[7] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[7][5] 
       (.C(clk_in),
        .CE(\rx_array_temp[7]_4 ),
        .D(rx_data_data1[5]),
        .Q(\rx_array_temp_reg[7] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[7][6] 
       (.C(clk_in),
        .CE(\rx_array_temp[7]_4 ),
        .D(rx_data_data1[6]),
        .Q(\rx_array_temp_reg[7] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_array_temp_reg[7][7] 
       (.C(clk_in),
        .CE(\rx_array_temp[7]_4 ),
        .D(rx_data_data1[7]),
        .Q(\rx_array_temp_reg[7] [7]),
        .R(1'b0));
  FDRE \rx_data_data1_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(rx_data_data[0]),
        .Q(rx_data_data1[0]),
        .R(1'b0));
  FDRE \rx_data_data1_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(rx_data_data[1]),
        .Q(rx_data_data1[1]),
        .R(1'b0));
  FDRE \rx_data_data1_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(rx_data_data[2]),
        .Q(rx_data_data1[2]),
        .R(1'b0));
  FDRE \rx_data_data1_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(rx_data_data[3]),
        .Q(rx_data_data1[3]),
        .R(1'b0));
  FDRE \rx_data_data1_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(rx_data_data[4]),
        .Q(rx_data_data1[4]),
        .R(1'b0));
  FDRE \rx_data_data1_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(rx_data_data[5]),
        .Q(rx_data_data1[5]),
        .R(1'b0));
  FDRE \rx_data_data1_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(rx_data_data[6]),
        .Q(rx_data_data1[6]),
        .R(1'b0));
  FDRE \rx_data_data1_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(rx_data_data[7]),
        .Q(rx_data_data1[7]),
        .R(1'b0));
  FDRE rx_data_last1_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(rx_data_last),
        .Q(rx_data_last1),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_index[0]_i_1 
       (.I0(sel0[0]),
        .O(\rx_index[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040404)) 
    \rx_index[31]_i_1 
       (.I0(\state_main_reg_n_0_[2] ),
        .I1(reset_n),
        .I2(\state_main_reg_n_0_[1] ),
        .I3(state_main1),
        .I4(\state_main_reg_n_0_[0] ),
        .O(\rx_index[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \rx_index[31]_i_2 
       (.I0(\state_main_reg_n_0_[1] ),
        .I1(reset_n),
        .I2(\state_main_reg_n_0_[2] ),
        .O(rx_index));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[0] 
       (.C(clk_in),
        .CE(rx_index),
        .D(\rx_index[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[10] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[10]),
        .Q(sel0[10]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[11] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[11]),
        .Q(sel0[11]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[12] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[12]),
        .Q(sel0[12]),
        .R(\rx_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rx_index_reg[12]_i_1 
       (.CI(\rx_index_reg[8]_i_1_n_0 ),
        .CO({\rx_index_reg[12]_i_1_n_0 ,\rx_index_reg[12]_i_1_n_1 ,\rx_index_reg[12]_i_1_n_2 ,\rx_index_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rx_index0[12:9]),
        .S(sel0[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[13] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[13]),
        .Q(sel0[13]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[14] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[14]),
        .Q(sel0[14]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[15] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[15]),
        .Q(sel0[15]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[16] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[16]),
        .Q(sel0[16]),
        .R(\rx_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rx_index_reg[16]_i_1 
       (.CI(\rx_index_reg[12]_i_1_n_0 ),
        .CO({\rx_index_reg[16]_i_1_n_0 ,\rx_index_reg[16]_i_1_n_1 ,\rx_index_reg[16]_i_1_n_2 ,\rx_index_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rx_index0[16:13]),
        .S(sel0[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[17] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[17]),
        .Q(sel0[17]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[18] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[18]),
        .Q(sel0[18]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[19] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[19]),
        .Q(sel0[19]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[1] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[1]),
        .Q(sel0[1]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[20] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[20]),
        .Q(sel0[20]),
        .R(\rx_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rx_index_reg[20]_i_1 
       (.CI(\rx_index_reg[16]_i_1_n_0 ),
        .CO({\rx_index_reg[20]_i_1_n_0 ,\rx_index_reg[20]_i_1_n_1 ,\rx_index_reg[20]_i_1_n_2 ,\rx_index_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rx_index0[20:17]),
        .S(sel0[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[21] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[21]),
        .Q(sel0[21]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[22] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[22]),
        .Q(sel0[22]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[23] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[23]),
        .Q(sel0[23]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[24] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[24]),
        .Q(sel0[24]),
        .R(\rx_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rx_index_reg[24]_i_1 
       (.CI(\rx_index_reg[20]_i_1_n_0 ),
        .CO({\rx_index_reg[24]_i_1_n_0 ,\rx_index_reg[24]_i_1_n_1 ,\rx_index_reg[24]_i_1_n_2 ,\rx_index_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rx_index0[24:21]),
        .S(sel0[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[25] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[25]),
        .Q(sel0[25]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[26] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[26]),
        .Q(sel0[26]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[27] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[27]),
        .Q(sel0[27]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[28] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[28]),
        .Q(sel0[28]),
        .R(\rx_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rx_index_reg[28]_i_1 
       (.CI(\rx_index_reg[24]_i_1_n_0 ),
        .CO({\rx_index_reg[28]_i_1_n_0 ,\rx_index_reg[28]_i_1_n_1 ,\rx_index_reg[28]_i_1_n_2 ,\rx_index_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rx_index0[28:25]),
        .S(sel0[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[29] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[29]),
        .Q(sel0[29]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[2] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[2]),
        .Q(sel0[2]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[30] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[30]),
        .Q(sel0[30]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[31] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[31]),
        .Q(sel0[31]),
        .R(\rx_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rx_index_reg[31]_i_3 
       (.CI(\rx_index_reg[28]_i_1_n_0 ),
        .CO({\NLW_rx_index_reg[31]_i_3_CO_UNCONNECTED [3:2],\rx_index_reg[31]_i_3_n_2 ,\rx_index_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rx_index_reg[31]_i_3_O_UNCONNECTED [3],rx_index0[31:29]}),
        .S({1'b0,sel0[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[3] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[3]),
        .Q(sel0[3]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[4] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[4]),
        .Q(sel0[4]),
        .R(\rx_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rx_index_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\rx_index_reg[4]_i_1_n_0 ,\rx_index_reg[4]_i_1_n_1 ,\rx_index_reg[4]_i_1_n_2 ,\rx_index_reg[4]_i_1_n_3 }),
        .CYINIT(sel0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rx_index0[4:1]),
        .S(sel0[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[5] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[5]),
        .Q(sel0[5]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[6] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[6]),
        .Q(sel0[6]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[7] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[7]),
        .Q(sel0[7]),
        .R(\rx_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[8] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[8]),
        .Q(sel0[8]),
        .R(\rx_index[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rx_index_reg[8]_i_1 
       (.CI(\rx_index_reg[4]_i_1_n_0 ),
        .CO({\rx_index_reg[8]_i_1_n_0 ,\rx_index_reg[8]_i_1_n_1 ,\rx_index_reg[8]_i_1_n_2 ,\rx_index_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rx_index0[8:5]),
        .S(sel0[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_index_reg[9] 
       (.C(clk_in),
        .CE(rx_index),
        .D(rx_index0[9]),
        .Q(sel0[9]),
        .R(\rx_index[31]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state_main1_carry
       (.CI(1'b0),
        .CO({state_main1_carry_n_0,state_main1_carry_n_1,state_main1_carry_n_2,state_main1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,state_main1_carry_i_1_n_0,state_main1_carry_i_2_n_0}),
        .O(NLW_state_main1_carry_O_UNCONNECTED[3:0]),
        .S({state_main1_carry_i_3_n_0,state_main1_carry_i_4_n_0,state_main1_carry_i_5_n_0,state_main1_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state_main1_carry__0
       (.CI(state_main1_carry_n_0),
        .CO({state_main1_carry__0_n_0,state_main1_carry__0_n_1,state_main1_carry__0_n_2,state_main1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state_main1_carry__0_O_UNCONNECTED[3:0]),
        .S({state_main1_carry__0_i_1_n_0,state_main1_carry__0_i_2_n_0,state_main1_carry__0_i_3_n_0,state_main1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state_main1_carry__0_i_1
       (.I0(sel0[14]),
        .I1(sel0[15]),
        .O(state_main1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state_main1_carry__0_i_2
       (.I0(sel0[12]),
        .I1(sel0[13]),
        .O(state_main1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state_main1_carry__0_i_3
       (.I0(sel0[10]),
        .I1(sel0[11]),
        .O(state_main1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state_main1_carry__0_i_4
       (.I0(sel0[8]),
        .I1(sel0[9]),
        .O(state_main1_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state_main1_carry__1
       (.CI(state_main1_carry__0_n_0),
        .CO({state_main1_carry__1_n_0,state_main1_carry__1_n_1,state_main1_carry__1_n_2,state_main1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state_main1_carry__1_O_UNCONNECTED[3:0]),
        .S({state_main1_carry__1_i_1_n_0,state_main1_carry__1_i_2_n_0,state_main1_carry__1_i_3_n_0,state_main1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state_main1_carry__1_i_1
       (.I0(sel0[22]),
        .I1(sel0[23]),
        .O(state_main1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state_main1_carry__1_i_2
       (.I0(sel0[20]),
        .I1(sel0[21]),
        .O(state_main1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state_main1_carry__1_i_3
       (.I0(sel0[18]),
        .I1(sel0[19]),
        .O(state_main1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state_main1_carry__1_i_4
       (.I0(sel0[16]),
        .I1(sel0[17]),
        .O(state_main1_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state_main1_carry__2
       (.CI(state_main1_carry__1_n_0),
        .CO({state_main1,state_main1_carry__2_n_1,state_main1_carry__2_n_2,state_main1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({sel0[31],1'b0,1'b0,1'b0}),
        .O(NLW_state_main1_carry__2_O_UNCONNECTED[3:0]),
        .S({state_main1_carry__2_i_1_n_0,state_main1_carry__2_i_2_n_0,state_main1_carry__2_i_3_n_0,state_main1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state_main1_carry__2_i_1
       (.I0(sel0[30]),
        .I1(sel0[31]),
        .O(state_main1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state_main1_carry__2_i_2
       (.I0(sel0[28]),
        .I1(sel0[29]),
        .O(state_main1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state_main1_carry__2_i_3
       (.I0(sel0[26]),
        .I1(sel0[27]),
        .O(state_main1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state_main1_carry__2_i_4
       (.I0(sel0[24]),
        .I1(sel0[25]),
        .O(state_main1_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_main1_carry_i_1
       (.I0(sel0[3]),
        .O(state_main1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    state_main1_carry_i_2
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(state_main1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state_main1_carry_i_3
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .O(state_main1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state_main1_carry_i_4
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .O(state_main1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    state_main1_carry_i_5
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .O(state_main1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    state_main1_carry_i_6
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .O(state_main1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h5556000200000000)) 
    \state_main[0]_i_1 
       (.I0(\state_main_reg_n_0_[0] ),
        .I1(\state_main[2]_i_2_n_0 ),
        .I2(\state_main[2]_i_3_n_0 ),
        .I3(\state_main[2]_i_4_n_0 ),
        .I4(\state_main[0]_i_2_n_0 ),
        .I5(reset_n),
        .O(\state_main[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \state_main[0]_i_2 
       (.I0(\state_main_reg_n_0_[1] ),
        .I1(\state_main_reg_n_0_[2] ),
        .O(\state_main[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000200000000)) 
    \state_main[1]_i_1 
       (.I0(\state_main_reg_n_0_[1] ),
        .I1(\state_main[2]_i_2_n_0 ),
        .I2(\state_main[2]_i_3_n_0 ),
        .I3(\state_main[2]_i_4_n_0 ),
        .I4(p_2_in[1]),
        .I5(reset_n),
        .O(\state_main[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \state_main[1]_i_2 
       (.I0(\state_main_reg_n_0_[2] ),
        .I1(\state_main_reg_n_0_[1] ),
        .I2(\state_main_reg_n_0_[0] ),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hFFFE000200000000)) 
    \state_main[2]_i_1 
       (.I0(\state_main_reg_n_0_[2] ),
        .I1(\state_main[2]_i_2_n_0 ),
        .I2(\state_main[2]_i_3_n_0 ),
        .I3(\state_main[2]_i_4_n_0 ),
        .I4(p_2_in[2]),
        .I5(reset_n),
        .O(\state_main[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0080FF000080)) 
    \state_main[2]_i_2 
       (.I0(\state_main[2]_i_6_n_0 ),
        .I1(\state_main[2]_i_7_n_0 ),
        .I2(\state_main[2]_i_8_n_0 ),
        .I3(\state_main_reg_n_0_[0] ),
        .I4(\state_main_reg_n_0_[1] ),
        .I5(rx_data_last1),
        .O(\state_main[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF404)) 
    \state_main[2]_i_3 
       (.I0(state_main1),
        .I1(\state_main_reg_n_0_[0] ),
        .I2(\state_main_reg_n_0_[2] ),
        .I3(\state_main_reg_n_0_[1] ),
        .O(\state_main[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0200F200)) 
    \state_main[2]_i_4 
       (.I0(m_axis_tready1),
        .I1(ltOp__23_carry__0_n_0),
        .I2(\state_main_reg_n_0_[0] ),
        .I3(\state_main_reg_n_0_[2] ),
        .I4(ltOp),
        .O(\state_main[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7588)) 
    \state_main[2]_i_5 
       (.I0(\state_main_reg_n_0_[1] ),
        .I1(\state_main_reg_n_0_[0] ),
        .I2(ltOp__7_carry__2_n_0),
        .I3(\state_main_reg_n_0_[2] ),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \state_main[2]_i_6 
       (.I0(rx_cmd[7]),
        .I1(rx_cmd[8]),
        .I2(rx_cmd[5]),
        .I3(rx_cmd[6]),
        .I4(rx_cmd[10]),
        .I5(rx_cmd[9]),
        .O(\state_main[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \state_main[2]_i_7 
       (.I0(rx_cmd[2]),
        .I1(rx_cmd[3]),
        .I2(rx_cmd[0]),
        .I3(rx_cmd[1]),
        .I4(\state_main_reg_n_0_[2] ),
        .I5(rx_cmd[4]),
        .O(\state_main[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \state_main[2]_i_8 
       (.I0(rx_cmd[13]),
        .I1(rx_cmd[14]),
        .I2(rx_cmd[11]),
        .I3(rx_cmd[12]),
        .I4(rx_cmd_valid),
        .I5(rx_cmd[15]),
        .O(\state_main[2]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_main_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\state_main[0]_i_1_n_0 ),
        .Q(\state_main_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_main_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\state_main[1]_i_1_n_0 ),
        .Q(\state_main_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_main_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\state_main[2]_i_1_n_0 ),
        .Q(\state_main_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "system_Sim_ad_data_gen_0_0,Sim_ad_data_gen,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Sim_ad_data_gen,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk_in,
    reset_n,
    m_axis_tdata,
    m_axis_tready,
    m_axis_tvalid,
    rx_cmd,
    rx_cmd_valid,
    tx_cmd,
    tx_cmd_valid,
    rx_data_valid,
    rx_data_last,
    rx_data_data,
    tx_data_valid,
    tx_data_last,
    tx_data_data);
  input clk_in;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  input [15:0]rx_cmd;
  input rx_cmd_valid;
  output [15:0]tx_cmd;
  output tx_cmd_valid;
  input rx_data_valid;
  input rx_data_last;
  input [7:0]rx_data_data;
  output tx_data_valid;
  output tx_data_last;
  output [7:0]tx_data_data;

  wire \<const0> ;
  wire clk_in;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire reset_n;
  wire [15:0]rx_cmd;
  wire rx_cmd_valid;
  wire [7:0]rx_data_data;
  wire rx_data_last;

  assign tx_cmd[15] = \<const0> ;
  assign tx_cmd[14] = \<const0> ;
  assign tx_cmd[13] = \<const0> ;
  assign tx_cmd[12] = \<const0> ;
  assign tx_cmd[11] = \<const0> ;
  assign tx_cmd[10] = \<const0> ;
  assign tx_cmd[9] = \<const0> ;
  assign tx_cmd[8] = \<const0> ;
  assign tx_cmd[7] = \<const0> ;
  assign tx_cmd[6] = \<const0> ;
  assign tx_cmd[5] = \<const0> ;
  assign tx_cmd[4] = \<const0> ;
  assign tx_cmd[3] = \<const0> ;
  assign tx_cmd[2] = \<const0> ;
  assign tx_cmd[1] = \<const0> ;
  assign tx_cmd[0] = \<const0> ;
  assign tx_cmd_valid = \<const0> ;
  assign tx_data_data[7] = \<const0> ;
  assign tx_data_data[6] = \<const0> ;
  assign tx_data_data[5] = \<const0> ;
  assign tx_data_data[4] = \<const0> ;
  assign tx_data_data[3] = \<const0> ;
  assign tx_data_data[2] = \<const0> ;
  assign tx_data_data[1] = \<const0> ;
  assign tx_data_data[0] = \<const0> ;
  assign tx_data_last = \<const0> ;
  assign tx_data_valid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sim_ad_data_gen U0
       (.clk_in(clk_in),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .reset_n(reset_n),
        .rx_cmd(rx_cmd),
        .rx_cmd_valid(rx_cmd_valid),
        .rx_data_data(rx_data_data),
        .rx_data_last(rx_data_last));
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
