-------------------------------------------------------------------------------
-- MinSysEmbedProc_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity MinSysEmbedProc_stub is
  port (
    fpga_0_clk_1_sys_clk_pin : in std_logic;
    fpga_0_rst_1_sys_rst_pin : in std_logic;
    xps_uartlite_0_RX_pin : in std_logic;
    xps_uartlite_0_TX_pin : out std_logic;
    dtoa_converter_tl_0_dtoa_select_pin : out std_logic_vector(1 downto 0);
    dtoa_converter_tl_0_dtoa_clock_pin : out std_logic_vector(1 downto 0);
    dtoa_converter_tl_0_dtoa_din_pin : out std_logic_vector(1 downto 0);
    data_input_tl_0_miso_all_pin : in std_logic_vector(5 downto 0);
    data_input_tl_0_jfrc_convert_pin : in std_logic;
    data_input_tl_0_jfrc16_sel_pin : in std_logic_vector(3 downto 0);
    data_input_tl_0_JFRC32RESET_NOT_pin : in std_logic;
    data_input_tl_0_SReady_pin : out std_logic;
    data_input_tl_0_SClock_out_pin : out std_logic;
    data_input_tl_0_AD7982_convert_all_pin : out std_logic_vector(5 downto 0);
    data_input_tl_0_AD7982_DSI_all_pin : out std_logic_vector(5 downto 0);
    data_input_tl_0_Buffer_0_Fill_pin : out std_logic;
    rtephyseng_plbw_0_buffer_0_fill_pin : in std_logic;
    rtephyseng_plbw_0_new_sample_available_pin : out std_logic;
    rtephyseng_plbw_0_control16_pin : out std_logic
  );
end MinSysEmbedProc_stub;

architecture STRUCTURE of MinSysEmbedProc_stub is

  component MinSysEmbedProc is
    port (
      fpga_0_clk_1_sys_clk_pin : in std_logic;
      fpga_0_rst_1_sys_rst_pin : in std_logic;
      xps_uartlite_0_RX_pin : in std_logic;
      xps_uartlite_0_TX_pin : out std_logic;
      dtoa_converter_tl_0_dtoa_select_pin : out std_logic_vector(1 downto 0);
      dtoa_converter_tl_0_dtoa_clock_pin : out std_logic_vector(1 downto 0);
      dtoa_converter_tl_0_dtoa_din_pin : out std_logic_vector(1 downto 0);
      data_input_tl_0_miso_all_pin : in std_logic_vector(5 downto 0);
      data_input_tl_0_jfrc_convert_pin : in std_logic;
      data_input_tl_0_jfrc16_sel_pin : in std_logic_vector(3 downto 0);
      data_input_tl_0_JFRC32RESET_NOT_pin : in std_logic;
      data_input_tl_0_SReady_pin : out std_logic;
      data_input_tl_0_SClock_out_pin : out std_logic;
      data_input_tl_0_AD7982_convert_all_pin : out std_logic_vector(5 downto 0);
      data_input_tl_0_AD7982_DSI_all_pin : out std_logic_vector(5 downto 0);
      data_input_tl_0_Buffer_0_Fill_pin : out std_logic;
      rtephyseng_plbw_0_buffer_0_fill_pin : in std_logic;
      rtephyseng_plbw_0_new_sample_available_pin : out std_logic;
      rtephyseng_plbw_0_control16_pin : out std_logic
    );
  end component;

 attribute BOX_TYPE : STRING;
 attribute BOX_TYPE of MinSysEmbedProc : component is "user_black_box";

begin

  MinSysEmbedProc_i : MinSysEmbedProc
    port map (
      fpga_0_clk_1_sys_clk_pin => fpga_0_clk_1_sys_clk_pin,
      fpga_0_rst_1_sys_rst_pin => fpga_0_rst_1_sys_rst_pin,
      xps_uartlite_0_RX_pin => xps_uartlite_0_RX_pin,
      xps_uartlite_0_TX_pin => xps_uartlite_0_TX_pin,
      dtoa_converter_tl_0_dtoa_select_pin => dtoa_converter_tl_0_dtoa_select_pin,
      dtoa_converter_tl_0_dtoa_clock_pin => dtoa_converter_tl_0_dtoa_clock_pin,
      dtoa_converter_tl_0_dtoa_din_pin => dtoa_converter_tl_0_dtoa_din_pin,
      data_input_tl_0_miso_all_pin => data_input_tl_0_miso_all_pin,
      data_input_tl_0_jfrc_convert_pin => data_input_tl_0_jfrc_convert_pin,
      data_input_tl_0_jfrc16_sel_pin => data_input_tl_0_jfrc16_sel_pin,
      data_input_tl_0_JFRC32RESET_NOT_pin => data_input_tl_0_JFRC32RESET_NOT_pin,
      data_input_tl_0_SReady_pin => data_input_tl_0_SReady_pin,
      data_input_tl_0_SClock_out_pin => data_input_tl_0_SClock_out_pin,
      data_input_tl_0_AD7982_convert_all_pin => data_input_tl_0_AD7982_convert_all_pin,
      data_input_tl_0_AD7982_DSI_all_pin => data_input_tl_0_AD7982_DSI_all_pin,
      data_input_tl_0_Buffer_0_Fill_pin => data_input_tl_0_Buffer_0_Fill_pin,
      rtephyseng_plbw_0_buffer_0_fill_pin => rtephyseng_plbw_0_buffer_0_fill_pin,
      rtephyseng_plbw_0_new_sample_available_pin => rtephyseng_plbw_0_new_sample_available_pin,
      rtephyseng_plbw_0_control16_pin => rtephyseng_plbw_0_control16_pin
    );

end architecture STRUCTURE;

