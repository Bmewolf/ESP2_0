-------------------------------------------------------------------------------
-- MinSysEmbedProc_rtephyseng_plbw_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library rtephyseng_plbw_v2_00_a;
use rtephyseng_plbw_v2_00_a.all;

entity MinSysEmbedProc_rtephyseng_plbw_0_wrapper is
  port (
    atod_datamem_addr : in std_logic_vector(0 to 9);
    atod_datamem_data : in std_logic_vector(0 to 15);
    atod_datamem_we : in std_logic;
    buffer_0_fill : in std_logic;
    splb_clk : in std_logic;
    plb_abus : in std_logic_vector(0 to 31);
    plb_pavalid : in std_logic;
    plb_rnw : in std_logic;
    plb_wrdbus : in std_logic_vector(0 to 31);
    spare_bit_1 : in std_logic;
    splb_rst : in std_logic;
    control16 : out std_logic;
    dtoa0_data_rega : out std_logic_vector(0 to 15);
    dtoa0_data_regb : out std_logic_vector(0 to 15);
    dtoa1_data_rega : out std_logic_vector(0 to 15);
    dtoa1_data_regb : out std_logic_vector(0 to 15);
    dtoa_start : out std_logic_vector(0 to 1);
    eng_reset : out std_logic;
    hs32 : out std_logic;
    new_sample_available : out std_logic;
    sl_addrack : out std_logic;
    sl_rdcomp : out std_logic;
    sl_rddack : out std_logic;
    sl_rddbus : out std_logic_vector(0 to 31);
    sl_wait : out std_logic;
    sl_wrcomp : out std_logic;
    sl_wrdack : out std_logic;
    spare : out std_logic_vector(0 to 9)
  );
end MinSysEmbedProc_rtephyseng_plbw_0_wrapper;

