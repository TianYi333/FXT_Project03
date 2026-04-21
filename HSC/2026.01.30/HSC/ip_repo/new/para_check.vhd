----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2025/12/25 16:33:04
-- Design Name: 
-- Module Name: para_check - Behavioral
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
use ieee.numeric_std.all;       
use ieee.std_logic_unsigned.all;
package reg_pkg is
    type reg_array is array(0 to 45) of std_logic_vector(7 downto 0);
end package reg_pkg;

library IEEE;                   
use IEEE.STD_LOGIC_1164.ALL;    
use ieee.numeric_std.all;       
use ieee.std_logic_unsigned.all;
use work.reg_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity para_check is
generic(                                                                                                                                                                  
    CC01_regs_project       :   std_logic_vector(31 downto 0):=X"4853_4350"; -- 项目号"HSCP"                                 
    CC01_regs_year_month    :   std_logic_vector(31 downto 0):=X"2026_0106"; -- 版本日期                                      
    CC01_regs_sub_version   :   std_logic_vector(31 downto 0):=X"0000_0006";  -- 版本号                                      
    array_num               :   integer:=11;                                                                              
    reg_num                 :   integer :=46 - 1                                                                          
);                                                                                                                        
  Port (
        rst                            :   in   std_logic;
        clk                            :   in   std_logic;
        rx_cmd2_temp                   :   in   std_logic_vector(15 downto 0):= X"0000";  
        rx_cmd_valid2_temp             :   in   std_logic :='0';                          
        -- rx cmd data
        rx_data_valid2_temp             :  in   std_logic;
        rx_data_last2_temp              :  in   std_logic;
        rx_data_data2_temp              :  in   std_logic_vector(7 downto 0);
        
        tx_cmd1_temp                    :  out  std_logic_vector(15 downto 0):= X"0000";       
        tx_cmd_valid1_temp              :  out  std_logic :='0';                              
        -- tx data
        tx_data_valid1_temp             :  out  std_logic;
        tx_data_last1_temp              :  out  std_logic;
        tx_data_data1_temp              :  out  std_logic_vector(7 downto 0);
        -- reg out
        reg_out                         :  out  reg_array;
        reg_out_valid                   :  out  std_logic:='0'          
   );
end para_check;

architecture Behavioral of para_check is
signal    rx_data_valid2_temp1      :    std_logic :='0';                                     
signal    rx_data_last2_temp1       :    std_logic :='0';                                     
signal    rx_data_data2_temp1       :    std_logic_vector(7 downto 0):= (others => '0');      
                                                                                             
signal    tx_data_valid1_temp1      :    std_logic :='0';                                     
signal    tx_data_last1_temp1       :    std_logic :='0';                                     
signal    tx_data_data1_temp1       :    std_logic_vector(7 downto 0):= (others => '0');      
                                                                                             
signal    state_main             :    std_logic_vector(3 downto 0):= X"0";                   
signal    state_tx               :    std_logic_vector(3 downto 0):= X"0";                   
signal    rx_index               :    integer := 0;                                          
signal    tx_index               :    integer := 0;                                                                                 
                                                                                                                                 
--type      reg_array  is array(0 to 45) of std_logic_vector(7 downto 0);                      
signal    reg_out_temp             :    reg_array := (others => (others => '0'));            
--signal    reg_out                  :    reg_array := (others => (others => '0'));                                               
                                                                                             
type    reg_array_num    is array(0 to array_num) of std_logic_vector(7 downto 0);           
signal      rx_reg_out               :   reg_array_num:=(others => (others => '0'));         
signal      rx_reg_out_temp          :   reg_array_num:=(others => (others => '0'));         
signal      rx_reg_out_valid         :   std_logic :='0';                                    
signal      tx_array_temp            :   reg_array_num:=(others => (others => '0'));         
                                                                                             
                                                                                            
begin
process(clk)                                                                                                                                  
begin                                                                                                                                              
    if rising_edge(clk) then                                                                                                                  
        rx_data_valid2_temp1   <=  rx_data_valid2_temp;                                                                                                  
        rx_data_last2_temp1    <=  rx_data_last2_temp ;                                                                                                  
        rx_data_data2_temp1    <=  rx_data_data2_temp ;                                                                                                  
        if rst = '1' then                                                                                                                          
            state_main <= X"0";                                                                                                                    
        else                                                                                                                                       
            case  state_main  is                                                                                                                   
                when   X"0"  =>                                                                                                                    
                    rx_index <= 0;                                                                                                                 
                    reg_out_valid <= '0';                                                                                                          
                    if rx_data_valid2_temp1  = '0' and rx_data_valid2_temp = '1' then                                                                    
