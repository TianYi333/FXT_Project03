----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2025/09/02 14:40:01
-- Design Name: 
-- Module Name: ad_ctrl - Behavioral
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

use work.reg_pkg.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ad_ctrl is
generic(
--    samp_p_8000             :   std_logic_vector(15 downto 0) := X"1F40";
--    samp_p_20000            :   std_logic_vector(15 downto 0) := X"4E20";
--    samp_p_40000            :   std_logic_vector(15 downto 0) := X"9C40";   
    array_num               :   integer:=11;
    reg_num                 :   integer :=46 - 1 
);
port(  
     clk_ad               :     in   std_logic;
--     ps_clk               :     in   std_logic;  
     triger_in_pos        :     in   std_logic;
     triger_in_tr         :     in   std_logic;
     rst                  :     in   std_logic;
  
     rx_cmd2              :     in   std_logic_vector(15 downto 0):= X"0000";
     rx_cmd_valid2        :     in   std_logic :='0'; 
    
     rx_data_valid2       :     in   std_logic :='0';
     rx_data_last2        :     in   std_logic :='0';
     rx_data_data2        :     in   std_logic_vector(7 downto 0):= (others => '0');
     
     tx_cmd1              :     out  std_logic_vector(15 downto 0):= X"0000";
     tx_cmd_valid1        :     out  std_logic :='0'; 
     
     tx_data_valid1       :     out  std_logic :='0';
     tx_data_last1        :     out  std_logic :='0';
     tx_data_data1        :     out  std_logic_vector(7 downto 0):= (others => '0');

     -- log data
     log_data             :     out  std_logic_vector(15 downto 0);
     log_data_valid       :     out  std_logic;
     
     ad_clk_in            :     in   std_logic;
     AD_DA                :     in   std_logic_vector(13 downto 0);
     AD_DB                :     in   std_logic_vector(13 downto 0);
     
--     reg_10_samp_points_type     :    in   std_logic_vector(7 downto 0) := X"14";   ---20
--     reg_11_samp_triger_cnt      :    in   std_logic_vector(15 downto 0) := X"1000";   ---4096;
     
     clk_ad_out           :     out  std_logic;
     dclk_out_temp        :     out  std_logic;
     sample_valid_temp    :     out  std_logic;
     sample_last_temp     :     out  std_logic;
     ad_data_out          :     out  std_logic_vector(13 downto 0);
    
     AD_SEN               :     out  STD_LOGIC :='1';        --0 in parallel mode          
     AD_SDATA             :     out  STD_LOGIC :='0';        --0 in parallel mode          
     AD_SCLK              :     out  STD_LOGIC :='0';        --0 in parallel mode          
     AD_RESET             :     out  STD_LOGIC :='1';        --parallel configuration      
     AD_CTRL1             :     out  std_logic :='0';                                      
     AD_CTRL2             :     out  std_logic :='0';                                      
     AD_CTRL3             :     out  std_logic :='0'                                       
);
end ad_ctrl;

architecture Behavioral of ad_ctrl is
component  ads62p45 
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
end component;
signal    dclk_out            :    std_logic;
signal    AD_DA_OUT_temp      :    std_logic_vector(13 downto 0);
signal    AD_DB_OUT_temp      :    std_logic_vector(13 downto 0);
signal    ad_data             :    std_logic_vector(13 downto 0);

signal    triger_in_pos_temp   :    std_logic :='0';
signal    triger_in_pos_temp1  :    std_logic :='0';
signal    triger_in_tr_temp    :    std_logic :='0';

signal    sample_valid             :    std_logic := '0';
signal    sample_last              :    std_logic := '0';
signal    samp_point               :    std_logic_vector(15 downto 0):= (others => '0') ;
signal    samp_point_temp          :    std_logic_vector(15 downto 0):= (others => '0') ;
signal    samp_triger_cnt          :    std_logic_vector(23 downto 0):= (others => '0') ;

--signal    samp_point               :    std_logic_vector(15 downto 0):= samp_p_8000 ;

--signal    reg_00_samp_points_type  :    std_logic_vector(7 downto 0) := X"02";
signal    reg_01_samp_delay        :    std_logic_vector(7 downto 0) := X"00";
signal    reg_02_samp_channel      :    std_logic_vector(7 downto 0) := X"1A"; 
signal    reg_03_ad_data_type      :    std_logic_vector(7 downto 0) := X"00"; 
constant  samp_time_low            :    std_logic_vector(7 downto 0) := X"14"; -- 20
constant  samp_time_high           :    std_logic_vector(7 downto 0) := X"C8"; -- 200
constant  clock_freq               :    std_logic_vector(7 downto 0):= X"28";  --40

