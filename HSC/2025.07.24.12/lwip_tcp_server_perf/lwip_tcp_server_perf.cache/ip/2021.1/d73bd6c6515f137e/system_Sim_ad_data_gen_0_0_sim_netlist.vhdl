-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Mon Jul 21 09:34:51 2025
-- Host        : FXT333 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_Sim_ad_data_gen_0_0_sim_netlist.vhdl
-- Design      : system_Sim_ad_data_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sim_ad_data_gen is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    reset_n : in STD_LOGIC;
    clk_in : in STD_LOGIC;
    rx_data_last : in STD_LOGIC;
    rx_data_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    rx_data_valid : in STD_LOGIC;
    rx_cmd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx_cmd_valid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sim_ad_data_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sim_ad_data_gen is
  signal high_cnt : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \high_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \high_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal high_cnt_1 : STD_LOGIC;
  signal \high_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \high_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \high_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \high_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \high_cnt_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \high_cnt_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \high_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \high_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \high_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \high_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \high_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \high_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \high_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \high_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal high_num : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal high_num_11 : STD_LOGIC;
  signal low_cnt : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \low_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \low_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal low_cnt_0 : STD_LOGIC;
  signal \low_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \low_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \low_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \low_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \low_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \low_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \low_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \low_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \low_cnt_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \low_cnt_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \low_cnt_reg[15]_i_3_n_5\ : STD_LOGIC;
  signal \low_cnt_reg[15]_i_3_n_6\ : STD_LOGIC;
  signal \low_cnt_reg[15]_i_3_n_7\ : STD_LOGIC;
  signal \low_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \low_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \low_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \low_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \low_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \low_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \low_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \low_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \low_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \low_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \low_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \low_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \low_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \low_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \low_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \low_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal low_num : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ltOp : STD_LOGIC;
  signal \ltOp__23_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry__0_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry__0_n_1\ : STD_LOGIC;
  signal \ltOp__23_carry__0_n_2\ : STD_LOGIC;
  signal \ltOp__23_carry__0_n_3\ : STD_LOGIC;
  signal \ltOp__23_carry_i_1_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry_i_2_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry_i_3_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry_i_4_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry_i_5_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry_i_6_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry_i_7_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry_i_8_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry_n_0\ : STD_LOGIC;
  signal \ltOp__23_carry_n_1\ : STD_LOGIC;
  signal \ltOp__23_carry_n_2\ : STD_LOGIC;
  signal \ltOp__23_carry_n_3\ : STD_LOGIC;
  signal \ltOp__7_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__0_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__0_n_1\ : STD_LOGIC;
  signal \ltOp__7_carry__0_n_2\ : STD_LOGIC;
  signal \ltOp__7_carry__0_n_3\ : STD_LOGIC;
  signal \ltOp__7_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__1_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__1_n_1\ : STD_LOGIC;
  signal \ltOp__7_carry__1_n_2\ : STD_LOGIC;
  signal \ltOp__7_carry__1_n_3\ : STD_LOGIC;
  signal \ltOp__7_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__2_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry__2_n_1\ : STD_LOGIC;
  signal \ltOp__7_carry__2_n_2\ : STD_LOGIC;
  signal \ltOp__7_carry__2_n_3\ : STD_LOGIC;
  signal \ltOp__7_carry_i_1_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry_i_2_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry_i_3_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry_i_4_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry_i_5_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry_i_6_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry_i_7_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry_i_8_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry_n_0\ : STD_LOGIC;
  signal \ltOp__7_carry_n_1\ : STD_LOGIC;
  signal \ltOp__7_carry_n_2\ : STD_LOGIC;
  signal \ltOp__7_carry_n_3\ : STD_LOGIC;
  signal \ltOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_n_1\ : STD_LOGIC;
  signal \ltOp_carry__0_n_2\ : STD_LOGIC;
  signal \ltOp_carry__0_n_3\ : STD_LOGIC;
  signal ltOp_carry_i_1_n_0 : STD_LOGIC;
  signal ltOp_carry_i_2_n_0 : STD_LOGIC;
  signal ltOp_carry_i_3_n_0 : STD_LOGIC;
  signal ltOp_carry_i_4_n_0 : STD_LOGIC;
  signal ltOp_carry_i_5_n_0 : STD_LOGIC;
  signal ltOp_carry_i_6_n_0 : STD_LOGIC;
  signal ltOp_carry_i_7_n_0 : STD_LOGIC;
  signal ltOp_carry_i_8_n_0 : STD_LOGIC;
  signal ltOp_carry_n_0 : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal m_axis_tdata1 : STD_LOGIC;
  signal \m_axis_tdata1[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata1[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata1[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata1[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata1[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata1[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata1[5]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata1[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata1[7]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata1[7]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata1_reg_n_0_[0]\ : STD_LOGIC;
  signal \m_axis_tdata1_reg_n_0_[1]\ : STD_LOGIC;
  signal \m_axis_tdata1_reg_n_0_[2]\ : STD_LOGIC;
  signal \m_axis_tdata1_reg_n_0_[3]\ : STD_LOGIC;
  signal \m_axis_tdata1_reg_n_0_[4]\ : STD_LOGIC;
  signal \m_axis_tdata1_reg_n_0_[5]\ : STD_LOGIC;
  signal \m_axis_tdata1_reg_n_0_[6]\ : STD_LOGIC;
  signal \m_axis_tdata1_reg_n_0_[7]\ : STD_LOGIC;
  signal m_axis_tvalid1_i_1_n_0 : STD_LOGIC;
  signal m_axis_tvalid1_i_2_n_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal plusOp : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal probe0 : STD_LOGIC;
  signal probe1 : STD_LOGIC;
  signal probe2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal probe3 : STD_LOGIC;
  signal probe4 : STD_LOGIC;
  signal re_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \re_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \re_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal re_cnt_10 : STD_LOGIC;
  signal \re_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \re_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \re_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \re_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \re_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \re_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \re_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \re_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \re_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \re_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \re_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \re_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \re_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \re_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \re_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \re_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \re_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \re_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \re_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \re_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \re_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \re_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \re_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \re_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \re_cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \re_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \re_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \re_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \re_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \re_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \re_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \re_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \re_cnt_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \re_cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \re_cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \re_cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \re_cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \re_cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \re_cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \re_cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \re_cnt_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \re_cnt_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \re_cnt_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \re_cnt_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \re_cnt_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \re_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \re_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \re_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \re_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \re_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \re_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \re_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \re_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \re_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \re_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \re_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \re_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \re_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \re_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \re_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \re_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal re_num : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rx_array_temp[0]_8\ : STD_LOGIC;
  signal \rx_array_temp[1]_9\ : STD_LOGIC;
  signal \rx_array_temp[2]_7\ : STD_LOGIC;
  signal \rx_array_temp[3][7]_i_2_n_0\ : STD_LOGIC;
  signal \rx_array_temp[3][7]_i_3_n_0\ : STD_LOGIC;
  signal \rx_array_temp[3][7]_i_4_n_0\ : STD_LOGIC;
  signal \rx_array_temp[3][7]_i_5_n_0\ : STD_LOGIC;
  signal \rx_array_temp[3][7]_i_6_n_0\ : STD_LOGIC;
  signal \rx_array_temp[3][7]_i_7_n_0\ : STD_LOGIC;
  signal \rx_array_temp[3][7]_i_8_n_0\ : STD_LOGIC;
  signal \rx_array_temp[3][7]_i_9_n_0\ : STD_LOGIC;
  signal \rx_array_temp[3]_4\ : STD_LOGIC;
  signal \rx_array_temp[4]_5\ : STD_LOGIC;
  signal \rx_array_temp[5]_2\ : STD_LOGIC;
  signal \rx_array_temp[6]_6\ : STD_LOGIC;
  signal \rx_array_temp[7]_3\ : STD_LOGIC;
  signal \rx_array_temp_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rx_array_temp_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rx_array_temp_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rx_array_temp_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rx_array_temp_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rx_array_temp_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rx_array_temp_reg[6]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rx_array_temp_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_index : STD_LOGIC;
  signal rx_index0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \rx_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \rx_index[31]_i_1_n_0\ : STD_LOGIC;
  signal \rx_index_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \rx_index_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \rx_index_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \rx_index_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \rx_index_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \rx_index_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \rx_index_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \rx_index_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \rx_index_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \rx_index_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \rx_index_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \rx_index_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \rx_index_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \rx_index_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \rx_index_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \rx_index_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \rx_index_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \rx_index_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \rx_index_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \rx_index_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \rx_index_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \rx_index_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \rx_index_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rx_index_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \rx_index_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \rx_index_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \rx_index_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rx_index_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \rx_index_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \rx_index_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal state_main1 : STD_LOGIC;
  signal \state_main1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state_main1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state_main1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \state_main1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \state_main1_carry__0_n_0\ : STD_LOGIC;
  signal \state_main1_carry__0_n_1\ : STD_LOGIC;
  signal \state_main1_carry__0_n_2\ : STD_LOGIC;
  signal \state_main1_carry__0_n_3\ : STD_LOGIC;
  signal \state_main1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \state_main1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \state_main1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \state_main1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \state_main1_carry__1_n_0\ : STD_LOGIC;
  signal \state_main1_carry__1_n_1\ : STD_LOGIC;
  signal \state_main1_carry__1_n_2\ : STD_LOGIC;
  signal \state_main1_carry__1_n_3\ : STD_LOGIC;
  signal \state_main1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \state_main1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \state_main1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \state_main1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \state_main1_carry__2_n_1\ : STD_LOGIC;
  signal \state_main1_carry__2_n_2\ : STD_LOGIC;
  signal \state_main1_carry__2_n_3\ : STD_LOGIC;
  signal state_main1_carry_i_1_n_0 : STD_LOGIC;
  signal state_main1_carry_i_2_n_0 : STD_LOGIC;
  signal state_main1_carry_i_3_n_0 : STD_LOGIC;
  signal state_main1_carry_i_4_n_0 : STD_LOGIC;
  signal state_main1_carry_i_5_n_0 : STD_LOGIC;
  signal state_main1_carry_i_6_n_0 : STD_LOGIC;
  signal state_main1_carry_n_0 : STD_LOGIC;
  signal state_main1_carry_n_1 : STD_LOGIC;
  signal state_main1_carry_n_2 : STD_LOGIC;
  signal state_main1_carry_n_3 : STD_LOGIC;
  signal \state_main[0]_i_1_n_0\ : STD_LOGIC;
  signal \state_main[0]_i_2_n_0\ : STD_LOGIC;
  signal \state_main[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_main[2]_i_1_n_0\ : STD_LOGIC;
  signal \state_main[2]_i_2_n_0\ : STD_LOGIC;
  signal \state_main[2]_i_3_n_0\ : STD_LOGIC;
  signal \state_main[2]_i_4_n_0\ : STD_LOGIC;
  signal \state_main[2]_i_6_n_0\ : STD_LOGIC;
  signal \state_main[2]_i_7_n_0\ : STD_LOGIC;
  signal \state_main[2]_i_8_n_0\ : STD_LOGIC;
  signal \state_main_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_main_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_main_reg_n_0_[2]\ : STD_LOGIC;
  signal \NLW_high_cnt_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_high_cnt_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_low_cnt_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_low_cnt_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ltOp__23_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp__23_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp__7_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp__7_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp__7_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp__7_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_re_cnt_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_re_cnt_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rx_index_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rx_index_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_state_main1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state_main1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state_main1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state_main1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \high_cnt_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \high_cnt_reg[15]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \high_cnt_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \high_cnt_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \low_cnt_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \low_cnt_reg[15]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \low_cnt_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \low_cnt_reg[8]_i_1\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \ltOp__23_carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ltOp__23_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ltOp__7_carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ltOp__7_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ltOp__7_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ltOp__7_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of ltOp_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \ltOp_carry__0\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tdata1[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata1[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata1[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata1[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata1[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata1[7]_i_2\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD of \re_cnt_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \re_cnt_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \re_cnt_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \re_cnt_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \re_cnt_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \re_cnt_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \re_cnt_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \re_cnt_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rx_index_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rx_index_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rx_index_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rx_index_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rx_index_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rx_index_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \rx_index_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rx_index_reg[8]_i_1\ : label is 35;
  attribute COMPARATOR_THRESHOLD of state_main1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \state_main1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \state_main1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \state_main1_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \state_main[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state_main[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state_main[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state_main[2]_i_5\ : label is "soft_lutpair1";
begin
\high_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => high_cnt(0),
      O => \high_cnt[0]_i_1_n_0\
    );
\high_cnt[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020080808080"
    )
        port map (
      I0 => reset_n,
      I1 => \state_main_reg_n_0_[0]\,
      I2 => \state_main_reg_n_0_[1]\,
      I3 => probe3,
      I4 => \ltOp__23_carry__0_n_0\,
      I5 => \state_main_reg_n_0_[2]\,
      O => \high_cnt[15]_i_1_n_0\
    );
\high_cnt[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C200000"
    )
        port map (
      I0 => probe3,
      I1 => \state_main_reg_n_0_[1]\,
      I2 => \state_main_reg_n_0_[2]\,
      I3 => \state_main_reg_n_0_[0]\,
      I4 => reset_n,
      O => high_cnt_1
    );
\high_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => \high_cnt[0]_i_1_n_0\,
      Q => high_cnt(0),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => plusOp(10),
      Q => high_cnt(10),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => plusOp(11),
      Q => high_cnt(11),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => plusOp(12),
      Q => high_cnt(12),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \high_cnt_reg[8]_i_1_n_0\,
      CO(3) => \high_cnt_reg[12]_i_1_n_0\,
      CO(2) => \high_cnt_reg[12]_i_1_n_1\,
      CO(1) => \high_cnt_reg[12]_i_1_n_2\,
      CO(0) => \high_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => high_cnt(12 downto 9)
    );
\high_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => plusOp(13),
      Q => high_cnt(13),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => plusOp(14),
      Q => high_cnt(14),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => plusOp(15),
      Q => high_cnt(15),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_cnt_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \high_cnt_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_high_cnt_reg[15]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \high_cnt_reg[15]_i_3_n_2\,
      CO(0) => \high_cnt_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_high_cnt_reg[15]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => high_cnt(15 downto 13)
    );
\high_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => plusOp(1),
      Q => high_cnt(1),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => plusOp(2),
      Q => high_cnt(2),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => plusOp(3),
      Q => high_cnt(3),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => plusOp(4),
      Q => high_cnt(4),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \high_cnt_reg[4]_i_1_n_0\,
      CO(2) => \high_cnt_reg[4]_i_1_n_1\,
      CO(1) => \high_cnt_reg[4]_i_1_n_2\,
      CO(0) => \high_cnt_reg[4]_i_1_n_3\,
      CYINIT => high_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => high_cnt(4 downto 1)
    );
\high_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => plusOp(5),
      Q => high_cnt(5),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => plusOp(6),
      Q => high_cnt(6),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => plusOp(7),
      Q => high_cnt(7),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => plusOp(8),
      Q => high_cnt(8),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \high_cnt_reg[4]_i_1_n_0\,
      CO(3) => \high_cnt_reg[8]_i_1_n_0\,
      CO(2) => \high_cnt_reg[8]_i_1_n_1\,
      CO(1) => \high_cnt_reg[8]_i_1_n_2\,
      CO(0) => \high_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => high_cnt(8 downto 5)
    );
\high_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_cnt_1,
      D => plusOp(9),
      Q => high_cnt(9),
      R => \high_cnt[15]_i_1_n_0\
    );
\high_num_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[1]\(0),
      Q => high_num(0),
      R => '0'
    );
\high_num_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[0]\(2),
      Q => high_num(10),
      R => '0'
    );
\high_num_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[0]\(3),
      Q => high_num(11),
      R => '0'
    );
\high_num_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[0]\(4),
      Q => high_num(12),
      R => '0'
    );
\high_num_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[0]\(5),
      Q => high_num(13),
      R => '0'
    );
\high_num_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[0]\(6),
      Q => high_num(14),
      R => '0'
    );
\high_num_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[0]\(7),
      Q => high_num(15),
      R => '0'
    );
\high_num_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[1]\(1),
      Q => high_num(1),
      R => '0'
    );
\high_num_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[1]\(2),
      Q => high_num(2),
      R => '0'
    );
\high_num_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[1]\(3),
      Q => high_num(3),
      R => '0'
    );
