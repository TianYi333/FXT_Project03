----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2025/05/16 13:58:44
-- Design Name: 
-- Module Name: axi4_2_gmii - Behavioral
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity axi4_2_gmii is
  Port (
  clk_in                        : in std_logic;
  rst                           : in std_logic;
  -- in
  reg0                          : in std_logic_vector(31 downto 0);
  reg1                          : in std_logic_vector(31 downto 0);
  reg2                          : in std_logic_vector(31 downto 0);
  reg3                          : in std_logic_vector(31 downto 0);
  reg4                          : in std_logic_vector(31 downto 0);
  reg5                          : in std_logic_vector(31 downto 0);
  reg6                          : in std_logic_vector(31 downto 0);
  reg7                          : in std_logic_vector(31 downto 0);
  reg8                          : in std_logic_vector(31 downto 0);
  reg9                          : in std_logic_vector(31 downto 0);
  reg10                         : in std_logic_vector(31 downto 0);
  reg11                         : in std_logic_vector(31 downto 0);
  reg12                         : in std_logic_vector(31 downto 0);
  reg13                         : in std_logic_vector(31 downto 0);
  reg14                         : in std_logic_vector(31 downto 0);
  reg15                         : in std_logic_vector(31 downto 0);
  -- out
  reg16                         : out std_logic_vector(31 downto 0);
  reg17                         : out std_logic_vector(31 downto 0);
  reg18                         : out std_logic_vector(31 downto 0);
  reg19                         : out std_logic_vector(31 downto 0);
  reg20                         : out std_logic_vector(31 downto 0);
  reg21                         : out std_logic_vector(31 downto 0);
  reg22                         : out std_logic_vector(31 downto 0);
  reg23                         : out std_logic_vector(31 downto 0);
  reg24                         : out std_logic_vector(31 downto 0);
  reg25                         : out std_logic_vector(31 downto 0);
  reg26                         : out std_logic_vector(31 downto 0);
  reg27                         : out std_logic_vector(31 downto 0);
  reg28                         : out std_logic_vector(31 downto 0);
  reg29                         : out std_logic_vector(31 downto 0);
  reg30                         : out std_logic_vector(31 downto 0);
  reg31                         : out std_logic_vector(31 downto 0);
  ---- rx cmd_type
  rx_cmd                        : out std_logic_vector(15 downto 0);
  rx_cmd_valid                  : out std_logic;
  ---- cmd in
  tx_cmd                        : in  std_logic_vector(15 downto 0);
  tx_cmd_valid                  : in  std_logic;    
  -- rx cmd data
  rx_data_valid                 : out  std_logic;
  rx_data_last                  : out  std_logic;
  rx_data_data                  : out  std_logic_vector(7 downto 0);
  -- tx data
  tx_data_valid                 : in std_logic:='0';
  tx_data_last                  : in std_logic:='0';
  tx_data_data                  : in std_logic_vector(7 downto 0):=(others => '0')          
   );
end axi4_2_gmii;

architecture Behavioral of axi4_2_gmii is

signal      state_rx      : std_logic_vector(3 downto 0):=(others => '0');
signal      state_tx      : std_logic_vector(3 downto 0):=(others => '0');
signal      rx_index      : integer:=0;
signal      tx_index      : integer:=0;

type    array_8_64 is array(63 downto 0) of std_logic_vector(7 downto 0);
signal      rx_array    : array_8_64:=(others => ((others => '0')));
signal      tx_array    : array_8_64:=(others => ((others => '0')));
signal      work_cnt    : std_logic_vector(31 downto 0):=(others => '0');
signal      work_cnt1   : std_logic_vector(31 downto 0):=(others => '0');
signal      work_cnt_temp   : std_logic_vector(31 downto 0):=(others => '0');

signal      tx_data_valid1 :  std_logic:='0';
signal      tx_data_last1  :  std_logic:='0';
signal      tx_data_data1  :  std_logic_vector(7 downto 0):=(others => '0');
  
begin

process(clk_in)
begin
if rising_edge(clk_in)  then
    work_cnt <= rx_array(0)&rx_array(1)&rx_array(2)&rx_array(3);
    work_cnt1 <= work_cnt;
    case    state_rx    is
        when    X"0"    =>
            if work_cnt1 /= work_cnt then
                work_cnt_temp <= work_cnt;
                state_rx <= state_rx + '1';
                rx_cmd_valid <= '1';
                rx_cmd <= rx_array(4) & rx_array(5);
            end if;
            rx_index <= 6;
        when    X"1"    =>
            rx_cmd_valid <= '0';
            rx_data_data <= rx_array(rx_index);
            rx_data_valid <= '1';
            if rx_index < 63 then
                rx_index <= rx_index + 1;                
                rx_data_last <= '0';                
            else
                rx_data_last <= '1';                 
                rx_index <= 4;
                state_rx <= state_rx + '1';
            end if;
        when    X"2"    =>
            rx_data_data <= (others => '0');
            rx_data_valid <= '0';
            rx_data_last <= '0';
            state_rx <= (others => '0');
        when    others  =>
            state_rx <= (others => '0');
    end case;    
