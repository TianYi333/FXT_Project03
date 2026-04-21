----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2025/09/09 17:28:17
-- Design Name: 
-- Module Name: TOP - Behavioral
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

use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


-- 需要修改的
-- 1 增加rx tx类接口到top
-- 2 ad_ctrl 的 reg_out 从端口改为信号
-- 3 ad_ctrl 的 ad_data_type 改为由reg_out_internal驱动
-- 4 ad_ctrl增加ad_channel的reg，由reg_out_internal驱动
-- 5 在top增加异步fifo输出AD data，输入时钟为dclk_out ,输入数据为ad data；输出时钟为ps_clk,输出数据格式为axi_m


entity TOP is
generic(
    reg_num          :   integer :=46 - 1 
); 
port ( 
     clk_in           :     in   std_logic;
     ps_clk           :     in   std_logic;
--     ps_rst           :     in   std_logic;
     clk_dir          :     out  std_logic :='0';
     triger_in_pos    :     in   std_logic;
     triger_in_tr     :     in   std_logic;
     
     ad_clk_in        :     in   std_logic;
     AD_DA            :     in   std_logic_vector(13 downto 0);
     AD_DB            :     in   std_logic_vector(13 downto 0);
     clk_ad_out       :     out  std_logic;
     
     m_axis_tready    :     in   std_logic :='0';
     m_axis_tvalid    :     out  std_logic :='0';
     m_axis_tlast     :     out  std_logic :='0';
     m_axis_tdata     :     out  std_logic_vector(15 downto 0) := (others => '0');
     
     rx_cmd           :     in   std_logic_vector(15 downto 0):= X"0000";
     rx_cmd_valid     :     in   std_logic :='0';
     
     rx_data_valid    :     in   std_logic :='0';
     rx_data_last     :     in   std_logic :='0';
     rx_data_data     :     in   std_logic_vector(7 downto 0):= (others => '0');
    
     tx_cmd           :     out  std_logic_vector(15 downto 0):= X"0000";
     tx_cmd_valid     :     out  std_logic :='0';
     
     tx_data_valid    :     out  std_logic :='0';
     tx_data_last     :     out  std_logic :='0';
     tx_data_data     :     out  std_logic_vector(7 downto 0):= (others => '0');
    
     AD_SEN           :     out  STD_LOGIC;        --0 in parallel mode
     AD_SDATA         :     out  STD_LOGIC;        --0 in parallel mode
     AD_SCLK          :     out  STD_LOGIC;        --0 in parallel mode
     AD_RESET         :     out  STD_LOGIC;        --parallel configuration
     AD_CTRL1         :     out  std_logic;
     AD_CTRL2         :     out  std_logic;
     AD_CTRL3         :     out  std_logic 
          
--     data_num_cnt1               :   out    std_logic_vector(31 downto 0);     
--     rd_data_count1              :   out  std_logic_vector(17 downto 0);                          
--     state_data1                 :   out  std_logic_vector(3 downto 0)       
);
end TOP;

architecture Behavioral of TOP is
component trans_data
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
     
--     reg_10_samp_points_type     :    out   std_logic_vector(7 downto 0) := X"14";   ---20
--     reg_11_samp_triger_cnt      :    out   std_logic_vector(15 downto 0) := X"1000";   ---4096;
     
     m_axis_tdata2        :     out  std_logic_vector(15 downto 0) := (others => '0');
     m_axis_tvalid2       :     out  std_logic :='0';
     m_axis_tlast2        :     out  std_logic :='0';
     m_axis_tready2       :     in   std_logic :='0'
     
--     data_num_cnt1               :   out    std_logic_vector(31 downto 0);     
--     rd_data_count1              :   out  std_logic_vector(17 downto 0);                          
--     state_data1                 :   out  std_logic_vector(3 downto 0)             
                                 
);
end component;
signal    reg_10_samp_points_type  :    std_logic_vector(7 downto 0) := X"14";   ---20
signal    reg_11_samp_triger_cnt   :    std_logic_vector(15 downto 0) := X"1000";   ---4096;

component  ad_ctrl 
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
end component;
signal   dclk_out_temp        :     std_logic;
signal   sample_valid_temp    :     std_logic;
signal   sample_last_temp     :     std_logic;
signal   ad_data_out          :     std_logic_vector(13 downto 0);
signal   log_data             :     std_logic_vector(15 downto 0);
signal   log_data_valid       :     std_logic;