\high_num_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[1]\(4),
      Q => high_num(4),
      R => '0'
    );
\high_num_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[1]\(5),
      Q => high_num(5),
      R => '0'
    );
\high_num_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[1]\(6),
      Q => high_num(6),
      R => '0'
    );
\high_num_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[1]\(7),
      Q => high_num(7),
      R => '0'
    );
\high_num_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[0]\(0),
      Q => high_num(8),
      R => '0'
    );
\high_num_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[0]\(1),
      Q => high_num(9),
      R => '0'
    );
\low_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => low_cnt(0),
      O => \low_cnt[0]_i_1_n_0\
    );
\low_cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00088080"
    )
        port map (
      I0 => reset_n,
      I1 => \state_main_reg_n_0_[0]\,
      I2 => \state_main_reg_n_0_[1]\,
      I3 => ltOp,
      I4 => \state_main_reg_n_0_[2]\,
      O => \low_cnt[15]_i_1_n_0\
    );
\low_cnt[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => \state_main_reg_n_0_[1]\,
      I1 => \state_main_reg_n_0_[2]\,
      I2 => \state_main_reg_n_0_[0]\,
      I3 => reset_n,
      O => low_cnt_0
    );
\low_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt[0]_i_1_n_0\,
      Q => low_cnt(0),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt_reg[12]_i_1_n_6\,
      Q => low_cnt(10),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt_reg[12]_i_1_n_5\,
      Q => low_cnt(11),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt_reg[12]_i_1_n_4\,
      Q => low_cnt(12),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \low_cnt_reg[8]_i_1_n_0\,
      CO(3) => \low_cnt_reg[12]_i_1_n_0\,
      CO(2) => \low_cnt_reg[12]_i_1_n_1\,
      CO(1) => \low_cnt_reg[12]_i_1_n_2\,
      CO(0) => \low_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \low_cnt_reg[12]_i_1_n_4\,
      O(2) => \low_cnt_reg[12]_i_1_n_5\,
      O(1) => \low_cnt_reg[12]_i_1_n_6\,
      O(0) => \low_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => low_cnt(12 downto 9)
    );
\low_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt_reg[15]_i_3_n_7\,
      Q => low_cnt(13),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt_reg[15]_i_3_n_6\,
      Q => low_cnt(14),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt_reg[15]_i_3_n_5\,
      Q => low_cnt(15),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_cnt_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \low_cnt_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_low_cnt_reg[15]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \low_cnt_reg[15]_i_3_n_2\,
      CO(0) => \low_cnt_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_low_cnt_reg[15]_i_3_O_UNCONNECTED\(3),
      O(2) => \low_cnt_reg[15]_i_3_n_5\,
      O(1) => \low_cnt_reg[15]_i_3_n_6\,
      O(0) => \low_cnt_reg[15]_i_3_n_7\,
      S(3) => '0',
      S(2 downto 0) => low_cnt(15 downto 13)
    );
\low_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt_reg[4]_i_1_n_7\,
      Q => low_cnt(1),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt_reg[4]_i_1_n_6\,
      Q => low_cnt(2),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt_reg[4]_i_1_n_5\,
      Q => low_cnt(3),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt_reg[4]_i_1_n_4\,
      Q => low_cnt(4),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \low_cnt_reg[4]_i_1_n_0\,
      CO(2) => \low_cnt_reg[4]_i_1_n_1\,
      CO(1) => \low_cnt_reg[4]_i_1_n_2\,
      CO(0) => \low_cnt_reg[4]_i_1_n_3\,
      CYINIT => low_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3) => \low_cnt_reg[4]_i_1_n_4\,
      O(2) => \low_cnt_reg[4]_i_1_n_5\,
      O(1) => \low_cnt_reg[4]_i_1_n_6\,
      O(0) => \low_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => low_cnt(4 downto 1)
    );
\low_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt_reg[8]_i_1_n_7\,
      Q => low_cnt(5),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt_reg[8]_i_1_n_6\,
      Q => low_cnt(6),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt_reg[8]_i_1_n_5\,
      Q => low_cnt(7),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt_reg[8]_i_1_n_4\,
      Q => low_cnt(8),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \low_cnt_reg[4]_i_1_n_0\,
      CO(3) => \low_cnt_reg[8]_i_1_n_0\,
      CO(2) => \low_cnt_reg[8]_i_1_n_1\,
      CO(1) => \low_cnt_reg[8]_i_1_n_2\,
      CO(0) => \low_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \low_cnt_reg[8]_i_1_n_4\,
      O(2) => \low_cnt_reg[8]_i_1_n_5\,
      O(1) => \low_cnt_reg[8]_i_1_n_6\,
      O(0) => \low_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => low_cnt(8 downto 5)
    );
\low_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => low_cnt_0,
      D => \low_cnt_reg[12]_i_1_n_7\,
      Q => low_cnt(9),
      R => \low_cnt[15]_i_1_n_0\
    );
\low_num[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => reset_n,
      I1 => \state_main_reg_n_0_[0]\,
      I2 => \state_main_reg_n_0_[2]\,
      I3 => \state_main_reg_n_0_[1]\,
      O => high_num_11
    );
\low_num_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[3]\(0),
      Q => low_num(0),
      R => '0'
    );
\low_num_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[2]\(2),
      Q => low_num(10),
      R => '0'
    );
\low_num_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[2]\(3),
      Q => low_num(11),
      R => '0'
    );
\low_num_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[2]\(4),
      Q => low_num(12),
      R => '0'
    );
\low_num_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[2]\(5),
      Q => low_num(13),
      R => '0'
    );
\low_num_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[2]\(6),
      Q => low_num(14),
      R => '0'
    );
