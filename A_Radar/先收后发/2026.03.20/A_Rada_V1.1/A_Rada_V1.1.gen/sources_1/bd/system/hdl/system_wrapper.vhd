--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Fri Mar 20 10:29:18 2026
--Host        : ti running 64-bit major release  (build 9200)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    AD_CTRL1_0 : out STD_LOGIC;
    AD_CTRL2_0 : out STD_LOGIC;
    AD_CTRL3_0 : out STD_LOGIC;
    AD_DA_0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    AD_DB_0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    AD_RESET_0 : out STD_LOGIC;
    AD_SCLK_0 : out STD_LOGIC;
    AD_SDATA_0 : out STD_LOGIC;
    AD_SEN_0 : out STD_LOGIC;
    DDR_0_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_0_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_0_cas_n : inout STD_LOGIC;
    DDR_0_ck_n : inout STD_LOGIC;
    DDR_0_ck_p : inout STD_LOGIC;
    DDR_0_cke : inout STD_LOGIC;
    DDR_0_cs_n : inout STD_LOGIC;
    DDR_0_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_0_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_odt : inout STD_LOGIC;
    DDR_0_ras_n : inout STD_LOGIC;
    DDR_0_reset_n : inout STD_LOGIC;
    DDR_0_we_n : inout STD_LOGIC;
    FIXED_IO_0_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_0_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_0_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_0_ps_clk : inout STD_LOGIC;
    FIXED_IO_0_ps_porb : inout STD_LOGIC;
    FIXED_IO_0_ps_srstb : inout STD_LOGIC;
    ad_clk_in_0 : in STD_LOGIC;
    clk_ad_out_0 : out STD_LOGIC;
    clk_dir_0 : out STD_LOGIC;
    clk_in_0 : in STD_LOGIC;
    triger_in_pos_0 : in STD_LOGIC;
    triger_in_tr_0 : in STD_LOGIC
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    triger_in_pos_0 : in STD_LOGIC;
    triger_in_tr_0 : in STD_LOGIC;
    ad_clk_in_0 : in STD_LOGIC;
    AD_DA_0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    AD_DB_0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    clk_ad_out_0 : out STD_LOGIC;
    AD_SEN_0 : out STD_LOGIC;
    AD_SDATA_0 : out STD_LOGIC;
    AD_SCLK_0 : out STD_LOGIC;
    AD_RESET_0 : out STD_LOGIC;
    AD_CTRL1_0 : out STD_LOGIC;
    AD_CTRL2_0 : out STD_LOGIC;
    AD_CTRL3_0 : out STD_LOGIC;
    clk_in_0 : in STD_LOGIC;
    clk_dir_0 : out STD_LOGIC;
    DDR_0_cas_n : inout STD_LOGIC;
    DDR_0_cke : inout STD_LOGIC;
    DDR_0_ck_n : inout STD_LOGIC;
    DDR_0_ck_p : inout STD_LOGIC;
    DDR_0_cs_n : inout STD_LOGIC;
    DDR_0_reset_n : inout STD_LOGIC;
    DDR_0_odt : inout STD_LOGIC;
    DDR_0_ras_n : inout STD_LOGIC;
    DDR_0_we_n : inout STD_LOGIC;
    DDR_0_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_0_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_0_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_0_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_0_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_0_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_0_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_0_ps_srstb : inout STD_LOGIC;
    FIXED_IO_0_ps_clk : inout STD_LOGIC;
    FIXED_IO_0_ps_porb : inout STD_LOGIC
  );
  end component system;
begin
system_i: component system
     port map (
      AD_CTRL1_0 => AD_CTRL1_0,
      AD_CTRL2_0 => AD_CTRL2_0,
      AD_CTRL3_0 => AD_CTRL3_0,
      AD_DA_0(13 downto 0) => AD_DA_0(13 downto 0),
      AD_DB_0(13 downto 0) => AD_DB_0(13 downto 0),
      AD_RESET_0 => AD_RESET_0,
      AD_SCLK_0 => AD_SCLK_0,
      AD_SDATA_0 => AD_SDATA_0,
      AD_SEN_0 => AD_SEN_0,
      DDR_0_addr(14 downto 0) => DDR_0_addr(14 downto 0),
      DDR_0_ba(2 downto 0) => DDR_0_ba(2 downto 0),
      DDR_0_cas_n => DDR_0_cas_n,
      DDR_0_ck_n => DDR_0_ck_n,
      DDR_0_ck_p => DDR_0_ck_p,
      DDR_0_cke => DDR_0_cke,
      DDR_0_cs_n => DDR_0_cs_n,
      DDR_0_dm(3 downto 0) => DDR_0_dm(3 downto 0),
      DDR_0_dq(31 downto 0) => DDR_0_dq(31 downto 0),
      DDR_0_dqs_n(3 downto 0) => DDR_0_dqs_n(3 downto 0),
      DDR_0_dqs_p(3 downto 0) => DDR_0_dqs_p(3 downto 0),
      DDR_0_odt => DDR_0_odt,
      DDR_0_ras_n => DDR_0_ras_n,
      DDR_0_reset_n => DDR_0_reset_n,
      DDR_0_we_n => DDR_0_we_n,
      FIXED_IO_0_ddr_vrn => FIXED_IO_0_ddr_vrn,
      FIXED_IO_0_ddr_vrp => FIXED_IO_0_ddr_vrp,
      FIXED_IO_0_mio(53 downto 0) => FIXED_IO_0_mio(53 downto 0),
      FIXED_IO_0_ps_clk => FIXED_IO_0_ps_clk,
      FIXED_IO_0_ps_porb => FIXED_IO_0_ps_porb,
      FIXED_IO_0_ps_srstb => FIXED_IO_0_ps_srstb,
      ad_clk_in_0 => ad_clk_in_0,
      clk_ad_out_0 => clk_ad_out_0,
      clk_dir_0 => clk_dir_0,
      clk_in_0 => clk_in_0,
      triger_in_pos_0 => triger_in_pos_0,
      triger_in_tr_0 => triger_in_tr_0
    );
end STRUCTURE;