signal    pre_state                :    std_logic_vector(3 downto 0):=(others => '0');
signal    state_sample_ctrl        :    std_logic_vector(3 downto 0):=(others => '0');
signal    sample_cnt               :    std_logic_vector(15 downto 0) := X"0000";
signal    sample_delay_cnt         :    std_logic_vector(7 downto 0) := X"00";

signal    test_samp_data           :    std_logic_vector(13 downto 0) :=(others => '0');
signal    test_complete            :    std_logic := '0';
constant  TEST_SAMP                :    integer := 3000; 

component para_check                                                                                                                                                       
  Port (
        rst                    :   in   std_logic;
        clk                    :   in   std_logic;
        rx_cmd2_temp           :   in   std_logic_vector(15 downto 0):= X"0000";  
        rx_cmd_valid2_temp     :   in   std_logic :='0';                          
        -- rx cmd 
        rx_data_valid2_temp    :   in   std_logic;
        rx_data_last2_temp     :   in   std_logic;
        rx_data_data2_temp     :   in   std_logic_vector(7 downto 0);
    
        tx_cmd1_temp           :   out  std_logic_vector(15 downto 0):= X"0000";       
        tx_cmd_valid1_temp     :   out  std_logic :='0';                              
        -- tx 
        tx_data_valid1_temp    :   out  std_logic;
        tx_data_last1_temp     :   out  std_logic;
        tx_data_data1_temp     :   out  std_logic_vector(7 downto 0);
        -- reg
        reg_out                :   out  reg_array;
        reg_out_valid          :   out  std_logic:='0'          
   );
end component;                            
signal    reg_out                  :    reg_array := (others => (others => '0'));
signal    reg_out_valid            :    std_logic :='0'; 

type    reg_array_num    is array(0 to array_num) of std_logic_vector(7 downto 0);
signal      rx_reg_out             :   reg_array_num:=(others => (others => '0'));
signal      rx_reg_out_temp        :   reg_array_num:=(others => (others => '0'));
signal      rx_reg_out_valid       :   std_logic :='0'; 
signal      tx_array_temp          :   reg_array_num:=(others => (others => '0'));           

-------- AA05 signals ---------------------------------------
signal      state_log              :  std_logic_vector(3 downto 0):=(others => '0');
signal      log_data_temp          :  std_logic_vector(15 downto 0):=(others => '0');
signal      log_data_valid_temp    :  std_logic:='0';
signal      log_triger_cnt         :  std_logic_vector(31 downto 0):=(others => '0');
signal      log_triger_timer       :  std_logic_vector(31 downto 0):=(others => '0');
signal      log_triger_timer_temp  :  std_logic_vector(31 downto 0):=(others => '0');
signal      us_cnt                 :  std_logic_vector(7 downto 0):=(others => '0');
signal      us_clk                 :  std_logic:='0';
signal      us_clk1                :  std_logic:='0';
constant    us_40                  :  std_logic_vector(7 downto 0):=X"28";
---------------------------------------
signal   reg_10_samp_points_type     :       std_logic_vector(7 downto 0) := X"14";   ---20             
signal   reg_11_samp_triger_cnt      :       std_logic_vector(23 downto 0);                              
--COMPONENT ila_0

--PORT (
--	clk : IN STD_LOGIC;

--	probe0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0); 
--	probe1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
--	probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--	probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
--);
--END COMPONENT  ;

begin
--inst_ila : ila_0
--PORT MAP (
--	clk => dclk_out,

--	probe0    => rx_cmd2, 
--	probe1    => state_sample_ctrl, 
--	probe2(0) => triger_in_tr,
--	probe3(0) => triger_in_pos
--);

inst_para_dclk_out : para_check
port map(
    rst                        =>       rst              ,
    clk                        =>       dclk_out         ,
    rx_cmd2_temp               =>       rx_cmd2          ,
    rx_cmd_valid2_temp         =>       rx_cmd_valid2    ,
    -- rx cmd data        
    rx_data_valid2_temp        =>       rx_data_valid2   ,
    rx_data_last2_temp         =>       rx_data_last2    ,
    rx_data_data2_temp         =>       rx_data_data2    ,

    tx_cmd1_temp               =>       tx_cmd1          ,
    tx_cmd_valid1_temp         =>       tx_cmd_valid1    ,
    -- tx data            
    tx_data_valid1_temp        =>       tx_data_valid1   ,
    tx_data_last1_temp         =>       tx_data_last1    ,
    tx_data_data1_temp         =>       tx_data_data1    ,
    -- reg out            
    reg_out                    =>       reg_out          ,
    reg_out_valid              =>       reg_out_valid    
    
);
process(dclk_out)
begin
if rising_edge(dclk_out) then
    if reg_out_valid = '1' and rx_cmd2 = X"AA01" then         