\low_num_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[2]\(7),
      Q => low_num(15),
      R => '0'
    );
\low_num_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[3]\(1),
      Q => low_num(1),
      R => '0'
    );
\low_num_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[3]\(2),
      Q => low_num(2),
      R => '0'
    );
\low_num_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[3]\(3),
      Q => low_num(3),
      R => '0'
    );
\low_num_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[3]\(4),
      Q => low_num(4),
      R => '0'
    );
\low_num_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[3]\(5),
      Q => low_num(5),
      R => '0'
    );
\low_num_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[3]\(6),
      Q => low_num(6),
      R => '0'
    );
\low_num_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[3]\(7),
      Q => low_num(7),
      R => '0'
    );
\low_num_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[2]\(0),
      Q => low_num(8),
      R => '0'
    );
\low_num_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[2]\(1),
      Q => low_num(9),
      R => '0'
    );
\ltOp__23_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ltOp__23_carry_n_0\,
      CO(2) => \ltOp__23_carry_n_1\,
      CO(1) => \ltOp__23_carry_n_2\,
      CO(0) => \ltOp__23_carry_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp__23_carry_i_1_n_0\,
      DI(2) => \ltOp__23_carry_i_2_n_0\,
      DI(1) => \ltOp__23_carry_i_3_n_0\,
      DI(0) => \ltOp__23_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp__23_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp__23_carry_i_5_n_0\,
      S(2) => \ltOp__23_carry_i_6_n_0\,
      S(1) => \ltOp__23_carry_i_7_n_0\,
      S(0) => \ltOp__23_carry_i_8_n_0\
    );
\ltOp__23_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp__23_carry_n_0\,
      CO(3) => \ltOp__23_carry__0_n_0\,
      CO(2) => \ltOp__23_carry__0_n_1\,
      CO(1) => \ltOp__23_carry__0_n_2\,
      CO(0) => \ltOp__23_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp__23_carry__0_i_1_n_0\,
      DI(2) => \ltOp__23_carry__0_i_2_n_0\,
      DI(1) => \ltOp__23_carry__0_i_3_n_0\,
      DI(0) => \ltOp__23_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp__23_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp__23_carry__0_i_5_n_0\,
      S(2) => \ltOp__23_carry__0_i_6_n_0\,
      S(1) => \ltOp__23_carry__0_i_7_n_0\,
      S(0) => \ltOp__23_carry__0_i_8_n_0\
    );
\ltOp__23_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => high_num(15),
      I1 => high_cnt(15),
      I2 => high_num(14),
      I3 => high_cnt(14),
      O => \ltOp__23_carry__0_i_1_n_0\
    );
\ltOp__23_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => high_num(13),
      I1 => high_cnt(13),
      I2 => high_num(12),
      I3 => high_cnt(12),
      O => \ltOp__23_carry__0_i_2_n_0\
    );
\ltOp__23_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => high_num(11),
      I1 => high_cnt(11),
      I2 => high_num(10),
      I3 => high_cnt(10),
      O => \ltOp__23_carry__0_i_3_n_0\
    );
\ltOp__23_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => high_num(9),
      I1 => high_cnt(9),
      I2 => high_num(8),
      I3 => high_cnt(8),
      O => \ltOp__23_carry__0_i_4_n_0\
    );
\ltOp__23_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => high_cnt(15),
      I1 => high_num(15),
      I2 => high_cnt(14),
      I3 => high_num(14),
      O => \ltOp__23_carry__0_i_5_n_0\
    );
\ltOp__23_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => high_cnt(13),
      I1 => high_num(13),
      I2 => high_cnt(12),
      I3 => high_num(12),
      O => \ltOp__23_carry__0_i_6_n_0\
    );
\ltOp__23_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => high_cnt(11),
      I1 => high_num(11),
      I2 => high_cnt(10),
      I3 => high_num(10),
      O => \ltOp__23_carry__0_i_7_n_0\
    );
\ltOp__23_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => high_cnt(9),
      I1 => high_num(9),
      I2 => high_cnt(8),
      I3 => high_num(8),
      O => \ltOp__23_carry__0_i_8_n_0\
    );
\ltOp__23_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => high_num(7),
      I1 => high_cnt(7),
      I2 => high_num(6),
      I3 => high_cnt(6),
      O => \ltOp__23_carry_i_1_n_0\
    );
\ltOp__23_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => high_num(5),
      I1 => high_cnt(5),
      I2 => high_num(4),
      I3 => high_cnt(4),
      O => \ltOp__23_carry_i_2_n_0\
    );
\ltOp__23_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => high_num(3),
      I1 => high_cnt(3),
      I2 => high_num(2),
      I3 => high_cnt(2),
      O => \ltOp__23_carry_i_3_n_0\
    );
\ltOp__23_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => high_num(1),
      I1 => high_cnt(1),
      I2 => high_num(0),
      I3 => high_cnt(0),
      O => \ltOp__23_carry_i_4_n_0\
    );
\ltOp__23_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => high_cnt(7),
      I1 => high_num(7),
      I2 => high_cnt(6),
      I3 => high_num(6),
      O => \ltOp__23_carry_i_5_n_0\
    );
\ltOp__23_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => high_cnt(5),
      I1 => high_num(5),
      I2 => high_cnt(4),
      I3 => high_num(4),
      O => \ltOp__23_carry_i_6_n_0\
    );
\ltOp__23_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => high_cnt(3),
      I1 => high_num(3),
      I2 => high_cnt(2),
      I3 => high_num(2),
      O => \ltOp__23_carry_i_7_n_0\
    );
\ltOp__23_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => high_cnt(1),
      I1 => high_num(1),
      I2 => high_cnt(0),
      I3 => high_num(0),
      O => \ltOp__23_carry_i_8_n_0\
    );
\ltOp__7_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ltOp__7_carry_n_0\,
      CO(2) => \ltOp__7_carry_n_1\,
      CO(1) => \ltOp__7_carry_n_2\,
      CO(0) => \ltOp__7_carry_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp__7_carry_i_1_n_0\,
      DI(2) => \ltOp__7_carry_i_2_n_0\,
      DI(1) => \ltOp__7_carry_i_3_n_0\,
      DI(0) => \ltOp__7_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp__7_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp__7_carry_i_5_n_0\,
      S(2) => \ltOp__7_carry_i_6_n_0\,
      S(1) => \ltOp__7_carry_i_7_n_0\,
      S(0) => \ltOp__7_carry_i_8_n_0\
    );
\ltOp__7_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp__7_carry_n_0\,
      CO(3) => \ltOp__7_carry__0_n_0\,
      CO(2) => \ltOp__7_carry__0_n_1\,
      CO(1) => \ltOp__7_carry__0_n_2\,
      CO(0) => \ltOp__7_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp__7_carry__0_i_1_n_0\,
      DI(2) => \ltOp__7_carry__0_i_2_n_0\,
      DI(1) => \ltOp__7_carry__0_i_3_n_0\,
      DI(0) => \ltOp__7_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp__7_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp__7_carry__0_i_5_n_0\,
      S(2) => \ltOp__7_carry__0_i_6_n_0\,
      S(1) => \ltOp__7_carry__0_i_7_n_0\,
      S(0) => \ltOp__7_carry__0_i_8_n_0\
    );
\ltOp__7_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(15),
      I1 => re_cnt(15),
      I2 => re_num(14),
      I3 => re_cnt(14),
      O => \ltOp__7_carry__0_i_1_n_0\
    );
\ltOp__7_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(13),
      I1 => re_cnt(13),
      I2 => re_num(12),
      I3 => re_cnt(12),
      O => \ltOp__7_carry__0_i_2_n_0\
    );
\ltOp__7_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(11),
      I1 => re_cnt(11),
      I2 => re_num(10),
      I3 => re_cnt(10),
      O => \ltOp__7_carry__0_i_3_n_0\
    );
\ltOp__7_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(9),
      I1 => re_cnt(9),
      I2 => re_num(8),
      I3 => re_cnt(8),
      O => \ltOp__7_carry__0_i_4_n_0\
    );
\ltOp__7_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(15),
      I1 => re_num(15),
      I2 => re_cnt(14),
      I3 => re_num(14),
      O => \ltOp__7_carry__0_i_5_n_0\
    );
\ltOp__7_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(13),
      I1 => re_num(13),
      I2 => re_cnt(12),
      I3 => re_num(12),
      O => \ltOp__7_carry__0_i_6_n_0\
    );
\ltOp__7_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(11),
      I1 => re_num(11),
      I2 => re_cnt(10),
      I3 => re_num(10),
      O => \ltOp__7_carry__0_i_7_n_0\
    );
\ltOp__7_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(9),
      I1 => re_num(9),
      I2 => re_cnt(8),
      I3 => re_num(8),
      O => \ltOp__7_carry__0_i_8_n_0\
    );
\ltOp__7_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp__7_carry__0_n_0\,
      CO(3) => \ltOp__7_carry__1_n_0\,
      CO(2) => \ltOp__7_carry__1_n_1\,
      CO(1) => \ltOp__7_carry__1_n_2\,
      CO(0) => \ltOp__7_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp__7_carry__1_i_1_n_0\,
      DI(2) => \ltOp__7_carry__1_i_2_n_0\,
      DI(1) => \ltOp__7_carry__1_i_3_n_0\,
      DI(0) => \ltOp__7_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp__7_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp__7_carry__1_i_5_n_0\,
      S(2) => \ltOp__7_carry__1_i_6_n_0\,
      S(1) => \ltOp__7_carry__1_i_7_n_0\,
      S(0) => \ltOp__7_carry__1_i_8_n_0\
    );
\ltOp__7_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(23),
      I1 => re_cnt(23),
      I2 => re_num(22),
      I3 => re_cnt(22),
      O => \ltOp__7_carry__1_i_1_n_0\
    );
\ltOp__7_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(21),
      I1 => re_cnt(21),
      I2 => re_num(20),
      I3 => re_cnt(20),
      O => \ltOp__7_carry__1_i_2_n_0\
    );
\ltOp__7_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(19),
      I1 => re_cnt(19),
      I2 => re_num(18),
      I3 => re_cnt(18),
      O => \ltOp__7_carry__1_i_3_n_0\
    );
\ltOp__7_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(17),
      I1 => re_cnt(17),
      I2 => re_num(16),
      I3 => re_cnt(16),
      O => \ltOp__7_carry__1_i_4_n_0\
    );
\ltOp__7_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(23),
      I1 => re_num(23),
      I2 => re_cnt(22),
      I3 => re_num(22),
      O => \ltOp__7_carry__1_i_5_n_0\
    );
\ltOp__7_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(21),
      I1 => re_num(21),
      I2 => re_cnt(20),
      I3 => re_num(20),
      O => \ltOp__7_carry__1_i_6_n_0\
    );
\ltOp__7_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(19),
      I1 => re_num(19),
      I2 => re_cnt(18),
      I3 => re_num(18),
      O => \ltOp__7_carry__1_i_7_n_0\
    );
