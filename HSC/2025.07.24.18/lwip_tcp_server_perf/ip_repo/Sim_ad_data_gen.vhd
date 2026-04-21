----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2025/06/25 10:21:35
-- Design Name: 
-- Module Name: Sim_ad_data_gen - Behavioral
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

entity Sim_ad_data_gen is
    generic(
        gmii_array_num          : integer:=11
    );
    Port (
        clk_in                        : in std_logic;
        reset_n                       : in std_logic;
        m_axis_tdata                  : out std_logic_vector(7 downto 0);
        m_axis_tready                 : in std_logic;
        m_axis_tvalid                 : out std_logic;
        m_axis_tlast                 : out std_logic;
        ---- rx cmd_type
        rx_cmd                        : in std_logic_vector(15 downto 0);
        rx_cmd_valid                  : in std_logic;
        ---- cmd in
        tx_cmd                        : out  std_logic_vector(15 downto 0);
        tx_cmd_valid                  : out  std_logic;
        -- rx cmd data
        rx_data_valid                 : in  std_logic;
        rx_data_last                  : in  std_logic;
        rx_data_data                  : in  std_logic_vector(7 downto 0);
        -- tx data
        tx_data_valid                 : out std_logic:='0';
        tx_data_last                  : out std_logic:='0';
        tx_data_data                  : out std_logic_vector(7 downto 0):=(others => '0')
    );
end Sim_ad_data_gen;

architecture Behavioral of Sim_ad_data_gen is

    signal      state_main              : std_logic_vector(3 downto 0):=(others => '0');
    signal      high_num                : std_logic_vector(15 downto 0):=(others => '0');
    signal      high_cnt                : std_logic_vector(15 downto 0):=(others => '0');
    signal      low_num                 : std_logic_vector(15 downto 0):=(others => '0');
    signal      low_cnt                 : std_logic_vector(15 downto 0):=(others => '0');
    signal      re_num                  : std_logic_vector(31 downto 0):=(others => '0');
    signal      re_cnt                  : std_logic_vector(31 downto 0):=(others => '0');

    signal      rx_data_valid1               :   std_logic;
    signal      rx_data_last1                :   std_logic;
    signal      rx_data_data1                :   std_logic_vector(7 downto 0);

    ---- data to be packeted
    signal      data_to_packet             :   std_logic_vector(7 downto 0);
    signal      data_to_packet_valid       :   std_logic:='0';
    signal      data_to_packet_last        :   std_logic:='0';

    type    array_gmii    is array(0 to gmii_array_num) of std_logic_vector(7 downto 0);
    signal      tx_array_temp               :   array_gmii:=(others => (others => '0'));
    signal      rx_array_temp               :   array_gmii:=(others => (others => '0'));
    signal      rx_index                    :   integer:=0;
    signal      tx_index                    :   integer:=0;

    signal      m_axis_tdata1                  :  std_logic_vector(7 downto 0);
    signal      m_axis_tready1                 :  std_logic:='0';
    signal      m_axis_tvalid1                 :  std_logic:='0';
    signal      m_axis_tlast1                  :  std_logic:='0';

--    COMPONENT ila_0

--        PORT (
--            clk : IN STD_LOGIC;



--            probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--            probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--            probe2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
--            probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--            probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--            probe5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
--            probe6 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--            probe7 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
--            probe8 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
--            probe9 : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
--        );
--    END COMPONENT  ;


begin

--    inst_ila_0 : ila_0
--        PORT MAP (
--            clk => clk_in,



--            probe0(0) => rx_data_valid1,
--            probe1(0) => rx_data_last1,
--            probe2 => rx_data_data1,
--            probe3(0) => m_axis_tready1,
--            probe4(0) => m_axis_tvalid1,
--            probe5 => m_axis_tdata1,
--            probe6 => state_main,
--            probe7 => high_num,
--            probe8 => low_num,
--            probe9 => re_num

--        );

    process(clk_in,reset_n)
    begin
        if rising_edge(clk_in)  then

            rx_data_valid1  <= rx_data_valid;
            rx_data_last1   <= rx_data_last ;
            rx_data_data1   <= rx_data_data ;

            m_axis_tdata   <= m_axis_tdata1 ;
            m_axis_tready1  <= m_axis_tready;
            m_axis_tvalid  <= m_axis_tvalid1;
            m_axis_tlast <= m_axis_tlast1;
            
            if reset_n = '0' then
                state_main <= (others => '0');
            else
                case    state_main  is
                    when    X"0"    =>
                        rx_index <= 0;
                        if rx_cmd_valid = '1'   then
                            case rx_cmd is
                                when    X"AA01" =>
                                    state_main <= X"1";
                                when    others  =>
                                    null;
                            end case;
                        end if;
                    when    X"1"    =>
                        if rx_data_valid1 = '1' then
                            rx_array_temp(rx_index) <= rx_data_data1;
                            if rx_index < gmii_array_num  then
                                rx_index <= rx_index + 1;
                            else
                                rx_index <= 0;
                                state_main <= state_main + '1';
                            end if;
                        end if;
                    when    X"2"    =>
                        if rx_data_last1 = '1'   then
                            state_main <= state_main + '1';
                        end if;
                    when    X"3"    =>
                        high_num <= rx_array_temp(0) & rx_array_temp(1);
                        low_num <= rx_array_temp(2) & rx_array_temp(3);
                        re_num <= rx_array_temp(4) & rx_array_temp(5)& rx_array_temp(6) & rx_array_temp(7);

                        high_cnt <= (others => '0');
                        low_cnt <= (others => '0');
                        re_cnt <= (others => '0');

                        m_axis_tdata1 <= (others => '0');

                        state_main <= state_main + '1';
                    when    X"4"    =>
                        if m_axis_tready1 = '1' then
                            if high_cnt < high_num - '1' then
                                high_cnt <= high_cnt + '1';
                                m_axis_tvalid1 <= '1';
                                m_axis_tdata1 <= m_axis_tdata1 + '1';
                            elsif high_cnt = high_num - '1' then
                                high_cnt <= high_cnt + '1';
                                m_axis_tvalid1 <= '1';
                                m_axis_tlast1 <= '1';
                                m_axis_tdata1 <= m_axis_tdata1 + '1';
                            else
                                high_cnt <= (others => '0');
                                m_axis_tvalid1 <= '0';
                                m_axis_tlast1 <= '0';
                                state_main <= state_main + '1';
                            end if;
                        else
                            m_axis_tvalid1 <= '0';
                        end if;
                    when    X"5"    =>
                        if low_cnt < low_num then
                            low_cnt <= low_cnt + '1';
                        else
                            low_cnt <= (others => '0');
                            state_main <= state_main + '1';
                        end if;
                    when    X"6"    =>
                        if re_cnt < re_num then
                            re_cnt <= re_cnt + '1';
                            state_main <= X"4";
                        else
                            state_main <= X"0";
                            re_cnt <= (others => '0');
                        end if;
                    when    others  =>
                        state_main <= X"0";
                end case;
            end if;
        end if;
    end process;

end Behavioral;
