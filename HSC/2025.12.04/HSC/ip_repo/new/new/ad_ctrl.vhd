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


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ad_ctrl is
generic(
    samp_p_8000      :   std_logic_vector(15 downto 0) := X"1F40";
    samp_p_20000     :   std_logic_vector(15 downto 0) := X"4E20";
    samp_p_40000     :   std_logic_vector(15 downto 0) := X"9C40";
    CC01_regs_project       : std_logic_vector(31 downto 0):=X"4853_4350"; -- 项目号"HSCP"
    CC01_regs_year_month    : std_logic_vector(31 downto 0):=X"2025_1202"; -- 版本日期
    CC01_regs_sub_version   : std_logic_vector(31 downto 0):=X"0000_0002";  -- 版本号
    array_num               : integer:=11;
    reg_num          :   integer :=46 - 1 
);
port(  
     clk_ad               :     in   std_logic;  
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

     ad_clk_in            :     in   std_logic;
     AD_DA                :     in   std_logic_vector(13 downto 0);
     AD_DB                :     in   std_logic_vector(13 downto 0);
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
signal    rx_data_valid2_temp      :    std_logic :='0';
signal    rx_data_last2_temp       :    std_logic :='0';
signal    rx_data_data2_temp       :    std_logic_vector(7 downto 0):= (others => '0');

signal    tx_data_valid1_temp      :    std_logic :='0';
signal    tx_data_last1_temp       :    std_logic :='0';
signal    tx_data_data1_temp       :    std_logic_vector(7 downto 0):= (others => '0');

signal    state_main             :    std_logic_vector(3 downto 0):= X"0";
signal    state_tx               :    std_logic_vector(3 downto 0):= X"0";
signal    rx_index               :    integer := 0;
signal    tx_index               :    integer := 0;
signal    triger_in_pos_temp     :    std_logic :='0';
signal    triger_in_tr_temp      :    std_logic :='0';

signal    sample_valid             :    std_logic := '0';
signal    sample_last              :    std_logic := '0';
signal    samp_point               :    std_logic_vector(15 downto 0):= samp_p_8000 ;
signal    reg_00_samp_points_type  :    std_logic_vector(7 downto 0) := X"00";
signal    reg_01_samp_delay        :    std_logic_vector(7 downto 0) := X"00";
signal    reg_02_samp_channel      :    std_logic_vector(7 downto 0) := X"1A"; 
signal    reg_03_ad_data_type      :    std_logic_vector(7 downto 0) := X"00"; 

signal    state_sample_ctrl        :    std_logic_vector(3 downto 0):=(others => '0');
signal    sample_cnt               :    std_logic_vector(15 downto 0) := X"0000";
signal    sample_delay_cnt         :    std_logic_vector(7 downto 0) := X"00";

--signal    test_samp_cnt            :    std_logic_vector(15 downto 0) :=(others => '0');
signal    test_samp_data           :    std_logic_vector(13 downto 0) :=(others => '0');
signal    test_complete            :    std_logic := '0';
constant  TEST_SAMP                :    integer := 3000; 

type      reg_array  is array(0 to 45) of std_logic_vector(7 downto 0); 
signal    reg_out_temp             :    reg_array := (others => (others => '0'));                              
signal    reg_out                  :    reg_array := (others => (others => '0'));
signal    reg_out_valid            :    std_logic :='0'; 

type    reg_array_num    is array(0 to array_num) of std_logic_vector(7 downto 0);
signal      rx_reg_out               :   reg_array_num:=(others => (others => '0'));
signal      rx_reg_out_temp          :   reg_array_num:=(others => (others => '0'));
signal      rx_reg_out_valid         :   std_logic :='0'; 
signal      tx_array_temp            :   reg_array_num:=(others => (others => '0'));           

--COMPONENT ila_0

--PORT (
--	clk : IN STD_LOGIC;

--	probe0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0); 
--	probe1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
--	probe2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--	probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
--);
--END COMPONENT  ;

--COMPONENT vio_0
--  PORT (
--    clk : IN STD_LOGIC;
--    probe_in0 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
--    probe_in1 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
--    probe_in2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
--    probe_in3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    probe_in4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    probe_out0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
--  );
--END COMPONENT;
                   
begin

--inst_ila : ila_0
--PORT MAP (
--	clk => dclk_out,

--	probe0    => ad_data_out, 
--	probe1    => state_sample_ctrl, 
--	probe2    => state_main,
--	probe3(0) => sample_valid
--);

