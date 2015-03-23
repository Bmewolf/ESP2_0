-------------------------------------------------------------------
-- System Generator version 11.1.00 VHDL source file.
--
-- Copyright(C) 2008 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2007 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity plbaddrpref is
    generic (
        C_BASEADDR : std_logic_vector(31 downto 0) := X"80000000";
        C_HIGHADDR : std_logic_vector(31 downto 0) := X"8000FFFF";
        C_SPLB_DWIDTH         : integer range 32 to 128   := 32;
        C_SPLB_NATIVE_DWIDTH  : integer range 32 to 32    := 32
    );
    port (
        addrpref           : out std_logic_vector(17-1 downto 0);
        sl_rddbus          : out std_logic_vector(0 to C_SPLB_DWIDTH-1);
        plb_wrdbus         : in  std_logic_vector(0 to C_SPLB_DWIDTH-1);
        sgsl_rddbus        : in  std_logic_vector(0 to C_SPLB_NATIVE_DWIDTH-1);
        sgplb_wrdbus       : out std_logic_vector(0 to C_SPLB_NATIVE_DWIDTH-1)
    );
end plbaddrpref;

architecture behavior of plbaddrpref is

signal sl_rddbus_i            : std_logic_vector(0 to C_SPLB_DWIDTH-1);

begin
    addrpref <= C_BASEADDR(32-1 downto 15);

-------------------------------------------------------------------------------
-- Mux/Steer data/be's correctly for connect 32-bit slave to 128-bit plb
-------------------------------------------------------------------------------
GEN_128_TO_32_SLAVE : if C_SPLB_NATIVE_DWIDTH = 32 and C_SPLB_DWIDTH = 128 generate
begin
    -----------------------------------------------------------------------
    -- Map lower rd data to each quarter of the plb slave read bus
    -----------------------------------------------------------------------
    sl_rddbus_i(0 to 31)      <=  sgsl_rddbus(0 to C_SPLB_NATIVE_DWIDTH-1);
    sl_rddbus_i(32 to 63)     <=  sgsl_rddbus(0 to C_SPLB_NATIVE_DWIDTH-1);
    sl_rddbus_i(64 to 95)     <=  sgsl_rddbus(0 to C_SPLB_NATIVE_DWIDTH-1);
    sl_rddbus_i(96 to 127)    <=  sgsl_rddbus(0 to C_SPLB_NATIVE_DWIDTH-1);
end generate GEN_128_TO_32_SLAVE;

-------------------------------------------------------------------------------
-- Mux/Steer data/be's correctly for connect 32-bit slave to 64-bit plb
-------------------------------------------------------------------------------
GEN_64_TO_32_SLAVE : if C_SPLB_NATIVE_DWIDTH = 32 and C_SPLB_DWIDTH = 64 generate
begin
    ---------------------------------------------------------------------------        
    -- Map lower rd data to upper and lower halves of plb slave read bus
    ---------------------------------------------------------------------------        
    sl_rddbus_i(0 to 31)      <=  sgsl_rddbus(0 to C_SPLB_NATIVE_DWIDTH-1);
    sl_rddbus_i(32 to 63)     <=  sgsl_rddbus(0 to C_SPLB_NATIVE_DWIDTH-1);
end generate GEN_64_TO_32_SLAVE;

-------------------------------------------------------------------------------
-- IPIF DWidth = PLB DWidth
-- If IPIF Slave Data width is equal to the PLB Bus Data Width
-- Then BE and Read Data Bus map directly to eachother.
-------------------------------------------------------------------------------
GEN_FOR_EQUAL_SLAVE : if C_SPLB_NATIVE_DWIDTH = C_SPLB_DWIDTH generate
    sl_rddbus_i    <= sgsl_rddbus;
end generate GEN_FOR_EQUAL_SLAVE;

    sl_rddbus       <= sl_rddbus_i;
    sgplb_wrdbus    <= plb_wrdbus(0 to C_SPLB_NATIVE_DWIDTH-1);