\ltOp__7_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(17),
      I1 => re_num(17),
      I2 => re_cnt(16),
      I3 => re_num(16),
      O => \ltOp__7_carry__1_i_8_n_0\
    );
\ltOp__7_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp__7_carry__1_n_0\,
      CO(3) => \ltOp__7_carry__2_n_0\,
      CO(2) => \ltOp__7_carry__2_n_1\,
      CO(1) => \ltOp__7_carry__2_n_2\,
      CO(0) => \ltOp__7_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp__7_carry__2_i_1_n_0\,
      DI(2) => \ltOp__7_carry__2_i_2_n_0\,
      DI(1) => \ltOp__7_carry__2_i_3_n_0\,
      DI(0) => \ltOp__7_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp__7_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp__7_carry__2_i_5_n_0\,
      S(2) => \ltOp__7_carry__2_i_6_n_0\,
      S(1) => \ltOp__7_carry__2_i_7_n_0\,
      S(0) => \ltOp__7_carry__2_i_8_n_0\
    );
\ltOp__7_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(31),
      I1 => re_cnt(31),
      I2 => re_num(30),
      I3 => re_cnt(30),
      O => \ltOp__7_carry__2_i_1_n_0\
    );
\ltOp__7_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(29),
      I1 => re_cnt(29),
      I2 => re_num(28),
      I3 => re_cnt(28),
      O => \ltOp__7_carry__2_i_2_n_0\
    );
\ltOp__7_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(27),
      I1 => re_cnt(27),
      I2 => re_num(26),
      I3 => re_cnt(26),
      O => \ltOp__7_carry__2_i_3_n_0\
    );
\ltOp__7_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(25),
      I1 => re_cnt(25),
      I2 => re_num(24),
      I3 => re_cnt(24),
      O => \ltOp__7_carry__2_i_4_n_0\
    );
\ltOp__7_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(31),
      I1 => re_num(31),
      I2 => re_cnt(30),
      I3 => re_num(30),
      O => \ltOp__7_carry__2_i_5_n_0\
    );
\ltOp__7_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(29),
      I1 => re_num(29),
      I2 => re_cnt(28),
      I3 => re_num(28),
      O => \ltOp__7_carry__2_i_6_n_0\
    );
\ltOp__7_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(27),
      I1 => re_num(27),
      I2 => re_cnt(26),
      I3 => re_num(26),
      O => \ltOp__7_carry__2_i_7_n_0\
    );
\ltOp__7_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(25),
      I1 => re_num(25),
      I2 => re_cnt(24),
      I3 => re_num(24),
      O => \ltOp__7_carry__2_i_8_n_0\
    );
\ltOp__7_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(7),
      I1 => re_cnt(7),
      I2 => re_num(6),
      I3 => re_cnt(6),
      O => \ltOp__7_carry_i_1_n_0\
    );
\ltOp__7_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(5),
      I1 => re_cnt(5),
      I2 => re_num(4),
      I3 => re_cnt(4),
      O => \ltOp__7_carry_i_2_n_0\
    );
\ltOp__7_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(3),
      I1 => re_cnt(3),
      I2 => re_num(2),
      I3 => re_cnt(2),
      O => \ltOp__7_carry_i_3_n_0\
    );
\ltOp__7_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => re_num(1),
      I1 => re_cnt(1),
      I2 => re_num(0),
      I3 => re_cnt(0),
      O => \ltOp__7_carry_i_4_n_0\
    );
\ltOp__7_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(7),
      I1 => re_num(7),
      I2 => re_cnt(6),
      I3 => re_num(6),
      O => \ltOp__7_carry_i_5_n_0\
    );
\ltOp__7_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(5),
      I1 => re_num(5),
      I2 => re_cnt(4),
      I3 => re_num(4),
      O => \ltOp__7_carry_i_6_n_0\
    );
\ltOp__7_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(3),
      I1 => re_num(3),
      I2 => re_cnt(2),
      I3 => re_num(2),
      O => \ltOp__7_carry_i_7_n_0\
    );
\ltOp__7_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => re_cnt(1),
      I1 => re_num(1),
      I2 => re_cnt(0),
      I3 => re_num(0),
      O => \ltOp__7_carry_i_8_n_0\
    );
ltOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp_carry_n_0,
      CO(2) => ltOp_carry_n_1,
      CO(1) => ltOp_carry_n_2,
      CO(0) => ltOp_carry_n_3,
      CYINIT => '0',
      DI(3) => ltOp_carry_i_1_n_0,
      DI(2) => ltOp_carry_i_2_n_0,
      DI(1) => ltOp_carry_i_3_n_0,
      DI(0) => ltOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ltOp_carry_i_5_n_0,
      S(2) => ltOp_carry_i_6_n_0,
      S(1) => ltOp_carry_i_7_n_0,
      S(0) => ltOp_carry_i_8_n_0
    );
\ltOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ltOp_carry_n_0,
      CO(3) => ltOp,
      CO(2) => \ltOp_carry__0_n_1\,
      CO(1) => \ltOp_carry__0_n_2\,
      CO(0) => \ltOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ltOp_carry__0_i_1_n_0\,
      DI(2) => \ltOp_carry__0_i_2_n_0\,
      DI(1) => \ltOp_carry__0_i_3_n_0\,
      DI(0) => \ltOp_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_ltOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ltOp_carry__0_i_5_n_0\,
      S(2) => \ltOp_carry__0_i_6_n_0\,
      S(1) => \ltOp_carry__0_i_7_n_0\,
      S(0) => \ltOp_carry__0_i_8_n_0\
    );
\ltOp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => low_num(15),
      I1 => low_cnt(15),
      I2 => low_num(14),
      I3 => low_cnt(14),
      O => \ltOp_carry__0_i_1_n_0\
    );
\ltOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => low_num(13),
      I1 => low_cnt(13),
      I2 => low_num(12),
      I3 => low_cnt(12),
      O => \ltOp_carry__0_i_2_n_0\
    );
\ltOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => low_num(11),
      I1 => low_cnt(11),
      I2 => low_num(10),
      I3 => low_cnt(10),
      O => \ltOp_carry__0_i_3_n_0\
    );
\ltOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => low_num(9),
      I1 => low_cnt(9),
      I2 => low_num(8),
      I3 => low_cnt(8),
      O => \ltOp_carry__0_i_4_n_0\
    );
\ltOp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => low_cnt(15),
      I1 => low_num(15),
      I2 => low_cnt(14),
      I3 => low_num(14),
      O => \ltOp_carry__0_i_5_n_0\
    );
\ltOp_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => low_cnt(13),
      I1 => low_num(13),
      I2 => low_cnt(12),
      I3 => low_num(12),
      O => \ltOp_carry__0_i_6_n_0\
    );
\ltOp_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => low_cnt(11),
      I1 => low_num(11),
      I2 => low_cnt(10),
      I3 => low_num(10),
      O => \ltOp_carry__0_i_7_n_0\
    );
\ltOp_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => low_cnt(9),
      I1 => low_num(9),
      I2 => low_cnt(8),
      I3 => low_num(8),
      O => \ltOp_carry__0_i_8_n_0\
    );
ltOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => low_num(7),
      I1 => low_cnt(7),
      I2 => low_num(6),
      I3 => low_cnt(6),
      O => ltOp_carry_i_1_n_0
    );
ltOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => low_num(5),
      I1 => low_cnt(5),
      I2 => low_num(4),
      I3 => low_cnt(4),
      O => ltOp_carry_i_2_n_0
    );
ltOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => low_num(3),
      I1 => low_cnt(3),
      I2 => low_num(2),
      I3 => low_cnt(2),
      O => ltOp_carry_i_3_n_0
    );
ltOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => low_num(1),
      I1 => low_cnt(1),
      I2 => low_num(0),
      I3 => low_cnt(0),
      O => ltOp_carry_i_4_n_0
    );
ltOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => low_cnt(7),
      I1 => low_num(7),
      I2 => low_cnt(6),
      I3 => low_num(6),
      O => ltOp_carry_i_5_n_0
    );
ltOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => low_cnt(5),
      I1 => low_num(5),
      I2 => low_cnt(4),
      I3 => low_num(4),
      O => ltOp_carry_i_6_n_0
    );
ltOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => low_cnt(3),
      I1 => low_num(3),
      I2 => low_cnt(2),
      I3 => low_num(2),
      O => ltOp_carry_i_7_n_0
    );
ltOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => low_cnt(1),
      I1 => low_num(1),
      I2 => low_cnt(0),
      I3 => low_num(0),
      O => ltOp_carry_i_8_n_0
    );
\m_axis_tdata1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_main_reg_n_0_[2]\,
      I1 => \m_axis_tdata1_reg_n_0_[0]\,
      O => \m_axis_tdata1[0]_i_1_n_0\
    );
\m_axis_tdata1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \m_axis_tdata1_reg_n_0_[0]\,
      I1 => \state_main_reg_n_0_[2]\,
      I2 => \m_axis_tdata1_reg_n_0_[1]\,
      O => \m_axis_tdata1[1]_i_1_n_0\
    );
\m_axis_tdata1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \m_axis_tdata1_reg_n_0_[0]\,
      I1 => \m_axis_tdata1_reg_n_0_[1]\,
      I2 => \state_main_reg_n_0_[2]\,
      I3 => \m_axis_tdata1_reg_n_0_[2]\,
      O => \m_axis_tdata1[2]_i_1_n_0\
    );
\m_axis_tdata1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \m_axis_tdata1_reg_n_0_[1]\,
      I1 => \m_axis_tdata1_reg_n_0_[0]\,
      I2 => \m_axis_tdata1_reg_n_0_[2]\,
      I3 => \state_main_reg_n_0_[2]\,
      I4 => \m_axis_tdata1_reg_n_0_[3]\,
      O => \m_axis_tdata1[3]_i_1_n_0\
    );
\m_axis_tdata1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \m_axis_tdata1_reg_n_0_[2]\,
      I1 => \m_axis_tdata1_reg_n_0_[0]\,
      I2 => \m_axis_tdata1_reg_n_0_[1]\,
      I3 => \m_axis_tdata1_reg_n_0_[3]\,
      I4 => \state_main_reg_n_0_[2]\,
      I5 => \m_axis_tdata1_reg_n_0_[4]\,
      O => \m_axis_tdata1[4]_i_1_n_0\
    );
\m_axis_tdata1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \m_axis_tdata1[5]_i_2_n_0\,
      I1 => \state_main_reg_n_0_[2]\,
      I2 => \m_axis_tdata1_reg_n_0_[5]\,
      O => \m_axis_tdata1[5]_i_1_n_0\
    );
\m_axis_tdata1[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \m_axis_tdata1_reg_n_0_[3]\,
      I1 => \m_axis_tdata1_reg_n_0_[1]\,
      I2 => \m_axis_tdata1_reg_n_0_[0]\,
      I3 => \m_axis_tdata1_reg_n_0_[2]\,
      I4 => \m_axis_tdata1_reg_n_0_[4]\,
      O => \m_axis_tdata1[5]_i_2_n_0\
    );
