// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Jul 22 11:28:53 2025
// Host        : FXT333 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/lwip_tcp_server_perf.gen/sources_1/bd/system/ip/system_Sim_ad_data_gen_0_0/system_Sim_ad_data_gen_0_0_stub.v
// Design      : system_Sim_ad_data_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Sim_ad_data_gen,Vivado 2021.1" *)
module system_Sim_ad_data_gen_0_0(clk_in, reset_n, m_axis_tdata, m_axis_tready, 
  m_axis_tvalid, m_axis_tlast, rx_cmd, rx_cmd_valid, tx_cmd, tx_cmd_valid, rx_data_valid, 
  rx_data_last, rx_data_data, tx_data_valid, tx_data_last, tx_data_data)
/* synthesis syn_black_box black_box_pad_pin="clk_in,reset_n,m_axis_tdata[7:0],m_axis_tready,m_axis_tvalid,m_axis_tlast,rx_cmd[15:0],rx_cmd_valid,tx_cmd[15:0],tx_cmd_valid,rx_data_valid,rx_data_last,rx_data_data[7:0],tx_data_valid,tx_data_last,tx_data_data[7:0]" */;
  input clk_in;
  input reset_n;
  output [7:0]m_axis_tdata;
  input m_axis_tready;
  output m_axis_tvalid;
  output m_axis_tlast;
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
endmodule