architecture STRUCTURE of MinSysEmbedProc_rtephyseng_plbw_0_wrapper is

  component rtephyseng_plbw is
    generic (
      C_BASEADDR : std_logic_vector(0 to 31);
      C_HIGHADDR : std_logic_vector(0 to 31);
      C_SPLB_AWIDTH : INTEGER;
      C_SPLB_DWIDTH : INTEGER;
      C_SPLB_MID_WIDTH : INTEGER;
      C_SPLB_NATIVE_DWIDTH : INTEGER;
      C_SPLB_NUM_MASTERS : INTEGER;
      C_SPLB_SUPPORT_BURSTS : INTEGER;
      C_MEMMAP_ESP_STATUS_REG : integer;
      C_MEMMAP_ESP_STATUS_REG_N_BITS : integer;
      C_MEMMAP_ESP_STATUS_REG_BIN_PT : integer;
      C_MEMMAP_E1_TEMPLATE_ACC_REG : integer;
      C_MEMMAP_E1_TEMPLATE_ACC_REG_N_BITS : integer;
      C_MEMMAP_E1_TEMPLATE_ACC_REG_BIN_PT : integer;
      C_MEMMAP_E1_FILTER_OUT_REG : integer;
      C_MEMMAP_E1_FILTER_OUT_REG_N_BITS : integer;
      C_MEMMAP_E1_FILTER_OUT_REG_BIN_PT : integer;
      C_MEMMAP_ESP_CONTROL_REG : integer;
      C_MEMMAP_ESP_CONTROL_REG_N_BITS : integer;
      C_MEMMAP_ESP_CONTROL_REG_BIN_PT : integer;
      C_MEMMAP_DTOA1_DATA_REGB : integer;
      C_MEMMAP_DTOA1_DATA_REGB_N_BITS : integer;
      C_MEMMAP_DTOA1_DATA_REGB_BIN_PT : integer;
      C_MEMMAP_DTOA1_DATA_REGA : integer;
      C_MEMMAP_DTOA1_DATA_REGA_N_BITS : integer;
      C_MEMMAP_DTOA1_DATA_REGA_BIN_PT : integer;
      C_MEMMAP_DTOA0_DATA_REGB : integer;
      C_MEMMAP_DTOA0_DATA_REGB_N_BITS : integer;
      C_MEMMAP_DTOA0_DATA_REGB_BIN_PT : integer;
      C_MEMMAP_DTOA0_DATA_REGA : integer;
      C_MEMMAP_DTOA0_DATA_REGA_N_BITS : integer;
      C_MEMMAP_DTOA0_DATA_REGA_BIN_PT : integer;
      C_MEMMAP_E1_DECIMATION : integer;
      C_MEMMAP_E1_DECIMATION_N_BITS : integer;
      C_MEMMAP_E1_DECIMATION_BIN_PT : integer;
      C_MEMMAP_E1_FILTER_LENGTH : integer;
      C_MEMMAP_E1_FILTER_LENGTH_N_BITS : integer;
      C_MEMMAP_E1_FILTER_LENGTH_BIN_PT : integer;
      C_MEMMAP_E1_TEMPLATE_SIZE : integer;
      C_MEMMAP_E1_TEMPLATE_SIZE_N_BITS : integer;
      C_MEMMAP_E1_TEMPLATE_SIZE_BIN_PT : integer;
      C_MEMMAP_ATOD_DATAMEM : integer;
      C_MEMMAP_ATOD_DATAMEM_N_BITS : integer;
      C_MEMMAP_ATOD_DATAMEM_BIN_PT : integer;
      C_MEMMAP_ATOD_DATAMEM_DEPTH : integer;
      C_MEMMAP_E1_FILTER_RAM : integer;
      C_MEMMAP_E1_FILTER_RAM_N_BITS : integer;
      C_MEMMAP_E1_FILTER_RAM_BIN_PT : integer;
      C_MEMMAP_E1_FILTER_RAM_DEPTH : integer;
      C_MEMMAP_E1_DATA_RAM : integer;
      C_MEMMAP_E1_DATA_RAM_N_BITS : integer;
      C_MEMMAP_E1_DATA_RAM_BIN_PT : integer;
      C_MEMMAP_E1_DATA_RAM_DEPTH : integer;
      C_MEMMAP_E1_TEMPLATE_RAM : integer;
      C_MEMMAP_E1_TEMPLATE_RAM_N_BITS : integer;
      C_MEMMAP_E1_TEMPLATE_RAM_BIN_PT : integer;
      C_MEMMAP_E1_TEMPLATE_RAM_DEPTH : integer
    );
    port (
      atod_datamem_addr : in std_logic_vector(0 to (10-1));
      atod_datamem_data : in std_logic_vector(0 to (16-1));
      atod_datamem_we : in std_logic;
      buffer_0_fill : in std_logic;
      splb_clk : in std_logic;
      plb_abus : in std_logic_vector(0 to (32-1));
      plb_pavalid : in std_logic;
      plb_rnw : in std_logic;
      plb_wrdbus : in std_logic_vector(0 to (C_SPLB_DWIDTH-1));
      spare_bit_1 : in std_logic;
      splb_rst : in std_logic;
      control16 : out std_logic;
      dtoa0_data_rega : out std_logic_vector(0 to (16-1));
      dtoa0_data_regb : out std_logic_vector(0 to (16-1));
      dtoa1_data_rega : out std_logic_vector(0 to (16-1));
      dtoa1_data_regb : out std_logic_vector(0 to (16-1));
      dtoa_start : out std_logic_vector(0 to (2-1));
      eng_reset : out std_logic;
      hs32 : out std_logic;
      new_sample_available : out std_logic;
      sl_addrack : out std_logic;
      sl_rdcomp : out std_logic;
      sl_rddack : out std_logic;
      sl_rddbus : out std_logic_vector(0 to (C_SPLB_DWIDTH-1));
      sl_wait : out std_logic;
      sl_wrcomp : out std_logic;
      sl_wrdack : out std_logic;
      spare : out std_logic_vector(0 to (10-1))
    );
  end component;

