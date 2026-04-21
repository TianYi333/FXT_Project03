-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Mon Jan 12 10:45:58 2026
-- Host        : ti running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/HSC_PRO/HSC/HSC.gen/sources_1/bd/system/ip/system_TOP_0_7/system_TOP_0_7_stub.vhdl
-- Design      : system_TOP_0_7
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_TOP_0_7 is
  Port ( 
    clk_in : in STD_LOGIC;
    ps_clk : in STD_LOGIC;
    clk_dir : out STD_LOGIC;
    triger_in_pos : in STD_LOGIC;
    triger_in_tr : in STD_LOGIC;
    ad_clk_in : in STD_LOGIC;
    AD_DA : in STD_LOGIC_VECTOR ( 13 downto 0 );
    AD_DB : in STD_LOGIC_VECTOR ( 13 downto 0 );
    clk_ad_out : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rx_cmd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx_cmd_valid : in STD_LOGIC;
    rx_data_valid : in STD_LOGIC;
    rx_data_last : in STD_LOGIC;
    rx_data_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_cmd : out STD_LOGIC_VECTOR ( 15 downto 0 );
    tx_cmd_valid : out STD_LOGIC;
    tx_data_valid : out STD_LOGIC;
    tx_data_last : out STD_LOGIC;
    tx_data_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    AD_SEN : out STD_LOGIC;
    AD_SDATA : out STD_LOGIC;
    AD_SCLK : out STD_LOGIC;
    AD_RESET : out STD_LOGIC;
    AD_CTRL1 : out STD_LOGIC;
    AD_CTRL2 : out STD_LOGIC;
    AD_CTRL3 : out STD_LOGIC;
    data_num_cnt1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rd_data_count1 : out STD_LOGIC_VECTOR ( 17 downto 0 );
    state_data1 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end system_TOP_0_7;

architecture stub of system_TOP_0_7 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,ps_clk,clk_dir,triger_in_pos,triger_in_tr,ad_clk_in,AD_DA[13:0],AD_DB[13:0],clk_ad_out,m_axis_tready,m_axis_tvalid,m_axis_tlast,m_axis_tdata[15:0],rx_cmd[15:0],rx_cmd_valid,rx_data_valid,rx_data_last,rx_data_data[7:0],tx_cmd[15:0],tx_cmd_valid,tx_data_valid,tx_data_last,tx_data_data[7:0],AD_SEN,AD_SDATA,AD_SCLK,AD_RESET,AD_CTRL1,AD_CTRL2,AD_CTRL3,data_num_cnt1[31:0],rd_data_count1[17:0],state_data1[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "TOP,Vivado 2021.1";
begin
end;