end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity rtephyseng_plbw is
  generic (
    C_BASEADDR: std_logic_vector(31 downto 0) := X"80000000";
    C_HIGHADDR: std_logic_vector(31 downto 0) := X"80000FFF";
    C_SPLB_AWIDTH: integer := 0;
    C_SPLB_DWIDTH: integer := 0;
    C_SPLB_MID_WIDTH: integer := 0;
    C_SPLB_NATIVE_DWIDTH: integer := 0;
    C_SPLB_NUM_MASTERS: integer := 0;
    C_SPLB_SUPPORT_BURSTS: integer := 0
  );
  port (
    atod_datamem_addr: in std_logic_vector(0 to 9); 
    atod_datamem_data: in std_logic_vector(0 to 15); 
    atod_datamem_we: in std_logic; 
    buffer_0_fill: in std_logic; 
    from_register1_x1_data_out: in std_logic_vector(0 to 15); 
    from_register2_x1_data_out: in std_logic_vector(0 to 15); 
    from_register3_x0_data_out: in std_logic_vector(0 to 7); 
    plb_abus: in std_logic_vector(0 to 31); 
    plb_pavalid: in std_logic; 
    plb_rnw: in std_logic; 
    plb_wrdbus: in std_logic_vector(0 to C_SPLB_DWIDTH-1); 
    spare_bit_1: in std_logic; 
    splb_clk: in std_logic; 
    splb_rst: in std_logic; 
    control16: out std_logic; 
    dtoa0_data_rega: out std_logic_vector(0 to 15); 
    dtoa0_data_regb: out std_logic_vector(0 to 15); 
    dtoa1_data_rega: out std_logic_vector(0 to 15); 
    dtoa1_data_regb: out std_logic_vector(0 to 15); 
    dtoa_start: out std_logic_vector(0 to 1); 
    eng_reset: out std_logic; 
    hs32: out std_logic; 
    new_sample_available: out std_logic; 
    sl_addrack: out std_logic; 
    sl_rdcomp: out std_logic; 
    sl_rddack: out std_logic; 
    sl_rddbus: out std_logic_vector(0 to C_SPLB_DWIDTH-1); 
    sl_wait: out std_logic; 
    sl_wrcomp: out std_logic; 
    sl_wrdack: out std_logic; 
    spare: out std_logic_vector(0 to 9)
  );
end rtephyseng_plbw;

architecture structural of rtephyseng_plbw is
  signal atod_datamem_addr_x0: std_logic_vector(9 downto 0);
  signal atod_datamem_data_x0: std_logic_vector(15 downto 0);
  signal atod_datamem_we_x0: std_logic;
  signal buffer_0_fill_x0: std_logic;
  signal clk: std_logic;
  signal control16_x0: std_logic;
  signal dtoa0_data_rega_x0: std_logic_vector(15 downto 0);
  signal dtoa0_data_regb_x0: std_logic_vector(15 downto 0);
  signal dtoa1_data_rega_x0: std_logic_vector(15 downto 0);
  signal dtoa1_data_regb_x0: std_logic_vector(15 downto 0);
  signal dtoa_start_x0: std_logic_vector(1 downto 0);
  signal eng_reset_x0: std_logic;
  signal from_register1_x1_data_out_x0: std_logic_vector(15 downto 0);
  signal from_register2_x1_data_out_x0: std_logic_vector(15 downto 0);
  signal from_register3_x0_data_out_x0: std_logic_vector(7 downto 0);
  signal hs32_x0: std_logic;
  signal new_sample_available_x0: std_logic;
  signal plb_abus_x0: std_logic_vector(31 downto 0);
  signal plb_pavalid_x0: std_logic;
  signal plb_rnw_x0: std_logic;
  signal plbaddrpref_addrpref_net: std_logic_vector(16 downto 0);
  signal plbaddrpref_plb_wrdbus_net: std_logic_vector(C_SPLB_DWIDTH-1 downto 0);
  signal plbaddrpref_sgplb_wrdbus_net: std_logic_vector(31 downto 0);
  signal plbaddrpref_sgsl_rddbus_net: std_logic_vector(31 downto 0);
  signal plbaddrpref_sl_rddbus_net: std_logic_vector(C_SPLB_DWIDTH-1 downto 0);
  signal sl_addrack_x0: std_logic;
  signal sl_rdcomp_x0: std_logic;
  signal sl_rddack_x0: std_logic;
  signal sl_wait_x0: std_logic;
  signal sl_wrcomp_x0: std_logic;
  signal sl_wrdack_x0: std_logic;
  signal spare_bit_1_x0: std_logic;
  signal spare_x0: std_logic_vector(9 downto 0);
  signal splb_rst_x0: std_logic;