begin

  rtephyseng_plbw_0 : rtephyseng_plbw
    generic map (
      C_BASEADDR => X"c3800000",
      C_HIGHADDR => X"c380ffff",
      C_SPLB_AWIDTH => 32,
      C_SPLB_DWIDTH => 32,
      C_SPLB_MID_WIDTH => 1,
      C_SPLB_NATIVE_DWIDTH => 32,
      C_SPLB_NUM_MASTERS => 2,
      C_SPLB_SUPPORT_BURSTS => 0,
      C_MEMMAP_ESP_STATUS_REG => 16#4000#,
      C_MEMMAP_ESP_STATUS_REG_N_BITS => 16,
      C_MEMMAP_ESP_STATUS_REG_BIN_PT => 0,
      C_MEMMAP_E1_TEMPLATE_ACC_REG => 16#4004#,
      C_MEMMAP_E1_TEMPLATE_ACC_REG_N_BITS => 16,
      C_MEMMAP_E1_TEMPLATE_ACC_REG_BIN_PT => 0,
      C_MEMMAP_E1_FILTER_OUT_REG => 16#4008#,
      C_MEMMAP_E1_FILTER_OUT_REG_N_BITS => 16,
      C_MEMMAP_E1_FILTER_OUT_REG_BIN_PT => 15,
      C_MEMMAP_ESP_CONTROL_REG => 16#4000#,
      C_MEMMAP_ESP_CONTROL_REG_N_BITS => 16,
      C_MEMMAP_ESP_CONTROL_REG_BIN_PT => 0,
      C_MEMMAP_DTOA1_DATA_REGB => 16#4004#,
      C_MEMMAP_DTOA1_DATA_REGB_N_BITS => 16,
      C_MEMMAP_DTOA1_DATA_REGB_BIN_PT => 0,
      C_MEMMAP_DTOA1_DATA_REGA => 16#4008#,
      C_MEMMAP_DTOA1_DATA_REGA_N_BITS => 16,
      C_MEMMAP_DTOA1_DATA_REGA_BIN_PT => 0,
      C_MEMMAP_DTOA0_DATA_REGB => 16#400C#,
      C_MEMMAP_DTOA0_DATA_REGB_N_BITS => 16,
      C_MEMMAP_DTOA0_DATA_REGB_BIN_PT => 0,
      C_MEMMAP_DTOA0_DATA_REGA => 16#4010#,
      C_MEMMAP_DTOA0_DATA_REGA_N_BITS => 16,
      C_MEMMAP_DTOA0_DATA_REGA_BIN_PT => 0,
      C_MEMMAP_E1_DECIMATION => 16#4014#,
      C_MEMMAP_E1_DECIMATION_N_BITS => 8,
      C_MEMMAP_E1_DECIMATION_BIN_PT => 0,
      C_MEMMAP_E1_FILTER_LENGTH => 16#4018#,
      C_MEMMAP_E1_FILTER_LENGTH_N_BITS => 16,
      C_MEMMAP_E1_FILTER_LENGTH_BIN_PT => 0,
      C_MEMMAP_E1_TEMPLATE_SIZE => 16#401C#,
      C_MEMMAP_E1_TEMPLATE_SIZE_N_BITS => 16,
      C_MEMMAP_E1_TEMPLATE_SIZE_BIN_PT => 0,
      C_MEMMAP_ATOD_DATAMEM => 16#0000#,
      C_MEMMAP_ATOD_DATAMEM_N_BITS => 16,
      C_MEMMAP_ATOD_DATAMEM_BIN_PT => 0,
      C_MEMMAP_ATOD_DATAMEM_DEPTH => 1024,
      C_MEMMAP_E1_FILTER_RAM => 16#1000#,
      C_MEMMAP_E1_FILTER_RAM_N_BITS => 16,
      C_MEMMAP_E1_FILTER_RAM_BIN_PT => 15,
      C_MEMMAP_E1_FILTER_RAM_DEPTH => 128,
      C_MEMMAP_E1_DATA_RAM => 16#1200#,
      C_MEMMAP_E1_DATA_RAM_N_BITS => 16,
      C_MEMMAP_E1_DATA_RAM_BIN_PT => 15,
      C_MEMMAP_E1_DATA_RAM_DEPTH => 128,
      C_MEMMAP_E1_TEMPLATE_RAM => 16#1400#,
      C_MEMMAP_E1_TEMPLATE_RAM_N_BITS => 16,
      C_MEMMAP_E1_TEMPLATE_RAM_BIN_PT => 15,
      C_MEMMAP_E1_TEMPLATE_RAM_DEPTH => 128
    )
    port map (
      atod_datamem_addr => atod_datamem_addr,
      atod_datamem_data => atod_datamem_data,
      atod_datamem_we => atod_datamem_we,
      buffer_0_fill => buffer_0_fill,
      splb_clk => splb_clk,
      plb_abus => plb_abus,
      plb_pavalid => plb_pavalid,
      plb_rnw => plb_rnw,
      plb_wrdbus => plb_wrdbus,
      spare_bit_1 => spare_bit_1,
      splb_rst => splb_rst,
      control16 => control16,
      dtoa0_data_rega => dtoa0_data_rega,
      dtoa0_data_regb => dtoa0_data_regb,
      dtoa1_data_rega => dtoa1_data_rega,
      dtoa1_data_regb => dtoa1_data_regb,
      dtoa_start => dtoa_start,
      eng_reset => eng_reset,
      hs32 => hs32,
      new_sample_available => new_sample_available,
      sl_addrack => sl_addrack,
      sl_rdcomp => sl_rdcomp,
      sl_rddack => sl_rddack,
      sl_rddbus => sl_rddbus,
      sl_wait => sl_wait,
      sl_wrcomp => sl_wrcomp,
      sl_wrdack => sl_wrdack,
      spare => spare
    );

end architecture STRUCTURE;