end if;
end process;

process(clk_in)
begin
if rising_edge(clk_in)  then
    tx_data_valid1  <= tx_data_valid;
    tx_data_last1   <= tx_data_last ;
    tx_data_data1   <= tx_data_data ;
    case    state_tx is
        when    X"0"    =>
            if tx_data_valid1 = '0' and tx_data_valid = '1' then
                state_tx <= state_tx + '1';
                tx_array(4) <= tx_cmd(15 downto 8);
                tx_array(5) <= tx_cmd(7 downto 0);
                tx_index <= 6;
            end if;
        when    X"1"    =>
            if tx_data_valid1 = '1' then
                tx_array(tx_index) <= tx_data_data1;
                if tx_index < 63 then
                    tx_index <= tx_index + 1;
                end if;
                if tx_data_last1 = '1'  then
                    state_tx <= state_tx + '1';
                end if;                   
            end if;
        when    X"2"    =>
            tx_array(0) <= work_cnt_temp(31 downto 24);
            tx_array(1) <= work_cnt_temp(23 downto 16);
            tx_array(2) <= work_cnt_temp(15 downto 8);
            tx_array(3) <= work_cnt_temp(7 downto 0);
            state_tx <= X"0";
        when    others  =>
            state_tx <= X"0";
    end case;
end if;
end process;