\m_axis_tdata1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \m_axis_tdata1[7]_i_3_n_0\,
      I1 => \state_main_reg_n_0_[2]\,
      I2 => \m_axis_tdata1_reg_n_0_[6]\,
      O => \m_axis_tdata1[6]_i_1_n_0\
    );
\m_axis_tdata1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0080000000000"
    )
        port map (
      I0 => probe3,
      I1 => \ltOp__23_carry__0_n_0\,
      I2 => \state_main_reg_n_0_[1]\,
      I3 => \state_main_reg_n_0_[2]\,
      I4 => \state_main_reg_n_0_[0]\,
      I5 => reset_n,
      O => m_axis_tdata1
    );
\m_axis_tdata1[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \m_axis_tdata1[7]_i_3_n_0\,
      I1 => \m_axis_tdata1_reg_n_0_[6]\,
      I2 => \state_main_reg_n_0_[2]\,
      I3 => \m_axis_tdata1_reg_n_0_[7]\,
      O => \m_axis_tdata1[7]_i_2_n_0\
    );
\m_axis_tdata1[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \m_axis_tdata1_reg_n_0_[4]\,
      I1 => \m_axis_tdata1_reg_n_0_[2]\,
      I2 => \m_axis_tdata1_reg_n_0_[0]\,
      I3 => \m_axis_tdata1_reg_n_0_[1]\,
      I4 => \m_axis_tdata1_reg_n_0_[3]\,
      I5 => \m_axis_tdata1_reg_n_0_[5]\,
      O => \m_axis_tdata1[7]_i_3_n_0\
    );
\m_axis_tdata1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => m_axis_tdata1,
      D => \m_axis_tdata1[0]_i_1_n_0\,
      Q => \m_axis_tdata1_reg_n_0_[0]\,
      R => '0'
    );
\m_axis_tdata1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => m_axis_tdata1,
      D => \m_axis_tdata1[1]_i_1_n_0\,
      Q => \m_axis_tdata1_reg_n_0_[1]\,
      R => '0'
    );
\m_axis_tdata1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => m_axis_tdata1,
      D => \m_axis_tdata1[2]_i_1_n_0\,
      Q => \m_axis_tdata1_reg_n_0_[2]\,
      R => '0'
    );
\m_axis_tdata1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => m_axis_tdata1,
      D => \m_axis_tdata1[3]_i_1_n_0\,
      Q => \m_axis_tdata1_reg_n_0_[3]\,
      R => '0'
    );
\m_axis_tdata1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => m_axis_tdata1,
      D => \m_axis_tdata1[4]_i_1_n_0\,
      Q => \m_axis_tdata1_reg_n_0_[4]\,
      R => '0'
    );
\m_axis_tdata1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => m_axis_tdata1,
      D => \m_axis_tdata1[5]_i_1_n_0\,
      Q => \m_axis_tdata1_reg_n_0_[5]\,
      R => '0'
    );
\m_axis_tdata1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => m_axis_tdata1,
      D => \m_axis_tdata1[6]_i_1_n_0\,
      Q => \m_axis_tdata1_reg_n_0_[6]\,
      R => '0'
    );
\m_axis_tdata1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => m_axis_tdata1,
      D => \m_axis_tdata1[7]_i_2_n_0\,
      Q => \m_axis_tdata1_reg_n_0_[7]\,
      R => '0'
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_axis_tdata1_reg_n_0_[0]\,
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_axis_tdata1_reg_n_0_[1]\,
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_axis_tdata1_reg_n_0_[2]\,
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_axis_tdata1_reg_n_0_[3]\,
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_axis_tdata1_reg_n_0_[4]\,
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_axis_tdata1_reg_n_0_[5]\,
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_axis_tdata1_reg_n_0_[6]\,
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_axis_tdata1_reg_n_0_[7]\,
      Q => m_axis_tdata(7),
      R => '0'
    );
m_axis_tready1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => m_axis_tready,
      Q => probe3,
      R => '0'
    );
m_axis_tvalid1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFF08000000"
    )
        port map (
      I0 => probe3,
      I1 => \ltOp__23_carry__0_n_0\,
      I2 => \state_main_reg_n_0_[0]\,
      I3 => \state_main_reg_n_0_[2]\,
      I4 => m_axis_tvalid1_i_2_n_0,
      I5 => probe4,
      O => m_axis_tvalid1_i_1_n_0
    );
m_axis_tvalid1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reset_n,
      I1 => \state_main_reg_n_0_[1]\,
      O => m_axis_tvalid1_i_2_n_0
    );
m_axis_tvalid1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => m_axis_tvalid1_i_1_n_0,
      Q => probe4,
      R => '0'
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => probe4,
      Q => m_axis_tvalid,
      R => '0'
    );
\re_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => re_cnt(0),
      O => \re_cnt[0]_i_1_n_0\
    );
\re_cnt[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00802080"
    )
        port map (
      I0 => reset_n,
      I1 => \state_main_reg_n_0_[0]\,
      I2 => \state_main_reg_n_0_[1]\,
      I3 => \state_main_reg_n_0_[2]\,
      I4 => \ltOp__7_carry__2_n_0\,
      O => \re_cnt[31]_i_1_n_0\
    );
\re_cnt[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2800"
    )
        port map (
      I0 => \state_main_reg_n_0_[1]\,
      I1 => \state_main_reg_n_0_[2]\,
      I2 => \state_main_reg_n_0_[0]\,
      I3 => reset_n,
      O => re_cnt_10
    );
\re_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt[0]_i_1_n_0\,
      Q => re_cnt(0),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[12]_i_1_n_6\,
      Q => re_cnt(10),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[12]_i_1_n_5\,
      Q => re_cnt(11),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[12]_i_1_n_4\,
      Q => re_cnt(12),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \re_cnt_reg[8]_i_1_n_0\,
      CO(3) => \re_cnt_reg[12]_i_1_n_0\,
      CO(2) => \re_cnt_reg[12]_i_1_n_1\,
      CO(1) => \re_cnt_reg[12]_i_1_n_2\,
      CO(0) => \re_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \re_cnt_reg[12]_i_1_n_4\,
      O(2) => \re_cnt_reg[12]_i_1_n_5\,
      O(1) => \re_cnt_reg[12]_i_1_n_6\,
      O(0) => \re_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => re_cnt(12 downto 9)
    );
\re_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[16]_i_1_n_7\,
      Q => re_cnt(13),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[16]_i_1_n_6\,
      Q => re_cnt(14),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[16]_i_1_n_5\,
      Q => re_cnt(15),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[16]_i_1_n_4\,
      Q => re_cnt(16),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \re_cnt_reg[12]_i_1_n_0\,
      CO(3) => \re_cnt_reg[16]_i_1_n_0\,
      CO(2) => \re_cnt_reg[16]_i_1_n_1\,
      CO(1) => \re_cnt_reg[16]_i_1_n_2\,
      CO(0) => \re_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \re_cnt_reg[16]_i_1_n_4\,
      O(2) => \re_cnt_reg[16]_i_1_n_5\,
      O(1) => \re_cnt_reg[16]_i_1_n_6\,
      O(0) => \re_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => re_cnt(16 downto 13)
    );
\re_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[20]_i_1_n_7\,
      Q => re_cnt(17),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[20]_i_1_n_6\,
      Q => re_cnt(18),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[20]_i_1_n_5\,
      Q => re_cnt(19),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[4]_i_1_n_7\,
      Q => re_cnt(1),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[20]_i_1_n_4\,
      Q => re_cnt(20),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \re_cnt_reg[16]_i_1_n_0\,
      CO(3) => \re_cnt_reg[20]_i_1_n_0\,
      CO(2) => \re_cnt_reg[20]_i_1_n_1\,
      CO(1) => \re_cnt_reg[20]_i_1_n_2\,
      CO(0) => \re_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \re_cnt_reg[20]_i_1_n_4\,
      O(2) => \re_cnt_reg[20]_i_1_n_5\,
      O(1) => \re_cnt_reg[20]_i_1_n_6\,
      O(0) => \re_cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => re_cnt(20 downto 17)
    );
\re_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[24]_i_1_n_7\,
      Q => re_cnt(21),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[24]_i_1_n_6\,
      Q => re_cnt(22),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[24]_i_1_n_5\,
      Q => re_cnt(23),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[24]_i_1_n_4\,
      Q => re_cnt(24),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \re_cnt_reg[20]_i_1_n_0\,
      CO(3) => \re_cnt_reg[24]_i_1_n_0\,
      CO(2) => \re_cnt_reg[24]_i_1_n_1\,
      CO(1) => \re_cnt_reg[24]_i_1_n_2\,
      CO(0) => \re_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \re_cnt_reg[24]_i_1_n_4\,
      O(2) => \re_cnt_reg[24]_i_1_n_5\,
      O(1) => \re_cnt_reg[24]_i_1_n_6\,
      O(0) => \re_cnt_reg[24]_i_1_n_7\,
      S(3 downto 0) => re_cnt(24 downto 21)
    );
\re_cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[28]_i_1_n_7\,
      Q => re_cnt(25),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[28]_i_1_n_6\,
      Q => re_cnt(26),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[28]_i_1_n_5\,
      Q => re_cnt(27),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[28]_i_1_n_4\,
      Q => re_cnt(28),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \re_cnt_reg[24]_i_1_n_0\,
      CO(3) => \re_cnt_reg[28]_i_1_n_0\,
      CO(2) => \re_cnt_reg[28]_i_1_n_1\,
      CO(1) => \re_cnt_reg[28]_i_1_n_2\,
      CO(0) => \re_cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \re_cnt_reg[28]_i_1_n_4\,
      O(2) => \re_cnt_reg[28]_i_1_n_5\,
      O(1) => \re_cnt_reg[28]_i_1_n_6\,
      O(0) => \re_cnt_reg[28]_i_1_n_7\,
      S(3 downto 0) => re_cnt(28 downto 25)
    );
\re_cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[31]_i_3_n_7\,
      Q => re_cnt(29),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[4]_i_1_n_6\,
      Q => re_cnt(2),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[31]_i_3_n_6\,
      Q => re_cnt(30),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[31]_i_3_n_5\,
      Q => re_cnt(31),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \re_cnt_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_re_cnt_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \re_cnt_reg[31]_i_3_n_2\,
      CO(0) => \re_cnt_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_re_cnt_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2) => \re_cnt_reg[31]_i_3_n_5\,
      O(1) => \re_cnt_reg[31]_i_3_n_6\,
      O(0) => \re_cnt_reg[31]_i_3_n_7\,
      S(3) => '0',
      S(2 downto 0) => re_cnt(31 downto 29)
    );
\re_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[4]_i_1_n_5\,
      Q => re_cnt(3),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[4]_i_1_n_4\,
      Q => re_cnt(4),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \re_cnt_reg[4]_i_1_n_0\,
      CO(2) => \re_cnt_reg[4]_i_1_n_1\,
      CO(1) => \re_cnt_reg[4]_i_1_n_2\,
      CO(0) => \re_cnt_reg[4]_i_1_n_3\,
      CYINIT => re_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3) => \re_cnt_reg[4]_i_1_n_4\,
      O(2) => \re_cnt_reg[4]_i_1_n_5\,
      O(1) => \re_cnt_reg[4]_i_1_n_6\,
      O(0) => \re_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => re_cnt(4 downto 1)
    );
