-- file: ad_clk_wiz.vhd
--
-- -----------------------------------------------------------------------------
-- (c) Copyright 2008-2013 Xilinx, Inc. All rights reserved.
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
-- -----------------------------------------------------------------------------
------------------------------------------------------------------------------
-- Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
-- Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
------------------------------------------------------------------------------
-- CLK_OUT1   40.000      180.000      50.0                      
  
--
------------------------------------------------------------------------------
-- Input Clock   Input Freq (MHz)   Input Jitter (UI)
------------------------------------------------------------------------------
-- primary         40.000            0.010

library ieee;
use ieee.std_logic_1164.all;

library unisim;
use unisim.vcomponents.all;

entity ad_in_clk is
port
 (-- Clock in ports
--  CLK_IN_P           : in     std_logic;
 clk_in           : in     std_logic;
  -- Clock out ports
  CLK_OUT1          : out    std_logic;
  -- Status and control signals
  RESET             : in     std_logic
--  LOCKED            : out    std_logic
 );
end ad_in_clk;

architecture xilinx of ad_in_clk is
signal CLK_IN1  : std_logic;
  -- Input clock buffering / unused connectors
  signal clkin1      	  : std_logic;
  -- Output clock buffering / unused connectors
  signal clkfbout         : std_logic;
  signal clkfboutb_unused : std_logic;
  signal clkout0          : std_logic;
  signal clkout0b_unused  : std_logic;
  signal clkout1_unused   : std_logic;
  signal clkout1b_unused  : std_logic;
  signal clkout2_unused   : std_logic;
  signal clkout2b_unused  : std_logic;
  signal clkout3_unused   : std_logic;
  signal clkout3b_unused  : std_logic;
  signal clkout4_unused   : std_logic;
  signal clkout5_unused   : std_logic;
  signal clkout6_unused   : std_logic;
  -- Dynamic programming unused signals
  signal do_unused        : std_logic_vector(15 downto 0);
  signal drdy_unused      : std_logic;
  -- Dynamic phase shift unused signals
  signal psdone_unused    : std_logic;
  -- Unused status signals
  signal clkfbstopped_unused : std_logic;
  signal clkinstopped_unused : std_logic;
  
begin


  -- Clocking primitive
  --------------------------------------
  -- Instantiation of the MMCM primitive
  --    * Unused inputs are tied off
  --    * Unused outputs are labeled unused
  
  
  mmcm_adv_inst : MMCME2_ADV
  
  generic map
   (BANDWIDTH            => "OPTIMIZED",
    
    COMPENSATION         => "ZHOLD",
    
    DIVCLK_DIVIDE        => 1,
    
    CLKFBOUT_MULT_F      => 25.000,
    
    CLKFBOUT_PHASE       => 0.000,
    
    CLKOUT0_DIVIDE_F     => 25.000,
    -- 每次改变 45/CLKOUT0_DIVIDE_F = 11.25
    
    CLKOUT0_PHASE        => 90.000,
    -- 180 no
    -- 168.750 no
    -- 157.500 no
    -- 135 no
    -- 90
    CLKOUT0_DUTY_CYCLE   => 0.500,

    CLKIN1_PERIOD        => 25.000,
    REF_JITTER1          => 0.010)
  port map
    -- Output clocks
   (CLKFBOUT            => clkfbout,
    CLKOUT0             => clkout0,
    CLKOUT1             => clkout1_unused,
    CLKOUT2             => clkout2_unused,
    CLKOUT3             => clkout3_unused,
    CLKOUT4             => clkout4_unused,
    CLKOUT5             => clkout5_unused,
    CLKOUT6             => clkout6_unused,
    
    CLKFBOUTB           => clkfboutb_unused,
    CLKOUT0B            => clkout0b_unused,
    CLKOUT1B            => clkout1b_unused,
    CLKOUT2B            => clkout2b_unused,
    CLKOUT3B            => clkout3b_unused,
    
    -- Input clock control
    CLKFBIN             => clkfbout,
    CLKIN1              => CLK_IN1,
    CLKIN2              => '0',
    -- Tied to always select the primary input clock
    CLKINSEL            => '1',
    -- Ports for dynamic reconfiguration
    DADDR               => (others => '0'),
    DCLK                => '0',
    DEN                 => '0',
    DI                  => (others => '0'),
    DO                  => do_unused,
    DRDY                => drdy_unused,
    DWE                 => '0',
    -- Ports for dynamic phase shift
    PSCLK               => '0',
    PSEN                => '0',
    PSINCDEC            => '0',
    PSDONE              => psdone_unused,
 
    -- Other control and status signals
--    LOCKED              => LOCKED,
 
    CLKINSTOPPED        => clkinstopped_unused,
    CLKFBSTOPPED        => clkfbstopped_unused,
    PWRDWN              => '0',
    RST                 => RESET);
  -- input buffering
--     ad_clk_IBUFDS_inst : IBUFDS
--   generic map (
--      DIFF_TERM => FALSE, -- Differential Termination 
--      IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
--      IOSTANDARD => "DEFAULT")
--   port map (
--      O => CLK_IN1,  -- Buffer output
--      I => CLK_IN_P,  -- Diff_p buffer input (connect directly to top-level port)
--      IB => CLK_IN_N -- Diff_n buffer input (connect directly to top-level port)
--   );
  -- Output buffering
 CLK_IN1 <= clk_in;
  -------------------------------------

  clkout1_buf : BUFGCE
       
  port map
   (O   => CLK_OUT1,
    CE  => '1',
    I   => clkout0);       

end xilinx;
