// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:TOP:1.0
// IP Revision: 1

(* X_CORE_INFO = "TOP,Vivado 2021.1.1" *)
(* CHECK_LICENSE_TYPE = "system_TOP_0_2,TOP,{}" *)
(* CORE_GENERATION_INFO = "system_TOP_0_2,TOP,{x_ipProduct=Vivado 2021.1.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=TOP,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,reg_num=45}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_TOP_0_2 (
  clk_in,
  ps_clk,
  clk_dir,
  triger_in_pos,
  triger_in_tr,
  ad_clk_in,
  AD_DA,
  AD_DB,
  clk_ad_out,
  m_axis_tready,
  m_axis_tvalid,
  m_axis_tlast,
  m_axis_tdata,
  rx_cmd,
  rx_cmd_valid,
  rx_data_valid,
  rx_data_last,
  rx_data_data,
  tx_cmd,
  tx_cmd_valid,
  tx_data_valid,
  tx_data_last,
  tx_data_data,
  AD_SEN,
  AD_SDATA,
  AD_SCLK,
  AD_RESET,
  AD_CTRL1,
  AD_CTRL2,
  AD_CTRL3
);

input wire clk_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ps_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ps_clk CLK" *)
input wire ps_clk;
output wire clk_dir;
input wire triger_in_pos;
input wire triger_in_tr;
input wire ad_clk_in;
input wire [13 : 0] AD_DA;
input wire [13 : 0] AD_DB;
output wire clk_ad_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
input wire m_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
output wire m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
output wire m_axis_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
output wire [15 : 0] m_axis_tdata;
input wire [15 : 0] rx_cmd;
input wire rx_cmd_valid;
input wire rx_data_valid;
input wire rx_data_last;
input wire [7 : 0] rx_data_data;
output wire [15 : 0] tx_cmd;
output wire tx_cmd_valid;
output wire tx_data_valid;
output wire tx_data_last;
output wire [7 : 0] tx_data_data;
output wire AD_SEN;
output wire AD_SDATA;
output wire AD_SCLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AD_RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AD_RESET RST" *)
output wire AD_RESET;
output wire AD_CTRL1;
output wire AD_CTRL2;
output wire AD_CTRL3;

  TOP #(
    .reg_num(45)
  ) inst (
    .clk_in(clk_in),
    .ps_clk(ps_clk),
    .clk_dir(clk_dir),
    .triger_in_pos(triger_in_pos),
    .triger_in_tr(triger_in_tr),
    .ad_clk_in(ad_clk_in),
    .AD_DA(AD_DA),
    .AD_DB(AD_DB),
    .clk_ad_out(clk_ad_out),
    .m_axis_tready(m_axis_tready),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tdata(m_axis_tdata),
    .rx_cmd(rx_cmd),
    .rx_cmd_valid(rx_cmd_valid),
    .rx_data_valid(rx_data_valid),
    .rx_data_last(rx_data_last),
    .rx_data_data(rx_data_data),
    .tx_cmd(tx_cmd),
    .tx_cmd_valid(tx_cmd_valid),
    .tx_data_valid(tx_data_valid),
    .tx_data_last(tx_data_last),
    .tx_data_data(tx_data_data),
    .AD_SEN(AD_SEN),
    .AD_SDATA(AD_SDATA),
    .AD_SCLK(AD_SCLK),
    .AD_RESET(AD_RESET),
    .AD_CTRL1(AD_CTRL1),
    .AD_CTRL2(AD_CTRL2),
    .AD_CTRL3(AD_CTRL3)
  );
endmodule
