// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Mar 16 15:58:09 2026
// Host        : ti running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_TOP_0_10_stub.v
// Design      : system_TOP_0_10
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "TOP,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_in, clk_out, clk2_dir, ps_clk, clk1_dir, 
  triger_in_pos, triger_in_tr, ad_clk_in, AD_DA, AD_DB, clk_ad_out, m_axis_tready, m_axis_tvalid, 
  m_axis_tlast, m_axis_tdata, rx_cmd, rx_cmd_valid, rx_data_valid, rx_data_last, rx_data_data, 
  tx_cmd, tx_cmd_valid, tx_data_valid, tx_data_last, tx_data_data, AD_SEN, AD_SDATA, AD_SCLK, 
  AD_RESET, AD_CTRL1, AD_CTRL2, AD_CTRL3)
/* synthesis syn_black_box black_box_pad_pin="clk_in,clk_out,clk2_dir,ps_clk,clk1_dir,triger_in_pos,triger_in_tr,ad_clk_in,AD_DA[13:0],AD_DB[13:0],clk_ad_out,m_axis_tready,m_axis_tvalid,m_axis_tlast,m_axis_tdata[15:0],rx_cmd[15:0],rx_cmd_valid,rx_data_valid,rx_data_last,rx_data_data[7:0],tx_cmd[15:0],tx_cmd_valid,tx_data_valid,tx_data_last,tx_data_data[7:0],AD_SEN,AD_SDATA,AD_SCLK,AD_RESET,AD_CTRL1,AD_CTRL2,AD_CTRL3" */;
  input clk_in;
  output clk_out;
  output clk2_dir;
  input ps_clk;
  output clk1_dir;
  input triger_in_pos;
  input triger_in_tr;
  input ad_clk_in;
  input [13:0]AD_DA;
  input [13:0]AD_DB;
  output clk_ad_out;
  input m_axis_tready;
  output m_axis_tvalid;
  output m_axis_tlast;
  output [15:0]m_axis_tdata;
  input [15:0]rx_cmd;
  input rx_cmd_valid;
  input rx_data_valid;
  input rx_data_last;
  input [7:0]rx_data_data;
  output [15:0]tx_cmd;
  output tx_cmd_valid;
  output tx_data_valid;
  output tx_data_last;
  output [7:0]tx_data_data;
  output AD_SEN;
  output AD_SDATA;
  output AD_SCLK;
  output AD_RESET;
  output AD_CTRL1;
  output AD_CTRL2;
  output AD_CTRL3;
endmodule