component rx_data_fifo_async
generic(
FIFO_WRITE_DEPTH        :   integer:=4096;
RD_DATA_COUNT_WIDTH     :   integer:=17;
READ_DATA_WIDTH         :   integer:=17;
WRITE_DATA_WIDTH        :   integer:=17;
WR_DATA_COUNT_WIDTH     :   integer:=17
);
  Port (   
  rst           :   in    std_logic;
  wr_clk        :   in    std_logic;
  wr_en         :   in    std_logic;
  din           :   in    std_logic_vector(WRITE_DATA_WIDTH - 1 downto 0);
  rd_clk        :   in    std_logic;
  rd_en         :   in    std_logic;
  dout          :   out   std_logic_vector(READ_DATA_WIDTH - 1 downto 0);  
  data_valid    :   out   std_logic;
  empty         :   out   std_logic;
  full          :   out   std_logic
  );
end component;

signal    rx_cmd1                       :     std_logic_vector(15 downto 0):= X"0000";    
signal    rx_cmd_valid1                 :     std_logic :='0';     
signal    rx_cmd2                       :     std_logic_vector(15 downto 0):= X"0000";    
signal    rx_cmd_valid2                 :     std_logic :='0';                       
signal    rx_cmd_fifo_async_din         :     std_logic_vector(16 downto 0) := (others => '0');
signal    rx_cmd_fifo_async_din1        :     std_logic_vector(16 downto 0) := (others => '0');
signal    rx_cmd_fifo_async_dout        :     std_logic_vector(16 downto 0) := (others => '0');
signal    rx_cmd_fifo_async_wr_en       :     std_logic;
signal    rx_cmd_fifo_async_wr_en1      :     std_logic;
signal    rx_cmd_fifo_async_rd_en       :     std_logic;
signal    rx_cmd_fifo_async_empty       :     std_logic;
signal    rx_cmd_fifo_async_full        :     std_logic;
signal    rx_cmd_fifo_async_data_valid  :     std_logic;

signal    rx_data_valid1                :     std_logic :='0';                                 
signal    rx_data_last1                 :     std_logic :='0';                                 
signal    rx_data_data1                 :     std_logic_vector(7 downto 0):= (others => '0'); 
signal    rx_data_valid2                :     std_logic :='0';                                 
signal    rx_data_last2                 :     std_logic :='0';                                 
signal    rx_data_data2                 :     std_logic_vector(7 downto 0):= (others => '0');   
signal    rx_data_fifo_async_din        :     std_logic_vector(9 downto 0) := (others => '0');
signal    rx_data_fifo_async_din1       :     std_logic_vector(9 downto 0) := (others => '0');
signal    rx_data_fifo_async_dout       :     std_logic_vector(9 downto 0) := (others => '0');
signal    rx_data_fifo_async_wr_en      :     std_logic;
signal    rx_data_fifo_async_wr_en1     :     std_logic;
signal    rx_data_fifo_async_rd_en      :     std_logic;
signal    rx_data_fifo_async_empty      :     std_logic;
signal    rx_data_fifo_async_full       :     std_logic;
signal    rx_data_fifo_async_data_valid :     std_logic;

signal    tx_cmd1                       :     std_logic_vector(15 downto 0):= X"0000";    
signal    tx_cmd_valid1                 :     std_logic :='0';     
signal    tx_cmd2                       :     std_logic_vector(15 downto 0):= X"0000";    
signal    tx_cmd_valid2                 :     std_logic :='0';  
signal    tx_cmd_fifo_async_din         :     std_logic_vector(16 downto 0) := (others => '0');
signal    tx_cmd_fifo_async_din1        :     std_logic_vector(16 downto 0) := (others => '0');
signal    tx_cmd_fifo_async_dout        :     std_logic_vector(16 downto 0) := (others => '0');
signal    tx_cmd_fifo_async_wr_en       :     std_logic;
signal    tx_cmd_fifo_async_wr_en1      :     std_logic;
signal    tx_cmd_fifo_async_rd_en       :     std_logic;
signal    tx_cmd_fifo_async_empty       :     std_logic;
signal    tx_cmd_fifo_async_full        :     std_logic;
signal    tx_cmd_fifo_async_data_valid  :     std_logic;

