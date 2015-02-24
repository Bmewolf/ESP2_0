-------------------------------------------------------------------------------
-- MinSysEmbedProc_data_input_tl_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library data_input_tl_v2_00_d;
use data_input_tl_v2_00_d.all;

entity MinSysEmbedProc_data_input_tl_0_wrapper is
  port (
    SPLB_Clk : in std_logic;
    SPLB_Rst : in std_logic;
    miso_all : in std_logic_vector(5 downto 0);
    jfrc_convert : in std_logic;
    jfrc16_sel : in std_logic_vector(3 downto 0);
    JFRC32RESET_NOT : in std_logic;
    HS32 : in std_logic;
    mem_wr : out std_logic;
    Port_A_Address : out std_logic_vector(9 downto 0);
    AtoD_data_bus : out std_logic_vector(15 downto 0);
    Buffer_0_Fill : out std_logic;
    SReady : out std_logic;
    SClock_out : out std_logic;
    AD7982_convert_all : out std_logic_vector(5 downto 0);
    AD7982_DSI_all : out std_logic_vector(5 downto 0)
  );
end MinSysEmbedProc_data_input_tl_0_wrapper;

architecture STRUCTURE of MinSysEmbedProc_data_input_tl_0_wrapper is

  component data_input_tl is
    port (
      SPLB_Clk : in std_logic;
      SPLB_Rst : in std_logic;
      miso_all : in std_logic_vector(5 downto 0);
      jfrc_convert : in std_logic;
      jfrc16_sel : in std_logic_vector(3 downto 0);
      JFRC32RESET_NOT : in std_logic;
      HS32 : in std_logic;
      mem_wr : out std_logic;
      Port_A_Address : out std_logic_vector(9 downto 0);
      AtoD_data_bus : out std_logic_vector(15 downto 0);
      Buffer_0_Fill : out std_logic;
      SReady : out std_logic;
      SClock_out : out std_logic;
      AD7982_convert_all : out std_logic_vector(5 downto 0);
      AD7982_DSI_all : out std_logic_vector(5 downto 0)
    );
  end component;

begin

  data_input_tl_0 : data_input_tl
    port map (
      SPLB_Clk => SPLB_Clk,
      SPLB_Rst => SPLB_Rst,
      miso_all => miso_all,
      jfrc_convert => jfrc_convert,
      jfrc16_sel => jfrc16_sel,
      JFRC32RESET_NOT => JFRC32RESET_NOT,
      HS32 => HS32,
      mem_wr => mem_wr,
      Port_A_Address => Port_A_Address,
      AtoD_data_bus => AtoD_data_bus,
      Buffer_0_Fill => Buffer_0_Fill,
      SReady => SReady,
      SClock_out => SClock_out,
      AD7982_convert_all => AD7982_convert_all,
      AD7982_DSI_all => AD7982_DSI_all
    );

end architecture STRUCTURE;

