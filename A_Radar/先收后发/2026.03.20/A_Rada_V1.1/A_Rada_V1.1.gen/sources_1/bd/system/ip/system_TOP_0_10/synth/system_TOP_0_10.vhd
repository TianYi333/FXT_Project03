-- (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:TOP:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_TOP_0_10 IS
  PORT (
    clk_in : IN STD_LOGIC;
    ps_clk : IN STD_LOGIC;
    clk_dir : OUT STD_LOGIC;
    triger_in_pos : IN STD_LOGIC;
    triger_in_tr : IN STD_LOGIC;
    ad_clk_in : IN STD_LOGIC;
    AD_DA : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    AD_DB : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    clk_ad_out : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tlast : OUT STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    rx_cmd : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    rx_cmd_valid : IN STD_LOGIC;
    rx_data_valid : IN STD_LOGIC;
    rx_data_last : IN STD_LOGIC;
    rx_data_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    tx_cmd : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    tx_cmd_valid : OUT STD_LOGIC;
    tx_data_valid : OUT STD_LOGIC;
    tx_data_last : OUT STD_LOGIC;
    tx_data_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    AD_SEN : OUT STD_LOGIC;
    AD_SDATA : OUT STD_LOGIC;
    AD_SCLK : OUT STD_LOGIC;
    AD_RESET : OUT STD_LOGIC;
    AD_CTRL1 : OUT STD_LOGIC;
    AD_CTRL2 : OUT STD_LOGIC;
    AD_CTRL3 : OUT STD_LOGIC
  );
END system_TOP_0_10;

ARCHITECTURE system_TOP_0_10_arch OF system_TOP_0_10 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_TOP_0_10_arch: ARCHITECTURE IS "yes";
  COMPONENT TOP IS
    GENERIC (
      reg_num : INTEGER
    );
    PORT (
      clk_in : IN STD_LOGIC;
      ps_clk : IN STD_LOGIC;
      clk_dir : OUT STD_LOGIC;
      triger_in_pos : IN STD_LOGIC;
      triger_in_tr : IN STD_LOGIC;
      ad_clk_in : IN STD_LOGIC;
      AD_DA : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      AD_DB : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      clk_ad_out : OUT STD_LOGIC;
      m_axis_tready : IN STD_LOGIC;
      m_axis_tvalid : OUT STD_LOGIC;
      m_axis_tlast : OUT STD_LOGIC;
      m_axis_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      rx_cmd : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      rx_cmd_valid : IN STD_LOGIC;
      rx_data_valid : IN STD_LOGIC;
      rx_data_last : IN STD_LOGIC;
      rx_data_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      tx_cmd : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      tx_cmd_valid : OUT STD_LOGIC;
      tx_data_valid : OUT STD_LOGIC;
      tx_data_last : OUT STD_LOGIC;
      tx_data_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      AD_SEN : OUT STD_LOGIC;
      AD_SDATA : OUT STD_LOGIC;
      AD_SCLK : OUT STD_LOGIC;
      AD_RESET : OUT STD_LOGIC;
      AD_CTRL1 : OUT STD_LOGIC;
      AD_CTRL2 : OUT STD_LOGIC;
      AD_CTRL3 : OUT STD_LOGIC
    );
  END COMPONENT TOP;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_TOP_0_10_arch: ARCHITECTURE IS "TOP,Vivado 2021.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_TOP_0_10_arch : ARCHITECTURE IS "system_TOP_0_10,TOP,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF system_TOP_0_10_arch: ARCHITECTURE IS "system_TOP_0_10,TOP,{x_ipProduct=Vivado 2021.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=TOP,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,reg_num=45}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF system_TOP_0_10_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF AD_RESET: SIGNAL IS "XIL_INTERFACENAME AD_RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF AD_RESET: SIGNAL IS "xilinx.com:signal:reset:1.0 AD_RESET RST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_tready: SIGNAL IS "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ps_clk: SIGNAL IS "XIL_INTERFACENAME ps_clk, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ps_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ps_clk CLK";
BEGIN
  U0 : TOP
    GENERIC MAP (
      reg_num => 45
    )
    PORT MAP (
      clk_in => clk_in,
      ps_clk => ps_clk,
      clk_dir => clk_dir,
      triger_in_pos => triger_in_pos,
      triger_in_tr => triger_in_tr,
      ad_clk_in => ad_clk_in,
      AD_DA => AD_DA,
      AD_DB => AD_DB,
      clk_ad_out => clk_ad_out,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      m_axis_tlast => m_axis_tlast,
      m_axis_tdata => m_axis_tdata,
      rx_cmd => rx_cmd,
      rx_cmd_valid => rx_cmd_valid,
      rx_data_valid => rx_data_valid,
      rx_data_last => rx_data_last,
      rx_data_data => rx_data_data,
      tx_cmd => tx_cmd,
      tx_cmd_valid => tx_cmd_valid,
      tx_data_valid => tx_data_valid,
      tx_data_last => tx_data_last,
      tx_data_data => tx_data_data,
      AD_SEN => AD_SEN,
      AD_SDATA => AD_SDATA,
      AD_SCLK => AD_SCLK,
      AD_RESET => AD_RESET,
      AD_CTRL1 => AD_CTRL1,
      AD_CTRL2 => AD_CTRL2,
      AD_CTRL3 => AD_CTRL3
    );
END system_TOP_0_10_arch;