--                        if rx_cmd2 = X"AA01" then                                                                                                
--                            state_main <= state_main + '1';                                                                                      
--                        end if;                                                                                                                  
                        case rx_cmd2_temp is                                                                                                            
                        when  X"CC01" =>                                                                                                           
                            state_main <= X"3";                                                                                                    
                        when  others =>                                                                                                            
                            state_main <= state_main + '1';                                                                                        
                        end case;                                                                                                                  
                    end if;                                                                                                                        
                when   X"1"  =>                                                                                                                    
                    if rx_data_valid2_temp1  = '1' then                                                                                             
                        if rx_index < reg_num then                                                                                                 
                            rx_index <= rx_index + 1;                                                                                              
                            reg_out_temp(rx_index) <= rx_data_data2_temp1;                                                                          
                        end if;                                                                                                                    
                        if rx_data_last2_temp1 = '1' then                                                                                           
                            state_main <= X"2";                                                                                                    
                        end if;                                                                                                                    
                    end if;                                                                                                                        
                when   X"2"  =>                                                                                                                    
                    reg_out <= reg_out_temp;                                                                                                       
                    reg_out_valid <= '1';                                                                                                          
                    state_main <= X"0";                                                                                                            
                when   X"3" =>                                                                                                                     
                    if rx_data_valid2_temp1  = '1' then                                                                                             
                        if rx_index < array_num then                                                                                               
                            rx_index <= rx_index + 1;                                                                                              
                            rx_reg_out_temp(rx_index) <= rx_data_data2_temp1;                                                                       
                        end if;                                                                                                                    
                        if rx_data_last2_temp1 = '1' then                                                                                           
                            state_main <= X"4";                                                                                                    
                        end if;                                                                                                                    
                    end if;                                                                                                                        
                when   X"4"  =>                                                                                                                    
                    rx_reg_out <= rx_reg_out_temp;                                                                                                 
                    rx_reg_out_valid <= '1';                                                                                                       
                    state_main <= X"0";                                                                                                            
                when others  =>                                                                                                                    
                    state_main <= X"0";                                                                                                            
            end case;                                                                                                                              
        end if;                                                                                                                                    
    end if;                                                                                                                                        
end process;                                                                                                                                       
                                                                                                                                                   
process(clk)                                                                                                                                  
begin                                                                                                                                              
if rising_edge(clk) then                                                                                                                      
    tx_data_valid1_temp  <=  tx_data_valid1_temp1;                                                                                                       
    tx_data_last1_temp   <=  tx_data_last1_temp1 ;                                                                                                       
    tx_data_data1_temp   <=  tx_data_data1_temp1 ;                                                                                                       
    if rst = '1' then                                                                                                                              
        state_tx <= X"0";                                                                                                                          
    else                                                                                                                                           
        case state_tx is                                                                                                                           
            when  X"0"  =>                                                                                                                         
                tx_data_valid1_temp1 <= '0';                                                                                                        
                tx_data_last1_temp1  <= '0';                                                                                                        
                tx_data_data1_temp1  <= (others => '0');                                                                                            
                tx_cmd1_temp <= (others => '0');                                                                                                        
                tx_cmd_valid1_temp <= '0';                                                                                                              
                tx_index <= 0;                                                                                                                     
                if state_main = X"2" then                                                                                                          
                    state_tx <= X"1";                                                                                                              
                elsif state_main = X"4" then                                                                                                       
                    state_tx <= X"3";                                                                                                              
                end if;                                                                                                                            
            when  X"1"  =>                                                                                                                         
--                if state_main = X"2" then                                                                                                        
                case  rx_cmd2_temp  is                                                                                                                  
                    when  X"AA01" =>                                                                                                               
                        tx_cmd1_temp <= X"AA01";                                                                                                        
                    when  X"AA02" =>                                                                                                               
                        tx_cmd1_temp <= X"AA02";                                                                                                        
                    when  X"AA04" =>                                                                                                               
                        tx_cmd1_temp <= X"AA04";                                                                                                        
                    when  X"AA5E" =>                                                                                                               
                        tx_cmd1_temp <= X"AA5E";                                                                                                        
                   when  others  =>                                                                                                                                                                                                           
                        tx_cmd1_temp  <= X"AAFF";                                                                                                     
                end case;                                                                                                                          
                tx_cmd_valid1_temp <= '1';                                                                                                              
                state_tx <= X"2";                                                                                                                                                                                                                                         
            when  X"2"  =>                                                                                                                         
                tx_cmd_valid1_temp <= '0';                                                                                                              
                tx_data_data1_temp1  <= X"00";                                                                                                      
                tx_data_valid1_temp1 <= '1';                                                                                                        
                tx_data_last1_temp1  <= '1';                                                                                                        
                state_tx <= X"5";                                                                                                                  
            when  X"3"  =>                                                                                                                         
--                if state_main = X"3" then                                                                                                        
                    tx_cmd1_temp <= rx_cmd2_temp;                                                                                                            
                    tx_cmd_valid1_temp <= '1';                                                                                                          
                    for i in 0 to 3 loop                                                                                                           
                        tx_array_temp(i) <= CC01_regs_project(8*(3-i)+7 downto 8*(3-i));                                                           
                        tx_array_temp(4+i) <= CC01_regs_year_month(8*(3-i)+7 downto 8*(3-i));                                                      
                        tx_array_temp(8+i) <= CC01_regs_sub_version(8*(3-i)+7 downto 8*(3-i));                                                     
                    end loop;                                                                                                                      
                    state_tx <= X"4";                                                                                                              
--                end if;                                                                                                                          
            when  X"4"  =>                                                                                                                         
                tx_cmd_valid1_temp <= '0';                                                                                                              
                tx_data_valid1_temp1 <= '1';                                                                                                        
                tx_data_data1_temp1  <= tx_array_temp(tx_index);                                                                                    
                 if tx_index < array_num then                                                                                                      
                     tx_index <= tx_index + 1;                                                                                                     
                 else                                                                                                                              
                     tx_index <= 0;                                                                                                                
                     tx_data_last1_temp1 <= '1';                                                                                                    
                     state_tx <= X"5";                                                                                                             
                 end if;                                                                                                                           
            when  X"5"  =>                                                                                                                         
                tx_data_data1_temp1  <= X"00";                                                                                                      
                tx_data_valid1_temp1 <= '0';                                                                                                        
                tx_data_last1_temp1  <= '0';                                                                                                        
                state_tx <= X"0";                                                                                                                  
            when  others  =>                                                                                                                       
                state_tx <= X"0";                                                                                                                  
        end case;                                                                                                                                  
    end if;                                                                                                                                        
end if;                                                                                                                                            
end process;                                                                                                                                                                                                                                                                                        
end Behavioral;