signal    tx_data_valid1                :     std_logic :='0';                                 
signal    tx_data_last1                 :     std_logic :='0';                                 
signal    tx_data_data1                 :     std_logic_vector(7 downto 0):= (others => '0'); 
signal    tx_data_valid2                :     std_logic :='0';                                 
signal    tx_data_last2                 :     std_logic :='0';                                 
signal    tx_data_data2                 :     std_logic_vector(7 downto 0):= (others => '0');   
signal    tx_data_fifo_async_din        :     std_logic_vector(9 downto 0) := (others => '0');
signal    tx_data_fifo_async_din1       :     std_logic_vector(9 downto 0) := (others => '0');
signal    tx_data_fifo_async_dout       :     std_logic_vector(9 downto 0) := (others => '0');
signal    tx_data_fifo_async_wr_en      :     std_logic;
signal    tx_data_fifo_async_wr_en1     :     std_logic;
signal    tx_data_fifo_async_rd_en      :     std_logic;
signal    tx_data_fifo_async_empty      :     std_logic;
signal    tx_data_fifo_async_full       :     std_logic;
signal    tx_data_fifo_async_data_valid :     std_logic;

begin
inst_trans_data : trans_data
port map(
     rst               =>    '0'              ,  
     ps_clk            =>    ps_clk           ,  
     dclk_out_temp     =>    dclk_out_temp    ,  
     sample_valid_temp =>    sample_valid_temp,  
     sample_last_temp  =>    sample_last_temp ,  
     ad_data_out       =>    ad_data_out      ,  

     log_data           =>    log_data        ,
     log_data_valid     =>    log_data_valid  ,
                          
     rx_cmd2           =>    rx_cmd           ,  
     rx_cmd_valid2     =>    rx_cmd_valid     ,  
                    
     rx_data_valid2    =>    rx_data_valid    ,  
     rx_data_last2     =>    rx_data_last     ,  
     rx_data_data2     =>    rx_data_data     ,
     
--     reg_10_samp_points_type  =>  reg_10_samp_points_type,
--     reg_11_samp_triger_cnt   =>  reg_11_samp_triger_cnt ,
     
     m_axis_tdata2     =>    m_axis_tdata     ,  
     m_axis_tvalid2    =>    m_axis_tvalid    ,  
     m_axis_tlast2     =>    m_axis_tlast     , 
     m_axis_tready2    =>    m_axis_tready    
     
--     data_num_cnt1          =>  data_num_cnt1        ,
--     rd_data_count1         =>  rd_data_count1       ,
--     state_data1            =>  state_data1             
     
);

inst_ad_ctrl : ad_ctrl
port map(
    clk_ad             =>    ps_clk            ,
--    clk_ad             =>    clk_in            ,
    triger_in_pos      =>    triger_in_pos     ,
    triger_in_tr       =>    triger_in_tr      ,
    rst                =>    '0'               ,
                    
    rx_cmd2            =>    rx_cmd2           ,
    rx_cmd_valid2      =>    rx_cmd_valid2     ,
                      
    rx_data_valid2     =>    rx_data_valid2    ,
    rx_data_last2      =>    rx_data_last2     ,
    rx_data_data2      =>    rx_data_data2     ,
                   
    tx_cmd1            =>    tx_cmd1           ,
    tx_cmd_valid1      =>    tx_cmd_valid1     ,
                     
    tx_data_valid1     =>    tx_data_valid1    ,
    tx_data_last1      =>    tx_data_last1     ,
    tx_data_data1      =>    tx_data_data1     ,
    
    log_data           =>    log_data          ,
    log_data_valid     =>    log_data_valid    ,
                  
    ad_clk_in          =>    ad_clk_in         ,
    AD_DA              =>    AD_DA             ,
    AD_DB              =>    AD_DB             ,
    
--    reg_10_samp_points_type  =>  reg_10_samp_points_type,
--    reg_11_samp_triger_cnt   =>  reg_11_samp_triger_cnt ,
     
    clk_ad_out         =>    clk_ad_out        ,
    dclk_out_temp      =>    dclk_out_temp     ,
    sample_valid_temp  =>    sample_valid_temp ,
    sample_last_temp   =>    sample_last_temp  ,
    ad_data_out        =>    ad_data_out       ,
                     
    AD_SEN             =>    AD_SEN            ,
    AD_SDATA           =>    AD_SDATA          ,
    AD_SCLK            =>    AD_SCLK           ,
    AD_RESET           =>    AD_RESET          ,
    AD_CTRL1           =>    AD_CTRL1          ,
    AD_CTRL2           =>    AD_CTRL2          ,
    AD_CTRL3           =>    AD_CTRL3           
);


