----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2025/12/26 16:36:58
-- Design Name: 
-- Module Name: trans_data - Behavioral
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

use work.reg_pkg.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity trans_data is
Port (
     rst                  :     in   std_logic; 
     ps_clk               :     in   std_logic;
     dclk_out_temp        :     in   std_logic;
     sample_valid_temp    :     in  std_logic;
     sample_last_temp     :     in  std_logic;
     ad_data_out          :     in  std_logic_vector(13 downto 0);
     -- log data
     log_data             :     in   std_logic_vector(15 downto 0);
     log_data_valid       :     in   std_logic;
            
     rx_cmd2              :     in   std_logic_vector(15 downto 0):= X"0000";
     rx_cmd_valid2        :     in   std_logic :='0'; 
    
     rx_data_valid2       :     in   std_logic :='0';
     rx_data_last2        :     in   std_logic :='0';
     rx_data_data2        :     in   std_logic_vector(7 downto 0):= (others => '0');
     
     m_axis_tdata2        :     out   std_logic_vector(15 downto 0) := (others => '0');
     m_axis_tvalid2       :     out   std_logic :='0';
     m_axis_tlast2        :     out   std_logic :='0';
     m_axis_tready2       :     in    std_logic :='0'
     
--     data_num_cnt1               :   out    std_logic_vector(31 downto 0);     
--     rd_data_count1              :   out  std_logic_vector(17 downto 0);                          
--     state_data1                 :   out  std_logic_vector(3 downto 0) 
                                    
);
end trans_data;

architecture Behavioral of trans_data is

component para_check                                                                                                                                                       
  Port (
        rst                     :   in   std_logic;
        clk                     :   in   std_logic;

        rx_cmd2_temp            :   in   std_logic_vector(15 downto 0):= X"0000";  
        rx_cmd_valid2_temp      :   in   std_logic :='0';                          
        -- rx 
        rx_data_valid2_temp     :   in   std_logic;
        rx_data_last2_temp      :   in   std_logic;
        rx_data_data2_temp      :   in   std_logic_vector(7 downto 0);

        tx_cmd1_temp            :   out  std_logic_vector(15 downto 0):= X"0000";       
        tx_cmd_valid1_temp      :   out  std_logic :='0';                              
        --
        tx_data_valid1_temp     :   out  std_logic;
        tx_data_last1_temp      :   out  std_logic;
        tx_data_data1_temp      :   out  std_logic_vector(7 downto 0);
        --
        reg_out                 :   out  reg_array;
        reg_out_valid           :   out  std_logic:='0'                 
     );
end component;
signal    reg_out1                 :    reg_array := (others => (others => '0'));
signal    reg_out_valid1           :    std_logic :='0';

signal    state_data               :    std_logic_vector(3 downto 0):=X"0";      
signal    reg_04_samp_data         :    std_logic_vector(31 downto 0);      
signal    reg_04_samp_data_num     :    std_logic_vector(31 downto 0):=X"00003E80";     ---16000     
signal    data_num_cnt             :    std_logic_vector(31 downto 0);
signal    rst_ad                   :    std_logic:= '0';

component AD_DATA_FIFO_ASYNC
generic(
FIFO_WRITE_DEPTH        :     integer:=131072; 
RD_DATA_COUNT_WIDTH     :     integer:=18;  
READ_DATA_WIDTH         :     integer:=16;  
WRITE_DATA_WIDTH        :     integer:=16;  
WR_DATA_COUNT_WIDTH     :     integer:=18      
);
  Port (   
  rst             :    in    std_logic;
  wr_clk          :    in    std_logic;
  wr_en           :    in    std_logic;
  din             :    in    std_logic_vector(WRITE_DATA_WIDTH - 1 downto 0);
  rd_clk          :    in    std_logic;
  rd_en           :    in    std_logic;
  dout            :    out   std_logic_vector(READ_DATA_WIDTH - 1 downto 0);  
  data_valid      :    out   std_logic;
  empty           :    out   std_logic;
  full            :    out   std_logic;
  rd_data_count   :    out   std_logic_vector(RD_DATA_COUNT_WIDTH - 1 downto 0);
  wr_data_count   :    out   std_logic_vector(WR_DATA_COUNT_WIDTH - 1 downto 0)
  );
