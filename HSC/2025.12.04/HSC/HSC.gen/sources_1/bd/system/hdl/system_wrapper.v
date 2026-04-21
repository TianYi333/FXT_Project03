//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
//Date        : Wed Dec  3 10:19:48 2025
//Host        : FXT333 running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (AD_CTRL1_0,
    AD_CTRL2_0,
    AD_CTRL3_0,
    AD_DA_0,
    AD_DB_0,
    AD_RESET_0,
    AD_SCLK_0,
    AD_SDATA_0,
    AD_SEN_0,
    DDR_0_addr,
    DDR_0_ba,
    DDR_0_cas_n,
    DDR_0_ck_n,
    DDR_0_ck_p,
    DDR_0_cke,
    DDR_0_cs_n,
    DDR_0_dm,
    DDR_0_dq,
    DDR_0_dqs_n,
    DDR_0_dqs_p,
    DDR_0_odt,
    DDR_0_ras_n,
    DDR_0_reset_n,
    DDR_0_we_n,
    FIXED_IO_0_ddr_vrn,
    FIXED_IO_0_ddr_vrp,
    FIXED_IO_0_mio,
    FIXED_IO_0_ps_clk,
    FIXED_IO_0_ps_porb,
    FIXED_IO_0_ps_srstb,
    ad_clk_in_0,
    clk_ad_out_0,
    clk_dir_0,
    clk_in_0,
    triger_in_pos_0,
    triger_in_tr_0);
  output AD_CTRL1_0;
  output AD_CTRL2_0;
  output AD_CTRL3_0;
  input [13:0]AD_DA_0;
  input [13:0]AD_DB_0;
  output AD_RESET_0;
  output AD_SCLK_0;
  output AD_SDATA_0;
  output AD_SEN_0;
  inout [14:0]DDR_0_addr;
  inout [2:0]DDR_0_ba;
  inout DDR_0_cas_n;
  inout DDR_0_ck_n;
  inout DDR_0_ck_p;
  inout DDR_0_cke;
  inout DDR_0_cs_n;
  inout [3:0]DDR_0_dm;
  inout [31:0]DDR_0_dq;
  inout [3:0]DDR_0_dqs_n;
  inout [3:0]DDR_0_dqs_p;
  inout DDR_0_odt;
  inout DDR_0_ras_n;
  inout DDR_0_reset_n;
  inout DDR_0_we_n;
  inout FIXED_IO_0_ddr_vrn;
  inout FIXED_IO_0_ddr_vrp;
  inout [53:0]FIXED_IO_0_mio;
  inout FIXED_IO_0_ps_clk;
  inout FIXED_IO_0_ps_porb;
  inout FIXED_IO_0_ps_srstb;
  input ad_clk_in_0;
  output clk_ad_out_0;
  output clk_dir_0;
  input clk_in_0;
  input triger_in_pos_0;
  input triger_in_tr_0;

  wire AD_CTRL1_0;
  wire AD_CTRL2_0;
  wire AD_CTRL3_0;
  wire [13:0]AD_DA_0;
  wire [13:0]AD_DB_0;
  wire AD_RESET_0;
  wire AD_SCLK_0;
  wire AD_SDATA_0;
  wire AD_SEN_0;
  wire [14:0]DDR_0_addr;
  wire [2:0]DDR_0_ba;
  wire DDR_0_cas_n;
  wire DDR_0_ck_n;
  wire DDR_0_ck_p;
  wire DDR_0_cke;
  wire DDR_0_cs_n;
  wire [3:0]DDR_0_dm;
  wire [31:0]DDR_0_dq;
  wire [3:0]DDR_0_dqs_n;
  wire [3:0]DDR_0_dqs_p;
  wire DDR_0_odt;
  wire DDR_0_ras_n;
  wire DDR_0_reset_n;
  wire DDR_0_we_n;
  wire FIXED_IO_0_ddr_vrn;
  wire FIXED_IO_0_ddr_vrp;
  wire [53:0]FIXED_IO_0_mio;
  wire FIXED_IO_0_ps_clk;
  wire FIXED_IO_0_ps_porb;
  wire FIXED_IO_0_ps_srstb;
  wire ad_clk_in_0;
  wire clk_ad_out_0;
  wire clk_dir_0;
  wire clk_in_0;
  wire triger_in_pos_0;
  wire triger_in_tr_0;

  system system_i
       (.AD_CTRL1_0(AD_CTRL1_0),
        .AD_CTRL2_0(AD_CTRL2_0),
        .AD_CTRL3_0(AD_CTRL3_0),
        .AD_DA_0(AD_DA_0),
        .AD_DB_0(AD_DB_0),
        .AD_RESET_0(AD_RESET_0),
        .AD_SCLK_0(AD_SCLK_0),
        .AD_SDATA_0(AD_SDATA_0),
        .AD_SEN_0(AD_SEN_0),
        .DDR_0_addr(DDR_0_addr),
        .DDR_0_ba(DDR_0_ba),
        .DDR_0_cas_n(DDR_0_cas_n),
        .DDR_0_ck_n(DDR_0_ck_n),
        .DDR_0_ck_p(DDR_0_ck_p),
        .DDR_0_cke(DDR_0_cke),
        .DDR_0_cs_n(DDR_0_cs_n),
        .DDR_0_dm(DDR_0_dm),
        .DDR_0_dq(DDR_0_dq),
        .DDR_0_dqs_n(DDR_0_dqs_n),
        .DDR_0_dqs_p(DDR_0_dqs_p),
        .DDR_0_odt(DDR_0_odt),
        .DDR_0_ras_n(DDR_0_ras_n),
        .DDR_0_reset_n(DDR_0_reset_n),
        .DDR_0_we_n(DDR_0_we_n),
        .FIXED_IO_0_ddr_vrn(FIXED_IO_0_ddr_vrn),
        .FIXED_IO_0_ddr_vrp(FIXED_IO_0_ddr_vrp),
        .FIXED_IO_0_mio(FIXED_IO_0_mio),
        .FIXED_IO_0_ps_clk(FIXED_IO_0_ps_clk),
        .FIXED_IO_0_ps_porb(FIXED_IO_0_ps_porb),
        .FIXED_IO_0_ps_srstb(FIXED_IO_0_ps_srstb),
        .ad_clk_in_0(ad_clk_in_0),
        .clk_ad_out_0(clk_ad_out_0),
        .clk_dir_0(clk_dir_0),
        .clk_in_0(clk_in_0),
        .triger_in_pos_0(triger_in_pos_0),
        .triger_in_tr_0(triger_in_tr_0));
endmodule
