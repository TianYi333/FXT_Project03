----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2025/09/01 14:39:09
-- Design Name: 
-- Module Name: ads62p45 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ads62p45 is
port(
      clk_ad          :     in  std_logic;
      rst             :     in  std_logic;
      ad_clk_in       :     in  std_logic;
      AD_DA           :     in  std_logic_vector(13 downto 0);
      AD_DB           :     in  std_logic_vector(13 downto 0);
      
      clk_ad_out      :     out std_logic;
      dclk_out        :     out std_logic; 
      AD_DA_OUT       :     out std_logic_vector(13 downto 0);
      AD_DB_OUT       :     out std_logic_vector(13 downto 0)
);
end ads62p45;

architecture Behavioral of ads62p45 is
   signal   dclk              :    std_logic;  
   signal   clk_main          :    std_logic; 
   signal   AD_DA_temp        :    std_logic_vector(13 downto 0);
   signal   AD_DB_temp        :    std_logic_vector(13 downto 0);
   signal   AD_DA_OUT_temp    :    std_logic_vector(13 downto 0);
   signal   AD_DB_OUT_temp    :    std_logic_vector(13 downto 0);

component ad_out_clk
port
 (-- Clock in ports
  clk_in            : in     std_logic;
  -- Clock out ports
  CLK_OUT1          : out    std_logic;
  -- Status and control signals
  RESET             : in     std_logic

 );
end component;

component ad_in_clk
port
 (-- Clock in ports
  clk_in           : in     std_logic;
  -- Clock out ports
  CLK_OUT1          : out    std_logic;
  -- Status and control signals
  RESET             : in     std_logic

 );
end component;

begin
inst_ad_out_clk : ad_out_clk
port map(
clk_in      =>  clk_ad,
CLK_OUT1    =>  clk_main,
RESET       =>  '0'
);

inst_ad_in_clk : ad_in_clk
port map(
clk_in      =>  ad_clk_in,
CLK_OUT1    =>  dclk,
RESET       =>  '0'
);
    
clk_ad_out <= clk_main;
dclk_out <= dclk;
 
adc_data_out : process(dclk,rst)
begin
    if rising_edge(dclk) then
        if rst = '1' then
            AD_DA_OUT <= (others => '0');
            AD_DB_OUT <= (others => '0');
        else
            AD_DA_OUT <= AD_DA_OUT_temp;
            AD_DB_OUT <= AD_DB_OUT_temp;
        end if;
        AD_DA_temp <= AD_DA;
        AD_DB_temp <= AD_DB; 
        AD_DA_OUT_temp <= AD_DA_temp ;       
        AD_DB_OUT_temp <= AD_DB_temp ;   
     
    end if;
end process;
   
end Behavioral;