\re_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[8]_i_1_n_7\,
      Q => re_cnt(5),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[8]_i_1_n_6\,
      Q => re_cnt(6),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[8]_i_1_n_5\,
      Q => re_cnt(7),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[8]_i_1_n_4\,
      Q => re_cnt(8),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \re_cnt_reg[4]_i_1_n_0\,
      CO(3) => \re_cnt_reg[8]_i_1_n_0\,
      CO(2) => \re_cnt_reg[8]_i_1_n_1\,
      CO(1) => \re_cnt_reg[8]_i_1_n_2\,
      CO(0) => \re_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \re_cnt_reg[8]_i_1_n_4\,
      O(2) => \re_cnt_reg[8]_i_1_n_5\,
      O(1) => \re_cnt_reg[8]_i_1_n_6\,
      O(0) => \re_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => re_cnt(8 downto 5)
    );
\re_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => re_cnt_10,
      D => \re_cnt_reg[12]_i_1_n_7\,
      Q => re_cnt(9),
      R => \re_cnt[31]_i_1_n_0\
    );
\re_num_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[7]\(0),
      Q => re_num(0),
      R => '0'
    );
\re_num_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[6]\(2),
      Q => re_num(10),
      R => '0'
    );
\re_num_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[6]\(3),
      Q => re_num(11),
      R => '0'
    );
\re_num_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[6]\(4),
      Q => re_num(12),
      R => '0'
    );
\re_num_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[6]\(5),
      Q => re_num(13),
      R => '0'
    );
\re_num_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[6]\(6),
      Q => re_num(14),
      R => '0'
    );
\re_num_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[6]\(7),
      Q => re_num(15),
      R => '0'
    );
\re_num_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[5]\(0),
      Q => re_num(16),
      R => '0'
    );
\re_num_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[5]\(1),
      Q => re_num(17),
      R => '0'
    );
\re_num_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[5]\(2),
      Q => re_num(18),
      R => '0'
    );
\re_num_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[5]\(3),
      Q => re_num(19),
      R => '0'
    );
\re_num_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[7]\(1),
      Q => re_num(1),
      R => '0'
    );
\re_num_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[5]\(4),
      Q => re_num(20),
      R => '0'
    );
\re_num_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[5]\(5),
      Q => re_num(21),
      R => '0'
    );
\re_num_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[5]\(6),
      Q => re_num(22),
      R => '0'
    );
\re_num_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[5]\(7),
      Q => re_num(23),
      R => '0'
    );
\re_num_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[4]\(0),
      Q => re_num(24),
      R => '0'
    );
\re_num_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[4]\(1),
      Q => re_num(25),
      R => '0'
    );
\re_num_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[4]\(2),
      Q => re_num(26),
      R => '0'
    );
\re_num_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[4]\(3),
      Q => re_num(27),
      R => '0'
    );
\re_num_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[4]\(4),
      Q => re_num(28),
      R => '0'
    );
\re_num_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[4]\(5),
      Q => re_num(29),
      R => '0'
    );
\re_num_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[7]\(2),
      Q => re_num(2),
      R => '0'
    );
\re_num_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[4]\(6),
      Q => re_num(30),
      R => '0'
    );
\re_num_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[4]\(7),
      Q => re_num(31),
      R => '0'
    );
\re_num_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[7]\(3),
      Q => re_num(3),
      R => '0'
    );
\re_num_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[7]\(4),
      Q => re_num(4),
      R => '0'
    );
\re_num_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[7]\(5),
      Q => re_num(5),
      R => '0'
    );
\re_num_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[7]\(6),
      Q => re_num(6),
      R => '0'
    );
\re_num_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[7]\(7),
      Q => re_num(7),
      R => '0'
    );
\re_num_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[6]\(0),
      Q => re_num(8),
      R => '0'
    );
\re_num_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => high_num_11,
      D => \rx_array_temp_reg[6]\(1),
      Q => re_num(9),
      R => '0'
    );
\rx_array_temp[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \rx_array_temp[3][7]_i_2_n_0\,
      O => \rx_array_temp[0]_8\
    );
\rx_array_temp[1][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \rx_array_temp[3][7]_i_2_n_0\,
      O => \rx_array_temp[1]_9\
    );
\rx_array_temp[2][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \rx_array_temp[3][7]_i_2_n_0\,
      O => \rx_array_temp[2]_7\
    );
\rx_array_temp[3][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => \rx_array_temp[3][7]_i_2_n_0\,
      O => \rx_array_temp[3]_4\
    );
\rx_array_temp[3][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \rx_array_temp[3][7]_i_3_n_0\,
      I1 => \rx_array_temp[3][7]_i_4_n_0\,
      I2 => \rx_array_temp[3][7]_i_5_n_0\,
      I3 => reset_n,
      I4 => \state_main_reg_n_0_[0]\,
      I5 => \state_main_reg_n_0_[2]\,
      O => \rx_array_temp[3][7]_i_2_n_0\
    );
\rx_array_temp[3][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \rx_array_temp[3][7]_i_6_n_0\,
      I1 => \rx_array_temp[3][7]_i_7_n_0\,
      I2 => sel0(23),
      I3 => sel0(22),
      I4 => sel0(21),
      I5 => sel0(20),
      O => \rx_array_temp[3][7]_i_3_n_0\
    );
\rx_array_temp[3][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => sel0(12),
      I1 => sel0(13),
      I2 => sel0(14),
      I3 => sel0(15),
      I4 => \rx_array_temp[3][7]_i_8_n_0\,
      O => \rx_array_temp[3][7]_i_4_n_0\
    );
\rx_array_temp[3][7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(5),
      I2 => sel0(6),
      I3 => sel0(7),
      I4 => \rx_array_temp[3][7]_i_9_n_0\,
      O => \rx_array_temp[3][7]_i_5_n_0\
    );
\rx_array_temp[3][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sel0(28),
      I1 => sel0(29),
      I2 => sel0(30),
      I3 => sel0(31),
      I4 => sel0(3),
      I5 => \state_main_reg_n_0_[1]\,
      O => \rx_array_temp[3][7]_i_6_n_0\
    );
\rx_array_temp[3][7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sel0(27),
      I1 => sel0(26),
      I2 => sel0(25),
      I3 => sel0(24),
      O => \rx_array_temp[3][7]_i_7_n_0\
    );
\rx_array_temp[3][7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sel0(19),
      I1 => sel0(18),
      I2 => sel0(17),
      I3 => sel0(16),
      O => \rx_array_temp[3][7]_i_8_n_0\
    );
\rx_array_temp[3][7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sel0(11),
      I1 => sel0(10),
      I2 => sel0(9),
      I3 => sel0(8),
      O => \rx_array_temp[3][7]_i_9_n_0\
    );
\rx_array_temp[4][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \rx_array_temp[3][7]_i_2_n_0\,
      O => \rx_array_temp[4]_5\
    );
\rx_array_temp[5][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \rx_array_temp[3][7]_i_2_n_0\,
      O => \rx_array_temp[5]_2\
    );
\rx_array_temp[6][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => \rx_array_temp[3][7]_i_2_n_0\,
      O => \rx_array_temp[6]_6\
    );
\rx_array_temp[7][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \rx_array_temp[3][7]_i_2_n_0\,
      O => \rx_array_temp[7]_3\
    );
\rx_array_temp_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[0]_8\,
      D => probe2(0),
      Q => \rx_array_temp_reg[0]\(0),
      R => '0'
    );
\rx_array_temp_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[0]_8\,
      D => probe2(1),
      Q => \rx_array_temp_reg[0]\(1),
      R => '0'
    );
\rx_array_temp_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[0]_8\,
      D => probe2(2),
      Q => \rx_array_temp_reg[0]\(2),
      R => '0'
    );
\rx_array_temp_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[0]_8\,
      D => probe2(3),
      Q => \rx_array_temp_reg[0]\(3),
      R => '0'
    );
\rx_array_temp_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[0]_8\,
      D => probe2(4),
      Q => \rx_array_temp_reg[0]\(4),
      R => '0'
    );
\rx_array_temp_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[0]_8\,
      D => probe2(5),
      Q => \rx_array_temp_reg[0]\(5),
      R => '0'
    );
\rx_array_temp_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[0]_8\,
      D => probe2(6),
      Q => \rx_array_temp_reg[0]\(6),
      R => '0'
    );
\rx_array_temp_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[0]_8\,
      D => probe2(7),
      Q => \rx_array_temp_reg[0]\(7),
      R => '0'
    );
\rx_array_temp_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[1]_9\,
      D => probe2(0),
      Q => \rx_array_temp_reg[1]\(0),
      R => '0'
    );
\rx_array_temp_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[1]_9\,
      D => probe2(1),
      Q => \rx_array_temp_reg[1]\(1),
      R => '0'
    );
\rx_array_temp_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[1]_9\,
      D => probe2(2),
      Q => \rx_array_temp_reg[1]\(2),
      R => '0'
    );
\rx_array_temp_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[1]_9\,
      D => probe2(3),
      Q => \rx_array_temp_reg[1]\(3),
      R => '0'
    );
\rx_array_temp_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[1]_9\,
      D => probe2(4),
      Q => \rx_array_temp_reg[1]\(4),
      R => '0'
    );
\rx_array_temp_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[1]_9\,
      D => probe2(5),
      Q => \rx_array_temp_reg[1]\(5),
      R => '0'
    );
\rx_array_temp_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[1]_9\,
      D => probe2(6),
      Q => \rx_array_temp_reg[1]\(6),
      R => '0'
    );
\rx_array_temp_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[1]_9\,
      D => probe2(7),
      Q => \rx_array_temp_reg[1]\(7),
      R => '0'
    );
\rx_array_temp_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[2]_7\,
      D => probe2(0),
      Q => \rx_array_temp_reg[2]\(0),
      R => '0'
    );
\rx_array_temp_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[2]_7\,
      D => probe2(1),
      Q => \rx_array_temp_reg[2]\(1),
      R => '0'
    );
\rx_array_temp_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[2]_7\,
      D => probe2(2),
      Q => \rx_array_temp_reg[2]\(2),
      R => '0'
    );
\rx_array_temp_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[2]_7\,
      D => probe2(3),
      Q => \rx_array_temp_reg[2]\(3),
      R => '0'
    );
\rx_array_temp_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[2]_7\,
      D => probe2(4),
      Q => \rx_array_temp_reg[2]\(4),
      R => '0'
    );
\rx_array_temp_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[2]_7\,
      D => probe2(5),
      Q => \rx_array_temp_reg[2]\(5),
      R => '0'
    );
\rx_array_temp_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[2]_7\,
      D => probe2(6),
      Q => \rx_array_temp_reg[2]\(6),
      R => '0'
    );
\rx_array_temp_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[2]_7\,
      D => probe2(7),
      Q => \rx_array_temp_reg[2]\(7),
      R => '0'
    );