begin
  atod_datamem_addr_x0 <= atod_datamem_addr;
  atod_datamem_data_x0 <= atod_datamem_data;
  atod_datamem_we_x0 <= atod_datamem_we;
  buffer_0_fill_x0 <= buffer_0_fill;
  from_register1_x1_data_out_x0 <= from_register1_x1_data_out;
  from_register2_x1_data_out_x0 <= from_register2_x1_data_out;
  from_register3_x0_data_out_x0 <= from_register3_x0_data_out;
  plb_abus_x0 <= plb_abus;
  plb_pavalid_x0 <= plb_pavalid;
  plb_rnw_x0 <= plb_rnw;
  plbaddrpref_plb_wrdbus_net <= plb_wrdbus;
  spare_bit_1_x0 <= spare_bit_1;
  clk <= splb_clk;
  splb_rst_x0 <= splb_rst;
  control16 <= control16_x0;
  dtoa0_data_rega <= dtoa0_data_rega_x0;
  dtoa0_data_regb <= dtoa0_data_regb_x0;
  dtoa1_data_rega <= dtoa1_data_rega_x0;
  dtoa1_data_regb <= dtoa1_data_regb_x0;
  dtoa_start <= dtoa_start_x0;
  eng_reset <= eng_reset_x0;
  hs32 <= hs32_x0;
  new_sample_available <= new_sample_available_x0;
  sl_addrack <= sl_addrack_x0;
  sl_rdcomp <= sl_rdcomp_x0;
  sl_rddack <= sl_rddack_x0;
  sl_rddbus <= plbaddrpref_sl_rddbus_net;
  sl_wait <= sl_wait_x0;
  sl_wrcomp <= sl_wrcomp_x0;
  sl_wrdack <= sl_wrdack_x0;
  spare <= spare_x0;

  plbaddrpref_x0: entity work.plbaddrpref
    generic map (
      C_BASEADDR => C_BASEADDR,
      C_HIGHADDR => C_HIGHADDR,
      C_SPLB_DWIDTH => C_SPLB_DWIDTH,
      C_SPLB_NATIVE_DWIDTH => C_SPLB_NATIVE_DWIDTH
    )
    port map (
      plb_wrdbus => plbaddrpref_plb_wrdbus_net,
      sgsl_rddbus => plbaddrpref_sgsl_rddbus_net,
      addrpref => plbaddrpref_addrpref_net,
      sgplb_wrdbus => plbaddrpref_sgplb_wrdbus_net,
      sl_rddbus => plbaddrpref_sl_rddbus_net
    );

  sysgen_dut: entity work.rtephyseng_cw
    port map (
      atod_datamem_addr => atod_datamem_addr_x0,
      atod_datamem_data => atod_datamem_data_x0,
      atod_datamem_we => atod_datamem_we_x0,
      buffer_0_fill => buffer_0_fill_x0,
      clk => clk,
      from_register1_x1_data_out => from_register1_x1_data_out_x0,
      from_register2_x1_data_out => from_register2_x1_data_out_x0,
      from_register3_x0_data_out => from_register3_x0_data_out_x0,
      plb_abus => plb_abus_x0,
      plb_pavalid => plb_pavalid_x0,
      plb_rnw => plb_rnw_x0,
      plb_wrdbus => plbaddrpref_sgplb_wrdbus_net,
      sg_plb_addrpref => plbaddrpref_addrpref_net,
      spare_bit_1 => spare_bit_1_x0,
      splb_rst => splb_rst_x0,
      control16 => control16_x0,
      dtoa0_data_rega => dtoa0_data_rega_x0,
      dtoa0_data_regb => dtoa0_data_regb_x0,
      dtoa1_data_rega => dtoa1_data_rega_x0,
      dtoa1_data_regb => dtoa1_data_regb_x0,
      dtoa_start => dtoa_start_x0,
      eng_reset => eng_reset_x0,
      hs32 => hs32_x0,
      new_sample_available => new_sample_available_x0,
      sl_addrack => sl_addrack_x0,
      sl_rdcomp => sl_rdcomp_x0,
      sl_rddack => sl_rddack_x0,
      sl_rddbus => plbaddrpref_sgsl_rddbus_net,
      sl_wait => sl_wait_x0,
      sl_wrcomp => sl_wrcomp_x0,
      sl_wrdack => sl_wrdack_x0,
      spare => spare_x0
    );

end structural;