process(ps_clk)
begin 
    if rising_edge(ps_clk) then
        rx_cmd_fifo_async_wr_en1 <= rx_cmd_valid;
        rx_cmd_fifo_async_wr_en  <= rx_cmd_fifo_async_wr_en1;
        rx_cmd_fifo_async_din  <= rx_cmd_fifo_async_din1;  
        rx_cmd_fifo_async_din1 <= rx_cmd_valid & rx_cmd;
    end if;
end process; 

process(dclk_out_temp)
begin 
    if rising_edge(dclk_out_temp) then
        rx_cmd2 <= rx_cmd1;
        rx_cmd_valid2 <= rx_cmd_valid1;
        rx_cmd_fifo_async_rd_en <= not rx_cmd_fifo_async_empty;
        if rx_cmd_fifo_async_data_valid = '1' then  
            rx_cmd_valid1 <= rx_cmd_fifo_async_dout(16);
            rx_cmd1 <= rx_cmd_fifo_async_dout(15 downto 0);
        else
            rx_cmd_valid1 <= '0';          
        end if;
    end if;
end process;   

inst_rx_cmd_FIFO_ASYNC : rx_data_fifo_async
generic map(
    FIFO_WRITE_DEPTH       =>    4096,
    RD_DATA_COUNT_WIDTH    =>    12  ,
    READ_DATA_WIDTH        =>    17  ,
    WRITE_DATA_WIDTH       =>    17  ,
    WR_DATA_COUNT_WIDTH    =>    12
)     
port map(                                        
    rst          =>   '0'        ,               
    wr_clk       =>   ps_clk     ,             
    wr_en        =>   rx_cmd_fifo_async_wr_en,       
    din          =>   rx_cmd_fifo_async_din,         
    rd_clk       =>   dclk_out_temp,               
    rd_en        =>   rx_cmd_fifo_async_rd_en,       
    dout         =>   rx_cmd_fifo_async_dout,        
    data_valid   =>   rx_cmd_fifo_async_data_valid,      
    empty        =>   rx_cmd_fifo_async_empty,       
    full         =>   rx_cmd_fifo_async_full 
);

process(ps_clk)
begin 
    if rising_edge(ps_clk) then
        rx_data_fifo_async_wr_en1 <= rx_data_valid;
        rx_data_fifo_async_wr_en  <= rx_data_fifo_async_wr_en1;
        rx_data_fifo_async_din  <= rx_data_fifo_async_din1;  
        rx_data_fifo_async_din1 <= rx_data_valid & rx_data_last & rx_data_data;
    end if;
end process; 

process(dclk_out_temp)
begin 
    if rising_edge(dclk_out_temp) then
        rx_data_valid2 <= rx_data_valid1;
        rx_data_last2  <= rx_data_last1 ;
        rx_data_data2  <= rx_data_data1 ;
        rx_data_fifo_async_rd_en <= not rx_data_fifo_async_empty;
        if rx_data_fifo_async_data_valid = '1' then  
            rx_data_valid1 <= rx_data_fifo_async_dout(9);
            rx_data_last1  <= rx_data_fifo_async_dout(8);
            rx_data_data1  <= rx_data_fifo_async_dout(7 downto 0);
        else
            rx_data_valid1<= '0';             
            rx_data_last1 <= '0';            
            rx_data_data1 <= (others => '0');
        end if;
    end if;
end process;   

inst_rx_data_FIFO_ASYNC : rx_data_fifo_async
generic map(
    FIFO_WRITE_DEPTH       =>   4096,
    RD_DATA_COUNT_WIDTH    =>   10  ,
    READ_DATA_WIDTH        =>   10  ,
    WRITE_DATA_WIDTH       =>   10  ,
    WR_DATA_COUNT_WIDTH    =>   10
)    
port map(                                        
    rst          =>   '0'        ,                     
    wr_clk       =>   ps_clk     ,                     
    wr_en        =>   rx_data_fifo_async_wr_en,         
    din          =>   rx_data_fifo_async_din,           
    rd_clk       =>   dclk_out_temp ,                   
    rd_en        =>   rx_data_fifo_async_rd_en,         
    dout         =>   rx_data_fifo_async_dout,          
    data_valid   =>   rx_data_fifo_async_data_valid,    
    empty        =>   rx_data_fifo_async_empty,         
    full         =>   rx_data_fifo_async_full           
);

