-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Tue Jul 22 11:28:53 2025
-- Host        : FXT333 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/lwip_tcp_server_perf.gen/sources_1/bd/system/ip/system_Sim_ad_data_gen_0_0/system_Sim_ad_data_gen_0_0_stub.vhdl
-- Design      : system_Sim_ad_data_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_Sim_ad_data_gen_0_0 is
  Port ( 
    clk_in : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    rx_cmd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx_cmd_valid : in STD_LOGIC;
    tx_cmd : out STD_LOGIC_VECTOR ( 15 downto 0 );
    tx_cmd_valid : out STD_LOGIC;
    rx_data_valid : in STD_LOGIC;
    rx_data_last : in STD_LOGIC;
    rx_data_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_data_valid : out STD_LOGIC;
    tx_data_last : out STD_LOGIC;
    tx_data_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end system_Sim_ad_data_gen_0_0;

architecture stub of system_Sim_ad_data_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,reset_n,m_axis_tdata[7:0],m_axis_tready,m_axis_tvalid,m_axis_tlast,rx_cmd[15:0],rx_cmd_valid,tx_cmd[15:0],tx_cmd_valid,rx_data_valid,rx_data_last,rx_data_data[7:0],tx_data_valid,tx_data_last,tx_data_data[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Sim_ad_data_gen,Vivado 2021.1";
begin
end;