end component;

signal   rd_data_count             :     std_logic_vector(17 downto 0);
signal   wr_data_count             :     std_logic_vector(17 downto 0);

signal    m_axis_tdata1             :     std_logic_vector(13 downto 0) := (others => '0');
signal    m_axis_tvalid1            :     std_logic :='0';
signal    m_axis_tlast1             :     std_logic :='0';
signal    m_axis_tlast1_temp1       :     std_logic :='0';
signal    m_axis_tlast1_temp        :     std_logic :='0';
signal    m_axis_tready1            :     std_logic :='0';
signal    ad_fifo_async_din         :     std_logic_vector(15 downto 0) := (others => '0');
signal    ad_fifo_async_din1        :     std_logic_vector(15 downto 0) := (others => '0');
signal    ad_fifo_async_temp        :     std_logic_vector(15 downto 0) := (others => '0');
signal    ad_fifo_async_dout        :     std_logic_vector(15 downto 0) := (others => '0');
signal    ad_fifo_async_wr_en       :     std_logic;
signal    ad_fifo_async_wr_en1      :     std_logic;
signal    ad_fifo_async_rd_en       :     std_logic:='0';
signal    ad_fifo_async_empty       :     std_logic;
signal    ad_fifo_async_full        :     std_logic;
signal    ad_fifo_async_data_valid  :     std_logic:='0';

signal    log_fifo_rst              :     std_logic:='0';
signal    log_data_temp             :     std_logic_vector(15 downto 0) := (others => '0');
signal    log_data_valid_temp       :     std_logic:='0';
signal    log_fifo_async_rd_en      :     std_logic:='0';
signal    log_fifo_async_empty      :     std_logic;
signal    log_fifo_async_full       :     std_logic;

signal    log_fifo_async_data_valid :     std_logic:='0';
signal    log_fifo_async_dout       :     std_logic_vector(15 downto 0) := (others => '0');
signal    log_fifo_async_data_valid1:    std_logic:='0';
signal    log_fifo_async_dout1      :    std_logic_vector(15 downto 0) := (others => '0');
signal    log_fifo_async_data_valid2:    std_logic:='0';
signal    log_fifo_async_dout2      :    std_logic_vector(15 downto 0) := (others => '0');
signal    log_fifo_async_data_last  :    std_logic:='0';

--COMPONENT ila_0

--PORT (
--	clk : IN STD_LOGIC;



--	probe0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
--	probe1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
--	probe2 : IN STD_LOGIC_VECTOR(17 DOWNTO 0); 
--	probe3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
--	probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)

--);
--END COMPONENT  ;

begin

--inst_ila_0 : ila_0
--PORT MAP (
--	clk => ps_clk,
--	probe0 => reg_04_samp_data_num, 
--	probe1 => data_num_cnt, 
--	probe2 => rd_data_count, 
--	probe3 => state_data,
--	probe4(0) => m_axis_tlast1_temp
--);

--data_num_cnt1          <= data_num_cnt        ;
--rd_data_count1         <= rd_data_count       ;
--state_data1            <= state_data          ;
process(dclk_out_temp)
begin 
    if rising_edge(dclk_out_temp) then
        ad_fifo_async_wr_en1 <= sample_valid_temp;
        ad_fifo_async_wr_en  <= ad_fifo_async_wr_en1;
--        ad_fifo_async_din1 <= sample_valid_temp & sample_last_temp & ad_data_out;        
        ad_fifo_async_din1 <= ad_fifo_async_temp;        
        ad_fifo_async_din  <= ad_fifo_async_din1;   
    end if;
end process; 

ad_fifo_async_temp <= sample_valid_temp & sample_last_temp & ad_data_out;

process(ps_clk)
begin 
    if rising_edge(ps_clk) then