--        reg_00_samp_points_type <= reg_out(0);
        reg_01_samp_delay <= reg_out(0);
        reg_02_samp_channel <= reg_out(1);
        reg_03_ad_data_type <= reg_out(2);
    end if;
end if;
end process;


--process(dclk_out)                             
--begin                                         
--    if rising_edge(dclk_out) then             
--        case  reg_00_samp_points_type  is     
--            when   X"00"  =>                  
--                samp_point <= samp_p_8000 ;   
--            when   X"01"  =>                  
--                samp_point <= samp_p_20000;   
--            when   X"02"  =>                  
--                samp_point <= samp_p_40000;   
--            when  others  =>                  
--                samp_point <= samp_p_8000;    
--        end case;                             
--    end if;                                   
--end process;                                  
process(dclk_out)                                             
    variable samp_time_data : std_logic_vector(7 downto 0);
    variable triger_cnt_data : std_logic_vector(23 downto 0);
begin                                                         
if rising_edge(dclk_out) then                                 
    if reg_out_valid = '1' and rx_cmd2 = X"AA06" then            
        samp_time_data := reg_out(0);
        if samp_time_data >= samp_time_low and samp_time_data <= samp_time_high then
            reg_10_samp_points_type <= samp_time_data;
        else
            reg_10_samp_points_type <= samp_time_low;
        end if;
       
        triger_cnt_data := reg_out(1) & reg_out(2) & reg_out(3);
        reg_11_samp_triger_cnt <= triger_cnt_data;        
                
    end if;                                                   
end if;                                                       
end process;

samp_point_temp <= reg_10_samp_points_type * clock_freq; 

process(dclk_out)
begin
    if rising_edge(dclk_out) then 
        triger_in_pos_temp <= triger_in_pos;
        triger_in_pos_temp1 <= triger_in_pos_temp;
--        triger_in_tr_temp <= triger_in_tr;
        if rst = '1' or (rx_cmd2 = X"AA5E" and rx_cmd_valid2 = '1')then 
            state_sample_ctrl <= X"6"; 
        else    
            case state_sample_ctrl is
                when   X"0"  =>
                    if rx_cmd_valid2 = '1' and rx_cmd2 = X"AA04" then
                        state_sample_ctrl <= state_sample_ctrl + '1';
                    end if;
                when   X"1"  =>  
                    if triger_in_pos_temp1 = '1' and triger_in_pos_temp ='0' then   --射频触发,对应TRIG_1，为M14
                        state_sample_ctrl <= state_sample_ctrl + '1';
                    end if;
                when   X"2"  =>     
                    if samp_triger_cnt < reg_11_samp_triger_cnt then
                        samp_triger_cnt <= samp_triger_cnt + 1;
                        state_sample_ctrl <= state_sample_ctrl + '1';
                    else
                        samp_triger_cnt <= (others=> '0');
                        state_sample_ctrl <= X"0";
                    end if;
                when   X"3"  =>
                    if sample_delay_cnt < reg_01_samp_delay + X"16" then    --延时22个周期
                        sample_delay_cnt <= sample_delay_cnt + '1';
                    else
                        sample_delay_cnt <= (others => '0');
                        state_sample_ctrl <= state_sample_ctrl + '1';
                    end if;
                when   X"4"  => 
--                    if reg_10_samp_points_type >= samp_time_low and reg_10_samp_points_type <= samp_time_high then
                        samp_point <= samp_point_temp;
                        state_sample_ctrl <= state_sample_ctrl + '1';
--                    else
--                        samp_point <= (others => '0'); 
--                        state_sample_ctrl <= X"6";
--                    end if;
                when   X"5"  => 
                    if sample_cnt <= samp_point - '1' then
                        sample_cnt <= sample_cnt + '1';   
                        sample_valid <= '1';
                        sample_last  <= '0';
                    else
                        sample_cnt <= (others=> '0');
                        sample_valid <= '0';
                        sample_last  <= '0';
                        state_sample_ctrl <= X"1";
                    end if;
                when   X"6"  => 
                    state_sample_ctrl <= X"0"; 
                    samp_triger_cnt <= (others=> '0');
                    sample_delay_cnt <= (others => '0');
                    sample_cnt <= (others=> '0');
                    samp_point <= (others => '0');
                    sample_valid <= '0';
                    sample_last  <= '0';         
                when  others =>
                    state_sample_ctrl <= X"6";
            end case;
        end if;
    end if;
end process;

--sample_valid_temp <= sample_valid;
--sample_last_temp  <= sample_last; 