--inst_vio : vio_0
--  PORT MAP (
--    clk => dclk_out,
--    probe_in0    => AD_DA,
--    probe_in1    => AD_DB,
--    probe_in2    => rx_data_data, 
--    probe_in3(0) => rx_data_last,  
--    probe_in4(0) => rx_data_valid,  
--    probe_out0   => tx_data_data              
--  );              

process(dclk_out)
begin
    if rising_edge(dclk_out) then
        rx_data_valid2_temp   <=  rx_data_valid2;    
        rx_data_last2_temp    <=  rx_data_last2 ;    
        rx_data_data2_temp    <=  rx_data_data2 ; 
        if rst = '1' then 
            state_main <= X"0"; 
        else   
            case  state_main  is
                when   X"0"  =>
                    rx_index <= 0;
                    reg_out_valid <= '0';
                    if rx_data_valid2_temp  = '0' and rx_data_valid2 = '1' then
--                        if rx_cmd2 = X"AA01" then
--                            state_main <= state_main + '1';
--                        end if;
                        case rx_cmd2 is
                        when  X"CC01" =>
                            state_main <= X"3";
                        when  others =>
                            state_main <= state_main + '1';
                        end case;
                    end if;
                when   X"1"  =>
                    if rx_data_valid2_temp  = '1' then
                        if rx_index < reg_num then
                            rx_index <= rx_index + 1;
                            reg_out_temp(rx_index) <= rx_data_data2_temp; 
                        end if;
                        if rx_data_last2_temp = '1' then
                            state_main <= X"2";                        
                        end if; 
                    end if;
                when   X"2"  =>
                    reg_out <= reg_out_temp;
                    reg_out_valid <= '1';
                    state_main <= X"0";
                when   X"3" =>
                    if rx_data_valid2_temp  = '1' then
                        if rx_index < array_num then
                            rx_index <= rx_index + 1;
                            rx_reg_out_temp(rx_index) <= rx_data_data2_temp; 
                        end if;
                        if rx_data_last2_temp = '1' then
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

process(dclk_out)
begin
if rising_edge(dclk_out) then                                 
    tx_data_valid1  <=  tx_data_valid1_temp;   
    tx_data_last1   <=  tx_data_last1_temp ;   
    tx_data_data1   <=  tx_data_data1_temp ;     
    if rst = '1' then 
        state_tx <= X"0"; 
    else
        case state_tx is
            when  X"0"  =>
                tx_data_valid1_temp <= '0';   
                tx_data_last1_temp  <= '0';   
                tx_data_data1_temp  <= (others => '0');     
                tx_cmd1 <= (others => '0');  
                tx_cmd_valid1 <= '0';
                tx_index <= 0;
                if state_main = X"2" then
                    state_tx <= X"1"; 
                elsif state_main = X"4" then
                    state_tx <= X"3"; 
                end if; 
            when  X"1"  =>
--                if state_main = X"2" then
                    tx_cmd1 <= rx_cmd2;
                    tx_cmd_valid1 <= '1';
                    state_tx <= X"2"; 
--                end if;
            when  X"2"  =>
                tx_cmd_valid1 <= '0';
                tx_data_data1_temp  <= X"00";
                tx_data_valid1_temp <= '1';
                tx_data_last1_temp  <= '1';
                state_tx <= X"5";
            when  X"3"  =>
--                if state_main = X"3" then
                    tx_cmd1 <= rx_cmd2;
                    tx_cmd_valid1 <= '1';
                    for i in 0 to 3 loop
                        tx_array_temp(i) <= CC01_regs_project(8*(3-i)+7 downto 8*(3-i));
                        tx_array_temp(4+i) <= CC01_regs_year_month(8*(3-i)+7 downto 8*(3-i));
                        tx_array_temp(8+i) <= CC01_regs_sub_version(8*(3-i)+7 downto 8*(3-i));
                    end loop; 
                    state_tx <= X"4"; 
--                end if;
            when  X"4"  =>
                tx_cmd_valid1 <= '0';
                tx_data_valid1_temp <= '1';
                tx_data_data1_temp  <= tx_array_temp(tx_index);
                 if tx_index < array_num then
                     tx_index <= tx_index + 1;
                 else
                     tx_index <= 0;
                     tx_data_last1_temp <= '1'; 
                     state_tx <= X"5";          
                 end if;
            when  X"5"  =>
                tx_data_data1_temp  <= X"00";
                tx_data_valid1_temp <= '0';
                tx_data_last1_temp  <= '0';
                state_tx <= X"0"; 
            when  others  =>
                state_tx <= X"0";
        end case; 
    end if;
