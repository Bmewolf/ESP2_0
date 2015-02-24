-------------------------------------------------------------------------------
-- MinSysEmbedProc_dtoa_converter_tl_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library dtoa_converter_tl_v2_01_c;
use dtoa_converter_tl_v2_01_c.all;

entity MinSysEmbedProc_dtoa_converter_tl_0_wrapper is
  port (
    slow_clk : in std_logic;
    rst : in std_logic;
    dtoa_start : in std_logic_vector(1 downto 0);
    dtoa_data0 : in std_logic_vector(15 downto 0);
    dtoa_data1 : in std_logic_vector(15 downto 0);
    dtoa_data2 : in std_logic_vector(15 downto 0);
    dtoa_data3 : in std_logic_vector(15 downto 0);
    dtoa_select : out std_logic_vector(1 downto 0);
    dtoa_clock : out std_logic_vector(1 downto 0);
    dtoa_din : out std_logic_vector(1 downto 0)
  );
end MinSysEmbedProc_dtoa_converter_tl_0_wrapper;

architecture STRUCTURE of MinSysEmbedProc_dtoa_converter_tl_0_wrapper is

  component dtoa_converter_tl is
    port (
      slow_clk : in std_logic;
      rst : in std_logic;
      dtoa_start : in std_logic_vector(1 downto 0);
      dtoa_data0 : in std_logic_vector(15 downto 0);
      dtoa_data1 : in std_logic_vector(15 downto 0);
      dtoa_data2 : in std_logic_vector(15 downto 0);
      dtoa_data3 : in std_logic_vector(15 downto 0);
      dtoa_select : out std_logic_vector(1 downto 0);
      dtoa_clock : out std_logic_vector(1 downto 0);
      dtoa_din : out std_logic_vector(1 downto 0)
    );
  end component;

begin

  dtoa_converter_tl_0 : dtoa_converter_tl
    port map (
      slow_clk => slow_clk,
      rst => rst,
      dtoa_start => dtoa_start,
      dtoa_data0 => dtoa_data0,
      dtoa_data1 => dtoa_data1,
      dtoa_data2 => dtoa_data2,
      dtoa_data3 => dtoa_data3,
      dtoa_select => dtoa_select,
      dtoa_clock => dtoa_clock,
      dtoa_din => dtoa_din
    );

end architecture STRUCTURE;