process(dclk_out)
begin 
    if rising_edge(dclk_out) then 
        case  reg_02_samp_channel  is
            when   X"1A"  =>
                ad_data <= AD_DA_OUT_temp;
            when   X"1B"  =>
                ad_data <= AD_DB_OUT_temp;
            when  others  =>
                ad_data <= AD_DA_OUT_temp;
        end case;
    end if;
end process;
choose_ad_data : process(dclk_out)
begin
    if rising_edge(dclk_out) then
        ad_data_out <= (others => '0');
        sample_valid_temp <= sample_valid;
        sample_last_temp  <= sample_last;                   
        case  reg_03_ad_data_type is
            when   X"00"  => 
                ad_data_out <= ad_data;   
            when   X"01"  => 
                ad_data_out <= test_samp_data;
            when others  =>
                ad_data_out <= (others => '0'); 
        end case;
    end if;
end process; 

test_data_out : process(dclk_out)
begin
    if rising_edge(dclk_out) then
        if rst = '1' or (rx_cmd2 = X"AA5E" and rx_cmd_valid2 = '1') then 
            test_samp_data <= (others => '0'); 
            test_complete <= '0'; 
        else
            if sample_valid = '1' then
                if test_samp_data < TEST_SAMP - 1 then
                    test_samp_data <= test_samp_data + '1';
                else
                    test_samp_data <= (others => '0');
                end if;
                if sample_last = '0' then
                    test_complete <= '0';
                else
                    test_complete <= '1';
                end if; 
            end if;  
        end if;
    end if; 
end process;                                   
               
inst_ads62p45 : ads62p45
    port map(
        clk_ad         =>     clk_ad      ,
        rst            =>     '0'         ,
        ad_clk_in      =>     ad_clk_in   ,
        AD_DA          =>     AD_DA       ,
        AD_DB          =>     AD_DB       ,
        
        clk_ad_out     =>     clk_ad_out  ,
        dclk_out       =>     dclk_out    ,
        AD_DA_OUT      =>     AD_DA_OUT_temp,  
        AD_DB_OUT      =>     AD_DB_OUT_temp  
);
dclk_out_temp <= dclk_out; 

------------------log data gen -------------------------------------------------
process(dclk_out)
begin
if rising_edge(dclk_out) then
    log_data <= log_data_temp;
    log_data_valid <= log_data_valid_temp;
end if;
end process;

state_log_gen : process(dclk_out)
begin
if rising_edge(dclk_out) then
    if rst = '1' or (rx_cmd2 = X"AA5E" and rx_cmd_valid2 = '1') then 
        state_log <= X"0";
        log_triger_cnt <= (others => '0');        
    else
        case state_log is
            when    X"0"    =>      -- wait state_sample_ctrl catch triger
                if state_sample_ctrl = X"3" then
                    state_log <= state_log + '1';
                end if;
            when    X"1"    =>      -- log timer                 
                log_triger_timer_temp <= log_triger_timer;
                state_log <= state_log + '1';
            when    X"2"    =>      -- trans log data                
                log_data_temp <= log_triger_cnt(31 downto 16);
                log_data_valid_temp <= '1';
                state_log <= state_log + '1';
            when    X"3"    =>
                log_data_temp <= log_triger_cnt(15 downto 0);
                state_log <= state_log + '1';
                log_triger_cnt <= log_triger_cnt + '1';
            when    X"4"    =>
                log_data_temp <= log_triger_timer_temp(31 downto 16);
                state_log <= state_log + '1';
            when    X"5"    =>
                log_data_temp <= log_triger_timer_temp(15 downto 0);
                state_log <= state_log + '1';            
            when    X"6"    =>
                log_data_temp <= (others => '0');
                log_data_valid_temp <= '0';
                state_log <= state_log + '1';   
            when    X"7"    =>  -- make sure state_sample_ctrl has left X"3"
                if state_sample_ctrl /= X"3" then
                    state_log <= X"0";
                end if;                              
            when    others  =>
                state_log <= X"0";
        end case;
    end if;
end if;
end process;

timer_gen : process(dclk_out)  -- timer cnt by us
begin
if rising_edge(dclk_out) then
    if rx_cmd2 = X"AA04" and rx_cmd_valid2 = '1' then 
        log_triger_timer <= (others => '0');
    else
        if us_clk1 /= us_clk then
            log_triger_timer <= log_triger_timer + '1';
        end if;
    end if;
end if;
end process;

us_gen : process(dclk_out)      -- 40MHz 25ns   1us = 40*25ns
begin
if rising_edge(dclk_out) then
    us_clk1 <= us_clk;
    if us_cnt < us_40 - '1' then
        us_cnt <= us_cnt + '1';        
    else
        us_cnt <= (others => '0');
        us_clk <= not us_clk;
    end if;
end if;
end process;

end Behavioral;                                                                                          
                                                                                                                                                                                                                              