\rx_array_temp_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[3]_4\,
      D => probe2(0),
      Q => \rx_array_temp_reg[3]\(0),
      R => '0'
    );
\rx_array_temp_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[3]_4\,
      D => probe2(1),
      Q => \rx_array_temp_reg[3]\(1),
      R => '0'
    );
\rx_array_temp_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[3]_4\,
      D => probe2(2),
      Q => \rx_array_temp_reg[3]\(2),
      R => '0'
    );
\rx_array_temp_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[3]_4\,
      D => probe2(3),
      Q => \rx_array_temp_reg[3]\(3),
      R => '0'
    );
\rx_array_temp_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[3]_4\,
      D => probe2(4),
      Q => \rx_array_temp_reg[3]\(4),
      R => '0'
    );
\rx_array_temp_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[3]_4\,
      D => probe2(5),
      Q => \rx_array_temp_reg[3]\(5),
      R => '0'
    );
\rx_array_temp_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[3]_4\,
      D => probe2(6),
      Q => \rx_array_temp_reg[3]\(6),
      R => '0'
    );
\rx_array_temp_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[3]_4\,
      D => probe2(7),
      Q => \rx_array_temp_reg[3]\(7),
      R => '0'
    );
\rx_array_temp_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[4]_5\,
      D => probe2(0),
      Q => \rx_array_temp_reg[4]\(0),
      R => '0'
    );
\rx_array_temp_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[4]_5\,
      D => probe2(1),
      Q => \rx_array_temp_reg[4]\(1),
      R => '0'
    );
\rx_array_temp_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[4]_5\,
      D => probe2(2),
      Q => \rx_array_temp_reg[4]\(2),
      R => '0'
    );
\rx_array_temp_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[4]_5\,
      D => probe2(3),
      Q => \rx_array_temp_reg[4]\(3),
      R => '0'
    );
\rx_array_temp_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[4]_5\,
      D => probe2(4),
      Q => \rx_array_temp_reg[4]\(4),
      R => '0'
    );
\rx_array_temp_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[4]_5\,
      D => probe2(5),
      Q => \rx_array_temp_reg[4]\(5),
      R => '0'
    );
\rx_array_temp_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[4]_5\,
      D => probe2(6),
      Q => \rx_array_temp_reg[4]\(6),
      R => '0'
    );
\rx_array_temp_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[4]_5\,
      D => probe2(7),
      Q => \rx_array_temp_reg[4]\(7),
      R => '0'
    );
\rx_array_temp_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[5]_2\,
      D => probe2(0),
      Q => \rx_array_temp_reg[5]\(0),
      R => '0'
    );
\rx_array_temp_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[5]_2\,
      D => probe2(1),
      Q => \rx_array_temp_reg[5]\(1),
      R => '0'
    );
\rx_array_temp_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[5]_2\,
      D => probe2(2),
      Q => \rx_array_temp_reg[5]\(2),
      R => '0'
    );
\rx_array_temp_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[5]_2\,
      D => probe2(3),
      Q => \rx_array_temp_reg[5]\(3),
      R => '0'
    );
\rx_array_temp_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[5]_2\,
      D => probe2(4),
      Q => \rx_array_temp_reg[5]\(4),
      R => '0'
    );
\rx_array_temp_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[5]_2\,
      D => probe2(5),
      Q => \rx_array_temp_reg[5]\(5),
      R => '0'
    );
\rx_array_temp_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[5]_2\,
      D => probe2(6),
      Q => \rx_array_temp_reg[5]\(6),
      R => '0'
    );
\rx_array_temp_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[5]_2\,
      D => probe2(7),
      Q => \rx_array_temp_reg[5]\(7),
      R => '0'
    );
\rx_array_temp_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[6]_6\,
      D => probe2(0),
      Q => \rx_array_temp_reg[6]\(0),
      R => '0'
    );
\rx_array_temp_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[6]_6\,
      D => probe2(1),
      Q => \rx_array_temp_reg[6]\(1),
      R => '0'
    );
\rx_array_temp_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[6]_6\,
      D => probe2(2),
      Q => \rx_array_temp_reg[6]\(2),
      R => '0'
    );
\rx_array_temp_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[6]_6\,
      D => probe2(3),
      Q => \rx_array_temp_reg[6]\(3),
      R => '0'
    );
\rx_array_temp_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[6]_6\,
      D => probe2(4),
      Q => \rx_array_temp_reg[6]\(4),
      R => '0'
    );
\rx_array_temp_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[6]_6\,
      D => probe2(5),
      Q => \rx_array_temp_reg[6]\(5),
      R => '0'
    );
\rx_array_temp_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[6]_6\,
      D => probe2(6),
      Q => \rx_array_temp_reg[6]\(6),
      R => '0'
    );
\rx_array_temp_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[6]_6\,
      D => probe2(7),
      Q => \rx_array_temp_reg[6]\(7),
      R => '0'
    );
\rx_array_temp_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[7]_3\,
      D => probe2(0),
      Q => \rx_array_temp_reg[7]\(0),
      R => '0'
    );
\rx_array_temp_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[7]_3\,
      D => probe2(1),
      Q => \rx_array_temp_reg[7]\(1),
      R => '0'
    );
\rx_array_temp_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[7]_3\,
      D => probe2(2),
      Q => \rx_array_temp_reg[7]\(2),
      R => '0'
    );
\rx_array_temp_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[7]_3\,
      D => probe2(3),
      Q => \rx_array_temp_reg[7]\(3),
      R => '0'
    );
\rx_array_temp_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[7]_3\,
      D => probe2(4),
      Q => \rx_array_temp_reg[7]\(4),
      R => '0'
    );
\rx_array_temp_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[7]_3\,
      D => probe2(5),
      Q => \rx_array_temp_reg[7]\(5),
      R => '0'
    );
\rx_array_temp_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[7]_3\,
      D => probe2(6),
      Q => \rx_array_temp_reg[7]\(6),
      R => '0'
    );
\rx_array_temp_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \rx_array_temp[7]_3\,
      D => probe2(7),
      Q => \rx_array_temp_reg[7]\(7),
      R => '0'
    );
\rx_data_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => rx_data_data(0),
      Q => probe2(0),
      R => '0'
    );
\rx_data_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => rx_data_data(1),
      Q => probe2(1),
      R => '0'
    );
\rx_data_data1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => rx_data_data(2),
      Q => probe2(2),
      R => '0'
    );
\rx_data_data1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => rx_data_data(3),
      Q => probe2(3),
      R => '0'
    );
\rx_data_data1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => rx_data_data(4),
      Q => probe2(4),
      R => '0'
    );
\rx_data_data1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => rx_data_data(5),
      Q => probe2(5),
      R => '0'
    );
\rx_data_data1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => rx_data_data(6),
      Q => probe2(6),
      R => '0'
    );
\rx_data_data1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => rx_data_data(7),
      Q => probe2(7),
      R => '0'
    );
rx_data_last1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => rx_data_last,
      Q => probe1,
      R => '0'
    );
rx_data_valid1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => rx_data_valid,
      Q => probe0,
      R => '0'
    );
\rx_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(0),
      O => \rx_index[0]_i_1_n_0\
    );
\rx_index[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040404"
    )
        port map (
      I0 => \state_main_reg_n_0_[2]\,
      I1 => reset_n,
      I2 => \state_main_reg_n_0_[1]\,
      I3 => state_main1,
      I4 => \state_main_reg_n_0_[0]\,
      O => \rx_index[31]_i_1_n_0\
    );
\rx_index[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state_main_reg_n_0_[1]\,
      I1 => reset_n,
      I2 => \state_main_reg_n_0_[2]\,
      O => rx_index
    );
\rx_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => \rx_index[0]_i_1_n_0\,
      Q => sel0(0),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(10),
      Q => sel0(10),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(11),
      Q => sel0(11),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(12),
      Q => sel0(12),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index_reg[8]_i_1_n_0\,
      CO(3) => \rx_index_reg[12]_i_1_n_0\,
      CO(2) => \rx_index_reg[12]_i_1_n_1\,
      CO(1) => \rx_index_reg[12]_i_1_n_2\,
      CO(0) => \rx_index_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rx_index0(12 downto 9),
      S(3 downto 0) => sel0(12 downto 9)
    );
\rx_index_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(13),
      Q => sel0(13),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(14),
      Q => sel0(14),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(15),
      Q => sel0(15),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(16),
      Q => sel0(16),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index_reg[12]_i_1_n_0\,
      CO(3) => \rx_index_reg[16]_i_1_n_0\,
      CO(2) => \rx_index_reg[16]_i_1_n_1\,
      CO(1) => \rx_index_reg[16]_i_1_n_2\,
      CO(0) => \rx_index_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rx_index0(16 downto 13),
      S(3 downto 0) => sel0(16 downto 13)
    );
\rx_index_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(17),
      Q => sel0(17),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(18),
      Q => sel0(18),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(19),
      Q => sel0(19),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(1),
      Q => sel0(1),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(20),
      Q => sel0(20),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index_reg[16]_i_1_n_0\,
      CO(3) => \rx_index_reg[20]_i_1_n_0\,
      CO(2) => \rx_index_reg[20]_i_1_n_1\,
      CO(1) => \rx_index_reg[20]_i_1_n_2\,
      CO(0) => \rx_index_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rx_index0(20 downto 17),
      S(3 downto 0) => sel0(20 downto 17)
    );
\rx_index_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(21),
      Q => sel0(21),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(22),
      Q => sel0(22),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(23),
      Q => sel0(23),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(24),
      Q => sel0(24),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index_reg[20]_i_1_n_0\,
      CO(3) => \rx_index_reg[24]_i_1_n_0\,
      CO(2) => \rx_index_reg[24]_i_1_n_1\,
      CO(1) => \rx_index_reg[24]_i_1_n_2\,
      CO(0) => \rx_index_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rx_index0(24 downto 21),
      S(3 downto 0) => sel0(24 downto 21)
    );
\rx_index_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(25),
      Q => sel0(25),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(26),
      Q => sel0(26),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(27),
      Q => sel0(27),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(28),
      Q => sel0(28),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index_reg[24]_i_1_n_0\,
      CO(3) => \rx_index_reg[28]_i_1_n_0\,
      CO(2) => \rx_index_reg[28]_i_1_n_1\,
      CO(1) => \rx_index_reg[28]_i_1_n_2\,
      CO(0) => \rx_index_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rx_index0(28 downto 25),
      S(3 downto 0) => sel0(28 downto 25)
    );
\rx_index_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(29),
      Q => sel0(29),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(2),
      Q => sel0(2),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(30),
      Q => sel0(30),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(31),
      Q => sel0(31),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_rx_index_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rx_index_reg[31]_i_3_n_2\,
      CO(0) => \rx_index_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_rx_index_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => rx_index0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => sel0(31 downto 29)
    );