--        m_axis_tvalid2  <= m_axis_tvalid1;
--        m_axis_tlast2   <= m_axis_tlast1 ;    
--        m_axis_tdata2  <= m_axis_tdata1 & B"00" ;        
        m_axis_tlast1   <= m_axis_tlast1_temp1;
        m_axis_tlast1_temp1  <= m_axis_tlast1_temp; 
        m_axis_tready1 <= m_axis_tready2;  
        if ad_fifo_async_data_valid = '1' then  
            m_axis_tvalid1 <= ad_fifo_async_dout(15);
            m_axis_tdata1  <= ad_fifo_async_dout(13 downto 0);
        else
            m_axis_tvalid1 <= '0';          
            m_axis_tdata1  <= (others => '0'); 
        end if;
    end if;
end process;     

output_manage: process(ps_clk)
begin
if rising_edge(ps_clk)  then
    case rx_cmd2 is
        when    X"AA04" =>
            m_axis_tvalid2  <= m_axis_tvalid1;
            m_axis_tlast2   <= m_axis_tlast1 ;    
            m_axis_tdata2  <= m_axis_tdata1 & B"00" ;        
        when    X"AA05" =>
            m_axis_tvalid2  <= log_fifo_async_data_valid2;
            m_axis_tlast2   <= log_fifo_async_data_last ;    
            m_axis_tdata2  <= log_fifo_async_dout2;             
        when    others  =>
            m_axis_tvalid2 <= '0';
            m_axis_tlast2 <= '0';
            m_axis_tdata2 <= (others => '0');
    end case;    
end if;
end process;

log_data_out_gen : process(ps_clk)
begin
if rising_edge(ps_clk)  then
    log_fifo_async_data_valid1 <= log_fifo_async_data_valid;
    log_fifo_async_data_valid2 <= log_fifo_async_data_valid1;
    log_fifo_async_dout1 <= log_fifo_async_dout;
    log_fifo_async_dout2 <= log_fifo_async_dout1;    
end if;
end process;
log_fifo_async_data_last <= '1' when log_fifo_async_data_valid2 = '1' and log_fifo_async_data_valid1 = '0' else '0';

inst_AD_DATA_FIFO_ASYNC : AD_DATA_FIFO_ASYNC
generic map(
    FIFO_WRITE_DEPTH       =>   131072,
    RD_DATA_COUNT_WIDTH    =>   18  , 
    READ_DATA_WIDTH        =>   16  , 
    WRITE_DATA_WIDTH       =>   16  , 
    WR_DATA_COUNT_WIDTH    =>   18    
)
port map(
    rst             =>   rst_ad        ,
    wr_clk          =>   dclk_out_temp,
    wr_en           =>   ad_fifo_async_wr_en,
    din             =>   ad_fifo_async_din,
    rd_clk          =>   ps_clk     ,
    rd_en           =>   ad_fifo_async_rd_en,
    dout            =>   ad_fifo_async_dout,
    data_valid      =>   ad_fifo_async_data_valid, 
    empty           =>   ad_fifo_async_empty,
    full            =>   ad_fifo_async_full,
    rd_data_count   =>   rd_data_count,
    wr_data_count   =>   wr_data_count    
);

process(dclk_out_temp)
begin
if rising_edge(dclk_out_temp)   then
    log_data_valid_temp <= log_data_valid;
    log_data_temp <= log_data;
end if;
end process;

inst_log_DATA_FIFO_ASYNC : AD_DATA_FIFO_ASYNC
generic map(
    FIFO_WRITE_DEPTH       =>   8192,
    RD_DATA_COUNT_WIDTH    =>   13  , 
    READ_DATA_WIDTH        =>   16  , 
    WRITE_DATA_WIDTH       =>   16  , 
    WR_DATA_COUNT_WIDTH    =>   13    
)
port map(
    rst             =>   log_fifo_rst        ,
    wr_clk          =>   dclk_out_temp,
    wr_en           =>   log_data_valid_temp,
    din             =>   log_data_temp,
    rd_clk          =>   ps_clk     ,
    rd_en           =>   log_fifo_async_rd_en,
    dout            =>   log_fifo_async_dout,
    data_valid      =>   log_fifo_async_data_valid, 
    empty           =>   log_fifo_async_empty,
    full            =>   log_fifo_async_full,
    rd_data_count   =>   open,
    wr_data_count   =>   open    
);