process(dclk_out_temp)
begin 
    if rising_edge(dclk_out_temp) then
        tx_cmd_fifo_async_wr_en1 <= tx_cmd_valid1;
        tx_cmd_fifo_async_wr_en  <= tx_cmd_fifo_async_wr_en1;
        tx_cmd_fifo_async_din  <= tx_cmd_fifo_async_din1;  
        tx_cmd_fifo_async_din1 <= tx_cmd_valid1 & tx_cmd1;
    end if;
end process; 

process(ps_clk)
begin 
    if rising_edge(ps_clk) then
        tx_cmd <= tx_cmd2;
        tx_cmd_valid <= tx_cmd_valid2;
        tx_cmd_fifo_async_rd_en <= not tx_cmd_fifo_async_empty;
        if tx_cmd_fifo_async_data_valid = '1' then  
            tx_cmd_valid2 <= tx_cmd_fifo_async_dout(16);
            tx_cmd2 <= tx_cmd_fifo_async_dout(15 downto 0);
        else
            tx_cmd_valid2 <= '0';          
--            tx_cmd2 <= (others => '0'); 
        end if;
    end if;
end process; 

inst_tx_cmd_FIFO_ASYNC : rx_data_fifo_async
generic map(
    FIFO_WRITE_DEPTH       =>   4096,
    RD_DATA_COUNT_WIDTH    =>   12  ,
    READ_DATA_WIDTH        =>   17  ,
    WRITE_DATA_WIDTH       =>   17  ,
    WR_DATA_COUNT_WIDTH    =>   12
)    
port map(                                        
    rst          =>   '0'        ,                     
    wr_clk       =>   dclk_out_temp,                     
    wr_en        =>   tx_cmd_fifo_async_wr_en,         
    din          =>   tx_cmd_fifo_async_din,           
    rd_clk       =>   ps_clk    ,                   
    rd_en        =>   tx_cmd_fifo_async_rd_en,         
    dout         =>   tx_cmd_fifo_async_dout,          
    data_valid   =>   tx_cmd_fifo_async_data_valid,    
    empty        =>   tx_cmd_fifo_async_empty,         
    full         =>   tx_cmd_fifo_async_full           
);

process(dclk_out_temp)
begin 
    if rising_edge(dclk_out_temp) then
        tx_data_fifo_async_wr_en1 <= tx_data_valid1;
        tx_data_fifo_async_wr_en  <= tx_data_fifo_async_wr_en1;
        tx_data_fifo_async_din  <= tx_data_fifo_async_din1;  
        tx_data_fifo_async_din1 <= tx_data_valid1 & tx_data_last1 & tx_data_data1;
    end if;
end process; 

process(ps_clk)
begin 
    if rising_edge(ps_clk) then
        tx_data_valid <= tx_data_valid2;
        tx_data_last  <= tx_data_last2 ;
        tx_data_data  <= tx_data_data2 ;
        tx_data_fifo_async_rd_en <= not tx_data_fifo_async_empty;
        if tx_data_fifo_async_data_valid = '1' then  
            tx_data_valid2 <= tx_data_fifo_async_dout(9);
            tx_data_last2  <= tx_data_fifo_async_dout(8);
            tx_data_data2  <= tx_data_fifo_async_dout(7 downto 0);
        else
            tx_data_valid2<= '0';             
            tx_data_last2 <= '0';            
            tx_data_data2 <= (others => '0');
        end if;
    end if;
end process; 
inst_tx_data_FIFO_ASYNC : rx_data_fifo_async 
generic map(
    FIFO_WRITE_DEPTH       =>   4096,
    RD_DATA_COUNT_WIDTH    =>   10  ,
    READ_DATA_WIDTH        =>   10  ,
    WRITE_DATA_WIDTH       =>   10  ,
    WR_DATA_COUNT_WIDTH    =>   10
)     
port map(                                        
    rst          =>   '0'        ,                  
    wr_clk       =>   dclk_out_temp,                  
    wr_en        =>   tx_data_fifo_async_wr_en,     
    din          =>   tx_data_fifo_async_din,       
    rd_clk       =>   ps_clk ,           
    rd_en        =>   tx_data_fifo_async_rd_en,     
    dout         =>   tx_data_fifo_async_dout,      
    data_valid   =>   tx_data_fifo_async_data_valid,
    empty        =>   tx_data_fifo_async_empty,     
    full         =>   tx_data_fifo_async_full               
);
end Behavioral;