\rx_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(3),
      Q => sel0(3),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(4),
      Q => sel0(4),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rx_index_reg[4]_i_1_n_0\,
      CO(2) => \rx_index_reg[4]_i_1_n_1\,
      CO(1) => \rx_index_reg[4]_i_1_n_2\,
      CO(0) => \rx_index_reg[4]_i_1_n_3\,
      CYINIT => sel0(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rx_index0(4 downto 1),
      S(3 downto 0) => sel0(4 downto 1)
    );
\rx_index_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(5),
      Q => sel0(5),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(6),
      Q => sel0(6),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(7),
      Q => sel0(7),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(8),
      Q => sel0(8),
      R => \rx_index[31]_i_1_n_0\
    );
\rx_index_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_index_reg[4]_i_1_n_0\,
      CO(3) => \rx_index_reg[8]_i_1_n_0\,
      CO(2) => \rx_index_reg[8]_i_1_n_1\,
      CO(1) => \rx_index_reg[8]_i_1_n_2\,
      CO(0) => \rx_index_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rx_index0(8 downto 5),
      S(3 downto 0) => sel0(8 downto 5)
    );
\rx_index_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => rx_index,
      D => rx_index0(9),
      Q => sel0(9),
      R => \rx_index[31]_i_1_n_0\
    );
state_main1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state_main1_carry_n_0,
      CO(2) => state_main1_carry_n_1,
      CO(1) => state_main1_carry_n_2,
      CO(0) => state_main1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => state_main1_carry_i_1_n_0,
      DI(0) => state_main1_carry_i_2_n_0,
      O(3 downto 0) => NLW_state_main1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => state_main1_carry_i_3_n_0,
      S(2) => state_main1_carry_i_4_n_0,
      S(1) => state_main1_carry_i_5_n_0,
      S(0) => state_main1_carry_i_6_n_0
    );
\state_main1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state_main1_carry_n_0,
      CO(3) => \state_main1_carry__0_n_0\,
      CO(2) => \state_main1_carry__0_n_1\,
      CO(1) => \state_main1_carry__0_n_2\,
      CO(0) => \state_main1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state_main1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \state_main1_carry__0_i_1_n_0\,
      S(2) => \state_main1_carry__0_i_2_n_0\,
      S(1) => \state_main1_carry__0_i_3_n_0\,
      S(0) => \state_main1_carry__0_i_4_n_0\
    );
\state_main1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(14),
      I1 => sel0(15),
      O => \state_main1_carry__0_i_1_n_0\
    );
\state_main1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(12),
      I1 => sel0(13),
      O => \state_main1_carry__0_i_2_n_0\
    );
\state_main1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(10),
      I1 => sel0(11),
      O => \state_main1_carry__0_i_3_n_0\
    );
\state_main1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(8),
      I1 => sel0(9),
      O => \state_main1_carry__0_i_4_n_0\
    );
\state_main1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_main1_carry__0_n_0\,
      CO(3) => \state_main1_carry__1_n_0\,
      CO(2) => \state_main1_carry__1_n_1\,
      CO(1) => \state_main1_carry__1_n_2\,
      CO(0) => \state_main1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state_main1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \state_main1_carry__1_i_1_n_0\,
      S(2) => \state_main1_carry__1_i_2_n_0\,
      S(1) => \state_main1_carry__1_i_3_n_0\,
      S(0) => \state_main1_carry__1_i_4_n_0\
    );
\state_main1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(22),
      I1 => sel0(23),
      O => \state_main1_carry__1_i_1_n_0\
    );
\state_main1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(20),
      I1 => sel0(21),
      O => \state_main1_carry__1_i_2_n_0\
    );
\state_main1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(18),
      I1 => sel0(19),
      O => \state_main1_carry__1_i_3_n_0\
    );
\state_main1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(16),
      I1 => sel0(17),
      O => \state_main1_carry__1_i_4_n_0\
    );
\state_main1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_main1_carry__1_n_0\,
      CO(3) => state_main1,
      CO(2) => \state_main1_carry__2_n_1\,
      CO(1) => \state_main1_carry__2_n_2\,
      CO(0) => \state_main1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => sel0(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_state_main1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \state_main1_carry__2_i_1_n_0\,
      S(2) => \state_main1_carry__2_i_2_n_0\,
      S(1) => \state_main1_carry__2_i_3_n_0\,
      S(0) => \state_main1_carry__2_i_4_n_0\
    );
\state_main1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(30),
      I1 => sel0(31),
      O => \state_main1_carry__2_i_1_n_0\
    );
\state_main1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(28),
      I1 => sel0(29),
      O => \state_main1_carry__2_i_2_n_0\
    );
\state_main1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(26),
      I1 => sel0(27),
      O => \state_main1_carry__2_i_3_n_0\
    );
\state_main1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(24),
      I1 => sel0(25),
      O => \state_main1_carry__2_i_4_n_0\
    );
state_main1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(3),
      O => state_main1_carry_i_1_n_0
    );
state_main1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => state_main1_carry_i_2_n_0
    );
state_main1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(7),
      O => state_main1_carry_i_3_n_0
    );
state_main1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(5),
      O => state_main1_carry_i_4_n_0
    );
state_main1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      O => state_main1_carry_i_5_n_0
    );
state_main1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      O => state_main1_carry_i_6_n_0
    );
\state_main[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5556000200000000"
    )
        port map (
      I0 => \state_main_reg_n_0_[0]\,
      I1 => \state_main[2]_i_2_n_0\,
      I2 => \state_main[2]_i_3_n_0\,
      I3 => \state_main[2]_i_4_n_0\,
      I4 => \state_main[0]_i_2_n_0\,
      I5 => reset_n,
      O => \state_main[0]_i_1_n_0\
    );
\state_main[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \state_main_reg_n_0_[1]\,
      I1 => \state_main_reg_n_0_[2]\,
      O => \state_main[0]_i_2_n_0\
    );
\state_main[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000200000000"
    )
        port map (
      I0 => \state_main_reg_n_0_[1]\,
      I1 => \state_main[2]_i_2_n_0\,
      I2 => \state_main[2]_i_3_n_0\,
      I3 => \state_main[2]_i_4_n_0\,
      I4 => p_2_in(1),
      I5 => reset_n,
      O => \state_main[1]_i_1_n_0\
    );
\state_main[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => \state_main_reg_n_0_[2]\,
      I1 => \state_main_reg_n_0_[1]\,
      I2 => \state_main_reg_n_0_[0]\,
      O => p_2_in(1)
    );
\state_main[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000200000000"
    )
        port map (
      I0 => \state_main_reg_n_0_[2]\,
      I1 => \state_main[2]_i_2_n_0\,
      I2 => \state_main[2]_i_3_n_0\,
      I3 => \state_main[2]_i_4_n_0\,
      I4 => p_2_in(2),
      I5 => reset_n,
      O => \state_main[2]_i_1_n_0\
    );
\state_main[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0080FF000080"
    )
        port map (
      I0 => \state_main[2]_i_6_n_0\,
      I1 => \state_main[2]_i_7_n_0\,
      I2 => \state_main[2]_i_8_n_0\,
      I3 => \state_main_reg_n_0_[0]\,
      I4 => \state_main_reg_n_0_[1]\,
      I5 => probe1,
      O => \state_main[2]_i_2_n_0\
    );
\state_main[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F404"
    )
        port map (
      I0 => state_main1,
      I1 => \state_main_reg_n_0_[0]\,
      I2 => \state_main_reg_n_0_[2]\,
      I3 => \state_main_reg_n_0_[1]\,
      O => \state_main[2]_i_3_n_0\
    );
\state_main[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0200F200"
    )
        port map (
      I0 => probe3,
      I1 => \ltOp__23_carry__0_n_0\,
      I2 => \state_main_reg_n_0_[0]\,
      I3 => \state_main_reg_n_0_[2]\,
      I4 => ltOp,
      O => \state_main[2]_i_4_n_0\
    );
\state_main[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7588"
    )
        port map (
      I0 => \state_main_reg_n_0_[1]\,
      I1 => \state_main_reg_n_0_[0]\,
      I2 => \ltOp__7_carry__2_n_0\,
      I3 => \state_main_reg_n_0_[2]\,
      O => p_2_in(2)
    );
\state_main[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => rx_cmd(7),
      I1 => rx_cmd(8),
      I2 => rx_cmd(5),
      I3 => rx_cmd(6),
      I4 => rx_cmd(10),
      I5 => rx_cmd(9),
      O => \state_main[2]_i_6_n_0\
    );
\state_main[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => rx_cmd(2),
      I1 => rx_cmd(3),
      I2 => rx_cmd(0),
      I3 => rx_cmd(1),
      I4 => \state_main_reg_n_0_[2]\,
      I5 => rx_cmd(4),
      O => \state_main[2]_i_7_n_0\
    );
\state_main[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => rx_cmd(13),
      I1 => rx_cmd(14),
      I2 => rx_cmd(11),
      I3 => rx_cmd(12),
      I4 => rx_cmd_valid,
      I5 => rx_cmd(15),
      O => \state_main[2]_i_8_n_0\
    );
\state_main_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \state_main[0]_i_1_n_0\,
      Q => \state_main_reg_n_0_[0]\,
      R => '0'
    );
\state_main_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \state_main[1]_i_1_n_0\,
      Q => \state_main_reg_n_0_[1]\,
      R => '0'
    );
\state_main_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \state_main[2]_i_1_n_0\,
      Q => \state_main_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk_in : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_Sim_ad_data_gen_0_0,Sim_ad_data_gen,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Sim_ad_data_gen,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  tx_cmd(15) <= \<const0>\;
  tx_cmd(14) <= \<const0>\;
  tx_cmd(13) <= \<const0>\;
  tx_cmd(12) <= \<const0>\;
  tx_cmd(11) <= \<const0>\;
  tx_cmd(10) <= \<const0>\;
  tx_cmd(9) <= \<const0>\;
  tx_cmd(8) <= \<const0>\;
  tx_cmd(7) <= \<const0>\;
  tx_cmd(6) <= \<const0>\;
  tx_cmd(5) <= \<const0>\;
  tx_cmd(4) <= \<const0>\;
  tx_cmd(3) <= \<const0>\;
  tx_cmd(2) <= \<const0>\;
  tx_cmd(1) <= \<const0>\;
  tx_cmd(0) <= \<const0>\;
  tx_cmd_valid <= \<const0>\;
  tx_data_data(7) <= \<const0>\;
  tx_data_data(6) <= \<const0>\;
  tx_data_data(5) <= \<const0>\;
  tx_data_data(4) <= \<const0>\;
  tx_data_data(3) <= \<const0>\;
  tx_data_data(2) <= \<const0>\;
  tx_data_data(1) <= \<const0>\;
  tx_data_data(0) <= \<const0>\;
  tx_data_last <= \<const0>\;
  tx_data_valid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sim_ad_data_gen
     port map (
      clk_in => clk_in,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      reset_n => reset_n,
      rx_cmd(15 downto 0) => rx_cmd(15 downto 0),
      rx_cmd_valid => rx_cmd_valid,
      rx_data_data(7 downto 0) => rx_data_data(7 downto 0),
      rx_data_last => rx_data_last,
      rx_data_valid => rx_data_valid
    );
end STRUCTURE;