process(ps_clk)
begin
    if rising_edge(ps_clk) then
        if rst = '1' or (rx_cmd2 = X"AA5E" and rx_cmd_valid2 = '1') then
            data_num_cnt <= (others => '0'); 
            m_axis_tlast1_temp  <= '0'; 
            ad_fifo_async_rd_en <= '0';
            rst_ad <= '1'; 
            state_data <= X"0";  
        else 
        case state_data is
            when   X"0"  =>
                data_num_cnt <= (others => '0');
                rst_ad <= '0'; 
                if rx_cmd_valid2 = '1'then
                    case rx_cmd2 is
                        when    X"AA04" =>  -- samp data
                            state_data <= X"1";
                            log_fifo_rst <= '1';        -- rst log fifo when new AA04
--                        when    X"AA05" =>  -- log data
--                            state_data <= X"6";
                        when    others  =>
                            null;
                    end case;
                end if;
             when   X"1"  =>    
                log_fifo_rst <= '0';                                       
                if rd_data_count >= reg_04_samp_data_num then
                    state_data <= state_data + 1; 
                else
                    if rx_cmd2 = X"AA05" then
                        state_data <= X"6";
                    end if;
                end if;   
--                data_num_cnt <= (others => '0');                        
            when    X"2" =>
                if data_num_cnt < reg_04_samp_data_num - 1 then
                    data_num_cnt <= data_num_cnt + 1;
                    ad_fifo_async_rd_en <= '1';
                    m_axis_tlast1_temp  <= '0';
                elsif data_num_cnt = reg_04_samp_data_num - 1 then
                    data_num_cnt <= data_num_cnt + 1;
                    ad_fifo_async_rd_en <= '1';
                    m_axis_tlast1_temp <= '1';        
                else
                    data_num_cnt <= (others => '0');
                    ad_fifo_async_rd_en <= '0';
                    m_axis_tlast1_temp  <= '0';
                    state_data <= state_data + 1;
                end if;                                                
            when   X"3"  =>
                state_data <= state_data + 1;     
            when   X"4"  =>
--                rst_ad <= '1';
                state_data <= state_data + 1;
            when   X"5"  =>
--                rst_ad <= '0';
                state_data <= X"1";
            
            --------------------------------------------
            -- log data --
            when    X"6"    =>  -- read log data
                log_fifo_async_rd_en <= '1';
                state_data <= state_data + 1;
            when    X"7"    =>  -- read from fifo until empty
                if log_fifo_async_empty = '1' then
                    log_fifo_async_rd_en <= '0';
                    state_data <= X"0";
                end if;
            when   others  =>
                data_num_cnt <= (others => '0'); 
                m_axis_tlast1_temp  <= '0';           
                state_data <= X"0";
        end case;
    end if;
end if;
end process;


inst_para_ps_clk : para_check                          
port map(                                                
    rst                     =>    rst           ,     
    clk                     =>    ps_clk        ,     
    rx_cmd2_temp            =>    rx_cmd2       ,     
    rx_cmd_valid2_temp      =>    rx_cmd_valid2 ,     
                                                      
    rx_data_valid2_temp     =>    rx_data_valid2,     
    rx_data_last2_temp      =>    rx_data_last2 ,     
    rx_data_data2_temp      =>    rx_data_data2 ,     
                                                         
    tx_cmd1_temp            =>    open   ,     
    tx_cmd_valid1_temp      =>    open   ,     
                                       
    tx_data_valid1_temp     =>    open   ,     
    tx_data_last1_temp      =>    open   ,     
    tx_data_data1_temp      =>    open   ,     
                                                         
    reg_out                 =>    reg_out1,     
    reg_out_valid           =>    reg_out_valid1          
                                                         
);                                                        

process(ps_clk)                                             
    variable temp_data : std_logic_vector(31 downto 0);
begin                                                         
if rising_edge(ps_clk) then                                 
    if reg_out_valid1 = '1' and rx_cmd2 = X"AA02" then            
        temp_data := reg_out1(0) & reg_out1(1) & reg_out1(2) & reg_out1(3);
        reg_04_samp_data <= temp_data;
        reg_04_samp_data_num <= '0' & temp_data(31 downto 1);                
    end if;                                                   
end if;                                                       
end process;

end Behavioral;