process(clk_in)
begin
if rising_edge(clk_in)  then
     rx_array(0) <= reg0(31 downto 24);
     rx_array(1) <= reg0(23 downto 16);
     rx_array(2) <= reg0(15 downto 8);
     rx_array(3) <= reg0(7 downto 0);
     
     rx_array(4) <= reg1(31 downto 24);
     rx_array(5) <= reg1(23 downto 16);
     rx_array(6) <= reg1(15 downto 8);
     rx_array(7) <= reg1(7 downto 0);
     
     rx_array(8) <= reg2(31 downto 24);
     rx_array(9) <= reg2(23 downto 16);
     rx_array(10) <= reg2(15 downto 8);
     rx_array(11) <= reg2(7 downto 0);
     
     rx_array(12) <= reg3(31 downto 24);
     rx_array(13) <= reg3(23 downto 16);
     rx_array(14) <= reg3(15 downto 8);
     rx_array(15) <= reg3(7 downto 0);
     
     rx_array(16) <= reg4(31 downto 24);
     rx_array(17) <= reg4(23 downto 16);
     rx_array(18) <= reg4(15 downto 8);
     rx_array(19) <= reg4(7 downto 0);
     
     rx_array(20) <= reg5(31 downto 24);
     rx_array(21) <= reg5(23 downto 16);
     rx_array(22) <= reg5(15 downto 8);
     rx_array(23) <= reg5(7 downto 0);
     
     rx_array(24) <= reg6(31 downto 24);
     rx_array(25) <= reg6(23 downto 16);
     rx_array(26) <= reg6(15 downto 8);
     rx_array(27) <= reg6(7 downto 0);
     
     rx_array(28) <= reg7(31 downto 24);
     rx_array(29) <= reg7(23 downto 16);
     rx_array(30) <= reg7(15 downto 8);
     rx_array(31) <= reg7(7 downto 0);
     
     rx_array(32) <= reg8(31 downto 24);
     rx_array(33) <= reg8(23 downto 16);
     rx_array(34) <= reg8(15 downto 8);
     rx_array(35) <= reg8(7 downto 0);
     
     rx_array(36) <= reg9(31 downto 24);
     rx_array(37) <= reg9(23 downto 16);
     rx_array(38) <= reg9(15 downto 8);
     rx_array(39) <= reg9(7 downto 0);
     
     rx_array(40) <= reg10(31 downto 24);
     rx_array(41) <= reg10(23 downto 16);
     rx_array(42) <= reg10(15 downto 8);
     rx_array(43) <= reg10(7 downto 0);  
        
     rx_array(44) <= reg11(31 downto 24);
     rx_array(45) <= reg11(23 downto 16);
     rx_array(46) <= reg11(15 downto 8);
     rx_array(47) <= reg11(7 downto 0);
     
     rx_array(48) <= reg12(31 downto 24);
     rx_array(49) <= reg12(23 downto 16);
     rx_array(50) <= reg12(15 downto 8);
     rx_array(51) <= reg12(7 downto 0);
     
     rx_array(52) <= reg13(31 downto 24);
     rx_array(53) <= reg13(23 downto 16);
     rx_array(54) <= reg13(15 downto 8);
     rx_array(55) <= reg13(7 downto 0);
     
     rx_array(56) <= reg14(31 downto 24);
     rx_array(57) <= reg14(23 downto 16);
     rx_array(58) <= reg14(15 downto 8);
     rx_array(59) <= reg14(7 downto 0);
     
     rx_array(60) <= reg15(31 downto 24);
     rx_array(61) <= reg15(23 downto 16);
     rx_array(62) <= reg15(15 downto 8);
     rx_array(63) <= reg15(7 downto 0);
     
     -- tx array     
     reg16(31 downto 24) <= tx_array(0);
     reg16(23 downto 16) <= tx_array(1);
     reg16(15 downto 8)  <= tx_array(2);
     reg16(7 downto 0)   <= tx_array(3);
                           
     reg17(31 downto 24) <= tx_array(4);
     reg17(23 downto 16) <= tx_array(5);
     reg17(15 downto 8)  <= tx_array(6);
     reg17(7 downto 0)   <= tx_array(7);
     
     reg18(31 downto 24) <= tx_array(8);
     reg18(23 downto 16) <= tx_array(9);
     reg18(15 downto 8)  <= tx_array(10);
     reg18(7 downto 0)   <= tx_array(11);
                           
     reg19(31 downto 24) <= tx_array(12);
     reg19(23 downto 16) <= tx_array(13);
     reg19(15 downto 8)  <= tx_array(14);
     reg19(7 downto 0)   <= tx_array(15);
     
     reg20(31 downto 24) <= tx_array(16);
     reg20(23 downto 16) <= tx_array(17);
     reg20(15 downto 8)  <= tx_array(18);
     reg20(7 downto 0)   <= tx_array(19);
                           
     reg21(31 downto 24) <= tx_array(20);
     reg21(23 downto 16) <= tx_array(21);
     reg21(15 downto 8)  <= tx_array(22);
     reg21(7 downto 0)   <= tx_array(23);
     
     reg22(31 downto 24) <= tx_array(24);
     reg22(23 downto 16) <= tx_array(25);
     reg22(15 downto 8)  <= tx_array(26);
     reg22(7 downto 0)   <= tx_array(27);
                           
     reg23(31 downto 24) <= tx_array(28);
     reg23(23 downto 16) <= tx_array(29);
     reg23(15 downto 8)  <= tx_array(30);
     reg23(7 downto 0)   <= tx_array(31);
     
     reg24(31 downto 24) <= tx_array(32);
     reg24(23 downto 16) <= tx_array(33);
     reg24(15 downto 8)  <= tx_array(34);
     reg24(7 downto 0)   <= tx_array(35);
                           
     reg25(31 downto 24) <= tx_array(36);
     reg25(23 downto 16) <= tx_array(37);
     reg25(15 downto 8)  <= tx_array(38);
     reg25(7 downto 0)   <= tx_array(39);
     
     reg26(31 downto 24) <= tx_array(40);
     reg26(23 downto 16) <= tx_array(41);
     reg26(15 downto 8)  <= tx_array(42);
     reg26(7 downto 0)   <= tx_array(43);
                           
     reg27(31 downto 24) <= tx_array(44);
     reg27(23 downto 16) <= tx_array(45);
     reg27(15 downto 8)  <= tx_array(46);
     reg27(7 downto 0)   <= tx_array(47);
     
     reg28(31 downto 24) <= tx_array(48);
     reg28(23 downto 16) <= tx_array(49);
     reg28(15 downto 8)  <= tx_array(50);
     reg28(7 downto 0)   <= tx_array(51);
                           
     reg29(31 downto 24) <= tx_array(52);
     reg29(23 downto 16) <= tx_array(53);
     reg29(15 downto 8)  <= tx_array(54);
     reg29(7 downto 0)   <= tx_array(55);
     
     reg30(31 downto 24) <= tx_array(56);
     reg30(23 downto 16) <= tx_array(57);
     reg30(15 downto 8)  <= tx_array(58);
     reg30(7 downto 0)   <= tx_array(59);
                           
     reg31(31 downto 24) <= tx_array(60);
     reg31(23 downto 16) <= tx_array(61);
     reg31(15 downto 8)  <= tx_array(62);
     reg31(7 downto 0)   <= tx_array(63);
     
end if;
end process;

end Behavioral;