end if;    
end process;

process(dclk_out)
begin
if rising_edge(dclk_out) then
    if reg_out_valid = '1' and rx_cmd2 = X"AA01" then         
        reg_00_samp_points_type <= reg_out(0);
        reg_01_samp_delay <= reg_out(1);
        reg_02_samp_channel <= reg_out(2);
        reg_03_ad_data_type <= reg_out(3);
    end if;
end if;
end process;

process(dclk_out)
begin 
    if rising_edge(dclk_out) then 
        case  reg_00_samp_points_type  is
            when   X"00"  =>
                samp_point <= samp_p_8000 ;
            when   X"01"  =>
                samp_point <= samp_p_20000;
            when   X"02"  => 
                samp_point <= samp_p_40000;
            when  others  =>
                samp_point <= samp_p_8000;
        end case;
    end if;
end process;
  
process(dclk_out)
begin
    if rising_edge(dclk_out) then 
        triger_in_pos_temp <= triger_in_pos;
        triger_in_tr_temp <= triger_in_tr;
        if rst = '1' then 
            state_sample_ctrl <= X"6"; 
        else    
            case state_sample_ctrl is
                when   X"0"  =>
                    if rx_cmd_valid2 = '1' and rx_cmd2 = X"AA04" then
                        state_sample_ctrl <= X"1";
                    end if;
                when   X"1"  =>  
                    if triger_in_pos_temp = '1' and triger_in_pos ='0' then
                        state_sample_ctrl <= X"2";
                    end if;
                when   X"2"  =>
                    if triger_in_tr_temp = '1' and triger_in_tr ='0' then
                        state_sample_ctrl <= X"3";
                    elsif rx_cmd2 = X"AA5E" then
                        state_sample_ctrl <= X"6";
                    end if;
                when   X"3"  =>
                    if sample_delay_cnt < reg_01_samp_delay + X"16" then    --延时22个周期
                        sample_delay_cnt <= sample_delay_cnt + '1';
                    else
                        sample_delay_cnt <= (others => '0');
                        state_sample_ctrl <= X"4";
                    end if;
                when   X"4"  =>  
                    if sample_cnt < samp_point - '1' then
                        sample_cnt <= sample_cnt + '1';   
                        sample_valid <= '1';
                        sample_last  <= '0';
                    elsif sample_cnt = samp_point - '1' then 
                        sample_cnt <= sample_cnt + '1';
                        sample_valid <= '1';
                        sample_last  <= '1';
                    else
                        sample_cnt <= (others=> '0');
                        sample_valid <= '0';
                        sample_last  <= '0';
                        state_sample_ctrl <= X"5";
                    end if;     
                when   X"5"  => 
                    if rx_cmd2 = X"AA5E" then 
                        state_sample_ctrl <= X"6";
                    else
                        state_sample_ctrl <= X"1";
                    end if;  
                when   X"6"  =>
                    state_sample_ctrl <= X"0"; 
                    sample_delay_cnt <= (others => '0');
                    sample_cnt <= (others=> '0');
                    sample_valid <= '0';
                    sample_last  <= '0';         
                when  others =>
                    state_sample_ctrl <= X"6";
            end case;
        end if;
    end if;
end process;
sample_valid_temp <= sample_valid;
sample_last_temp  <= sample_last; 

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
        if rst = '1' then 
--            test_samp_cnt <= (others => '0');
            test_samp_data <= (others => '0'); 
            test_complete <= '0'; 
        else
            if sample_valid = '1' then
                if test_samp_data < TEST_SAMP - 1 then
--                    test_samp_cnt <= test_samp_cnt + '1';
                    test_samp_data <= test_samp_data + '1';
                else
--                    test_samp_cnt <= (others => '0');
                    test_samp_data <= (others => '0');
                end if;
                if sample_last = '0' then
                    test_complete <= '0';
                else
                    test_complete <= '1';
                end if; 
            end if; 
            if rx_cmd2 = X"AA5E" then 
                test_samp_data <= (others => '0');            
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
  
end Behavioral;                              