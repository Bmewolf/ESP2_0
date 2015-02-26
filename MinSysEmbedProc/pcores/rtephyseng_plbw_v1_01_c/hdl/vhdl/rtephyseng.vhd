--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_50672071db3158cd.vhd when simulating
-- the core, addsb_11_0_50672071db3158cd. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_50672071db3158cd IS
  PORT (
    a : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END addsb_11_0_50672071db3158cd;

ARCHITECTURE addsb_11_0_50672071db3158cd_a OF addsb_11_0_50672071db3158cd IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_50672071db3158cd
  PORT (
    a : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_50672071db3158cd USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 17,
      c_add_mode => 1,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "00000000000000000",
      c_b_width => 17,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 17,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "spartan3a"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_50672071db3158cd
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_50672071db3158cd_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_72_24c7b3c86a194f2d.vhd when simulating
-- the core, bmg_72_24c7b3c86a194f2d. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_72_24c7b3c86a194f2d IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END bmg_72_24c7b3c86a194f2d;

ARCHITECTURE bmg_72_24c7b3c86a194f2d_a OF bmg_72_24c7b3c86a194f2d IS
-- synthesis translate_off
COMPONENT wrapped_bmg_72_24c7b3c86a194f2d
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_72_24c7b3c86a194f2d USE ENTITY XilinxCoreLib.blk_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addra_width => 7,
      c_addrb_width => 7,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 1,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_enable_32bit_address => 0,
      c_family => "spartan3",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 1,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 0,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_72_24c7b3c86a194f2d.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 2,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 128,
      c_read_depth_b => 128,
      c_read_width_a => 16,
      c_read_width_b => 16,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 128,
      c_write_depth_b => 128,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 16,
      c_write_width_b => 16,
      c_xdevicefamily => "spartan3a"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_72_24c7b3c86a194f2d
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta,
    clkb => clkb,
    enb => enb,
    web => web,
    addrb => addrb,
    dinb => dinb,
    doutb => doutb
  );
-- synthesis translate_on

END bmg_72_24c7b3c86a194f2d_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_42baf13c51a596fc.vhd when simulating
-- the core, cntr_11_0_42baf13c51a596fc. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_42baf13c51a596fc IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END cntr_11_0_42baf13c51a596fc;

ARCHITECTURE cntr_11_0_42baf13c51a596fc_a OF cntr_11_0_42baf13c51a596fc IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_42baf13c51a596fc
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_42baf13c51a596fc USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 1,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 1,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 7,
      c_xdevicefamily => "spartan3a"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_42baf13c51a596fc
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    load => load,
    l => l,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_42baf13c51a596fc_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_45469457c0a77b17.vhd when simulating
-- the core, cntr_11_0_45469457c0a77b17. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_45469457c0a77b17 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END cntr_11_0_45469457c0a77b17;

ARCHITECTURE cntr_11_0_45469457c0a77b17_a OF cntr_11_0_45469457c0a77b17 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_45469457c0a77b17
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_45469457c0a77b17 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 7,
      c_xdevicefamily => "spartan3a"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_45469457c0a77b17
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_45469457c0a77b17_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_4c9ff32156a8ea89.vhd when simulating
-- the core, cntr_11_0_4c9ff32156a8ea89. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_4c9ff32156a8ea89 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END cntr_11_0_4c9ff32156a8ea89;

ARCHITECTURE cntr_11_0_4c9ff32156a8ea89_a OF cntr_11_0_4c9ff32156a8ea89 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_4c9ff32156a8ea89
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_4c9ff32156a8ea89 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 1,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 1,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 8,
      c_xdevicefamily => "spartan3a"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_4c9ff32156a8ea89
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    load => load,
    l => l,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_4c9ff32156a8ea89_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file mult_11_2_22d5399536538cd3.vhd when simulating
-- the core, mult_11_2_22d5399536538cd3. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY mult_11_2_22d5399536538cd3 IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END mult_11_2_22d5399536538cd3;

ARCHITECTURE mult_11_2_22d5399536538cd3_a OF mult_11_2_22d5399536538cd3 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_22d5399536538cd3
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_22d5399536538cd3 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 16,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 2,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 31,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "spartan3a"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_22d5399536538cd3
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_22d5399536538cd3_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file mult_11_2_eb93f59d418f9076.vhd when simulating
-- the core, mult_11_2_eb93f59d418f9076. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY mult_11_2_eb93f59d418f9076 IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END mult_11_2_eb93f59d418f9076;

ARCHITECTURE mult_11_2_eb93f59d418f9076_a OF mult_11_2_eb93f59d418f9076 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_eb93f59d418f9076
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_eb93f59d418f9076 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 16,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 3,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 31,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "spartan3a"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_eb93f59d418f9076
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_eb93f59d418f9076_a;

-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
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
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
package conv_pkg is
    constant simulating : boolean := false
      -- synopsys translate_off
        or true
      -- synopsys translate_on
    ;
    constant xlUnsigned : integer := 1;
    constant xlSigned : integer := 2;
    constant xlFloat : integer := 3;
    constant xlWrap : integer := 1;
    constant xlSaturate : integer := 2;
    constant xlTruncate : integer := 1;
    constant xlRound : integer := 2;
    constant xlRoundBanker : integer := 3;
    constant xlAddMode : integer := 1;
    constant xlSubMode : integer := 2;
    attribute black_box : boolean;
    attribute syn_black_box : boolean;
    attribute fpga_dont_touch: string;
    attribute box_type :  string;
    attribute keep : string;
    attribute syn_keep : boolean;
    function std_logic_vector_to_unsigned(inp : std_logic_vector) return unsigned;
    function unsigned_to_std_logic_vector(inp : unsigned) return std_logic_vector;
    function std_logic_vector_to_signed(inp : std_logic_vector) return signed;
    function signed_to_std_logic_vector(inp : signed) return std_logic_vector;
    function unsigned_to_signed(inp : unsigned) return signed;
    function signed_to_unsigned(inp : signed) return unsigned;
    function pos(inp : std_logic_vector; arith : INTEGER) return boolean;
    function all_same(inp: std_logic_vector) return boolean;
    function all_zeros(inp: std_logic_vector) return boolean;
    function is_point_five(inp: std_logic_vector) return boolean;
    function all_ones(inp: std_logic_vector) return boolean;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector;
    function cast (inp : std_logic_vector; old_bin_pt,
                   new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
        return std_logic_vector;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
        return unsigned;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
        return unsigned;
    function s2s_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function u2s_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function s2u_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2u_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2v_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function s2v_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                    new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function max_signed(width : INTEGER) return std_logic_vector;
    function min_signed(width : INTEGER) return std_logic_vector;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER) return std_logic_vector;
    function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                        old_arith, new_width, new_bin_pt, new_arith : INTEGER)
                        return std_logic_vector;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                          new_width: INTEGER)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width, arith : integer)
        return std_logic_vector;
    function max(L, R: INTEGER) return INTEGER;
    function min(L, R: INTEGER) return INTEGER;
    function "="(left,right: STRING) return boolean;
    function boolean_to_signed (inp : boolean; width: integer)
        return signed;
    function boolean_to_unsigned (inp : boolean; width: integer)
        return unsigned;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector;
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector;
    function hex_string_to_std_logic_vector (inp : string; width : integer)
        return std_logic_vector;
    function makeZeroBinStr (width : integer) return STRING;
    function and_reduce(inp: std_logic_vector) return std_logic;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean;
    function is_binary_string_undefined (inp : string)
        return boolean;
    function is_XorU(inp : std_logic_vector)
        return boolean;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector;
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector;
    constant display_precision : integer := 20;
    function real_to_string (inp : real) return string;
    function valid_bin_string(inp : string) return boolean;
    function std_logic_vector_to_bin_string(inp : std_logic_vector) return string;
    function std_logic_to_bin_string(inp : std_logic) return string;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string;
    type stdlogic_to_char_t is array(std_logic) of character;
    constant to_char : stdlogic_to_char_t := (
        'U' => 'U',
        'X' => 'X',
        '0' => '0',
        '1' => '1',
        'Z' => 'Z',
        'W' => 'W',
        'L' => 'L',
        'H' => 'H',
        '-' => '-');
    -- synopsys translate_on
end conv_pkg;
package body conv_pkg is
    function std_logic_vector_to_unsigned(inp : std_logic_vector)
        return unsigned
    is
    begin
        return unsigned (inp);
    end;
    function unsigned_to_std_logic_vector(inp : unsigned)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function std_logic_vector_to_signed(inp : std_logic_vector)
        return signed
    is
    begin
        return  signed (inp);
    end;
    function signed_to_std_logic_vector(inp : signed)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function unsigned_to_signed (inp : unsigned)
        return signed
    is
    begin
        return signed(std_logic_vector(inp));
    end;
    function signed_to_unsigned (inp : signed)
        return unsigned
    is
    begin
        return unsigned(std_logic_vector(inp));
    end;
    function pos(inp : std_logic_vector; arith : INTEGER)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            return true;
        else
            if vec(width-1) = '0' then
                return true;
            else
                return false;
            end if;
        end if;
        return true;
    end;
    function max_signed(width : INTEGER)
        return std_logic_vector
    is
        variable ones : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        ones := (others => '1');
        result(width-1) := '0';
        result(width-2 downto 0) := ones;
        return result;
    end;
    function min_signed(width : INTEGER)
        return std_logic_vector
    is
        variable zeros : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        zeros := (others => '0');
        result(width-1) := '1';
        result(width-2 downto 0) := zeros;
        return result;
    end;
    function and_reduce(inp: std_logic_vector) return std_logic
    is
        variable result: std_logic;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := vec(0);
        if width > 1 then
            for i in 1 to width-1 loop
                result := result and vec(i);
            end loop;
        end if;
        return result;
    end;
    function all_same(inp: std_logic_vector) return boolean
    is
        variable result: boolean;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := true;
        if width > 0 then
            for i in 1 to width-1 loop
                if vec(i) /= vec(0) then
                    result := false;
                end if;
            end loop;
        end if;
        return result;
    end;
    function all_zeros(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable zero : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        zero := (others => '0');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(zero)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function is_point_five(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (width > 1) then
           if ((vec(width-1) = '1') and (all_zeros(vec(width-2 downto 0)) = true)) then
               result := true;
           else
               result := false;
           end if;
        else
           if (vec(width-1) = '1') then
               result := true;
           else
               result := false;
           end if;
        end if;
        return result;
    end;
    function all_ones(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable one : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        one := (others => '1');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(one)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function full_precision_num_width(quantization, overflow, old_width,
                                      old_bin_pt, old_arith,
                                      new_width, new_bin_pt, new_arith : INTEGER)
        return integer
    is
        variable result : integer;
    begin
        result := old_width + 2;
        return result;
    end;
    function quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                 old_arith, new_width, new_bin_pt, new_arith
                                 : INTEGER)
        return integer
    is
        variable right_of_dp, left_of_dp, result : integer;
    begin
        right_of_dp := max(new_bin_pt, old_bin_pt);
        left_of_dp := max((new_width - new_bin_pt), (old_width - old_bin_pt));
        result := (old_width + 2) + (new_bin_pt - old_bin_pt);
        return result;
    end;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector
    is
        constant fp_width : integer :=
            full_precision_num_width(quantization, overflow, old_width,
                                     old_bin_pt, old_arith, new_width,
                                     new_bin_pt, new_arith);
        constant fp_bin_pt : integer := old_bin_pt;
        constant fp_arith : integer := old_arith;
        variable full_precision_result : std_logic_vector(fp_width-1 downto 0);
        constant q_width : integer :=
            quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith);
        constant q_bin_pt : integer := new_bin_pt;
        constant q_arith : integer := old_arith;
        variable quantized_result : std_logic_vector(q_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result := (others => '0');
        full_precision_result := cast(inp, old_bin_pt, fp_width, fp_bin_pt,
                                      fp_arith);
        if (quantization = xlRound) then
            quantized_result := round_towards_inf(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        elsif (quantization = xlRoundBanker) then
            quantized_result := round_towards_even(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        else
            quantized_result := trunc(full_precision_result, fp_width, fp_bin_pt,
                                      fp_arith, q_width, q_bin_pt, q_arith);
        end if;
        if (overflow = xlSaturate) then
            result := saturation_arith(quantized_result, q_width, q_bin_pt,
                                       q_arith, new_width, new_bin_pt, new_arith);
        else
             result := wrap_arith(quantized_result, q_width, q_bin_pt, q_arith,
                                  new_width, new_bin_pt, new_arith);
        end if;
        return result;
    end;
    function cast (inp : std_logic_vector; old_bin_pt, new_width,
                   new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        constant left_of_dp : integer := (new_width - new_bin_pt)
                                         - (old_width - old_bin_pt);
        constant right_of_dp : integer := (new_bin_pt - old_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable j   : integer;
    begin
        vec := inp;
        for i in new_width-1 downto 0 loop
            j := i - right_of_dp;
            if ( j > old_width-1) then
                if (new_arith = xlUnsigned) then
                    result(i) := '0';
                else
                    result(i) := vec(old_width-1);
                end if;
            elsif ( j >= 0) then
                result(i) := vec(j);
            else
                result(i) := '0';
            end if;
        end loop;
        return result;
    end;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant q_width : integer := quotient'length;
        constant f_width : integer := fraction'length;
        constant vec_MSB : integer := q_width+f_width-1;
        constant result_MSB : integer := q_width+fraction_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := ( quotient & fraction );
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant inp_width : integer := inp'length;
        constant vec_MSB : integer := inp_width-1;
        constant result_MSB : integer := result_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := inp;
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
      return std_logic_vector
    is
    begin
        return inp(upper downto lower);
    end;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function s2s_cast (inp : signed; old_bin_pt, new_width, new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function s2u_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function u2s_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2u_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2v_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned);
    end;
    function s2v_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned);
    end;
    function boolean_to_signed (inp : boolean; width : integer)
        return signed
    is
        variable result : signed(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_unsigned (inp : boolean; width : integer)
        return unsigned
    is
        variable result : unsigned(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result(0) := inp;
        return result;
    end;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                                new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                result := zero_ext(vec(old_width-1 downto right_of_dp), new_width);
            else
                result := sign_ext(vec(old_width-1 downto right_of_dp), new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                result := zero_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            else
                result := sign_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            end if;
        end if;
        return result;
    end;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (new_arith = xlSigned) then
            if (vec(old_width-1) = '0') then
                one_or_zero(0) := '1';
            end if;
            if (right_of_dp >= 2) and (right_of_dp <= old_width) then
                if (all_zeros(vec(right_of_dp-2 downto 0)) = false) then
                    one_or_zero(0) := '1';
                end if;
            end if;
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                if vec(right_of_dp-1) = '0' then
                    one_or_zero(0) := '0';
                end if;
            else
                one_or_zero(0) := '0';
            end if;
        else
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (right_of_dp >= 1) and (right_of_dp <= old_width) then
            if (is_point_five(vec(right_of_dp-1 downto 0)) = false) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            else
                one_or_zero(0) :=  vec(right_of_dp);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER)
        return std_logic_vector
    is
        constant left_of_dp : integer := (old_width - old_bin_pt) -
                                         (new_width - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable overflow : boolean;
    begin
        vec := inp;
        overflow := true;
        result := (others => '0');
        if (new_width >= old_width) then
            overflow := false;
        end if;
        if ((old_arith = xlSigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if (old_arith = xlSigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    if (vec(new_width-1) = '0') then
                        overflow := false;
                    end if;
                end if;
            end if;
        end if;
        if (old_arith = xlUnsigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    overflow := false;
                end if;
            end if;
        end if;
        if ((old_arith = xlUnsigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if overflow then
            if new_arith = xlSigned then
                if vec(old_width-1) = '0' then
                    result := max_signed(new_width);
                else
                    result := min_signed(new_width);
                end if;
            else
                if ((old_arith = xlSigned) and vec(old_width-1) = '1') then
                    result := (others => '0');
                else
                    result := (others => '1');
                end if;
            end if;
        else
            if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
                if (vec(old_width-1) = '1') then
                    vec := (others => '0');
                end if;
            end if;
            if new_width <= old_width then
                result := vec(new_width-1 downto 0);
            else
                if new_arith = xlUnsigned then
                    result := zero_ext(vec, new_width);
                else
                    result := sign_ext(vec, new_width);
                end if;
            end if;
        end if;
        return result;
    end;
   function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                       old_arith, new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
        variable result_arith : integer;
    begin
        if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
            result_arith := xlSigned;
        end if;
        result := cast(inp, old_bin_pt, new_width, new_bin_pt, result_arith);
        return result;
    end;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER is
    begin
        return max(a_bin_pt, b_bin_pt);
    end;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER is
    begin
        return  max(a_width - a_bin_pt, b_width - b_bin_pt);
    end;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
        constant pad_pos : integer := new_width - orig_width - 1;
    begin
        vec := inp;
        pos := new_width-1;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pad_pos >= 0 then
                for i in pad_pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := vec(old_width-1);
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := '0';
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result(0) := inp;
        for i in new_width-1 downto 1 loop
            result(i) := '0';
        end loop;
        return result;
    end;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            result := zero_ext(vec, new_width);
        else
            result := sign_ext(vec, new_width);
        end if;
        return result;
    end;
    function pad_LSB(inp : std_logic_vector; new_width, arith: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
    begin
        vec := inp;
        pos := new_width-1;
        if (arith = xlUnsigned) then
            result(pos) := '0';
            pos := pos - 1;
        else
            result(pos) := vec(orig_width-1);
            pos := pos - 1;
        end if;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pos >= 0 then
                for i in pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                         new_width: INTEGER)
        return std_logic_vector
    is
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable padded_inp : std_logic_vector((old_width + delta)-1  downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if delta > 0 then
            padded_inp := pad_LSB(vec, old_width+delta);
            result := extend_MSB(padded_inp, new_width, new_arith);
        else
            result := extend_MSB(vec, new_width, new_arith);
        end if;
        return result;
    end;
    function max(L, R: INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;
    function min(L, R: INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end;
    function "="(left,right: STRING) return boolean is
    begin
        if (left'length /= right'length) then
            return false;
        else
            test : for i in 1 to left'length loop
                if left(i) /= right(i) then
                    return false;
                end if;
            end loop test;
            return true;
        end if;
    end;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'X' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_binary_string_undefined (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'U' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_XorU(inp : std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 0 to width-1 loop
            if (vec(i) = 'U') or (vec(i) = 'X') then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real
    is
        variable  vec : std_logic_vector(inp'length-1 downto 0);
        variable result, shift_val, undefined_real : real;
        variable neg_num : boolean;
    begin
        vec := inp;
        result := 0.0;
        neg_num := false;
        if vec(inp'length-1) = '1' then
            neg_num := true;
        end if;
        for i in 0 to inp'length-1 loop
            if  vec(i) = 'U' or vec(i) = 'X' then
                return undefined_real;
            end if;
            if arith = xlSigned then
                if neg_num then
                    if vec(i) = '0' then
                        result := result + 2.0**i;
                    end if;
                else
                    if vec(i) = '1' then
                        result := result + 2.0**i;
                    end if;
                end if;
            else
                if vec(i) = '1' then
                    result := result + 2.0**i;
                end if;
            end if;
        end loop;
        if arith = xlSigned then
            if neg_num then
                result := result + 1.0;
                result := result * (-1.0);
            end if;
        end if;
        shift_val := 2.0**(-1*bin_pt);
        result := result * shift_val;
        return result;
    end;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real
    is
        variable result : real := 0.0;
    begin
        if inp = '1' then
            result := 1.0;
        end if;
        if arith = xlSigned then
            assert false
                report "It doesn't make sense to convert a 1 bit number to a signed real.";
        end if;
        return result;
    end;
    -- synopsys translate_on
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
    begin
        if (arith = xlSigned) then
            signed_val := to_signed(inp, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(inp, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer
    is
        constant width : integer := inp'length;
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
        variable result : integer;
    begin
        if (arith = xlSigned) then
            signed_val := std_logic_vector_to_signed(inp);
            result := to_integer(signed_val);
        else
            unsigned_val := std_logic_vector_to_unsigned(inp);
            result := to_integer(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer
    is
    begin
        if inp = '1' then
            return 1;
        else
            return 0;
        end if;
    end;
    function makeZeroBinStr (width : integer) return STRING is
        variable result : string(1 to width+3);
    begin
        result(1) := '0';
        result(2) := 'b';
        for i in 3 to width+2 loop
            result(i) := '0';
        end loop;
        result(width+3) := '.';
        return result;
    end;
    -- synopsys translate_off
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
    begin
        result := (others => '0');
        return result;
    end;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable real_val : real;
        variable int_val : integer;
        variable result : std_logic_vector(width-1 downto 0) := (others => '0');
        variable unsigned_val : unsigned(width-1 downto 0) := (others => '0');
        variable signed_val : signed(width-1 downto 0) := (others => '0');
    begin
        real_val := inp;
        int_val := integer(real_val * 2.0**(bin_pt));
        if (arith = xlSigned) then
            signed_val := to_signed(int_val, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(int_val, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    -- synopsys translate_on
    function valid_bin_string (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
    begin
        vec := inp;
        if (vec(1) = '0' and vec(2) = 'b') then
            return true;
        else
            return false;
        end if;
    end;
    function hex_string_to_std_logic_vector(inp: string; width : integer)
        return std_logic_vector is
        constant strlen       : integer := inp'LENGTH;
        variable result       : std_logic_vector(width-1 downto 0);
        variable bitval       : std_logic_vector((strlen*4)-1 downto 0);
        variable posn         : integer;
        variable ch           : character;
        variable vec          : string(1 to strlen);
    begin
        vec := inp;
        result := (others => '0');
        posn := (strlen*4)-1;
        for i in 1 to strlen loop
            ch := vec(i);
            case ch is
                when '0' => bitval(posn downto posn-3) := "0000";
                when '1' => bitval(posn downto posn-3) := "0001";
                when '2' => bitval(posn downto posn-3) := "0010";
                when '3' => bitval(posn downto posn-3) := "0011";
                when '4' => bitval(posn downto posn-3) := "0100";
                when '5' => bitval(posn downto posn-3) := "0101";
                when '6' => bitval(posn downto posn-3) := "0110";
                when '7' => bitval(posn downto posn-3) := "0111";
                when '8' => bitval(posn downto posn-3) := "1000";
                when '9' => bitval(posn downto posn-3) := "1001";
                when 'A' | 'a' => bitval(posn downto posn-3) := "1010";
                when 'B' | 'b' => bitval(posn downto posn-3) := "1011";
                when 'C' | 'c' => bitval(posn downto posn-3) := "1100";
                when 'D' | 'd' => bitval(posn downto posn-3) := "1101";
                when 'E' | 'e' => bitval(posn downto posn-3) := "1110";
                when 'F' | 'f' => bitval(posn downto posn-3) := "1111";
                when others => bitval(posn downto posn-3) := "XXXX";
                               -- synopsys translate_off
                               ASSERT false
                                   REPORT "Invalid hex value" SEVERITY ERROR;
                               -- synopsys translate_on
            end case;
            posn := posn - 4;
        end loop;
        if (width <= strlen*4) then
            result :=  bitval(width-1 downto 0);
        else
            result((strlen*4)-1 downto 0) := bitval;
        end if;
        return result;
    end;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector
    is
        variable pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(inp'length-1 downto 0);
    begin
        vec := inp;
        pos := inp'length-1;
        result := (others => '0');
        for i in 1 to vec'length loop
            -- synopsys translate_off
            if (pos < 0) and (vec(i) = '0' or vec(i) = '1' or vec(i) = 'X' or vec(i) = 'U')  then
                assert false
                    report "Input string is larger than output std_logic_vector. Truncating output.";
                return result;
            end if;
            -- synopsys translate_on
            if vec(i) = '0' then
                result(pos) := '0';
                pos := pos - 1;
            end if;
            if vec(i) = '1' then
                result(pos) := '1';
                pos := pos - 1;
            end if;
            -- synopsys translate_off
            if (vec(i) = 'X' or vec(i) = 'U') then
                result(pos) := 'U';
                pos := pos - 1;
            end if;
            -- synopsys translate_on
        end loop;
        return result;
    end;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector
    is
        constant str_width : integer := width + 4;
        constant inp_len : integer := inp'length;
        constant num_elements : integer := (inp_len + 1)/str_width;
        constant reverse_index : integer := (num_elements-1) - index;
        variable left_pos : integer;
        variable right_pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := (others => '0');
        if (reverse_index = 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := 1;
            right_pos := width + 3;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        if (reverse_index > 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := (reverse_index * str_width) + 1;
            right_pos := left_pos + width + 2;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        return result;
    end;
   -- synopsys translate_off
    function std_logic_vector_to_bin_string(inp : std_logic_vector)
        return string
    is
        variable vec : std_logic_vector(1 to inp'length);
        variable result : string(vec'range);
    begin
        vec := inp;
        for i in vec'range loop
            result(i) := to_char(vec(i));
        end loop;
        return result;
    end;
    function std_logic_to_bin_string(inp : std_logic)
        return string
    is
        variable result : string(1 to 3);
    begin
        result(1) := '0';
        result(2) := 'b';
        result(3) := to_char(inp);
        return result;
    end;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string
    is
        variable width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable str_pos : integer;
        variable result : string(1 to width+3);
    begin
        vec := inp;
        str_pos := 1;
        result(str_pos) := '0';
        str_pos := 2;
        result(str_pos) := 'b';
        str_pos := 3;
        for i in width-1 downto 0  loop
            if (((width+3) - bin_pt) = str_pos) then
                result(str_pos) := '.';
                str_pos := str_pos + 1;
            end if;
            result(str_pos) := to_char(vec(i));
            str_pos := str_pos + 1;
        end loop;
        if (bin_pt = 0) then
            result(str_pos) := '.';
        end if;
        return result;
    end;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string
    is
        variable result : string(1 to width);
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := real_to_std_logic_vector(inp, width, bin_pt, arith);
        result := std_logic_vector_to_bin_string(vec);
        return result;
    end;
    function real_to_string (inp : real) return string
    is
        variable result : string(1 to display_precision) := (others => ' ');
    begin
        result(real'image(inp)'range) := real'image(inp);
        return result;
    end;
    -- synopsys translate_on
end conv_pkg;

-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
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
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity srl17e is
    generic (width : integer:=16;
             latency : integer :=8);
    port (clk   : in std_logic;
          ce    : in std_logic;
          d     : in std_logic_vector(width-1 downto 0);
          q     : out std_logic_vector(width-1 downto 0));
end srl17e;
architecture structural of srl17e is
    component SRL16E
        port (D   : in STD_ULOGIC;
              CE  : in STD_ULOGIC;
              CLK : in STD_ULOGIC;
              A0  : in STD_ULOGIC;
              A1  : in STD_ULOGIC;
              A2  : in STD_ULOGIC;
              A3  : in STD_ULOGIC;
              Q   : out STD_ULOGIC);
    end component;
    attribute syn_black_box of SRL16E : component is true;
    attribute fpga_dont_touch of SRL16E : component is "true";
    component FDE
        port(
            Q  :        out   STD_ULOGIC;
            D  :        in    STD_ULOGIC;
            C  :        in    STD_ULOGIC;
            CE :        in    STD_ULOGIC);
    end component;
    attribute syn_black_box of FDE : component is true;
    attribute fpga_dont_touch of FDE : component is "true";
    constant a : std_logic_vector(4 downto 0) :=
        integer_to_std_logic_vector(latency-2,5,xlSigned);
    signal d_delayed : std_logic_vector(width-1 downto 0);
    signal srl16_out : std_logic_vector(width-1 downto 0);
begin
    d_delayed <= d after 200 ps;
    reg_array : for i in 0 to width-1 generate
        srl16_used: if latency > 1 generate
            u1 : srl16e port map(clk => clk,
                                 d => d_delayed(i),
                                 q => srl16_out(i),
                                 ce => ce,
                                 a0 => a(0),
                                 a1 => a(1),
                                 a2 => a(2),
                                 a3 => a(3));
        end generate;
        srl16_not_used: if latency <= 1 generate
            srl16_out(i) <= d_delayed(i);
        end generate;
        fde_used: if latency /= 0  generate
            u2 : fde port map(c => clk,
                              d => srl16_out(i),
                              q => q(i),
                              ce => ce);
        end generate;
        fde_not_used: if latency = 0  generate
            q(i) <= srl16_out(i);
        end generate;
    end generate;
 end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg;
architecture structural of synth_reg is
    component srl17e
        generic (width : integer:=16;
                 latency : integer :=8);
        port (clk : in std_logic;
              ce  : in std_logic;
              d   : in std_logic_vector(width-1 downto 0);
              q   : out std_logic_vector(width-1 downto 0));
    end component;
    function calc_num_srl17es (latency : integer)
        return integer
    is
        variable remaining_latency : integer;
        variable result : integer;
    begin
        result := latency / 17;
        remaining_latency := latency - (result * 17);
        if (remaining_latency /= 0) then
            result := result + 1;
        end if;
        return result;
    end;
    constant complete_num_srl17es : integer := latency / 17;
    constant num_srl17es : integer := calc_num_srl17es(latency);
    constant remaining_latency : integer := latency - (complete_num_srl17es * 17);
    type register_array is array (num_srl17es downto 0) of
        std_logic_vector(width-1 downto 0);
    signal z : register_array;
begin
    z(0) <= i;
    complete_ones : if complete_num_srl17es > 0 generate
        srl17e_array: for i in 0 to complete_num_srl17es-1 generate
            delay_comp : srl17e
                generic map (width => width,
                             latency => 17)
                port map (clk => clk,
                          ce  => ce,
                          d       => z(i),
                          q       => z(i+1));
        end generate;
    end generate;
    partial_one : if remaining_latency > 0 generate
        last_srl17e : srl17e
            generic map (width => width,
                         latency => remaining_latency)
            port map (clk => clk,
                      ce  => ce,
                      d   => z(num_srl17es-1),
                      q   => z(num_srl17es));
    end generate;
    o <= z(num_srl17es);
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg_reg;
architecture behav of synth_reg_reg is
  type reg_array_type is array (latency-1 downto 0) of std_logic_vector(width -1 downto 0);
  signal reg_bank : reg_array_type := (others => (others => '0'));
  signal reg_bank_in : reg_array_type := (others => (others => '0'));
  attribute syn_allow_retiming : boolean;
  attribute syn_srlstyle : string;
  attribute syn_allow_retiming of reg_bank : signal is true;
  attribute syn_allow_retiming of reg_bank_in : signal is true;
  attribute syn_srlstyle of reg_bank : signal is "registers";
  attribute syn_srlstyle of reg_bank_in : signal is "registers";
begin
  latency_eq_0: if latency = 0 generate
    o <= i;
  end generate latency_eq_0;
  latency_gt_0: if latency >= 1 generate
    o <= reg_bank(latency-1);
    reg_bank_in(0) <= i;
    loop_gen: for idx in latency-2 downto 0 generate
      reg_bank_in(idx+1) <= reg_bank(idx);
    end generate loop_gen;
    sync_loop: for sync_idx in latency-1 downto 0 generate
      sync_proc: process (clk)
      begin
        if clk'event and clk = '1' then
          if clr = '1' then
            reg_bank_in <= (others => (others => '0'));
          elsif ce = '1'  then
            reg_bank(sync_idx) <= reg_bank_in(sync_idx);
          end if;
        end if;
      end process sync_proc;
    end generate sync_loop;
  end generate latency_gt_0;
end behav;

-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
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
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity single_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000"
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end single_reg_w_init;
architecture structural of single_reg_w_init is
  function build_init_const(width: integer;
                            init_index: integer;
                            init_value: bit_vector)
    return std_logic_vector
  is
    variable result: std_logic_vector(width - 1 downto 0);
  begin
    if init_index = 0 then
      result := (others => '0');
    elsif init_index = 1 then
      result := (others => '0');
      result(0) := '1';
    else
      result := to_stdlogicvector(init_value);
    end if;
    return result;
  end;
  component fdre
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      r: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdre: component is true;
  attribute fpga_dont_touch of fdre: component is "true";
  component fdse
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      s: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";
  constant init_const: std_logic_vector(width - 1 downto 0)
    := build_init_const(width, init_index, init_value);
begin
  fd_prim_array: for index in 0 to width - 1 generate
    bit_is_0: if (init_const(index) = '0') generate
      fdre_comp: fdre
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          r => clr
        );
    end generate;
    bit_is_1: if (init_const(index) = '1') generate
      fdse_comp: fdse
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          s => clr
        );
    end generate;
  end generate;
end architecture structural;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000";
    latency: integer := 1
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end synth_reg_w_init;
architecture structural of synth_reg_w_init is
  component single_reg_w_init
    generic (
      width: integer := 8;
      init_index: integer := 0;
      init_value: bit_vector := b"0000"
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal dly_i: std_logic_vector((latency + 1) * width - 1 downto 0);
  signal dly_clr: std_logic;
begin
  latency_eq_0: if (latency = 0) generate
    o <= i;
  end generate;
  latency_gt_0: if (latency >= 1) generate
    dly_i((latency + 1) * width - 1 downto latency * width) <= i
      after 200 ps;
    dly_clr <= clr after 200 ps;
    fd_array: for index in latency downto 1 generate
       reg_comp: single_reg_w_init
          generic map (
            width => width,
            init_index => init_index,
            init_value => init_value
          )
          port map (
            clk => clk,
            i => dly_i((index + 1) * width - 1 downto index * width),
            o => dly_i(index * width - 1 downto (index - 1) * width),
            ce => ce,
            clr => dly_clr
          );
    end generate;
    o <= dly_i(width - 1 downto 0);
  end generate;
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_963ed6358a is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_963ed6358a;


architecture behavior of constant_963ed6358a is
begin
  op <= "0";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mcode_block_d3ca0879bf is
  port (
    plbrst : in std_logic_vector((1 - 1) downto 0);
    plbabus : in std_logic_vector((32 - 1) downto 0);
    plbpavalid : in std_logic_vector((1 - 1) downto 0);
    plbrnw : in std_logic_vector((1 - 1) downto 0);
    plbwrdbus : in std_logic_vector((32 - 1) downto 0);
    rddata : in std_logic_vector((32 - 1) downto 0);
    addrpref : in std_logic_vector((17 - 1) downto 0);
    wrdbusreg : out std_logic_vector((32 - 1) downto 0);
    addrack : out std_logic_vector((1 - 1) downto 0);
    rdcomp : out std_logic_vector((1 - 1) downto 0);
    wrdack : out std_logic_vector((1 - 1) downto 0);
    bankaddr : out std_logic_vector((2 - 1) downto 0);
    rnwreg : out std_logic_vector((1 - 1) downto 0);
    rddack : out std_logic_vector((1 - 1) downto 0);
    rddbus : out std_logic_vector((32 - 1) downto 0);
    linearaddr : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mcode_block_d3ca0879bf;


architecture behavior of mcode_block_d3ca0879bf is
  signal plbrst_1_110: unsigned((1 - 1) downto 0);
  signal plbabus_1_118: unsigned((32 - 1) downto 0);
  signal plbpavalid_1_127: unsigned((1 - 1) downto 0);
  signal plbrnw_1_139: unsigned((1 - 1) downto 0);
  signal plbwrdbus_1_147: unsigned((32 - 1) downto 0);
  signal rddata_1_158: unsigned((32 - 1) downto 0);
  signal addrpref_1_166: unsigned((17 - 1) downto 0);
  signal plbrstreg_12_24_next: boolean;
  signal plbrstreg_12_24: boolean := false;
  signal plbabusreg_13_25_next: unsigned((32 - 1) downto 0);
  signal plbabusreg_13_25: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal plbpavalidreg_14_28_next: boolean;
  signal plbpavalidreg_14_28: boolean := false;
  signal plbrnwreg_15_24_next: unsigned((1 - 1) downto 0);
  signal plbrnwreg_15_24: unsigned((1 - 1) downto 0) := "0";
  signal plbwrdbusreg_16_27_next: unsigned((32 - 1) downto 0);
  signal plbwrdbusreg_16_27: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal avalidreg_28_23_next: boolean;
  signal avalidreg_28_23: boolean := false;
  signal ps1reg_39_20_next: boolean;
  signal ps1reg_39_20: boolean := false;
  signal psreg_47_19_next: boolean;
  signal psreg_47_19: boolean := false;
  type array_type_rdcompdelay_58_25 is array (0 to (3 - 1)) of unsigned((1 - 1) downto 0);
  signal rdcompdelay_58_25: array_type_rdcompdelay_58_25 := (
    "0",
    "0",
    "0");
  signal rdcompdelay_58_25_front_din: unsigned((1 - 1) downto 0);
  signal rdcompdelay_58_25_back: unsigned((1 - 1) downto 0);
  signal rdcompdelay_58_25_push_front_pop_back_en: std_logic;
  signal rdcompreg_62_23_next: unsigned((1 - 1) downto 0);
  signal rdcompreg_62_23: unsigned((1 - 1) downto 0) := "0";
  signal rddackreg_66_23_next: unsigned((1 - 1) downto 0);
  signal rddackreg_66_23: unsigned((1 - 1) downto 0) := "0";
  signal wrdackreg_70_23_next: unsigned((1 - 1) downto 0);
  signal wrdackreg_70_23: unsigned((1 - 1) downto 0) := "0";
  signal rddbusreg_84_23_next: unsigned((32 - 1) downto 0);
  signal rddbusreg_84_23: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal bankaddr_20_1_slice: unsigned((2 - 1) downto 0);
  signal linearaddr_21_1_slice: unsigned((11 - 1) downto 0);
  signal addrpref_in_32_1_slice: unsigned((17 - 1) downto 0);
  signal rel_33_4: boolean;
  signal ps1_join_33_1: boolean;
  signal ps_42_1_bit: boolean;
  signal bitnot_49_49: boolean;
  signal bitnot_49_73: boolean;
  signal bit_49_49: boolean;
  signal addrack_49_1_convert: unsigned((1 - 1) downto 0);
  signal bit_55_43: unsigned((1 - 1) downto 0);
  signal bitnot_72_35: unsigned((1 - 1) downto 0);
  signal wrdackreg_72_1_bit: unsigned((1 - 1) downto 0);
  signal rdsel_76_1_bit: unsigned((1 - 1) downto 0);
  signal rel_78_4: boolean;
  signal rddbus1_join_78_1: unsigned((32 - 1) downto 0);
  signal plbwrdbusreg_97_1_slice: unsigned((32 - 1) downto 0);
  signal plbrstreg_12_24_next_x_000000: boolean;
  signal plbpavalidreg_14_28_next_x_000000: boolean;
begin
  plbrst_1_110 <= std_logic_vector_to_unsigned(plbrst);
  plbabus_1_118 <= std_logic_vector_to_unsigned(plbabus);
  plbpavalid_1_127 <= std_logic_vector_to_unsigned(plbpavalid);
  plbrnw_1_139 <= std_logic_vector_to_unsigned(plbrnw);
  plbwrdbus_1_147 <= std_logic_vector_to_unsigned(plbwrdbus);
  rddata_1_158 <= std_logic_vector_to_unsigned(rddata);
  addrpref_1_166 <= std_logic_vector_to_unsigned(addrpref);
  proc_plbrstreg_12_24: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        plbrstreg_12_24 <= plbrstreg_12_24_next;
      end if;
    end if;
  end process proc_plbrstreg_12_24;
  proc_plbabusreg_13_25: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        plbabusreg_13_25 <= plbabusreg_13_25_next;
      end if;
    end if;
  end process proc_plbabusreg_13_25;
  proc_plbpavalidreg_14_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        plbpavalidreg_14_28 <= plbpavalidreg_14_28_next;
      end if;
    end if;
  end process proc_plbpavalidreg_14_28;
  proc_plbrnwreg_15_24: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        plbrnwreg_15_24 <= plbrnwreg_15_24_next;
      end if;
    end if;
  end process proc_plbrnwreg_15_24;
  proc_plbwrdbusreg_16_27: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        plbwrdbusreg_16_27 <= plbwrdbusreg_16_27_next;
      end if;
    end if;
  end process proc_plbwrdbusreg_16_27;
  proc_avalidreg_28_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        avalidreg_28_23 <= avalidreg_28_23_next;
      end if;
    end if;
  end process proc_avalidreg_28_23;
  proc_ps1reg_39_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        ps1reg_39_20 <= ps1reg_39_20_next;
      end if;
    end if;
  end process proc_ps1reg_39_20;
  proc_psreg_47_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        psreg_47_19 <= psreg_47_19_next;
      end if;
    end if;
  end process proc_psreg_47_19;
  rdcompdelay_58_25_back <= rdcompdelay_58_25(2);
  proc_rdcompdelay_58_25: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (rdcompdelay_58_25_push_front_pop_back_en = '1')) then
        for i in 2 downto 1 loop 
          rdcompdelay_58_25(i) <= rdcompdelay_58_25(i-1);
        end loop;
        rdcompdelay_58_25(0) <= rdcompdelay_58_25_front_din;
      end if;
    end if;
  end process proc_rdcompdelay_58_25;
  proc_rdcompreg_62_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        rdcompreg_62_23 <= rdcompreg_62_23_next;
      end if;
    end if;
  end process proc_rdcompreg_62_23;
  proc_rddackreg_66_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        rddackreg_66_23 <= rddackreg_66_23_next;
      end if;
    end if;
  end process proc_rddackreg_66_23;
  proc_wrdackreg_70_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        wrdackreg_70_23 <= wrdackreg_70_23_next;
      end if;
    end if;
  end process proc_wrdackreg_70_23;
  proc_rddbusreg_84_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        rddbusreg_84_23 <= rddbusreg_84_23_next;
      end if;
    end if;
  end process proc_rddbusreg_84_23;
  bankaddr_20_1_slice <= u2u_slice(plbabusreg_13_25, 14, 13);
  linearaddr_21_1_slice <= u2u_slice(plbabusreg_13_25, 12, 2);
  addrpref_in_32_1_slice <= u2u_slice(plbabusreg_13_25, 31, 15);
  rel_33_4 <= addrpref_in_32_1_slice = addrpref_1_166;
  proc_if_33_1: process (rel_33_4)
  is
  begin
    if rel_33_4 then
      ps1_join_33_1 <= true;
    else 
      ps1_join_33_1 <= false;
    end if;
  end process proc_if_33_1;
  ps_42_1_bit <= ((boolean_to_vector(ps1_join_33_1) and boolean_to_vector(plbpavalidreg_14_28)) = "1");
  bitnot_49_49 <= ((not boolean_to_vector(plbrstreg_12_24)) = "1");
  bitnot_49_73 <= ((not boolean_to_vector(psreg_47_19)) = "1");
  bit_49_49 <= ((boolean_to_vector(bitnot_49_49) and boolean_to_vector(ps_42_1_bit) and boolean_to_vector(bitnot_49_73)) = "1");
  addrack_49_1_convert <= u2u_cast(std_logic_vector_to_unsigned(boolean_to_vector(bit_49_49)), 0, 1, 0);
  bit_55_43 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(addrack_49_1_convert) and unsigned_to_std_logic_vector(plbrnwreg_15_24));
  bitnot_72_35 <= std_logic_vector_to_unsigned(not unsigned_to_std_logic_vector(plbrnwreg_15_24));
  wrdackreg_72_1_bit <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(addrack_49_1_convert) and unsigned_to_std_logic_vector(bitnot_72_35));
  rdsel_76_1_bit <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(rdcompdelay_58_25_back) or unsigned_to_std_logic_vector(rdcompreg_62_23));
  rel_78_4 <= rdsel_76_1_bit = std_logic_vector_to_unsigned("1");
  proc_if_78_1: process (rddata_1_158, rel_78_4)
  is
  begin
    if rel_78_4 then
      rddbus1_join_78_1 <= rddata_1_158;
    else 
      rddbus1_join_78_1 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    end if;
  end process proc_if_78_1;
  plbwrdbusreg_97_1_slice <= u2u_slice(plbwrdbus_1_147, 31, 0);
  plbrstreg_12_24_next_x_000000 <= (plbrst_1_110 /= "0");
  plbrstreg_12_24_next <= plbrstreg_12_24_next_x_000000;
  plbabusreg_13_25_next <= plbabus_1_118;
  plbpavalidreg_14_28_next_x_000000 <= (plbpavalid_1_127 /= "0");
  plbpavalidreg_14_28_next <= plbpavalidreg_14_28_next_x_000000;
  plbrnwreg_15_24_next <= plbrnw_1_139;
  plbwrdbusreg_16_27_next <= plbwrdbusreg_97_1_slice;
  avalidreg_28_23_next <= plbpavalidreg_14_28;
  ps1reg_39_20_next <= ps1_join_33_1;
  psreg_47_19_next <= ps_42_1_bit;
  rdcompdelay_58_25_front_din <= bit_55_43;
  rdcompdelay_58_25_push_front_pop_back_en <= '1';
  rdcompreg_62_23_next <= rdcompdelay_58_25_back;
  rddackreg_66_23_next <= rdcompreg_62_23;
  wrdackreg_70_23_next <= wrdackreg_72_1_bit;
  rddbusreg_84_23_next <= rddbus1_join_78_1;
  wrdbusreg <= unsigned_to_std_logic_vector(plbwrdbusreg_16_27);
  addrack <= unsigned_to_std_logic_vector(addrack_49_1_convert);
  rdcomp <= unsigned_to_std_logic_vector(rdcompreg_62_23);
  wrdack <= unsigned_to_std_logic_vector(wrdackreg_70_23);
  bankaddr <= unsigned_to_std_logic_vector(bankaddr_20_1_slice);
  rnwreg <= unsigned_to_std_logic_vector(plbrnwreg_15_24);
  rddack <= unsigned_to_std_logic_vector(rddackreg_66_23);
  rddbus <= unsigned_to_std_logic_vector(rddbusreg_84_23);
  linearaddr <= unsigned_to_std_logic_vector(linearaddr_21_1_slice);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mcode_block_eb3e590805 is
  port (
    wrdbus : in std_logic_vector((32 - 1) downto 0);
    bankaddr : in std_logic_vector((2 - 1) downto 0);
    linearaddr : in std_logic_vector((11 - 1) downto 0);
    rnwreg : in std_logic_vector((1 - 1) downto 0);
    addrack : in std_logic_vector((1 - 1) downto 0);
    sm_esp_status_reg : in std_logic_vector((16 - 1) downto 0);
    sm_e1_template_acc_reg : in std_logic_vector((16 - 1) downto 0);
    sm_e1_filter_out_reg : in std_logic_vector((16 - 1) downto 0);
    sm_atod_datamem : in std_logic_vector((16 - 1) downto 0);
    sm_e1_filter_ram : in std_logic_vector((16 - 1) downto 0);
    sm_e1_data_ram : in std_logic_vector((16 - 1) downto 0);
    sm_e1_template_ram : in std_logic_vector((16 - 1) downto 0);
    read_bank_out : out std_logic_vector((32 - 1) downto 0);
    sm_esp_contol_reg_din : out std_logic_vector((16 - 1) downto 0);
    sm_esp_contol_reg_en : out std_logic_vector((1 - 1) downto 0);
    sm_dtoa1_data_regb_din : out std_logic_vector((16 - 1) downto 0);
    sm_dtoa1_data_regb_en : out std_logic_vector((1 - 1) downto 0);
    sm_dtoa1_data_rega_din : out std_logic_vector((16 - 1) downto 0);
    sm_dtoa1_data_rega_en : out std_logic_vector((1 - 1) downto 0);
    sm_dtoa0_data_regb_din : out std_logic_vector((16 - 1) downto 0);
    sm_dtoa0_data_regb_en : out std_logic_vector((1 - 1) downto 0);
    sm_dtoa0_data_rega_din : out std_logic_vector((16 - 1) downto 0);
    sm_dtoa0_data_rega_en : out std_logic_vector((1 - 1) downto 0);
    sm_e1_decimation_din : out std_logic_vector((16 - 1) downto 0);
    sm_e1_decimation_en : out std_logic_vector((1 - 1) downto 0);
    sm_e1_filter_length_din : out std_logic_vector((16 - 1) downto 0);
    sm_e1_filter_length_en : out std_logic_vector((1 - 1) downto 0);
    sm_e1_template_size_din : out std_logic_vector((16 - 1) downto 0);
    sm_e1_template_size_en : out std_logic_vector((1 - 1) downto 0);
    sm_atod_datamem_addr : out std_logic_vector((10 - 1) downto 0);
    sm_atod_datamem_din : out std_logic_vector((16 - 1) downto 0);
    sm_atod_datamem_we : out std_logic_vector((1 - 1) downto 0);
    sm_e1_filter_ram_addr : out std_logic_vector((7 - 1) downto 0);
    sm_e1_filter_ram_din : out std_logic_vector((16 - 1) downto 0);
    sm_e1_filter_ram_we : out std_logic_vector((1 - 1) downto 0);
    sm_e1_data_ram_addr : out std_logic_vector((7 - 1) downto 0);
    sm_e1_data_ram_din : out std_logic_vector((16 - 1) downto 0);
    sm_e1_data_ram_we : out std_logic_vector((1 - 1) downto 0);
    sm_e1_template_ram_addr : out std_logic_vector((7 - 1) downto 0);
    sm_e1_template_ram_din : out std_logic_vector((16 - 1) downto 0);
    sm_e1_template_ram_we : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mcode_block_eb3e590805;


architecture behavior of mcode_block_eb3e590805 is
  signal wrdbus_1_674: unsigned((32 - 1) downto 0);
  signal bankaddr_1_682: unsigned((2 - 1) downto 0);
  signal linearaddr_1_692: unsigned((11 - 1) downto 0);
  signal rnwreg_1_704: unsigned((1 - 1) downto 0);
  signal addrack_1_712: unsigned((1 - 1) downto 0);
  signal sm_esp_status_reg_1_721: unsigned((16 - 1) downto 0);
  signal sm_e1_template_acc_reg_1_740: unsigned((16 - 1) downto 0);
  signal sm_e1_filter_out_reg_1_764: signed((16 - 1) downto 0);
  signal sm_atod_datamem_1_786: unsigned((16 - 1) downto 0);
  signal sm_e1_filter_ram_1_803: signed((16 - 1) downto 0);
  signal sm_e1_data_ram_1_821: signed((16 - 1) downto 0);
  signal sm_e1_template_ram_1_837: signed((16 - 1) downto 0);
  signal reg_bank_out_reg_36_30_next: unsigned((32 - 1) downto 0);
  signal reg_bank_out_reg_36_30: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal ram_bank_out_reg_110_30_next: unsigned((32 - 1) downto 0);
  signal ram_bank_out_reg_110_30: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal sm_atod_datamem_we_reg_138_36_next: boolean;
  signal sm_atod_datamem_we_reg_138_36: boolean := false;
  signal sm_e1_filter_ram_we_reg_157_37_next: boolean;
  signal sm_e1_filter_ram_we_reg_157_37: boolean := false;
  signal sm_e1_data_ram_we_reg_176_35_next: boolean;
  signal sm_e1_data_ram_we_reg_176_35: boolean := false;
  signal sm_e1_template_ram_we_reg_195_39_next: boolean;
  signal sm_e1_template_ram_we_reg_195_39: boolean := false;
  signal sm_atod_datamem_addr_reg_218_1_next: unsigned((10 - 1) downto 0);
  signal sm_atod_datamem_addr_reg_218_1: unsigned((10 - 1) downto 0) := "0000000000";
  signal sm_atod_datamem_addr_reg_218_1_en: std_logic;
  signal sm_e1_filter_ram_addr_reg_226_1_next: unsigned((7 - 1) downto 0);
  signal sm_e1_filter_ram_addr_reg_226_1: unsigned((7 - 1) downto 0) := "0000000";
  signal sm_e1_filter_ram_addr_reg_226_1_en: std_logic;
  signal sm_e1_data_ram_addr_reg_234_1_next: unsigned((7 - 1) downto 0);
  signal sm_e1_data_ram_addr_reg_234_1: unsigned((7 - 1) downto 0) := "0000000";
  signal sm_e1_data_ram_addr_reg_234_1_en: std_logic;
  signal sm_e1_template_ram_addr_reg_242_1_next: unsigned((7 - 1) downto 0);
  signal sm_e1_template_ram_addr_reg_242_1: unsigned((7 - 1) downto 0) := "0000000";
  signal sm_e1_template_ram_addr_reg_242_1_en: std_logic;
  signal read_bank_out_reg_338_31_next: unsigned((32 - 1) downto 0);
  signal read_bank_out_reg_338_31: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal bankaddr_reg_341_26_next: unsigned((2 - 1) downto 0);
  signal bankaddr_reg_341_26: unsigned((2 - 1) downto 0) := "00";
  signal sm_e1_filter_out_reg_bus_13_1_force: unsigned((16 - 1) downto 0);
  signal sm_e1_filter_ram_bus_24_1_force: unsigned((16 - 1) downto 0);
  signal sm_e1_data_ram_bus_27_1_force: unsigned((16 - 1) downto 0);
  signal sm_e1_template_ram_bus_30_1_force: unsigned((16 - 1) downto 0);
  signal rel_39_4: boolean;
  signal rel_41_8: boolean;
  signal rel_43_8: boolean;
  signal reg_bank_out_reg_join_39_1: unsigned((32 - 1) downto 0);
  signal opcode_55_1_concat: unsigned((15 - 1) downto 0);
  signal slice_59_47: unsigned((1 - 1) downto 0);
  signal sm_atod_datamem_sel_value_59_1_concat: unsigned((1 - 1) downto 0);
  signal rel_63_4: boolean;
  signal sm_atod_datamem_sel_join_63_1: boolean;
  signal slice_71_48: unsigned((4 - 1) downto 0);
  signal sm_e1_filter_ram_sel_value_71_1_concat: unsigned((4 - 1) downto 0);
  signal rel_75_4: boolean;
  signal sm_e1_filter_ram_sel_join_75_1: boolean;
  signal slice_83_46: unsigned((4 - 1) downto 0);
  signal sm_e1_data_ram_sel_value_83_1_concat: unsigned((4 - 1) downto 0);
  signal rel_87_4: boolean;
  signal sm_e1_data_ram_sel_join_87_1: boolean;
  signal slice_95_50: unsigned((4 - 1) downto 0);
  signal sm_e1_template_ram_sel_value_95_1_concat: unsigned((4 - 1) downto 0);
  signal rel_99_4: boolean;
  signal sm_e1_template_ram_sel_join_99_1: boolean;
  signal ram_bank_out_reg_join_112_1: unsigned((32 - 1) downto 0);
  signal slice_123_40: unsigned((16 - 1) downto 0);
  signal slice_126_41: unsigned((16 - 1) downto 0);
  signal sm_e1_filter_ram_din_126_1_force: signed((16 - 1) downto 0);
  signal slice_129_39: unsigned((16 - 1) downto 0);
  signal sm_e1_data_ram_din_129_1_force: signed((16 - 1) downto 0);
  signal slice_132_43: unsigned((16 - 1) downto 0);
  signal sm_e1_template_ram_din_132_1_force: signed((16 - 1) downto 0);
  signal slice_143_46: unsigned((1 - 1) downto 0);
  signal opcode_sm_atod_datamem_140_1_concat: unsigned((5 - 1) downto 0);
  signal rel_147_4: boolean;
  signal sm_atod_datamem_we_reg_join_147_1: boolean;
  signal slice_162_46: unsigned((4 - 1) downto 0);
  signal opcode_sm_e1_filter_ram_159_1_concat: unsigned((8 - 1) downto 0);
  signal rel_166_4: boolean;
  signal sm_e1_filter_ram_we_reg_join_166_1: boolean;
  signal slice_181_46: unsigned((4 - 1) downto 0);
  signal opcode_sm_e1_data_ram_178_1_concat: unsigned((8 - 1) downto 0);
  signal rel_185_4: boolean;
  signal sm_e1_data_ram_we_reg_join_185_1: boolean;
  signal slice_200_46: unsigned((4 - 1) downto 0);
  signal opcode_sm_e1_template_ram_197_1_concat: unsigned((8 - 1) downto 0);
  signal rel_204_4: boolean;
  signal sm_e1_template_ram_we_reg_join_204_1: boolean;
  signal sm_atod_datamem_addr_reg_221_5_slice: unsigned((11 - 1) downto 0);
  signal rel_220_4: boolean;
  signal sm_atod_datamem_addr_reg_join_220_1: unsigned((11 - 1) downto 0);
  signal sm_atod_datamem_addr_reg_join_220_1_en: std_logic;
  signal sm_e1_filter_ram_addr_reg_229_5_slice: unsigned((8 - 1) downto 0);
  signal rel_228_4: boolean;
  signal sm_e1_filter_ram_addr_reg_join_228_1: unsigned((8 - 1) downto 0);
  signal sm_e1_filter_ram_addr_reg_join_228_1_en: std_logic;
  signal sm_e1_data_ram_addr_reg_237_5_slice: unsigned((8 - 1) downto 0);
  signal rel_236_4: boolean;
  signal sm_e1_data_ram_addr_reg_join_236_1: unsigned((8 - 1) downto 0);
  signal sm_e1_data_ram_addr_reg_join_236_1_en: std_logic;
  signal sm_e1_template_ram_addr_reg_245_5_slice: unsigned((8 - 1) downto 0);
  signal rel_244_4: boolean;
  signal sm_e1_template_ram_addr_reg_join_244_1: unsigned((8 - 1) downto 0);
  signal sm_e1_template_ram_addr_reg_join_244_1_en: std_logic;
  signal rel_255_4: boolean;
  signal sm_esp_contol_reg_en_join_255_1: boolean;
  signal rel_261_4: boolean;
  signal sm_dtoa1_data_regb_en_join_261_1: boolean;
  signal rel_267_4: boolean;
  signal sm_dtoa1_data_rega_en_join_267_1: boolean;
  signal rel_273_4: boolean;
  signal sm_dtoa0_data_regb_en_join_273_1: boolean;
  signal rel_279_4: boolean;
  signal sm_dtoa0_data_rega_en_join_279_1: boolean;
  signal rel_285_4: boolean;
  signal sm_e1_decimation_en_join_285_1: boolean;
  signal rel_291_4: boolean;
  signal sm_e1_filter_length_en_join_291_1: boolean;
  signal rel_297_4: boolean;
  signal sm_e1_template_size_en_join_297_1: boolean;
  signal slice_312_42: unsigned((16 - 1) downto 0);
  signal slice_315_43: unsigned((16 - 1) downto 0);
  signal slice_318_43: unsigned((16 - 1) downto 0);
  signal slice_321_43: unsigned((16 - 1) downto 0);
  signal slice_324_43: unsigned((16 - 1) downto 0);
  signal slice_327_41: unsigned((16 - 1) downto 0);
  signal slice_330_44: unsigned((16 - 1) downto 0);
  signal slice_333_44: unsigned((16 - 1) downto 0);
  signal rel_343_4: boolean;
  signal rel_346_8: boolean;
  signal rel_349_8: boolean;
  signal rel_352_8: boolean;
  signal read_bank_out_reg_join_343_1: unsigned((32 - 1) downto 0);
  signal cast_sm_atod_datamem_addr_reg_218_1_next: unsigned((10 - 1) downto 0);
  signal cast_sm_e1_filter_ram_addr_reg_226_1_next: unsigned((7 - 1) downto 0);
  signal cast_sm_e1_data_ram_addr_reg_234_1_next: unsigned((7 - 1) downto 0);
  signal cast_sm_e1_template_ram_addr_reg_242_1_next: unsigned((7 - 1) downto 0);
begin
  wrdbus_1_674 <= std_logic_vector_to_unsigned(wrdbus);
  bankaddr_1_682 <= std_logic_vector_to_unsigned(bankaddr);
  linearaddr_1_692 <= std_logic_vector_to_unsigned(linearaddr);
  rnwreg_1_704 <= std_logic_vector_to_unsigned(rnwreg);
  addrack_1_712 <= std_logic_vector_to_unsigned(addrack);
  sm_esp_status_reg_1_721 <= std_logic_vector_to_unsigned(sm_esp_status_reg);
  sm_e1_template_acc_reg_1_740 <= std_logic_vector_to_unsigned(sm_e1_template_acc_reg);
  sm_e1_filter_out_reg_1_764 <= std_logic_vector_to_signed(sm_e1_filter_out_reg);
  sm_atod_datamem_1_786 <= std_logic_vector_to_unsigned(sm_atod_datamem);
  sm_e1_filter_ram_1_803 <= std_logic_vector_to_signed(sm_e1_filter_ram);
  sm_e1_data_ram_1_821 <= std_logic_vector_to_signed(sm_e1_data_ram);
  sm_e1_template_ram_1_837 <= std_logic_vector_to_signed(sm_e1_template_ram);
  proc_reg_bank_out_reg_36_30: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        reg_bank_out_reg_36_30 <= reg_bank_out_reg_36_30_next;
      end if;
    end if;
  end process proc_reg_bank_out_reg_36_30;
  proc_ram_bank_out_reg_110_30: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        ram_bank_out_reg_110_30 <= ram_bank_out_reg_110_30_next;
      end if;
    end if;
  end process proc_ram_bank_out_reg_110_30;
  proc_sm_atod_datamem_we_reg_138_36: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        sm_atod_datamem_we_reg_138_36 <= sm_atod_datamem_we_reg_138_36_next;
      end if;
    end if;
  end process proc_sm_atod_datamem_we_reg_138_36;
  proc_sm_e1_filter_ram_we_reg_157_37: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        sm_e1_filter_ram_we_reg_157_37 <= sm_e1_filter_ram_we_reg_157_37_next;
      end if;
    end if;
  end process proc_sm_e1_filter_ram_we_reg_157_37;
  proc_sm_e1_data_ram_we_reg_176_35: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        sm_e1_data_ram_we_reg_176_35 <= sm_e1_data_ram_we_reg_176_35_next;
      end if;
    end if;
  end process proc_sm_e1_data_ram_we_reg_176_35;
  proc_sm_e1_template_ram_we_reg_195_39: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        sm_e1_template_ram_we_reg_195_39 <= sm_e1_template_ram_we_reg_195_39_next;
      end if;
    end if;
  end process proc_sm_e1_template_ram_we_reg_195_39;
  proc_sm_atod_datamem_addr_reg_218_1: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (sm_atod_datamem_addr_reg_218_1_en = '1')) then
        sm_atod_datamem_addr_reg_218_1 <= sm_atod_datamem_addr_reg_218_1_next;
      end if;
    end if;
  end process proc_sm_atod_datamem_addr_reg_218_1;
  proc_sm_e1_filter_ram_addr_reg_226_1: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (sm_e1_filter_ram_addr_reg_226_1_en = '1')) then
        sm_e1_filter_ram_addr_reg_226_1 <= sm_e1_filter_ram_addr_reg_226_1_next;
      end if;
    end if;
  end process proc_sm_e1_filter_ram_addr_reg_226_1;
  proc_sm_e1_data_ram_addr_reg_234_1: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (sm_e1_data_ram_addr_reg_234_1_en = '1')) then
        sm_e1_data_ram_addr_reg_234_1 <= sm_e1_data_ram_addr_reg_234_1_next;
      end if;
    end if;
  end process proc_sm_e1_data_ram_addr_reg_234_1;
  proc_sm_e1_template_ram_addr_reg_242_1: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (sm_e1_template_ram_addr_reg_242_1_en = '1')) then
        sm_e1_template_ram_addr_reg_242_1 <= sm_e1_template_ram_addr_reg_242_1_next;
      end if;
    end if;
  end process proc_sm_e1_template_ram_addr_reg_242_1;
  proc_read_bank_out_reg_338_31: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        read_bank_out_reg_338_31 <= read_bank_out_reg_338_31_next;
      end if;
    end if;
  end process proc_read_bank_out_reg_338_31;
  proc_bankaddr_reg_341_26: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        bankaddr_reg_341_26 <= bankaddr_reg_341_26_next;
      end if;
    end if;
  end process proc_bankaddr_reg_341_26;
  sm_e1_filter_out_reg_bus_13_1_force <= signed_to_unsigned(sm_e1_filter_out_reg_1_764);
  sm_e1_filter_ram_bus_24_1_force <= signed_to_unsigned(sm_e1_filter_ram_1_803);
  sm_e1_data_ram_bus_27_1_force <= signed_to_unsigned(sm_e1_data_ram_1_821);
  sm_e1_template_ram_bus_30_1_force <= signed_to_unsigned(sm_e1_template_ram_1_837);
  rel_39_4 <= linearaddr_1_692 = std_logic_vector_to_unsigned("00000000000");
  rel_41_8 <= linearaddr_1_692 = std_logic_vector_to_unsigned("00000000001");
  rel_43_8 <= linearaddr_1_692 = std_logic_vector_to_unsigned("00000000010");
  proc_if_39_1: process (reg_bank_out_reg_36_30, rel_39_4, rel_41_8, rel_43_8, sm_e1_filter_out_reg_bus_13_1_force, sm_e1_template_acc_reg_1_740, sm_esp_status_reg_1_721)
  is
  begin
    if rel_39_4 then
      reg_bank_out_reg_join_39_1 <= u2u_cast(sm_esp_status_reg_1_721, 0, 32, 0);
    elsif rel_41_8 then
      reg_bank_out_reg_join_39_1 <= u2u_cast(sm_e1_template_acc_reg_1_740, 0, 32, 0);
    elsif rel_43_8 then
      reg_bank_out_reg_join_39_1 <= u2u_cast(sm_e1_filter_out_reg_bus_13_1_force, 0, 32, 0);
    else 
      reg_bank_out_reg_join_39_1 <= reg_bank_out_reg_36_30;
    end if;
  end process proc_if_39_1;
  opcode_55_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(addrack_1_712) & unsigned_to_std_logic_vector(rnwreg_1_704) & unsigned_to_std_logic_vector(bankaddr_1_682) & unsigned_to_std_logic_vector(linearaddr_1_692));
  slice_59_47 <= u2u_slice(linearaddr_1_692, 10, 10);
  sm_atod_datamem_sel_value_59_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_59_47));
  rel_63_4 <= sm_atod_datamem_sel_value_59_1_concat = std_logic_vector_to_unsigned("0");
  proc_if_63_1: process (rel_63_4)
  is
  begin
    if rel_63_4 then
      sm_atod_datamem_sel_join_63_1 <= true;
    else 
      sm_atod_datamem_sel_join_63_1 <= false;
    end if;
  end process proc_if_63_1;
  slice_71_48 <= u2u_slice(linearaddr_1_692, 10, 7);
  sm_e1_filter_ram_sel_value_71_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_71_48));
  rel_75_4 <= sm_e1_filter_ram_sel_value_71_1_concat = std_logic_vector_to_unsigned("1000");
  proc_if_75_1: process (rel_75_4)
  is
  begin
    if rel_75_4 then
      sm_e1_filter_ram_sel_join_75_1 <= true;
    else 
      sm_e1_filter_ram_sel_join_75_1 <= false;
    end if;
  end process proc_if_75_1;
  slice_83_46 <= u2u_slice(linearaddr_1_692, 10, 7);
  sm_e1_data_ram_sel_value_83_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_83_46));
  rel_87_4 <= sm_e1_data_ram_sel_value_83_1_concat = std_logic_vector_to_unsigned("1001");
  proc_if_87_1: process (rel_87_4)
  is
  begin
    if rel_87_4 then
      sm_e1_data_ram_sel_join_87_1 <= true;
    else 
      sm_e1_data_ram_sel_join_87_1 <= false;
    end if;
  end process proc_if_87_1;
  slice_95_50 <= u2u_slice(linearaddr_1_692, 10, 7);
  sm_e1_template_ram_sel_value_95_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_95_50));
  rel_99_4 <= sm_e1_template_ram_sel_value_95_1_concat = std_logic_vector_to_unsigned("1010");
  proc_if_99_1: process (rel_99_4)
  is
  begin
    if rel_99_4 then
      sm_e1_template_ram_sel_join_99_1 <= true;
    else 
      sm_e1_template_ram_sel_join_99_1 <= false;
    end if;
  end process proc_if_99_1;
  proc_if_112_1: process (ram_bank_out_reg_110_30, sm_atod_datamem_1_786, sm_atod_datamem_sel_join_63_1, sm_e1_data_ram_bus_27_1_force, sm_e1_data_ram_sel_join_87_1, sm_e1_filter_ram_bus_24_1_force, sm_e1_filter_ram_sel_join_75_1, sm_e1_template_ram_bus_30_1_force, sm_e1_template_ram_sel_join_99_1)
  is
  begin
    if sm_atod_datamem_sel_join_63_1 then
      ram_bank_out_reg_join_112_1 <= u2u_cast(sm_atod_datamem_1_786, 0, 32, 0);
    elsif sm_e1_filter_ram_sel_join_75_1 then
      ram_bank_out_reg_join_112_1 <= u2u_cast(sm_e1_filter_ram_bus_24_1_force, 0, 32, 0);
    elsif sm_e1_data_ram_sel_join_87_1 then
      ram_bank_out_reg_join_112_1 <= u2u_cast(sm_e1_data_ram_bus_27_1_force, 0, 32, 0);
    elsif sm_e1_template_ram_sel_join_99_1 then
      ram_bank_out_reg_join_112_1 <= u2u_cast(sm_e1_template_ram_bus_30_1_force, 0, 32, 0);
    else 
      ram_bank_out_reg_join_112_1 <= ram_bank_out_reg_110_30;
    end if;
  end process proc_if_112_1;
  slice_123_40 <= u2u_slice(wrdbus_1_674, 15, 0);
  slice_126_41 <= u2u_slice(wrdbus_1_674, 15, 0);
  sm_e1_filter_ram_din_126_1_force <= unsigned_to_signed(slice_126_41);
  slice_129_39 <= u2u_slice(wrdbus_1_674, 15, 0);
  sm_e1_data_ram_din_129_1_force <= unsigned_to_signed(slice_129_39);
  slice_132_43 <= u2u_slice(wrdbus_1_674, 15, 0);
  sm_e1_template_ram_din_132_1_force <= unsigned_to_signed(slice_132_43);
  slice_143_46 <= u2u_slice(linearaddr_1_692, 10, 10);
  opcode_sm_atod_datamem_140_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(addrack_1_712) & unsigned_to_std_logic_vector(rnwreg_1_704) & unsigned_to_std_logic_vector(bankaddr_1_682) & unsigned_to_std_logic_vector(slice_143_46));
  rel_147_4 <= opcode_sm_atod_datamem_140_1_concat = std_logic_vector_to_unsigned("10000");
  proc_if_147_1: process (rel_147_4)
  is
  begin
    if rel_147_4 then
      sm_atod_datamem_we_reg_join_147_1 <= true;
    else 
      sm_atod_datamem_we_reg_join_147_1 <= false;
    end if;
  end process proc_if_147_1;
  slice_162_46 <= u2u_slice(linearaddr_1_692, 10, 7);
  opcode_sm_e1_filter_ram_159_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(addrack_1_712) & unsigned_to_std_logic_vector(rnwreg_1_704) & unsigned_to_std_logic_vector(bankaddr_1_682) & unsigned_to_std_logic_vector(slice_162_46));
  rel_166_4 <= opcode_sm_e1_filter_ram_159_1_concat = std_logic_vector_to_unsigned("10001000");
  proc_if_166_1: process (rel_166_4)
  is
  begin
    if rel_166_4 then
      sm_e1_filter_ram_we_reg_join_166_1 <= true;
    else 
      sm_e1_filter_ram_we_reg_join_166_1 <= false;
    end if;
  end process proc_if_166_1;
  slice_181_46 <= u2u_slice(linearaddr_1_692, 10, 7);
  opcode_sm_e1_data_ram_178_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(addrack_1_712) & unsigned_to_std_logic_vector(rnwreg_1_704) & unsigned_to_std_logic_vector(bankaddr_1_682) & unsigned_to_std_logic_vector(slice_181_46));
  rel_185_4 <= opcode_sm_e1_data_ram_178_1_concat = std_logic_vector_to_unsigned("10001001");
  proc_if_185_1: process (rel_185_4)
  is
  begin
    if rel_185_4 then
      sm_e1_data_ram_we_reg_join_185_1 <= true;
    else 
      sm_e1_data_ram_we_reg_join_185_1 <= false;
    end if;
  end process proc_if_185_1;
  slice_200_46 <= u2u_slice(linearaddr_1_692, 10, 7);
  opcode_sm_e1_template_ram_197_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(addrack_1_712) & unsigned_to_std_logic_vector(rnwreg_1_704) & unsigned_to_std_logic_vector(bankaddr_1_682) & unsigned_to_std_logic_vector(slice_200_46));
  rel_204_4 <= opcode_sm_e1_template_ram_197_1_concat = std_logic_vector_to_unsigned("10001010");
  proc_if_204_1: process (rel_204_4)
  is
  begin
    if rel_204_4 then
      sm_e1_template_ram_we_reg_join_204_1 <= true;
    else 
      sm_e1_template_ram_we_reg_join_204_1 <= false;
    end if;
  end process proc_if_204_1;
  sm_atod_datamem_addr_reg_221_5_slice <= u2u_slice(linearaddr_1_692, 10, 0);
  rel_220_4 <= addrack_1_712 = std_logic_vector_to_unsigned("1");
  proc_if_220_1: process (rel_220_4, sm_atod_datamem_addr_reg_221_5_slice)
  is
  begin
    if rel_220_4 then
      sm_atod_datamem_addr_reg_join_220_1_en <= '1';
    else 
      sm_atod_datamem_addr_reg_join_220_1_en <= '0';
    end if;
    sm_atod_datamem_addr_reg_join_220_1 <= sm_atod_datamem_addr_reg_221_5_slice;
  end process proc_if_220_1;
  sm_e1_filter_ram_addr_reg_229_5_slice <= u2u_slice(linearaddr_1_692, 7, 0);
  rel_228_4 <= addrack_1_712 = std_logic_vector_to_unsigned("1");
  proc_if_228_1: process (rel_228_4, sm_e1_filter_ram_addr_reg_229_5_slice)
  is
  begin
    if rel_228_4 then
      sm_e1_filter_ram_addr_reg_join_228_1_en <= '1';
    else 
      sm_e1_filter_ram_addr_reg_join_228_1_en <= '0';
    end if;
    sm_e1_filter_ram_addr_reg_join_228_1 <= sm_e1_filter_ram_addr_reg_229_5_slice;
  end process proc_if_228_1;
  sm_e1_data_ram_addr_reg_237_5_slice <= u2u_slice(linearaddr_1_692, 7, 0);
  rel_236_4 <= addrack_1_712 = std_logic_vector_to_unsigned("1");
  proc_if_236_1: process (rel_236_4, sm_e1_data_ram_addr_reg_237_5_slice)
  is
  begin
    if rel_236_4 then
      sm_e1_data_ram_addr_reg_join_236_1_en <= '1';
    else 
      sm_e1_data_ram_addr_reg_join_236_1_en <= '0';
    end if;
    sm_e1_data_ram_addr_reg_join_236_1 <= sm_e1_data_ram_addr_reg_237_5_slice;
  end process proc_if_236_1;
  sm_e1_template_ram_addr_reg_245_5_slice <= u2u_slice(linearaddr_1_692, 7, 0);
  rel_244_4 <= addrack_1_712 = std_logic_vector_to_unsigned("1");
  proc_if_244_1: process (rel_244_4, sm_e1_template_ram_addr_reg_245_5_slice)
  is
  begin
    if rel_244_4 then
      sm_e1_template_ram_addr_reg_join_244_1_en <= '1';
    else 
      sm_e1_template_ram_addr_reg_join_244_1_en <= '0';
    end if;
    sm_e1_template_ram_addr_reg_join_244_1 <= sm_e1_template_ram_addr_reg_245_5_slice;
  end process proc_if_244_1;
  rel_255_4 <= opcode_55_1_concat = std_logic_vector_to_unsigned("101000000000000");
  proc_if_255_1: process (rel_255_4)
  is
  begin
    if rel_255_4 then
      sm_esp_contol_reg_en_join_255_1 <= true;
    else 
      sm_esp_contol_reg_en_join_255_1 <= false;
    end if;
  end process proc_if_255_1;
  rel_261_4 <= opcode_55_1_concat = std_logic_vector_to_unsigned("101000000000001");
  proc_if_261_1: process (rel_261_4)
  is
  begin
    if rel_261_4 then
      sm_dtoa1_data_regb_en_join_261_1 <= true;
    else 
      sm_dtoa1_data_regb_en_join_261_1 <= false;
    end if;
  end process proc_if_261_1;
  rel_267_4 <= opcode_55_1_concat = std_logic_vector_to_unsigned("101000000000010");
  proc_if_267_1: process (rel_267_4)
  is
  begin
    if rel_267_4 then
      sm_dtoa1_data_rega_en_join_267_1 <= true;
    else 
      sm_dtoa1_data_rega_en_join_267_1 <= false;
    end if;
  end process proc_if_267_1;
  rel_273_4 <= opcode_55_1_concat = std_logic_vector_to_unsigned("101000000000011");
  proc_if_273_1: process (rel_273_4)
  is
  begin
    if rel_273_4 then
      sm_dtoa0_data_regb_en_join_273_1 <= true;
    else 
      sm_dtoa0_data_regb_en_join_273_1 <= false;
    end if;
  end process proc_if_273_1;
  rel_279_4 <= opcode_55_1_concat = std_logic_vector_to_unsigned("101000000000100");
  proc_if_279_1: process (rel_279_4)
  is
  begin
    if rel_279_4 then
      sm_dtoa0_data_rega_en_join_279_1 <= true;
    else 
      sm_dtoa0_data_rega_en_join_279_1 <= false;
    end if;
  end process proc_if_279_1;
  rel_285_4 <= opcode_55_1_concat = std_logic_vector_to_unsigned("101000000000101");
  proc_if_285_1: process (rel_285_4)
  is
  begin
    if rel_285_4 then
      sm_e1_decimation_en_join_285_1 <= true;
    else 
      sm_e1_decimation_en_join_285_1 <= false;
    end if;
  end process proc_if_285_1;
  rel_291_4 <= opcode_55_1_concat = std_logic_vector_to_unsigned("101000000000110");
  proc_if_291_1: process (rel_291_4)
  is
  begin
    if rel_291_4 then
      sm_e1_filter_length_en_join_291_1 <= true;
    else 
      sm_e1_filter_length_en_join_291_1 <= false;
    end if;
  end process proc_if_291_1;
  rel_297_4 <= opcode_55_1_concat = std_logic_vector_to_unsigned("101000000000111");
  proc_if_297_1: process (rel_297_4)
  is
  begin
    if rel_297_4 then
      sm_e1_template_size_en_join_297_1 <= true;
    else 
      sm_e1_template_size_en_join_297_1 <= false;
    end if;
  end process proc_if_297_1;
  slice_312_42 <= u2u_slice(wrdbus_1_674, 15, 0);
  slice_315_43 <= u2u_slice(wrdbus_1_674, 15, 0);
  slice_318_43 <= u2u_slice(wrdbus_1_674, 15, 0);
  slice_321_43 <= u2u_slice(wrdbus_1_674, 15, 0);
  slice_324_43 <= u2u_slice(wrdbus_1_674, 15, 0);
  slice_327_41 <= u2u_slice(wrdbus_1_674, 15, 0);
  slice_330_44 <= u2u_slice(wrdbus_1_674, 15, 0);
  slice_333_44 <= u2u_slice(wrdbus_1_674, 15, 0);
  rel_343_4 <= bankaddr_reg_341_26 = std_logic_vector_to_unsigned("00");
  rel_346_8 <= bankaddr_reg_341_26 = std_logic_vector_to_unsigned("01");
  rel_349_8 <= bankaddr_reg_341_26 = std_logic_vector_to_unsigned("10");
  rel_352_8 <= bankaddr_reg_341_26 = std_logic_vector_to_unsigned("11");
  proc_if_343_1: process (ram_bank_out_reg_110_30, read_bank_out_reg_338_31, reg_bank_out_reg_36_30, rel_343_4, rel_346_8, rel_349_8, rel_352_8)
  is
  begin
    if rel_343_4 then
      read_bank_out_reg_join_343_1 <= ram_bank_out_reg_110_30;
    elsif rel_346_8 then
      read_bank_out_reg_join_343_1 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    elsif rel_349_8 then
      read_bank_out_reg_join_343_1 <= reg_bank_out_reg_36_30;
    elsif rel_352_8 then
      read_bank_out_reg_join_343_1 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    else 
      read_bank_out_reg_join_343_1 <= read_bank_out_reg_338_31;
    end if;
  end process proc_if_343_1;
  reg_bank_out_reg_36_30_next <= reg_bank_out_reg_join_39_1;
  ram_bank_out_reg_110_30_next <= ram_bank_out_reg_join_112_1;
  sm_atod_datamem_we_reg_138_36_next <= sm_atod_datamem_we_reg_join_147_1;
  sm_e1_filter_ram_we_reg_157_37_next <= sm_e1_filter_ram_we_reg_join_166_1;
  sm_e1_data_ram_we_reg_176_35_next <= sm_e1_data_ram_we_reg_join_185_1;
  sm_e1_template_ram_we_reg_195_39_next <= sm_e1_template_ram_we_reg_join_204_1;
  cast_sm_atod_datamem_addr_reg_218_1_next <= u2u_cast(sm_atod_datamem_addr_reg_join_220_1, 0, 10, 0);
  sm_atod_datamem_addr_reg_218_1_next <= cast_sm_atod_datamem_addr_reg_218_1_next;
  sm_atod_datamem_addr_reg_218_1_en <= sm_atod_datamem_addr_reg_join_220_1_en;
  cast_sm_e1_filter_ram_addr_reg_226_1_next <= u2u_cast(sm_e1_filter_ram_addr_reg_join_228_1, 0, 7, 0);
  sm_e1_filter_ram_addr_reg_226_1_next <= cast_sm_e1_filter_ram_addr_reg_226_1_next;
  sm_e1_filter_ram_addr_reg_226_1_en <= sm_e1_filter_ram_addr_reg_join_228_1_en;
  cast_sm_e1_data_ram_addr_reg_234_1_next <= u2u_cast(sm_e1_data_ram_addr_reg_join_236_1, 0, 7, 0);
  sm_e1_data_ram_addr_reg_234_1_next <= cast_sm_e1_data_ram_addr_reg_234_1_next;
  sm_e1_data_ram_addr_reg_234_1_en <= sm_e1_data_ram_addr_reg_join_236_1_en;
  cast_sm_e1_template_ram_addr_reg_242_1_next <= u2u_cast(sm_e1_template_ram_addr_reg_join_244_1, 0, 7, 0);
  sm_e1_template_ram_addr_reg_242_1_next <= cast_sm_e1_template_ram_addr_reg_242_1_next;
  sm_e1_template_ram_addr_reg_242_1_en <= sm_e1_template_ram_addr_reg_join_244_1_en;
  read_bank_out_reg_338_31_next <= read_bank_out_reg_join_343_1;
  bankaddr_reg_341_26_next <= bankaddr_1_682;
  read_bank_out <= unsigned_to_std_logic_vector(read_bank_out_reg_338_31);
  sm_esp_contol_reg_din <= unsigned_to_std_logic_vector(slice_312_42);
  sm_esp_contol_reg_en <= boolean_to_vector(sm_esp_contol_reg_en_join_255_1);
  sm_dtoa1_data_regb_din <= unsigned_to_std_logic_vector(slice_315_43);
  sm_dtoa1_data_regb_en <= boolean_to_vector(sm_dtoa1_data_regb_en_join_261_1);
  sm_dtoa1_data_rega_din <= unsigned_to_std_logic_vector(slice_318_43);
  sm_dtoa1_data_rega_en <= boolean_to_vector(sm_dtoa1_data_rega_en_join_267_1);
  sm_dtoa0_data_regb_din <= unsigned_to_std_logic_vector(slice_321_43);
  sm_dtoa0_data_regb_en <= boolean_to_vector(sm_dtoa0_data_regb_en_join_273_1);
  sm_dtoa0_data_rega_din <= unsigned_to_std_logic_vector(slice_324_43);
  sm_dtoa0_data_rega_en <= boolean_to_vector(sm_dtoa0_data_rega_en_join_279_1);
  sm_e1_decimation_din <= unsigned_to_std_logic_vector(slice_327_41);
  sm_e1_decimation_en <= boolean_to_vector(sm_e1_decimation_en_join_285_1);
  sm_e1_filter_length_din <= unsigned_to_std_logic_vector(slice_330_44);
  sm_e1_filter_length_en <= boolean_to_vector(sm_e1_filter_length_en_join_291_1);
  sm_e1_template_size_din <= unsigned_to_std_logic_vector(slice_333_44);
  sm_e1_template_size_en <= boolean_to_vector(sm_e1_template_size_en_join_297_1);
  sm_atod_datamem_addr <= unsigned_to_std_logic_vector(sm_atod_datamem_addr_reg_218_1);
  sm_atod_datamem_din <= unsigned_to_std_logic_vector(slice_123_40);
  sm_atod_datamem_we <= boolean_to_vector(sm_atod_datamem_we_reg_138_36);
  sm_e1_filter_ram_addr <= unsigned_to_std_logic_vector(sm_e1_filter_ram_addr_reg_226_1);
  sm_e1_filter_ram_din <= signed_to_std_logic_vector(sm_e1_filter_ram_din_126_1_force);
  sm_e1_filter_ram_we <= boolean_to_vector(sm_e1_filter_ram_we_reg_157_37);
  sm_e1_data_ram_addr <= unsigned_to_std_logic_vector(sm_e1_data_ram_addr_reg_234_1);
  sm_e1_data_ram_din <= signed_to_std_logic_vector(sm_e1_data_ram_din_129_1_force);
  sm_e1_data_ram_we <= boolean_to_vector(sm_e1_data_ram_we_reg_176_35);
  sm_e1_template_ram_addr <= unsigned_to_std_logic_vector(sm_e1_template_ram_addr_reg_242_1);
  sm_e1_template_ram_din <= signed_to_std_logic_vector(sm_e1_template_ram_din_132_1_force);
  sm_e1_template_ram_we <= boolean_to_vector(sm_e1_template_ram_we_reg_195_39);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity accum_88b3a8f10c is
  port (
    b : in std_logic_vector((16 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end accum_88b3a8f10c;


architecture behavior of accum_88b3a8f10c is
  signal b_17_24: unsigned((16 - 1) downto 0);
  signal rst_17_27: boolean;
  signal accum_reg_41_23_next: unsigned((24 - 1) downto 0);
  signal accum_reg_41_23: unsigned((24 - 1) downto 0) := "000000000000000000000000";
  signal accum_reg_41_23_rst: std_logic;
  signal cast_51_22: unsigned((25 - 1) downto 0);
  signal cast_51_42: unsigned((25 - 1) downto 0);
  signal accum_reg_51_9_addsub: unsigned((25 - 1) downto 0);
  signal accum_reg_join_47_1: unsigned((25 - 1) downto 0);
  signal accum_reg_join_47_1_rst: std_logic;
  signal accum_reg_41_23_next_x_000000: unsigned((24 - 1) downto 0);
begin
  b_17_24 <= std_logic_vector_to_unsigned(b);
  rst_17_27 <= ((rst) = "1");
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (accum_reg_41_23_rst = '1')) then
        accum_reg_41_23 <= "000000000000000000000000";
      elsif (ce = '1') then 
        accum_reg_41_23 <= accum_reg_41_23_next;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  cast_51_22 <= u2u_cast(accum_reg_41_23, 15, 25, 15);
  cast_51_42 <= u2u_cast(b_17_24, 15, 25, 15);
  accum_reg_51_9_addsub <= cast_51_22 + cast_51_42;
  proc_if_47_1: process (accum_reg_51_9_addsub, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1_rst <= '1';
    else 
      accum_reg_join_47_1_rst <= '0';
    end if;
    accum_reg_join_47_1 <= accum_reg_51_9_addsub;
  end process proc_if_47_1;
  accum_reg_41_23_next_x_000000 <= std_logic_vector_to_unsigned(convert_type(unsigned_to_std_logic_vector(accum_reg_51_9_addsub), 25, 15, xlUnsigned, 24, 15, xlUnsigned, xlTruncate, xlSaturate));
  accum_reg_41_23_next <= accum_reg_41_23_next_x_000000;
  accum_reg_41_23_rst <= accum_reg_join_47_1_rst;
  q <= unsigned_to_std_logic_vector(accum_reg_41_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_9f5572ba51 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_9f5572ba51;


architecture behavior of constant_9f5572ba51 is
begin
  op <= "0000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_6293007044 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_6293007044;


architecture behavior of constant_6293007044 is
begin
  op <= "1";
end behavior;


-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
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
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity convert_func_call is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        result : out std_logic_vector (dout_width-1 downto 0));
end convert_func_call;
architecture behavior of convert_func_call is
begin
    result <= convert_type(din, din_width, din_bin_pt, din_arith,
                           dout_width, dout_bin_pt, dout_arith,
                           quantization, overflow);
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlconvert is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        en_width     : integer := 1;
        en_bin_pt    : integer := 0;
        en_arith     : integer := xlUnsigned;
        bool_conversion : integer :=0;
        latency      : integer := 0;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        en  : in std_logic_vector (en_width-1 downto 0);
        ce  : in std_logic;
        clr : in std_logic;
        clk : in std_logic;
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlconvert;
architecture behavior of xlconvert is
    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i       : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;
    component convert_func_call
        generic (
            din_width    : integer := 16;
            din_bin_pt   : integer := 4;
            din_arith    : integer := xlUnsigned;
            dout_width   : integer := 8;
            dout_bin_pt  : integer := 2;
            dout_arith   : integer := xlUnsigned;
            quantization : integer := xlTruncate;
            overflow     : integer := xlWrap);
        port (
            din : in std_logic_vector (din_width-1 downto 0);
            result : out std_logic_vector (dout_width-1 downto 0));
    end component;
    -- synopsys translate_off
    -- synopsys translate_on
    signal result : std_logic_vector(dout_width-1 downto 0);
    signal internal_ce : std_logic;
begin
    -- synopsys translate_off
    -- synopsys translate_on
    internal_ce <= ce and en(0);

    bool_conversion_generate : if (bool_conversion = 1)
    generate
      result <= din;
    end generate;
    std_conversion_generate : if (bool_conversion = 0)
    generate
      convert : convert_func_call
        generic map (
          din_width   => din_width,
          din_bin_pt  => din_bin_pt,
          din_arith   => din_arith,
          dout_width  => dout_width,
          dout_bin_pt => dout_bin_pt,
          dout_arith  => dout_arith,
          quantization => quantization,
          overflow     => overflow)
        port map (
          din => din,
          result => result);
    end generate;
    latency_test : if (latency > 0) generate
        reg : synth_reg
            generic map (
              width => dout_width,
              latency => latency
            )
            port map (
              i => result,
              ce => internal_ce,
              clr => clr,
              clk => clk,
              o => dout
            );
    end generate;
    latency0 : if (latency = 0)
    generate
        dout <= result;
    end generate latency0;
end  behavior;

-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
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
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlcounter_free_RTEphysEng is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    load: in std_logic_vector(0 downto 0) := (others => '0');
    din: in std_logic_vector(op_width - 1 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_free_RTEphysEng ;
architecture behavior of xlcounter_free_RTEphysEng is
  component cntr_11_0_42baf13c51a596fc
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_42baf13c51a596fc:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_42baf13c51a596fc:
    component is "true";
  attribute box_type of cntr_11_0_42baf13c51a596fc:
    component  is "black_box";
  component cntr_11_0_45469457c0a77b17
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_45469457c0a77b17:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_45469457c0a77b17:
    component is "true";
  attribute box_type of cntr_11_0_45469457c0a77b17:
    component  is "black_box";
  component cntr_11_0_4c9ff32156a8ea89
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_4c9ff32156a8ea89:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_4c9ff32156a8ea89:
    component is "true";
  attribute box_type of cntr_11_0_4c9ff32156a8ea89:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec: std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec: std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
  signal core_sinit: std_logic;
  signal core_ce: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
begin
  core_ce <= ce and en(0);
  core_sinit <= (clr or rst(0)) and ce;
  op <= op_net;
  comp0: if ((core_name0 = "cntr_11_0_42baf13c51a596fc")) generate
    core_instance0: cntr_11_0_42baf13c51a596fc
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_45469457c0a77b17")) generate
    core_instance1: cntr_11_0_45469457c0a77b17
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp2: if ((core_name0 = "cntr_11_0_4c9ff32156a8ea89")) generate
    core_instance2: cntr_11_0_4c9ff32156a8ea89
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
end behavior;

-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
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
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xladdsub_RTEphysEng is
  generic (
    core_name0: string := "";
    a_width: integer := 16;
    a_bin_pt: integer := 4;
    a_arith: integer := xlUnsigned;
    c_in_width: integer := 16;
    c_in_bin_pt: integer := 4;
    c_in_arith: integer := xlUnsigned;
    c_out_width: integer := 16;
    c_out_bin_pt: integer := 4;
    c_out_arith: integer := xlUnsigned;
    b_width: integer := 8;
    b_bin_pt: integer := 2;
    b_arith: integer := xlUnsigned;
    s_width: integer := 17;
    s_bin_pt: integer := 4;
    s_arith: integer := xlUnsigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    full_s_width: integer := 17;
    full_s_arith: integer := xlUnsigned;
    mode: integer := xlAddMode;
    extra_registers: integer := 0;
    latency: integer := 0;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    c_latency: integer := 0;
    c_output_width: integer := 17;
    c_has_c_in : integer := 0;
    c_has_c_out : integer := 0
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    c_in : in std_logic_vector (0 downto 0) := "0";
    ce: in std_logic;
    clr: in std_logic := '0';
    clk: in std_logic;
    rst: in std_logic_vector(rst_width - 1 downto 0) := "0";
    en: in std_logic_vector(en_width - 1 downto 0) := "1";
    c_out : out std_logic_vector (0 downto 0);
    s: out std_logic_vector(s_width - 1 downto 0)
  );
end xladdsub_RTEphysEng;
architecture behavior of xladdsub_RTEphysEng is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  function format_input(inp: std_logic_vector; old_width, delta, new_arith,
                        new_width: integer)
    return std_logic_vector
  is
    variable vec: std_logic_vector(old_width-1 downto 0);
    variable padded_inp: std_logic_vector((old_width + delta)-1  downto 0);
    variable result: std_logic_vector(new_width-1 downto 0);
  begin
    vec := inp;
    if (delta > 0) then
      padded_inp := pad_LSB(vec, old_width+delta);
      result := extend_MSB(padded_inp, new_width, new_arith);
    else
      result := extend_MSB(vec, new_width, new_arith);
    end if;
    return result;
  end;
  constant full_s_bin_pt: integer := fractional_bits(a_bin_pt, b_bin_pt);
  constant full_a_width: integer := full_s_width;
  constant full_b_width: integer := full_s_width;
  signal full_a: std_logic_vector(full_a_width - 1 downto 0);
  signal full_b: std_logic_vector(full_b_width - 1 downto 0);
  signal core_s: std_logic_vector(full_s_width - 1 downto 0);
  signal conv_s: std_logic_vector(s_width - 1 downto 0);
  signal temp_cout : std_logic;
  signal internal_clr: std_logic;
  signal internal_ce: std_logic;
  signal extra_reg_ce: std_logic;
  signal override: std_logic;
  signal logic1: std_logic_vector(0 downto 0);
  component addsb_11_0_50672071db3158cd
    port (
          a: in std_logic_vector(17 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(17 - 1 downto 0)
    );
  end component;
begin
  internal_clr <= (clr or (rst(0))) and ce;
  internal_ce <= ce and en(0);
  logic1(0) <= '1';
  addsub_process: process (a, b, core_s)
  begin
    full_a <= format_input (a, a_width, b_bin_pt - a_bin_pt, a_arith,
                            full_a_width);
    full_b <= format_input (b, b_width, a_bin_pt - b_bin_pt, b_arith,
                            full_b_width);
    conv_s <= convert_type (core_s, full_s_width, full_s_bin_pt, full_s_arith,
                            s_width, s_bin_pt, s_arith, quantization, overflow);
  end process addsub_process;

  comp0: if ((core_name0 = "addsb_11_0_50672071db3158cd")) generate
    core_instance0: addsb_11_0_50672071db3158cd
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  latency_test: if (extra_registers > 0) generate
      override_test: if (c_latency > 1) generate
       override_pipe: synth_reg
          generic map (
            width => 1,
            latency => c_latency
          )
          port map (
            i => logic1,
            ce => internal_ce,
            clr => internal_clr,
            clk => clk,
            o(0) => override);
       extra_reg_ce <= ce and en(0) and override;
      end generate override_test;
      no_override: if ((c_latency = 0) or (c_latency = 1)) generate
       extra_reg_ce <= ce and en(0);
      end generate no_override;
      extra_reg: synth_reg
        generic map (
          width => s_width,
          latency => extra_registers
        )
        port map (
          i => conv_s,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => s
        );
      cout_test: if (c_has_c_out = 1) generate
      c_out_extra_reg: synth_reg
        generic map (
          width => 1,
          latency => extra_registers
        )
        port map (
          i(0) => temp_cout,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => c_out
        );
      end generate cout_test;
  end generate;
  latency_s: if ((latency = 0) or (extra_registers = 0)) generate
    s <= conv_s;
  end generate latency_s;
  latency0: if (((latency = 0) or (extra_registers = 0)) and
                 (c_has_c_out = 1)) generate
    c_out(0) <= temp_cout;
  end generate latency0;
  tie_dangling_cout: if (c_has_c_out = 0) generate
    c_out <= "0";
  end generate tie_dangling_cout;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity accum_2536c42ff3 is
  port (
    b : in std_logic_vector((16 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end accum_2536c42ff3;


architecture behavior of accum_2536c42ff3 is
  signal b_17_24: signed((16 - 1) downto 0);
  signal rst_17_27: boolean;
  signal accum_reg_41_23: signed((16 - 1) downto 0) := "0000000000000000";
  signal accum_reg_41_23_rst: std_logic;
  signal accum_reg_join_47_1: signed((17 - 1) downto 0);
  signal accum_reg_join_47_1_rst: std_logic;
begin
  b_17_24 <= std_logic_vector_to_signed(b);
  rst_17_27 <= ((rst) = "1");
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (accum_reg_41_23_rst = '1')) then
        accum_reg_41_23 <= "0000000000000000";
      elsif (ce = '1') then 
        accum_reg_41_23 <= accum_reg_41_23 + b_17_24;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  proc_if_47_1: process (accum_reg_41_23, b_17_24, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1_rst <= '1';
    else 
      accum_reg_join_47_1_rst <= '0';
    end if;
  end process proc_if_47_1;
  accum_reg_41_23_rst <= accum_reg_join_47_1_rst;
  q <= signed_to_std_logic_vector(accum_reg_41_23);
end behavior;


-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
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
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlmult_RTEphysEng is
  generic (
    core_name0: string := "";
    a_width: integer := 4;
    a_bin_pt: integer := 2;
    a_arith: integer := xlSigned;
    b_width: integer := 4;
    b_bin_pt: integer := 1;
    b_arith: integer := xlSigned;
    p_width: integer := 8;
    p_bin_pt: integer := 2;
    p_arith: integer := xlSigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    extra_registers: integer := 0;
    c_a_width: integer := 7;
    c_b_width: integer := 7;
    c_type: integer := 0;
    c_a_type: integer := 0;
    c_b_type: integer := 0;
    c_pipelined: integer := 1;
    c_baat: integer := 4;
    multsign: integer := xlSigned;
    c_output_width: integer := 16
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    core_ce: in std_logic := '0';
    core_clr: in std_logic := '0';
    core_clk: in std_logic := '0';
    rst: in std_logic_vector(rst_width - 1 downto 0);
    en: in std_logic_vector(en_width - 1 downto 0);
    p: out std_logic_vector(p_width - 1 downto 0)
  );
end xlmult_RTEphysEng;
architecture behavior of xlmult_RTEphysEng is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  component mult_11_2_eb93f59d418f9076
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_eb93f59d418f9076:
    component is true;
  attribute fpga_dont_touch of mult_11_2_eb93f59d418f9076:
    component is "true";
  attribute box_type of mult_11_2_eb93f59d418f9076:
    component  is "black_box";
  component mult_11_2_22d5399536538cd3
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_22d5399536538cd3:
    component is true;
  attribute fpga_dont_touch of mult_11_2_22d5399536538cd3:
    component is "true";
  attribute box_type of mult_11_2_22d5399536538cd3:
    component  is "black_box";
  signal tmp_a: std_logic_vector(c_a_width - 1 downto 0);
  signal conv_a: std_logic_vector(c_a_width - 1 downto 0);
  signal tmp_b: std_logic_vector(c_b_width - 1 downto 0);
  signal conv_b: std_logic_vector(c_b_width - 1 downto 0);
  signal tmp_p: std_logic_vector(c_output_width - 1 downto 0);
  signal conv_p: std_logic_vector(p_width - 1 downto 0);
  -- synopsys translate_off
  signal real_a, real_b, real_p: real;
  -- synopsys translate_on
  signal rfd: std_logic;
  signal rdy: std_logic;
  signal nd: std_logic;
  signal internal_ce: std_logic;
  signal internal_clr: std_logic;
  signal internal_core_ce: std_logic;
begin
-- synopsys translate_off
-- synopsys translate_on
  internal_ce <= ce and en(0);
  internal_core_ce <= core_ce and en(0);
  internal_clr <= (clr or rst(0)) and ce;
  nd <= internal_ce;
  input_process:  process (a,b)
  begin
    tmp_a <= zero_ext(a, c_a_width);
    tmp_b <= zero_ext(b, c_b_width);
  end process;
  output_process: process (tmp_p)
  begin
    conv_p <= convert_type(tmp_p, c_output_width, a_bin_pt+b_bin_pt, multsign,
                           p_width, p_bin_pt, p_arith, quantization, overflow);
  end process;
  comp0: if ((core_name0 = "mult_11_2_eb93f59d418f9076")) generate
    core_instance0: mult_11_2_eb93f59d418f9076
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp1: if ((core_name0 = "mult_11_2_22d5399536538cd3")) generate
    core_instance1: mult_11_2_22d5399536538cd3
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  latency_gt_0: if (extra_registers > 0) generate
    reg: synth_reg
      generic map (
        width => p_width,
        latency => extra_registers
      )
      port map (
        i => conv_p,
        ce => internal_ce,
        clr => internal_clr,
        clk => clk,
        o => p
      );
  end generate;
  latency_eq_0: if (extra_registers = 0) generate
    p <= conv_p;
  end generate;
end architecture behavior;

-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
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
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xldpram_RTEphysEng is
  generic (
    core_name0: string := "";
    c_width_a: integer := 13;
    c_address_width_a: integer := 4;
    c_width_b: integer := 13;
    c_address_width_b: integer := 4;
    c_has_sinita: integer := 0;
    c_has_sinitb: integer := 0;
    latency: integer := 1
  );
  port (
    dina: in std_logic_vector(c_width_a - 1 downto 0);
    addra: in std_logic_vector(c_address_width_a - 1 downto 0);
    wea: in std_logic_vector(0 downto 0);
    a_ce: in std_logic;
    a_clk: in std_logic;
    rsta: in std_logic_vector(0 downto 0) := (others => '0');
    ena: in std_logic_vector(0 downto 0) := (others => '1');
    douta: out std_logic_vector(c_width_a - 1 downto 0);
    dinb: in std_logic_vector(c_width_b - 1 downto 0);
    addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
    web: in std_logic_vector(0 downto 0);
    b_ce: in std_logic;
    b_clk: in std_logic;
    rstb: in std_logic_vector(0 downto 0) := (others => '0');
    enb: in std_logic_vector(0 downto 0) := (others => '1');
    doutb: out std_logic_vector(c_width_b - 1 downto 0)
  );
end xldpram_RTEphysEng;
architecture behavior of xldpram_RTEphysEng is
  component synth_reg
    generic (
      width: integer;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;

  signal core_addra: std_logic_vector(c_address_width_a - 1 downto 0);
  signal core_addrb: std_logic_vector(c_address_width_b - 1 downto 0);
  signal core_dina, core_douta, dly_douta:
    std_logic_vector(c_width_a - 1 downto 0);
  signal core_dinb, core_doutb, dly_doutb:
    std_logic_vector(c_width_b - 1 downto 0);
  signal core_wea, core_web: std_logic;
  signal core_a_ce, core_b_ce: std_logic;
  signal sinita, sinitb: std_logic;

  component bmg_72_24c7b3c86a194f2d
    port (
        addra: in std_logic_vector(c_address_width_a - 1 downto 0);
      addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
      dina: in std_logic_vector(c_width_a - 1 downto 0);
      dinb: in std_logic_vector(c_width_b - 1 downto 0);
      clka: in std_logic;
      clkb: in std_logic;
      wea: in std_logic_vector(0 downto 0);
      web: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      enb: in std_logic;
      douta: out std_logic_vector(c_width_a - 1 downto 0);
      doutb: out std_logic_vector(c_width_b - 1 downto 0)
     );
  end component;

  attribute syn_black_box of bmg_72_24c7b3c86a194f2d:
    component is true;
  attribute fpga_dont_touch of bmg_72_24c7b3c86a194f2d:
    component is "true";
  attribute box_type of bmg_72_24c7b3c86a194f2d:
    component  is "black_box";
begin
  core_addra <= addra;
  core_dina <= dina;
  douta <= dly_douta;
  core_wea <= wea(0);
  core_a_ce <= a_ce and ena(0);
  sinita <= rsta(0) and a_ce;

  core_addrb <= addrb;
  core_dinb <= dinb;
  doutb <= dly_doutb;
  core_web <= web(0);
  core_b_ce <= b_ce and enb(0);
  sinitb <= rstb(0) and b_ce;
  comp0: if ((core_name0 = "bmg_72_24c7b3c86a194f2d")) generate
    core_instance0: bmg_72_24c7b3c86a194f2d
      port map (
          addra => core_addra,
        clka => a_clk,
        addrb => core_addrb,
        clkb => b_clk,
        dina => core_dina,
        wea(0) => core_wea,
        dinb => core_dinb,
        web(0) => core_web,
        ena => core_a_ce,
        enb => core_b_ce,
        douta => core_douta,
        doutb => core_doutb
      );
  end generate;
  latency_test: if (latency > 2) generate
    regA: synth_reg
      generic map (
        width => c_width_a,
        latency => latency - 2
      )
      port map (
        i => core_douta,
        ce => core_a_ce,
        clr => '0',
        clk => a_clk,
        o => dly_douta
      );
    regB: synth_reg
      generic map (
        width => c_width_b,
        latency => latency - 2
      )
      port map (
        i => core_doutb,
        ce => core_b_ce,
        clr => '0',
        clk => b_clk,
        o => dly_doutb
      );
  end generate;
  latency1: if (latency <= 2) generate
    dly_douta <= core_douta;
    dly_doutb <= core_doutb;
  end generate;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mcode_block_597074bbfc is
  port (
    new_sample_available : in std_logic_vector((1 - 1) downto 0);
    template_cnt : in std_logic_vector((7 - 1) downto 0);
    template_size : in std_logic_vector((16 - 1) downto 0);
    filter_length : in std_logic_vector((16 - 1) downto 0);
    filter_cntr : in std_logic_vector((7 - 1) downto 0);
    sample_skip_cntr : in std_logic_vector((8 - 1) downto 0);
    en_filter_wr_address_cntr : out std_logic_vector((1 - 1) downto 0);
    en_template_cntr : out std_logic_vector((1 - 1) downto 0);
    rst_template_acc : out std_logic_vector((1 - 1) downto 0);
    ld_template_cntr : out std_logic_vector((1 - 1) downto 0);
    en_filter_cntr : out std_logic_vector((1 - 1) downto 0);
    rst_filter_acc : out std_logic_vector((1 - 1) downto 0);
    filt_data_ram_en : out std_logic_vector((1 - 1) downto 0);
    filt_data_ram_wr : out std_logic_vector((1 - 1) downto 0);
    ld_filter_cntr : out std_logic_vector((1 - 1) downto 0);
    start_add_cntr_en : out std_logic_vector((1 - 1) downto 0);
    sample_skip_cntr_en : out std_logic_vector((1 - 1) downto 0);
    sample_skip_cntr_ld : out std_logic_vector((1 - 1) downto 0);
    latch_temp_accum : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mcode_block_597074bbfc;


architecture behavior of mcode_block_597074bbfc is
  signal new_sample_available_4_27: boolean;
  signal template_cnt_4_49: unsigned((7 - 1) downto 0);
  signal template_size_4_63: unsigned((16 - 1) downto 0);
  signal filter_length_4_78: unsigned((16 - 1) downto 0);
  signal filter_cntr_4_93: unsigned((7 - 1) downto 0);
  signal sample_skip_cntr_4_106: unsigned((8 - 1) downto 0);
  signal cnt_state_0_24_24_next: unsigned((8 - 1) downto 0);
  signal cnt_state_0_24_24: unsigned((8 - 1) downto 0) := "00000000";
  signal cnt_state_1_24_24_next: unsigned((8 - 1) downto 0);
  signal cnt_state_1_24_24: unsigned((8 - 1) downto 0) := "00000000";
  signal not_31_13: boolean;
  signal next_state_join_31_9: unsigned((1 - 1) downto 0);
  signal filt_data_ram_wr_join_31_9: unsigned((1 - 1) downto 0);
  signal ld_template_cntr_join_31_9: unsigned((1 - 1) downto 0);
  signal ld_filter_cntr_join_31_9: unsigned((1 - 1) downto 0);
  signal en_template_cntr_join_31_9: unsigned((1 - 1) downto 0);
  signal sample_skip_cntr_ld_join_31_9: unsigned((1 - 1) downto 0);
  signal rst_filter_acc_join_31_9: unsigned((1 - 1) downto 0);
  signal en_filter_cntr_join_31_9: unsigned((1 - 1) downto 0);
  signal start_add_cntr_en_join_31_9: unsigned((1 - 1) downto 0);
  signal en_filter_wr_address_cntr_join_31_9: unsigned((1 - 1) downto 0);
  signal sample_skip_cntr_en_join_31_9: unsigned((1 - 1) downto 0);
  signal latch_temp_accum_join_31_9: unsigned((1 - 1) downto 0);
  signal filt_data_ram_en_join_31_9: unsigned((1 - 1) downto 0);
  signal rst_template_acc_join_31_9: unsigned((1 - 1) downto 0);
  signal rel_63_18: boolean;
  signal next_state_join_63_9: unsigned((5 - 1) downto 0);
  signal filt_data_ram_wr_join_63_9: unsigned((1 - 1) downto 0);
  signal ld_filter_cntr_join_63_9: unsigned((1 - 1) downto 0);
  signal ld_template_cntr_join_63_9: unsigned((1 - 1) downto 0);
  signal en_template_cntr_join_63_9: unsigned((1 - 1) downto 0);
  signal sample_skip_cntr_ld_join_63_9: unsigned((1 - 1) downto 0);
  signal rst_filter_acc_join_63_9: unsigned((1 - 1) downto 0);
  signal en_filter_cntr_join_63_9: unsigned((1 - 1) downto 0);
  signal start_add_cntr_en_join_63_9: unsigned((1 - 1) downto 0);
  signal en_filter_wr_address_cntr_join_63_9: unsigned((1 - 1) downto 0);
  signal sample_skip_cntr_en_join_63_9: unsigned((1 - 1) downto 0);
  signal latch_temp_accum_join_63_9: unsigned((1 - 1) downto 0);
  signal filt_data_ram_en_join_63_9: unsigned((1 - 1) downto 0);
  signal rst_template_acc_join_63_9: unsigned((1 - 1) downto 0);
  signal cast_155_19: unsigned((16 - 1) downto 0);
  signal rel_155_19: boolean;
  signal next_state_join_155_9: unsigned((3 - 1) downto 0);
  signal filt_data_ram_wr_join_155_9: unsigned((1 - 1) downto 0);
  signal ld_filter_cntr_join_155_9: unsigned((1 - 1) downto 0);
  signal ld_template_cntr_join_155_9: unsigned((1 - 1) downto 0);
  signal en_template_cntr_join_155_9: unsigned((1 - 1) downto 0);
  signal sample_skip_cntr_ld_join_155_9: unsigned((1 - 1) downto 0);
  signal rst_filter_acc_join_155_9: unsigned((1 - 1) downto 0);
  signal en_filter_cntr_join_155_9: unsigned((1 - 1) downto 0);
  signal start_add_cntr_en_join_155_9: unsigned((1 - 1) downto 0);
  signal en_filter_wr_address_cntr_join_155_9: unsigned((1 - 1) downto 0);
  signal sample_skip_cntr_en_join_155_9: unsigned((1 - 1) downto 0);
  signal latch_temp_accum_join_155_9: unsigned((1 - 1) downto 0);
  signal filt_data_ram_en_join_155_9: unsigned((1 - 1) downto 0);
  signal rst_template_acc_join_155_9: unsigned((1 - 1) downto 0);
  signal cast_326_19: unsigned((16 - 1) downto 0);
  signal rel_326_19: boolean;
  signal next_state_join_326_9: unsigned((5 - 1) downto 0);
  signal filt_data_ram_wr_join_326_9: unsigned((1 - 1) downto 0);
  signal ld_filter_cntr_join_326_9: unsigned((1 - 1) downto 0);
  signal ld_template_cntr_join_326_9: unsigned((1 - 1) downto 0);
  signal en_template_cntr_join_326_9: unsigned((1 - 1) downto 0);
  signal sample_skip_cntr_ld_join_326_9: unsigned((1 - 1) downto 0);
  signal rst_filter_acc_join_326_9: unsigned((1 - 1) downto 0);
  signal en_filter_cntr_join_326_9: unsigned((1 - 1) downto 0);
  signal start_add_cntr_en_join_326_9: unsigned((1 - 1) downto 0);
  signal en_filter_wr_address_cntr_join_326_9: unsigned((1 - 1) downto 0);
  signal sample_skip_cntr_en_join_326_9: unsigned((1 - 1) downto 0);
  signal latch_temp_accum_join_326_9: unsigned((1 - 1) downto 0);
  signal filt_data_ram_en_join_326_9: unsigned((1 - 1) downto 0);
  signal rst_template_acc_join_326_9: unsigned((1 - 1) downto 0);
  signal next_state_join_28_1: unsigned((5 - 1) downto 0);
  signal filt_data_ram_wr_join_28_1: unsigned((1 - 1) downto 0);
  signal ld_template_cntr_join_28_1: unsigned((1 - 1) downto 0);
  signal ld_filter_cntr_join_28_1: unsigned((1 - 1) downto 0);
  signal en_template_cntr_join_28_1: unsigned((1 - 1) downto 0);
  signal sample_skip_cntr_ld_join_28_1: unsigned((1 - 1) downto 0);
  signal rst_filter_acc_join_28_1: unsigned((1 - 1) downto 0);
  signal en_filter_cntr_join_28_1: unsigned((1 - 1) downto 0);
  signal start_add_cntr_en_join_28_1: unsigned((1 - 1) downto 0);
  signal en_filter_wr_address_cntr_join_28_1: unsigned((1 - 1) downto 0);
  signal sample_skip_cntr_en_join_28_1: unsigned((1 - 1) downto 0);
  signal latch_temp_accum_join_28_1: unsigned((1 - 1) downto 0);
  signal filt_data_ram_en_join_28_1: unsigned((1 - 1) downto 0);
  signal rst_template_acc_join_28_1: unsigned((1 - 1) downto 0);
  signal cast_cnt_state_0_434_10_convert: unsigned((8 - 1) downto 0);
begin
  new_sample_available_4_27 <= ((new_sample_available) = "1");
  template_cnt_4_49 <= std_logic_vector_to_unsigned(template_cnt);
  template_size_4_63 <= std_logic_vector_to_unsigned(template_size);
  filter_length_4_78 <= std_logic_vector_to_unsigned(filter_length);
  filter_cntr_4_93 <= std_logic_vector_to_unsigned(filter_cntr);
  sample_skip_cntr_4_106 <= std_logic_vector_to_unsigned(sample_skip_cntr);
  proc_cnt_state_0_24_24: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        cnt_state_0_24_24 <= cnt_state_0_24_24_next;
      end if;
    end if;
  end process proc_cnt_state_0_24_24;
  proc_cnt_state_1_24_24: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        cnt_state_1_24_24 <= cnt_state_1_24_24_next;
      end if;
    end if;
  end process proc_cnt_state_1_24_24;
  not_31_13 <=  not new_sample_available_4_27;
  proc_if_31_9: process (not_31_13)
  is
  begin
    if not_31_13 then
      next_state_join_31_9 <= std_logic_vector_to_unsigned("0");
      filt_data_ram_wr_join_31_9 <= std_logic_vector_to_unsigned("0");
      ld_template_cntr_join_31_9 <= std_logic_vector_to_unsigned("0");
      ld_filter_cntr_join_31_9 <= std_logic_vector_to_unsigned("0");
      en_template_cntr_join_31_9 <= std_logic_vector_to_unsigned("0");
      sample_skip_cntr_ld_join_31_9 <= std_logic_vector_to_unsigned("0");
      rst_filter_acc_join_31_9 <= std_logic_vector_to_unsigned("1");
      en_filter_cntr_join_31_9 <= std_logic_vector_to_unsigned("0");
      start_add_cntr_en_join_31_9 <= std_logic_vector_to_unsigned("0");
      en_filter_wr_address_cntr_join_31_9 <= std_logic_vector_to_unsigned("0");
      sample_skip_cntr_en_join_31_9 <= std_logic_vector_to_unsigned("0");
      latch_temp_accum_join_31_9 <= std_logic_vector_to_unsigned("0");
      filt_data_ram_en_join_31_9 <= std_logic_vector_to_unsigned("0");
      rst_template_acc_join_31_9 <= std_logic_vector_to_unsigned("1");
    else 
      next_state_join_31_9 <= std_logic_vector_to_unsigned("1");
      filt_data_ram_wr_join_31_9 <= std_logic_vector_to_unsigned("0");
      ld_template_cntr_join_31_9 <= std_logic_vector_to_unsigned("1");
      ld_filter_cntr_join_31_9 <= std_logic_vector_to_unsigned("1");
      en_template_cntr_join_31_9 <= std_logic_vector_to_unsigned("1");
      sample_skip_cntr_ld_join_31_9 <= std_logic_vector_to_unsigned("0");
      rst_filter_acc_join_31_9 <= std_logic_vector_to_unsigned("1");
      en_filter_cntr_join_31_9 <= std_logic_vector_to_unsigned("1");
      start_add_cntr_en_join_31_9 <= std_logic_vector_to_unsigned("0");
      en_filter_wr_address_cntr_join_31_9 <= std_logic_vector_to_unsigned("0");
      sample_skip_cntr_en_join_31_9 <= std_logic_vector_to_unsigned("0");
      latch_temp_accum_join_31_9 <= std_logic_vector_to_unsigned("0");
      filt_data_ram_en_join_31_9 <= std_logic_vector_to_unsigned("0");
      rst_template_acc_join_31_9 <= std_logic_vector_to_unsigned("1");
    end if;
  end process proc_if_31_9;
  rel_63_18 <= sample_skip_cntr_4_106 = std_logic_vector_to_unsigned("00000000");
  proc_if_63_9: process (rel_63_18)
  is
  begin
    if rel_63_18 then
      next_state_join_63_9 <= std_logic_vector_to_unsigned("00010");
      filt_data_ram_wr_join_63_9 <= std_logic_vector_to_unsigned("0");
      ld_filter_cntr_join_63_9 <= std_logic_vector_to_unsigned("0");
      ld_template_cntr_join_63_9 <= std_logic_vector_to_unsigned("0");
      en_template_cntr_join_63_9 <= std_logic_vector_to_unsigned("0");
      sample_skip_cntr_ld_join_63_9 <= std_logic_vector_to_unsigned("1");
      rst_filter_acc_join_63_9 <= std_logic_vector_to_unsigned("1");
      en_filter_cntr_join_63_9 <= std_logic_vector_to_unsigned("0");
      start_add_cntr_en_join_63_9 <= std_logic_vector_to_unsigned("0");
      en_filter_wr_address_cntr_join_63_9 <= std_logic_vector_to_unsigned("0");
      sample_skip_cntr_en_join_63_9 <= std_logic_vector_to_unsigned("1");
      latch_temp_accum_join_63_9 <= std_logic_vector_to_unsigned("0");
      filt_data_ram_en_join_63_9 <= std_logic_vector_to_unsigned("0");
      rst_template_acc_join_63_9 <= std_logic_vector_to_unsigned("1");
    else 
      next_state_join_63_9 <= std_logic_vector_to_unsigned("10100");
      filt_data_ram_wr_join_63_9 <= std_logic_vector_to_unsigned("0");
      ld_filter_cntr_join_63_9 <= std_logic_vector_to_unsigned("0");
      ld_template_cntr_join_63_9 <= std_logic_vector_to_unsigned("0");
      en_template_cntr_join_63_9 <= std_logic_vector_to_unsigned("0");
      sample_skip_cntr_ld_join_63_9 <= std_logic_vector_to_unsigned("0");
      rst_filter_acc_join_63_9 <= std_logic_vector_to_unsigned("1");
      en_filter_cntr_join_63_9 <= std_logic_vector_to_unsigned("0");
      start_add_cntr_en_join_63_9 <= std_logic_vector_to_unsigned("1");
      en_filter_wr_address_cntr_join_63_9 <= std_logic_vector_to_unsigned("0");
      sample_skip_cntr_en_join_63_9 <= std_logic_vector_to_unsigned("1");
      latch_temp_accum_join_63_9 <= std_logic_vector_to_unsigned("0");
      filt_data_ram_en_join_63_9 <= std_logic_vector_to_unsigned("0");
      rst_template_acc_join_63_9 <= std_logic_vector_to_unsigned("1");
    end if;
  end process proc_if_63_9;
  cast_155_19 <= u2u_cast(filter_cntr_4_93, 0, 16, 0);
  rel_155_19 <= cast_155_19 = filter_length_4_78;
  proc_if_155_9: process (rel_155_19)
  is
  begin
    if rel_155_19 then
      next_state_join_155_9 <= std_logic_vector_to_unsigned("111");
      filt_data_ram_wr_join_155_9 <= std_logic_vector_to_unsigned("0");
      ld_filter_cntr_join_155_9 <= std_logic_vector_to_unsigned("0");
      ld_template_cntr_join_155_9 <= std_logic_vector_to_unsigned("0");
      en_template_cntr_join_155_9 <= std_logic_vector_to_unsigned("0");
      sample_skip_cntr_ld_join_155_9 <= std_logic_vector_to_unsigned("0");
      rst_filter_acc_join_155_9 <= std_logic_vector_to_unsigned("0");
      en_filter_cntr_join_155_9 <= std_logic_vector_to_unsigned("0");
      start_add_cntr_en_join_155_9 <= std_logic_vector_to_unsigned("0");
      en_filter_wr_address_cntr_join_155_9 <= std_logic_vector_to_unsigned("0");
      sample_skip_cntr_en_join_155_9 <= std_logic_vector_to_unsigned("0");
      latch_temp_accum_join_155_9 <= std_logic_vector_to_unsigned("0");
      filt_data_ram_en_join_155_9 <= std_logic_vector_to_unsigned("0");
      rst_template_acc_join_155_9 <= std_logic_vector_to_unsigned("1");
    else 
      next_state_join_155_9 <= std_logic_vector_to_unsigned("110");
      filt_data_ram_wr_join_155_9 <= std_logic_vector_to_unsigned("0");
      ld_filter_cntr_join_155_9 <= std_logic_vector_to_unsigned("0");
      ld_template_cntr_join_155_9 <= std_logic_vector_to_unsigned("0");
      en_template_cntr_join_155_9 <= std_logic_vector_to_unsigned("0");
      sample_skip_cntr_ld_join_155_9 <= std_logic_vector_to_unsigned("0");
      rst_filter_acc_join_155_9 <= std_logic_vector_to_unsigned("0");
      en_filter_cntr_join_155_9 <= std_logic_vector_to_unsigned("1");
      start_add_cntr_en_join_155_9 <= std_logic_vector_to_unsigned("0");
      en_filter_wr_address_cntr_join_155_9 <= std_logic_vector_to_unsigned("0");
      sample_skip_cntr_en_join_155_9 <= std_logic_vector_to_unsigned("0");
      latch_temp_accum_join_155_9 <= std_logic_vector_to_unsigned("0");
      filt_data_ram_en_join_155_9 <= std_logic_vector_to_unsigned("0");
      rst_template_acc_join_155_9 <= std_logic_vector_to_unsigned("1");
    end if;
  end process proc_if_155_9;
  cast_326_19 <= u2u_cast(template_cnt_4_49, 0, 16, 0);
  rel_326_19 <= cast_326_19 = template_size_4_63;
  proc_if_326_9: process (rel_326_19)
  is
  begin
    if rel_326_19 then
      next_state_join_326_9 <= std_logic_vector_to_unsigned("10001");
      filt_data_ram_wr_join_326_9 <= std_logic_vector_to_unsigned("0");
      ld_filter_cntr_join_326_9 <= std_logic_vector_to_unsigned("0");
      ld_template_cntr_join_326_9 <= std_logic_vector_to_unsigned("0");
      en_template_cntr_join_326_9 <= std_logic_vector_to_unsigned("0");
      sample_skip_cntr_ld_join_326_9 <= std_logic_vector_to_unsigned("0");
      rst_filter_acc_join_326_9 <= std_logic_vector_to_unsigned("1");
      en_filter_cntr_join_326_9 <= std_logic_vector_to_unsigned("0");
      start_add_cntr_en_join_326_9 <= std_logic_vector_to_unsigned("0");
      en_filter_wr_address_cntr_join_326_9 <= std_logic_vector_to_unsigned("0");
      sample_skip_cntr_en_join_326_9 <= std_logic_vector_to_unsigned("0");
      latch_temp_accum_join_326_9 <= std_logic_vector_to_unsigned("0");
      filt_data_ram_en_join_326_9 <= std_logic_vector_to_unsigned("0");
      rst_template_acc_join_326_9 <= std_logic_vector_to_unsigned("0");
    else 
      next_state_join_326_9 <= std_logic_vector_to_unsigned("10000");
      filt_data_ram_wr_join_326_9 <= std_logic_vector_to_unsigned("0");
      ld_filter_cntr_join_326_9 <= std_logic_vector_to_unsigned("0");
      ld_template_cntr_join_326_9 <= std_logic_vector_to_unsigned("0");
      en_template_cntr_join_326_9 <= std_logic_vector_to_unsigned("1");
      sample_skip_cntr_ld_join_326_9 <= std_logic_vector_to_unsigned("0");
      rst_filter_acc_join_326_9 <= std_logic_vector_to_unsigned("1");
      en_filter_cntr_join_326_9 <= std_logic_vector_to_unsigned("0");
      start_add_cntr_en_join_326_9 <= std_logic_vector_to_unsigned("0");
      en_filter_wr_address_cntr_join_326_9 <= std_logic_vector_to_unsigned("0");
      sample_skip_cntr_en_join_326_9 <= std_logic_vector_to_unsigned("0");
      latch_temp_accum_join_326_9 <= std_logic_vector_to_unsigned("0");
      filt_data_ram_en_join_326_9 <= std_logic_vector_to_unsigned("0");
      rst_template_acc_join_326_9 <= std_logic_vector_to_unsigned("0");
    end if;
  end process proc_if_326_9;
  proc_switch_28_1: process (cnt_state_0_24_24, en_filter_cntr_join_155_9, en_filter_cntr_join_31_9, en_filter_cntr_join_326_9, en_filter_cntr_join_63_9, en_filter_wr_address_cntr_join_155_9, en_filter_wr_address_cntr_join_31_9, en_filter_wr_address_cntr_join_326_9, en_filter_wr_address_cntr_join_63_9, en_template_cntr_join_155_9, en_template_cntr_join_31_9, en_template_cntr_join_326_9, en_template_cntr_join_63_9, filt_data_ram_en_join_155_9, filt_data_ram_en_join_31_9, filt_data_ram_en_join_326_9, filt_data_ram_en_join_63_9, filt_data_ram_wr_join_155_9, filt_data_ram_wr_join_31_9, filt_data_ram_wr_join_326_9, filt_data_ram_wr_join_63_9, latch_temp_accum_join_155_9, latch_temp_accum_join_31_9, latch_temp_accum_join_326_9, latch_temp_accum_join_63_9, ld_filter_cntr_join_155_9, ld_filter_cntr_join_31_9, ld_filter_cntr_join_326_9, ld_filter_cntr_join_63_9, ld_template_cntr_join_155_9, ld_template_cntr_join_31_9, ld_template_cntr_join_326_9, ld_template_cntr_join_63_9, next_state_join_155_9, next_state_join_31_9, next_state_join_326_9, next_state_join_63_9, rst_filter_acc_join_155_9, rst_filter_acc_join_31_9, rst_filter_acc_join_326_9, rst_filter_acc_join_63_9, rst_template_acc_join_155_9, rst_template_acc_join_31_9, rst_template_acc_join_326_9, rst_template_acc_join_63_9, sample_skip_cntr_en_join_155_9, sample_skip_cntr_en_join_31_9, sample_skip_cntr_en_join_326_9, sample_skip_cntr_en_join_63_9, sample_skip_cntr_ld_join_155_9, sample_skip_cntr_ld_join_31_9, sample_skip_cntr_ld_join_326_9, sample_skip_cntr_ld_join_63_9, start_add_cntr_en_join_155_9, start_add_cntr_en_join_31_9, start_add_cntr_en_join_326_9, start_add_cntr_en_join_63_9)
  is
  begin
    case cnt_state_0_24_24 is 
      when "00000000" =>
        next_state_join_28_1 <= u2u_cast(next_state_join_31_9, 0, 5, 0);
        filt_data_ram_wr_join_28_1 <= filt_data_ram_wr_join_31_9;
        ld_template_cntr_join_28_1 <= ld_template_cntr_join_31_9;
        ld_filter_cntr_join_28_1 <= ld_filter_cntr_join_31_9;
        en_template_cntr_join_28_1 <= en_template_cntr_join_31_9;
        sample_skip_cntr_ld_join_28_1 <= sample_skip_cntr_ld_join_31_9;
        rst_filter_acc_join_28_1 <= rst_filter_acc_join_31_9;
        en_filter_cntr_join_28_1 <= en_filter_cntr_join_31_9;
        start_add_cntr_en_join_28_1 <= start_add_cntr_en_join_31_9;
        en_filter_wr_address_cntr_join_28_1 <= en_filter_wr_address_cntr_join_31_9;
        sample_skip_cntr_en_join_28_1 <= sample_skip_cntr_en_join_31_9;
        latch_temp_accum_join_28_1 <= latch_temp_accum_join_31_9;
        filt_data_ram_en_join_28_1 <= filt_data_ram_en_join_31_9;
        rst_template_acc_join_28_1 <= rst_template_acc_join_31_9;
      when "00000001" =>
        next_state_join_28_1 <= next_state_join_63_9;
        filt_data_ram_wr_join_28_1 <= filt_data_ram_wr_join_63_9;
        ld_template_cntr_join_28_1 <= ld_template_cntr_join_63_9;
        ld_filter_cntr_join_28_1 <= ld_filter_cntr_join_63_9;
        en_template_cntr_join_28_1 <= en_template_cntr_join_63_9;
        sample_skip_cntr_ld_join_28_1 <= sample_skip_cntr_ld_join_63_9;
        rst_filter_acc_join_28_1 <= rst_filter_acc_join_63_9;
        en_filter_cntr_join_28_1 <= en_filter_cntr_join_63_9;
        start_add_cntr_en_join_28_1 <= start_add_cntr_en_join_63_9;
        en_filter_wr_address_cntr_join_28_1 <= en_filter_wr_address_cntr_join_63_9;
        sample_skip_cntr_en_join_28_1 <= sample_skip_cntr_en_join_63_9;
        latch_temp_accum_join_28_1 <= latch_temp_accum_join_63_9;
        filt_data_ram_en_join_28_1 <= filt_data_ram_en_join_63_9;
        rst_template_acc_join_28_1 <= rst_template_acc_join_63_9;
      when "00000010" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("00011");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("1");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
      when "00000011" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("00100");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("1");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
      when "00000100" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("00101");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("1");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
      when "00000101" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("00110");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("1");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
      when "00000110" =>
        next_state_join_28_1 <= u2u_cast(next_state_join_155_9, 0, 5, 0);
        filt_data_ram_wr_join_28_1 <= filt_data_ram_wr_join_155_9;
        ld_template_cntr_join_28_1 <= ld_template_cntr_join_155_9;
        ld_filter_cntr_join_28_1 <= ld_filter_cntr_join_155_9;
        en_template_cntr_join_28_1 <= en_template_cntr_join_155_9;
        sample_skip_cntr_ld_join_28_1 <= sample_skip_cntr_ld_join_155_9;
        rst_filter_acc_join_28_1 <= rst_filter_acc_join_155_9;
        en_filter_cntr_join_28_1 <= en_filter_cntr_join_155_9;
        start_add_cntr_en_join_28_1 <= start_add_cntr_en_join_155_9;
        en_filter_wr_address_cntr_join_28_1 <= en_filter_wr_address_cntr_join_155_9;
        sample_skip_cntr_en_join_28_1 <= sample_skip_cntr_en_join_155_9;
        latch_temp_accum_join_28_1 <= latch_temp_accum_join_155_9;
        filt_data_ram_en_join_28_1 <= filt_data_ram_en_join_155_9;
        rst_template_acc_join_28_1 <= rst_template_acc_join_155_9;
      when "00000111" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("01000");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
      when "00001000" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("01001");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
      when "00001001" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("01010");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("1");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
      when "00001010" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("01011");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("1");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("1");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
      when "00001011" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("01100");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
      when "00001100" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("01101");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("1");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
      when "00001101" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("01110");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("1");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
      when "00001110" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("01111");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("1");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
      when "00001111" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("10000");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("1");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
      when "00010000" =>
        next_state_join_28_1 <= next_state_join_326_9;
        filt_data_ram_wr_join_28_1 <= filt_data_ram_wr_join_326_9;
        ld_template_cntr_join_28_1 <= ld_template_cntr_join_326_9;
        ld_filter_cntr_join_28_1 <= ld_filter_cntr_join_326_9;
        en_template_cntr_join_28_1 <= en_template_cntr_join_326_9;
        sample_skip_cntr_ld_join_28_1 <= sample_skip_cntr_ld_join_326_9;
        rst_filter_acc_join_28_1 <= rst_filter_acc_join_326_9;
        en_filter_cntr_join_28_1 <= en_filter_cntr_join_326_9;
        start_add_cntr_en_join_28_1 <= start_add_cntr_en_join_326_9;
        en_filter_wr_address_cntr_join_28_1 <= en_filter_wr_address_cntr_join_326_9;
        sample_skip_cntr_en_join_28_1 <= sample_skip_cntr_en_join_326_9;
        latch_temp_accum_join_28_1 <= latch_temp_accum_join_326_9;
        filt_data_ram_en_join_28_1 <= filt_data_ram_en_join_326_9;
        rst_template_acc_join_28_1 <= rst_template_acc_join_326_9;
      when "00010001" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("10010");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("0");
      when "00010010" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("10011");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("0");
      when "00010011" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("10100");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("0");
      when "00010100" =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("00000");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("1");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("1");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
      when others =>
        next_state_join_28_1 <= std_logic_vector_to_unsigned("00000");
        filt_data_ram_wr_join_28_1 <= std_logic_vector_to_unsigned("0");
        ld_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("1");
        ld_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_template_cntr_join_28_1 <= std_logic_vector_to_unsigned("1");
        sample_skip_cntr_ld_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_filter_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
        en_filter_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        start_add_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        en_filter_wr_address_cntr_join_28_1 <= std_logic_vector_to_unsigned("0");
        sample_skip_cntr_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        latch_temp_accum_join_28_1 <= std_logic_vector_to_unsigned("0");
        filt_data_ram_en_join_28_1 <= std_logic_vector_to_unsigned("0");
        rst_template_acc_join_28_1 <= std_logic_vector_to_unsigned("1");
    end case;
  end process proc_switch_28_1;
  cast_cnt_state_0_434_10_convert <= u2u_cast(next_state_join_28_1, 0, 8, 0);
  cnt_state_0_24_24_next <= cast_cnt_state_0_434_10_convert;
  cnt_state_1_24_24_next <= cnt_state_1_24_24;
  en_filter_wr_address_cntr <= unsigned_to_std_logic_vector(en_filter_wr_address_cntr_join_28_1);
  en_template_cntr <= unsigned_to_std_logic_vector(en_template_cntr_join_28_1);
  rst_template_acc <= unsigned_to_std_logic_vector(rst_template_acc_join_28_1);
  ld_template_cntr <= unsigned_to_std_logic_vector(ld_template_cntr_join_28_1);
  en_filter_cntr <= unsigned_to_std_logic_vector(en_filter_cntr_join_28_1);
  rst_filter_acc <= unsigned_to_std_logic_vector(rst_filter_acc_join_28_1);
  filt_data_ram_en <= unsigned_to_std_logic_vector(filt_data_ram_en_join_28_1);
  filt_data_ram_wr <= unsigned_to_std_logic_vector(filt_data_ram_wr_join_28_1);
  ld_filter_cntr <= unsigned_to_std_logic_vector(ld_filter_cntr_join_28_1);
  start_add_cntr_en <= unsigned_to_std_logic_vector(start_add_cntr_en_join_28_1);
  sample_skip_cntr_en <= unsigned_to_std_logic_vector(sample_skip_cntr_en_join_28_1);
  sample_skip_cntr_ld <= unsigned_to_std_logic_vector(sample_skip_cntr_ld_join_28_1);
  latch_temp_accum <= unsigned_to_std_logic_vector(latch_temp_accum_join_28_1);
end behavior;


-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
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
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
entity xlusamp is
    generic (
             d_width      : integer := 5;
             d_bin_pt     : integer := 2;
             d_arith      : integer := xlUnsigned;
             q_width      : integer := 5;
             q_bin_pt     : integer := 2;
             q_arith      : integer := xlUnsigned;
             en_width     : integer := 1;
             en_bin_pt    : integer := 0;
             en_arith     : integer := xlUnsigned;
             sampling_ratio     : integer := 2;
             latency      : integer := 1;
             copy_samples : integer := 0);
    port (
          d        : in std_logic_vector (d_width-1 downto 0);
          src_clk  : in std_logic;
          src_ce   : in std_logic;
          src_clr  : in std_logic;
          dest_clk : in std_logic;
          dest_ce  : in std_logic;
          dest_clr : in std_logic;
          en       : in std_logic_vector(en_width-1 downto 0);
          q        : out std_logic_vector (q_width-1 downto 0)
         );
end xlusamp;
architecture struct of xlusamp is
    component synth_reg
      generic (
        width: integer := 16;
        latency: integer := 5
      );
      port (
        i: in std_logic_vector(width - 1 downto 0);
        ce: in std_logic;
        clr: in std_logic;
        clk: in std_logic;
        o: out std_logic_vector(width - 1 downto 0)
      );
    end component;
    component FDSE
        port (q  : out   std_ulogic;
              d  : in    std_ulogic;
              c  : in    std_ulogic;
              s  : in    std_ulogic;
              ce : in    std_ulogic);
    end component;
    attribute syn_black_box of FDSE : component is true;
    attribute fpga_dont_touch of FDSE : component is "true";
    signal zero    : std_logic_vector (d_width-1 downto 0);
    signal mux_sel : std_logic;
    signal sampled_d  : std_logic_vector (d_width-1 downto 0);
    signal internal_ce : std_logic;
begin
   sel_gen : FDSE
                port map (q  => mux_sel,
                        d  => src_ce,
            c  => src_clk,
            s  => src_clr,
            ce => dest_ce);
  internal_ce <= src_ce and en(0);
  copy_samples_false : if (copy_samples = 0) generate
      zero <= (others => '0');
      gen_q_cp_smpls_0_and_lat_0: if (latency = 0) generate
        cp_smpls_0_and_lat_0: process (mux_sel, d, zero)
        begin
          if (mux_sel = '1') then
            q <= d;
          else
            q <= zero;
          end if;
        end process cp_smpls_0_and_lat_0;
      end generate;
      gen_q_cp_smpls_0_and_lat_gt_0: if (latency > 0) generate
        sampled_d_reg: synth_reg
          generic map (
            width => d_width,
            latency => latency
          )
          port map (
            i => d,
            ce => internal_ce,
            clr => src_clr,
            clk => src_clk,
            o => sampled_d
          );

        gen_q_check_mux_sel: process (mux_sel, sampled_d, zero)
        begin
          if (mux_sel = '1') then
            q <= sampled_d;
          else
            q <= zero;
          end if;
        end process gen_q_check_mux_sel;
      end generate;
   end generate;
   copy_samples_true : if (copy_samples = 1) generate
     gen_q_cp_smpls_1_and_lat_0: if (latency = 0) generate
       q <= d;
     end generate;
     gen_q_cp_smpls_1_and_lat_gt_0: if (latency > 0) generate
       q <= sampled_d;
       sampled_d_reg2: synth_reg
         generic map (
           width => d_width,
           latency => latency
         )
         port map (
           i => d,
           ce => internal_ce,
           clr => src_clr,
           clk => src_clk,
           o => sampled_d
         );
     end generate;
   end generate;
end architecture struct;

-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
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
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlregister is
   generic (d_width          : integer := 5;
            init_value       : bit_vector := b"00");
   port (d   : in std_logic_vector (d_width-1 downto 0);
         rst : in std_logic_vector(0 downto 0) := "0";
         en  : in std_logic_vector(0 downto 0) := "1";
         ce  : in std_logic;
         clk : in std_logic;
         q   : out std_logic_vector (d_width-1 downto 0));
end xlregister;
architecture behavior of xlregister is
   component synth_reg_w_init
      generic (width      : integer;
               init_index : integer;
               init_value : bit_vector;
               latency    : integer);
      port (i   : in std_logic_vector(width-1 downto 0);
            ce  : in std_logic;
            clr : in std_logic;
            clk : in std_logic;
            o   : out std_logic_vector(width-1 downto 0));
   end component;
   -- synopsys translate_off
   signal real_d, real_q           : real;
   -- synopsys translate_on
   signal internal_clr             : std_logic;
   signal internal_ce              : std_logic;
begin
   internal_clr <= rst(0) and ce;
   internal_ce  <= en(0) and ce;
   synth_reg_inst : synth_reg_w_init
      generic map (width      => d_width,
                   init_index => 2,
                   init_value => init_value,
                   latency    => 1)
      port map (i   => d,
                ce  => internal_ce,
                clr => internal_clr,
                clk => clk,
                o   => q);
end architecture behavior;

-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
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
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlslice is
    generic (
        new_msb      : integer := 9;
        new_lsb      : integer := 1;
        x_width      : integer := 16;
        y_width      : integer := 8);
    port (
        x : in std_logic_vector (x_width-1 downto 0);
        y : out std_logic_vector (y_width-1 downto 0));
end xlslice;
architecture behavior of xlslice is
begin
    y <= x(new_msb downto new_lsb);
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_3425f785d1 is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((1 - 1) downto 0);
    in3 : in std_logic_vector((1 - 1) downto 0);
    in4 : in std_logic_vector((1 - 1) downto 0);
    in5 : in std_logic_vector((1 - 1) downto 0);
    in6 : in std_logic_vector((1 - 1) downto 0);
    in7 : in std_logic_vector((1 - 1) downto 0);
    in8 : in std_logic_vector((1 - 1) downto 0);
    in9 : in std_logic_vector((1 - 1) downto 0);
    in10 : in std_logic_vector((1 - 1) downto 0);
    in11 : in std_logic_vector((1 - 1) downto 0);
    in12 : in std_logic_vector((1 - 1) downto 0);
    in13 : in std_logic_vector((1 - 1) downto 0);
    in14 : in std_logic_vector((1 - 1) downto 0);
    in15 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_3425f785d1;


architecture behavior of concat_3425f785d1 is
  signal in0_1_23: boolean;
  signal in1_1_27: boolean;
  signal in2_1_31: boolean;
  signal in3_1_35: boolean;
  signal in4_1_39: boolean;
  signal in5_1_43: boolean;
  signal in6_1_47: boolean;
  signal in7_1_51: boolean;
  signal in8_1_55: boolean;
  signal in9_1_59: boolean;
  signal in10_1_63: boolean;
  signal in11_1_68: boolean;
  signal in12_1_73: boolean;
  signal in13_1_78: boolean;
  signal in14_1_83: boolean;
  signal in15_1_88: boolean;
  signal y_2_1_concat: unsigned((16 - 1) downto 0);
begin
  in0_1_23 <= ((in0) = "1");
  in1_1_27 <= ((in1) = "1");
  in2_1_31 <= ((in2) = "1");
  in3_1_35 <= ((in3) = "1");
  in4_1_39 <= ((in4) = "1");
  in5_1_43 <= ((in5) = "1");
  in6_1_47 <= ((in6) = "1");
  in7_1_51 <= ((in7) = "1");
  in8_1_55 <= ((in8) = "1");
  in9_1_59 <= ((in9) = "1");
  in10_1_63 <= ((in10) = "1");
  in11_1_68 <= ((in11) = "1");
  in12_1_73 <= ((in12) = "1");
  in13_1_78 <= ((in13) = "1");
  in14_1_83 <= ((in14) = "1");
  in15_1_88 <= ((in15) = "1");
  y_2_1_concat <= std_logic_vector_to_unsigned(boolean_to_vector(in0_1_23) & boolean_to_vector(in1_1_27) & boolean_to_vector(in2_1_31) & boolean_to_vector(in3_1_35) & boolean_to_vector(in4_1_39) & boolean_to_vector(in5_1_43) & boolean_to_vector(in6_1_47) & boolean_to_vector(in7_1_51) & boolean_to_vector(in8_1_55) & boolean_to_vector(in9_1_59) & boolean_to_vector(in10_1_63) & boolean_to_vector(in11_1_68) & boolean_to_vector(in12_1_73) & boolean_to_vector(in13_1_78) & boolean_to_vector(in14_1_83) & boolean_to_vector(in15_1_88));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "RTEphysEng/EDK Processor"

entity edk_processor_entity_e07a964799 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    from_register: in std_logic_vector(15 downto 0); 
    from_register1: in std_logic_vector(15 downto 0); 
    from_register2: in std_logic_vector(15 downto 0); 
    plb_abus: in std_logic_vector(31 downto 0); 
    plb_pavalid: in std_logic; 
    plb_rnw: in std_logic; 
    plb_wrdbus: in std_logic_vector(31 downto 0); 
    sg_plb_addrpref: in std_logic_vector(16 downto 0); 
    shared_memory: in std_logic_vector(15 downto 0); 
    shared_memory1: in std_logic_vector(15 downto 0); 
    shared_memory2: in std_logic_vector(15 downto 0); 
    shared_memory3: in std_logic_vector(15 downto 0); 
    splb_rst: in std_logic; 
    constant5_x0: out std_logic; 
    plb_decode_x0: out std_logic; 
    plb_decode_x1: out std_logic; 
    plb_decode_x2: out std_logic; 
    plb_decode_x3: out std_logic; 
    plb_decode_x4: out std_logic_vector(31 downto 0); 
    plb_memmap_x0: out std_logic_vector(15 downto 0); 
    plb_memmap_x1: out std_logic; 
    plb_memmap_x10: out std_logic_vector(15 downto 0); 
    plb_memmap_x11: out std_logic; 
    plb_memmap_x12: out std_logic_vector(15 downto 0); 
    plb_memmap_x13: out std_logic; 
    plb_memmap_x14: out std_logic_vector(15 downto 0); 
    plb_memmap_x15: out std_logic; 
    plb_memmap_x16: out std_logic_vector(9 downto 0); 
    plb_memmap_x17: out std_logic_vector(15 downto 0); 
    plb_memmap_x18: out std_logic; 
    plb_memmap_x19: out std_logic_vector(6 downto 0); 
    plb_memmap_x2: out std_logic_vector(15 downto 0); 
    plb_memmap_x20: out std_logic_vector(15 downto 0); 
    plb_memmap_x21: out std_logic; 
    plb_memmap_x22: out std_logic_vector(6 downto 0); 
    plb_memmap_x23: out std_logic_vector(15 downto 0); 
    plb_memmap_x24: out std_logic; 
    plb_memmap_x25: out std_logic_vector(6 downto 0); 
    plb_memmap_x26: out std_logic_vector(15 downto 0); 
    plb_memmap_x27: out std_logic; 
    plb_memmap_x3: out std_logic; 
    plb_memmap_x4: out std_logic_vector(15 downto 0); 
    plb_memmap_x5: out std_logic; 
    plb_memmap_x6: out std_logic_vector(15 downto 0); 
    plb_memmap_x7: out std_logic; 
    plb_memmap_x8: out std_logic_vector(15 downto 0); 
    plb_memmap_x9: out std_logic
  );
end edk_processor_entity_e07a964799;

architecture structural of edk_processor_entity_e07a964799 is
  signal atod_datamem_addr_x0: std_logic_vector(9 downto 0);
  signal atod_datamem_din_x0: std_logic_vector(15 downto 0);
  signal atod_datamem_dout_x0: std_logic_vector(15 downto 0);
  signal atod_datamem_we_x0: std_logic;
  signal bankaddr: std_logic_vector(1 downto 0);
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal dtoa0_data_rega_din_x0: std_logic_vector(15 downto 0);
  signal dtoa0_data_rega_en_x0: std_logic;
  signal dtoa0_data_regb_din_x0: std_logic_vector(15 downto 0);
  signal dtoa0_data_regb_en_x0: std_logic;
  signal dtoa1_data_rega_din_x0: std_logic_vector(15 downto 0);
  signal dtoa1_data_rega_en_x0: std_logic;
  signal dtoa1_data_regb_din_x0: std_logic_vector(15 downto 0);
  signal dtoa1_data_regb_en_x0: std_logic;
  signal e1_data_ram_addr_x0: std_logic_vector(6 downto 0);
  signal e1_data_ram_din_x0: std_logic_vector(15 downto 0);
  signal e1_data_ram_dout_x0: std_logic_vector(15 downto 0);
  signal e1_data_ram_we_x0: std_logic;
  signal e1_decimation_din_x0: std_logic_vector(15 downto 0);
  signal e1_decimation_en_x0: std_logic;
  signal e1_filter_length_din_x0: std_logic_vector(15 downto 0);
  signal e1_filter_length_en_x0: std_logic;
  signal e1_filter_out_reg_dout_x0: std_logic_vector(15 downto 0);
  signal e1_filter_ram_addr_x0: std_logic_vector(6 downto 0);
  signal e1_filter_ram_din_x0: std_logic_vector(15 downto 0);
  signal e1_filter_ram_dout_x0: std_logic_vector(15 downto 0);
  signal e1_filter_ram_we_x0: std_logic;
  signal e1_template_acc_reg_dout_x0: std_logic_vector(15 downto 0);
  signal e1_template_ram_addr_x0: std_logic_vector(6 downto 0);
  signal e1_template_ram_din_x0: std_logic_vector(15 downto 0);
  signal e1_template_ram_dout_x0: std_logic_vector(15 downto 0);
  signal e1_template_ram_we_x0: std_logic;
  signal e1_template_size_din_x0: std_logic_vector(15 downto 0);
  signal e1_template_size_en_x0: std_logic;
  signal esp_contol_reg_din_x0: std_logic_vector(15 downto 0);
  signal esp_contol_reg_en_x0: std_logic;
  signal esp_status_reg_dout_x0: std_logic_vector(15 downto 0);
  signal linearaddr: std_logic_vector(10 downto 0);
  signal plb_abus_net_x0: std_logic_vector(31 downto 0);
  signal plb_pavalid_net_x0: std_logic;
  signal plb_rnw_net_x0: std_logic;
  signal plb_wrdbus_net_x0: std_logic_vector(31 downto 0);
  signal rddata: std_logic_vector(31 downto 0);
  signal rnwreg: std_logic;
  signal sg_plb_addrpref_net_x0: std_logic_vector(16 downto 0);
  signal sl_addrack_x0: std_logic;
  signal sl_rdcomp_x0: std_logic;
  signal sl_rddack_x0: std_logic;
  signal sl_rddbus_x0: std_logic_vector(31 downto 0);
  signal sl_wait_x0: std_logic;
  signal sl_wrdack_x0: std_logic;
  signal splb_rst_net_x0: std_logic;
  signal wrdbusreg: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  esp_status_reg_dout_x0 <= from_register;
  e1_template_acc_reg_dout_x0 <= from_register1;
  e1_filter_out_reg_dout_x0 <= from_register2;
  plb_abus_net_x0 <= plb_abus;
  plb_pavalid_net_x0 <= plb_pavalid;
  plb_rnw_net_x0 <= plb_rnw;
  plb_wrdbus_net_x0 <= plb_wrdbus;
  sg_plb_addrpref_net_x0 <= sg_plb_addrpref;
  atod_datamem_dout_x0 <= shared_memory;
  e1_filter_ram_dout_x0 <= shared_memory1;
  e1_data_ram_dout_x0 <= shared_memory2;
  e1_template_ram_dout_x0 <= shared_memory3;
  splb_rst_net_x0 <= splb_rst;
  constant5_x0 <= sl_wait_x0;
  plb_decode_x0 <= sl_addrack_x0;
  plb_decode_x1 <= sl_rdcomp_x0;
  plb_decode_x2 <= sl_wrdack_x0;
  plb_decode_x3 <= sl_rddack_x0;
  plb_decode_x4 <= sl_rddbus_x0;
  plb_memmap_x0 <= esp_contol_reg_din_x0;
  plb_memmap_x1 <= esp_contol_reg_en_x0;
  plb_memmap_x10 <= e1_decimation_din_x0;
  plb_memmap_x11 <= e1_decimation_en_x0;
  plb_memmap_x12 <= e1_filter_length_din_x0;
  plb_memmap_x13 <= e1_filter_length_en_x0;
  plb_memmap_x14 <= e1_template_size_din_x0;
  plb_memmap_x15 <= e1_template_size_en_x0;
  plb_memmap_x16 <= atod_datamem_addr_x0;
  plb_memmap_x17 <= atod_datamem_din_x0;
  plb_memmap_x18 <= atod_datamem_we_x0;
  plb_memmap_x19 <= e1_filter_ram_addr_x0;
  plb_memmap_x2 <= dtoa1_data_regb_din_x0;
  plb_memmap_x20 <= e1_filter_ram_din_x0;
  plb_memmap_x21 <= e1_filter_ram_we_x0;
  plb_memmap_x22 <= e1_data_ram_addr_x0;
  plb_memmap_x23 <= e1_data_ram_din_x0;
  plb_memmap_x24 <= e1_data_ram_we_x0;
  plb_memmap_x25 <= e1_template_ram_addr_x0;
  plb_memmap_x26 <= e1_template_ram_din_x0;
  plb_memmap_x27 <= e1_template_ram_we_x0;
  plb_memmap_x3 <= dtoa1_data_regb_en_x0;
  plb_memmap_x4 <= dtoa1_data_rega_din_x0;
  plb_memmap_x5 <= dtoa1_data_rega_en_x0;
  plb_memmap_x6 <= dtoa0_data_regb_din_x0;
  plb_memmap_x7 <= dtoa0_data_regb_en_x0;
  plb_memmap_x8 <= dtoa0_data_rega_din_x0;
  plb_memmap_x9 <= dtoa0_data_rega_en_x0;

  constant5: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => sl_wait_x0
    );

  plb_decode: entity work.mcode_block_d3ca0879bf
    port map (
      addrpref => sg_plb_addrpref_net_x0,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      plbabus => plb_abus_net_x0,
      plbpavalid(0) => plb_pavalid_net_x0,
      plbrnw(0) => plb_rnw_net_x0,
      plbrst(0) => splb_rst_net_x0,
      plbwrdbus => plb_wrdbus_net_x0,
      rddata => rddata,
      addrack(0) => sl_addrack_x0,
      bankaddr => bankaddr,
      linearaddr => linearaddr,
      rdcomp(0) => sl_rdcomp_x0,
      rddack(0) => sl_rddack_x0,
      rddbus => sl_rddbus_x0,
      rnwreg(0) => rnwreg,
      wrdack(0) => sl_wrdack_x0,
      wrdbusreg => wrdbusreg
    );

  plb_memmap: entity work.mcode_block_eb3e590805
    port map (
      addrack(0) => sl_addrack_x0,
      bankaddr => bankaddr,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      linearaddr => linearaddr,
      rnwreg(0) => rnwreg,
      sm_atod_datamem => atod_datamem_dout_x0,
      sm_e1_data_ram => e1_data_ram_dout_x0,
      sm_e1_filter_out_reg => e1_filter_out_reg_dout_x0,
      sm_e1_filter_ram => e1_filter_ram_dout_x0,
      sm_e1_template_acc_reg => e1_template_acc_reg_dout_x0,
      sm_e1_template_ram => e1_template_ram_dout_x0,
      sm_esp_status_reg => esp_status_reg_dout_x0,
      wrdbus => wrdbusreg,
      read_bank_out => rddata,
      sm_atod_datamem_addr => atod_datamem_addr_x0,
      sm_atod_datamem_din => atod_datamem_din_x0,
      sm_atod_datamem_we(0) => atod_datamem_we_x0,
      sm_dtoa0_data_rega_din => dtoa0_data_rega_din_x0,
      sm_dtoa0_data_rega_en(0) => dtoa0_data_rega_en_x0,
      sm_dtoa0_data_regb_din => dtoa0_data_regb_din_x0,
      sm_dtoa0_data_regb_en(0) => dtoa0_data_regb_en_x0,
      sm_dtoa1_data_rega_din => dtoa1_data_rega_din_x0,
      sm_dtoa1_data_rega_en(0) => dtoa1_data_rega_en_x0,
      sm_dtoa1_data_regb_din => dtoa1_data_regb_din_x0,
      sm_dtoa1_data_regb_en(0) => dtoa1_data_regb_en_x0,
      sm_e1_data_ram_addr => e1_data_ram_addr_x0,
      sm_e1_data_ram_din => e1_data_ram_din_x0,
      sm_e1_data_ram_we(0) => e1_data_ram_we_x0,
      sm_e1_decimation_din => e1_decimation_din_x0,
      sm_e1_decimation_en(0) => e1_decimation_en_x0,
      sm_e1_filter_length_din => e1_filter_length_din_x0,
      sm_e1_filter_length_en(0) => e1_filter_length_en_x0,
      sm_e1_filter_ram_addr => e1_filter_ram_addr_x0,
      sm_e1_filter_ram_din => e1_filter_ram_din_x0,
      sm_e1_filter_ram_we(0) => e1_filter_ram_we_x0,
      sm_e1_template_ram_addr => e1_template_ram_addr_x0,
      sm_e1_template_ram_din => e1_template_ram_din_x0,
      sm_e1_template_ram_we(0) => e1_template_ram_we_x0,
      sm_e1_template_size_din => e1_template_size_din_x0,
      sm_e1_template_size_en(0) => e1_template_size_en_x0,
      sm_esp_contol_reg_din => esp_contol_reg_din_x0,
      sm_esp_contol_reg_en(0) => esp_contol_reg_en_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "RTEphysEng/Engine_1"

entity engine_1_entity_f33649db74 is
  port (
    ce_1: in std_logic; 
    ce_100000000: in std_logic; 
    clk_1: in std_logic; 
    clk_100000000: in std_logic; 
    decimation: in std_logic_vector(15 downto 0); 
    engine_1_reset: in std_logic; 
    filter_length: in std_logic_vector(15 downto 0); 
    new_sample_available: in std_logic; 
    shared_memory: in std_logic_vector(15 downto 0); 
    shared_memory1: in std_logic_vector(15 downto 0); 
    shared_memory2: in std_logic_vector(15 downto 0); 
    template_size: in std_logic_vector(15 downto 0); 
    data_address_counter_x1: out std_logic_vector(6 downto 0); 
    filter_add_counter_x1: out std_logic_vector(6 downto 0); 
    filter_out_x0: out std_logic_vector(15 downto 0); 
    lsd_out: out std_logic_vector(15 downto 0); 
    template_counter_x0: out std_logic_vector(6 downto 0)
  );
end engine_1_entity_f33649db74;

architecture structural of engine_1_entity_f33649db74 is
  signal acc_latch_q_net_x0: std_logic_vector(15 downto 0);
  signal accumulator_q_net: std_logic_vector(23 downto 0);
  signal bit_3_y_net_x0: std_logic;
  signal ce_100000000_sg_x0: std_logic;
  signal ce_1_sg_x1: std_logic;
  signal clk_100000000_sg_x0: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal constant1_op_net: std_logic;
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(15 downto 0);
  signal convert1_dout_net: std_logic_vector(15 downto 0);
  signal convert2_dout_net: std_logic_vector(7 downto 0);
  signal convert_dout_net_x0: std_logic;
  signal convert_dout_net_x1: std_logic;
  signal data_address_counter_x2: std_logic_vector(6 downto 0);
  signal data_memory_out_x0: std_logic_vector(15 downto 0);
  signal difference_s_net: std_logic_vector(15 downto 0);
  signal en_filter_cntr_dout_net: std_logic;
  signal en_filter_wr_addres_cntr_dout_net: std_logic;
  signal en_template_cntr_dout_net: std_logic;
  signal fd_ram_read_counter_op_net: std_logic_vector(6 downto 0);
  signal filt_data_ram_en_dout_net: std_logic;
  signal filt_data_ram_wr_dout_net: std_logic;
  signal filter_accumulator_q_net: std_logic_vector(15 downto 0);
  signal filter_add_counter_x2: std_logic_vector(6 downto 0);
  signal filter_coeff_memory_out_x0: std_logic_vector(15 downto 0);
  signal filter_multiply_p_net: std_logic_vector(15 downto 0);
  signal filter_out_q_net_x0: std_logic_vector(15 downto 0);
  signal filter_wr_address_counter_op_net: std_logic_vector(6 downto 0);
  signal filtered_data_ram_doutb_net: std_logic_vector(15 downto 0);
  signal finite_state_machine_en_filter_cntr_net: std_logic;
  signal finite_state_machine_en_filter_wr_address_cntr_net: std_logic;
  signal finite_state_machine_en_template_cntr_net: std_logic;
  signal finite_state_machine_filt_data_ram_en_net: std_logic;
  signal finite_state_machine_filt_data_ram_wr_net: std_logic;
  signal finite_state_machine_latch_temp_accum_net: std_logic;
  signal finite_state_machine_ld_filter_cntr_net: std_logic;
  signal finite_state_machine_ld_template_cntr_net: std_logic;
  signal finite_state_machine_rst_filter_acc_net: std_logic;
  signal finite_state_machine_rst_template_acc_net: std_logic;
  signal finite_state_machine_sample_skip_cntr_en_net: std_logic;
  signal finite_state_machine_sample_skip_cntr_ld_net: std_logic;
  signal finite_state_machine_start_add_cntr_en_net: std_logic;
  signal from_register1_data_out_net_x0: std_logic_vector(15 downto 0);
  signal from_register2_data_out_net_x0: std_logic_vector(15 downto 0);
  signal from_register3_data_out_net_x0: std_logic_vector(15 downto 0);
  signal latch_temp_accum_dout_net: std_logic;
  signal ld_filter_cntr_dout_net: std_logic;
  signal ld_template_cntr_dout_net: std_logic;
  signal rst_filter_acc_dout_net: std_logic;
  signal rst_template_acc_dout_net: std_logic;
  signal sample_skip_cntr_en_2_dout_net: std_logic;
  signal sample_skip_cntr_ld_3_dout_net: std_logic;
  signal sample_skip_cntr_op_net: std_logic_vector(7 downto 0);
  signal square_p_net: std_logic_vector(15 downto 0);
  signal start_add_cntr_en_1_dout_net: std_logic;
  signal start_address_counter_op_net: std_logic_vector(6 downto 0);
  signal template_counter_op_net_x0: std_logic_vector(6 downto 0);
  signal template_data_out_x0: std_logic_vector(15 downto 0);
  signal up_sample1_q_net: std_logic_vector(15 downto 0);
  signal up_sample2_q_net: std_logic_vector(15 downto 0);
  signal up_sample3_q_net: std_logic;
  signal up_sample4_q_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x1 <= ce_1;
  ce_100000000_sg_x0 <= ce_100000000;
  clk_1_sg_x1 <= clk_1;
  clk_100000000_sg_x0 <= clk_100000000;
  from_register3_data_out_net_x0 <= decimation;
  convert_dout_net_x1 <= engine_1_reset;
  from_register2_data_out_net_x0 <= filter_length;
  bit_3_y_net_x0 <= new_sample_available;
  template_data_out_x0 <= shared_memory;
  data_memory_out_x0 <= shared_memory1;
  filter_coeff_memory_out_x0 <= shared_memory2;
  from_register1_data_out_net_x0 <= template_size;
  data_address_counter_x1 <= data_address_counter_x2;
  filter_add_counter_x1 <= filter_add_counter_x2;
  filter_out_x0 <= filter_out_q_net_x0;
  lsd_out <= acc_latch_q_net_x0;
  template_counter_x0 <= template_counter_op_net_x0;

  acc_latch: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d => convert1_dout_net,
      en(0) => latch_temp_accum_dout_net,
      rst => "0",
      q => acc_latch_q_net_x0
    );

  accumulator: entity work.accum_88b3a8f10c
    port map (
      b => square_p_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      rst(0) => rst_template_acc_dout_net,
      q => accumulator_q_net
    );

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant_x0: entity work.constant_9f5572ba51
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_100000000_sg_x0,
      clk => clk_100000000_sg_x0,
      clr => '0',
      din(0) => bit_3_y_net_x0,
      en => "1",
      dout(0) => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 15,
      din_width => 24,
      dout_arith => 1,
      dout_bin_pt => 8,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => accumulator_q_net,
      en => "1",
      dout => convert1_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_100000000_sg_x0,
      clk => clk_100000000_sg_x0,
      clr => '0',
      din => from_register3_data_out_net_x0,
      en => "1",
      dout => convert2_dout_net
    );

  data_address_counter_x0: entity work.xlcounter_free_RTEphysEng
    generic map (
      core_name0 => "cntr_11_0_42baf13c51a596fc",
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => start_address_counter_op_net,
      en(0) => en_filter_cntr_dout_net,
      load(0) => ld_filter_cntr_dout_net,
      rst => "0",
      op => data_address_counter_x2
    );

  difference: entity work.xladdsub_RTEphysEng
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 17,
      core_name0 => "addsb_11_0_50672071db3158cd",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 15,
      s_width => 16
    )
    port map (
      a => filtered_data_ram_doutb_net,
      b => template_data_out_x0,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en => "1",
      s => difference_s_net
    );

  en_filter_cntr: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => finite_state_machine_en_filter_cntr_net,
      en => "1",
      dout(0) => en_filter_cntr_dout_net
    );

  en_filter_wr_addres_cntr: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => finite_state_machine_en_filter_wr_address_cntr_net,
      en => "1",
      dout(0) => en_filter_wr_addres_cntr_dout_net
    );

  en_template_cntr: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => finite_state_machine_en_template_cntr_net,
      en => "1",
      dout(0) => en_template_cntr_dout_net
    );

  fd_ram_read_counter: entity work.xlcounter_free_RTEphysEng
    generic map (
      core_name0 => "cntr_11_0_42baf13c51a596fc",
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => filter_wr_address_counter_op_net,
      en(0) => en_template_cntr_dout_net,
      load(0) => ld_template_cntr_dout_net,
      rst => "0",
      op => fd_ram_read_counter_op_net
    );

  filt_data_ram_en: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => finite_state_machine_filt_data_ram_en_net,
      en => "1",
      dout(0) => filt_data_ram_en_dout_net
    );

  filt_data_ram_wr: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => finite_state_machine_filt_data_ram_wr_net,
      en => "1",
      dout(0) => filt_data_ram_wr_dout_net
    );

  filter_accumulator: entity work.accum_2536c42ff3
    port map (
      b => filter_multiply_p_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      rst(0) => rst_filter_acc_dout_net,
      q => filter_accumulator_q_net
    );

  filter_add_counter_x0: entity work.xlcounter_free_RTEphysEng
    generic map (
      core_name0 => "cntr_11_0_45469457c0a77b17",
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en(0) => en_filter_cntr_dout_net,
      rst(0) => ld_filter_cntr_dout_net,
      op => filter_add_counter_x2
    );

  filter_multiply: entity work.xlmult_RTEphysEng
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 16,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_eb93f59d418f9076",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 15,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => filter_coeff_memory_out_x0,
      b => data_memory_out_x0,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      core_ce => ce_1_sg_x1,
      core_clk => clk_1_sg_x1,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => filter_multiply_p_net
    );

  filter_out: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d => filter_accumulator_q_net,
      en(0) => filt_data_ram_wr_dout_net,
      rst => "0",
      q => filter_out_q_net_x0
    );

  filter_wr_address_counter: entity work.xlcounter_free_RTEphysEng
    generic map (
      core_name0 => "cntr_11_0_45469457c0a77b17",
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en(0) => en_filter_wr_addres_cntr_dout_net,
      rst(0) => convert_dout_net_x1,
      op => filter_wr_address_counter_op_net
    );

  filtered_data_ram: entity work.xldpram_RTEphysEng
    generic map (
      c_address_width_a => 7,
      c_address_width_b => 7,
      c_width_a => 16,
      c_width_b => 16,
      core_name0 => "bmg_72_24c7b3c86a194f2d",
      latency => 1
    )
    port map (
      a_ce => ce_1_sg_x1,
      a_clk => clk_1_sg_x1,
      addra => filter_wr_address_counter_op_net,
      addrb => fd_ram_read_counter_op_net,
      b_ce => ce_1_sg_x1,
      b_clk => clk_1_sg_x1,
      dina => filter_accumulator_q_net,
      dinb => constant_op_net,
      ena(0) => filt_data_ram_en_dout_net,
      enb(0) => constant3_op_net,
      rsta => "0",
      rstb => "0",
      wea(0) => filt_data_ram_wr_dout_net,
      web(0) => constant1_op_net,
      doutb => filtered_data_ram_doutb_net
    );

  finite_state_machine: entity work.mcode_block_597074bbfc
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      filter_cntr => filter_add_counter_x2,
      filter_length => up_sample2_q_net,
      new_sample_available(0) => up_sample3_q_net,
      sample_skip_cntr => sample_skip_cntr_op_net,
      template_cnt => template_counter_op_net_x0,
      template_size => up_sample1_q_net,
      en_filter_cntr(0) => finite_state_machine_en_filter_cntr_net,
      en_filter_wr_address_cntr(0) => finite_state_machine_en_filter_wr_address_cntr_net,
      en_template_cntr(0) => finite_state_machine_en_template_cntr_net,
      filt_data_ram_en(0) => finite_state_machine_filt_data_ram_en_net,
      filt_data_ram_wr(0) => finite_state_machine_filt_data_ram_wr_net,
      latch_temp_accum(0) => finite_state_machine_latch_temp_accum_net,
      ld_filter_cntr(0) => finite_state_machine_ld_filter_cntr_net,
      ld_template_cntr(0) => finite_state_machine_ld_template_cntr_net,
      rst_filter_acc(0) => finite_state_machine_rst_filter_acc_net,
      rst_template_acc(0) => finite_state_machine_rst_template_acc_net,
      sample_skip_cntr_en(0) => finite_state_machine_sample_skip_cntr_en_net,
      sample_skip_cntr_ld(0) => finite_state_machine_sample_skip_cntr_ld_net,
      start_add_cntr_en(0) => finite_state_machine_start_add_cntr_en_net
    );

  latch_temp_accum: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => finite_state_machine_latch_temp_accum_net,
      en => "1",
      dout(0) => latch_temp_accum_dout_net
    );

  ld_filter_cntr: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => finite_state_machine_ld_filter_cntr_net,
      en => "1",
      dout(0) => ld_filter_cntr_dout_net
    );

  ld_template_cntr: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => finite_state_machine_ld_template_cntr_net,
      en => "1",
      dout(0) => ld_template_cntr_dout_net
    );

  rst_filter_acc: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => finite_state_machine_rst_filter_acc_net,
      en => "1",
      dout(0) => rst_filter_acc_dout_net
    );

  rst_template_acc: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => finite_state_machine_rst_template_acc_net,
      en => "1",
      dout(0) => rst_template_acc_dout_net
    );

  sample_skip_cntr: entity work.xlcounter_free_RTEphysEng
    generic map (
      core_name0 => "cntr_11_0_4c9ff32156a8ea89",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => up_sample4_q_net,
      en(0) => sample_skip_cntr_en_2_dout_net,
      load(0) => sample_skip_cntr_ld_3_dout_net,
      rst => "0",
      op => sample_skip_cntr_op_net
    );

  sample_skip_cntr_en_2: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => finite_state_machine_sample_skip_cntr_en_net,
      en => "1",
      dout(0) => sample_skip_cntr_en_2_dout_net
    );

  sample_skip_cntr_ld_3: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => finite_state_machine_sample_skip_cntr_ld_net,
      en => "1",
      dout(0) => sample_skip_cntr_ld_3_dout_net
    );

  square: entity work.xlmult_RTEphysEng
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 16,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_22d5399536538cd3",
      extra_registers => 1,
      multsign => 2,
      overflow => 2,
      p_arith => xlUnsigned,
      p_bin_pt => 15,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => difference_s_net,
      b => difference_s_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      core_ce => ce_1_sg_x1,
      core_clk => clk_1_sg_x1,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => square_p_net
    );

  start_add_cntr_en_1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => finite_state_machine_start_add_cntr_en_net,
      en => "1",
      dout(0) => start_add_cntr_en_1_dout_net
    );

  start_address_counter: entity work.xlcounter_free_RTEphysEng
    generic map (
      core_name0 => "cntr_11_0_45469457c0a77b17",
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en(0) => start_add_cntr_en_1_dout_net,
      rst(0) => convert_dout_net_x1,
      op => start_address_counter_op_net
    );

  template_counter: entity work.xlcounter_free_RTEphysEng
    generic map (
      core_name0 => "cntr_11_0_45469457c0a77b17",
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en(0) => en_template_cntr_dout_net,
      rst(0) => ld_template_cntr_dout_net,
      op => template_counter_op_net_x0
    );

  up_sample1: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 16,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 16
    )
    port map (
      d => from_register1_data_out_net_x0,
      dest_ce => ce_1_sg_x1,
      dest_clk => clk_1_sg_x1,
      dest_clr => '0',
      en => "1",
      src_ce => ce_100000000_sg_x0,
      src_clk => clk_100000000_sg_x0,
      src_clr => '0',
      q => up_sample1_q_net
    );

  up_sample2: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 16,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 16
    )
    port map (
      d => from_register2_data_out_net_x0,
      dest_ce => ce_1_sg_x1,
      dest_clk => clk_1_sg_x1,
      dest_clr => '0',
      en => "1",
      src_ce => ce_100000000_sg_x0,
      src_clk => clk_100000000_sg_x0,
      src_clr => '0',
      q => up_sample2_q_net
    );

  up_sample3: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => convert_dout_net_x0,
      dest_ce => ce_1_sg_x1,
      dest_clk => clk_1_sg_x1,
      dest_clr => '0',
      en => "1",
      src_ce => ce_100000000_sg_x0,
      src_clk => clk_100000000_sg_x0,
      src_clr => '0',
      q(0) => up_sample3_q_net
    );

  up_sample4: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 8,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 8
    )
    port map (
      d => convert2_dout_net,
      dest_ce => ce_1_sg_x1,
      dest_clk => clk_1_sg_x1,
      dest_clr => '0',
      en => "1",
      src_ce => ce_100000000_sg_x0,
      src_clk => clk_100000000_sg_x0,
      src_clr => '0',
      q => up_sample4_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "RTEphysEng"

entity rtephyseng is
  port (
    atod_datamem_addr: in std_logic_vector(9 downto 0); 
    atod_datamem_data: in std_logic_vector(15 downto 0); 
    atod_datamem_we: in std_logic; 
    buffer_0_fill: in std_logic; 
    ce_1: in std_logic; 
    ce_100000000: in std_logic; 
    clk_1: in std_logic; 
    clk_100000000: in std_logic; 
    data_out: in std_logic_vector(15 downto 0); 
    data_out_x0: in std_logic_vector(15 downto 0); 
    data_out_x1: in std_logic_vector(15 downto 0); 
    data_out_x10: in std_logic_vector(15 downto 0); 
    data_out_x11: in std_logic_vector(15 downto 0); 
    data_out_x12: in std_logic_vector(15 downto 0); 
    data_out_x13: in std_logic_vector(15 downto 0); 
    data_out_x14: in std_logic_vector(15 downto 0); 
    data_out_x15: in std_logic_vector(15 downto 0); 
    data_out_x16: in std_logic_vector(15 downto 0); 
    data_out_x2: in std_logic_vector(15 downto 0); 
    data_out_x3: in std_logic_vector(15 downto 0); 
    data_out_x4: in std_logic_vector(15 downto 0); 
    data_out_x5: in std_logic_vector(15 downto 0); 
    data_out_x6: in std_logic_vector(15 downto 0); 
    data_out_x7: in std_logic_vector(15 downto 0); 
    data_out_x8: in std_logic_vector(15 downto 0); 
    data_out_x9: in std_logic_vector(15 downto 0); 
    plb_abus: in std_logic_vector(31 downto 0); 
    plb_pavalid: in std_logic; 
    plb_rnw: in std_logic; 
    plb_wrdbus: in std_logic_vector(31 downto 0); 
    sg_plb_addrpref: in std_logic_vector(16 downto 0); 
    spare_bit_1: in std_logic; 
    splb_rst: in std_logic; 
    addr: out std_logic_vector(9 downto 0); 
    addr_x0: out std_logic_vector(9 downto 0); 
    addr_x1: out std_logic_vector(6 downto 0); 
    addr_x2: out std_logic_vector(6 downto 0); 
    addr_x3: out std_logic_vector(6 downto 0); 
    addr_x4: out std_logic_vector(6 downto 0); 
    addr_x5: out std_logic_vector(6 downto 0); 
    addr_x6: out std_logic_vector(6 downto 0); 
    control16: out std_logic; 
    data_in: out std_logic_vector(15 downto 0); 
    data_in_x0: out std_logic_vector(15 downto 0); 
    data_in_x1: out std_logic_vector(15 downto 0); 
    data_in_x10: out std_logic_vector(15 downto 0); 
    data_in_x11: out std_logic_vector(15 downto 0); 
    data_in_x12: out std_logic_vector(15 downto 0); 
    data_in_x13: out std_logic_vector(15 downto 0); 
    data_in_x14: out std_logic_vector(15 downto 0); 
    data_in_x2: out std_logic_vector(15 downto 0); 
    data_in_x3: out std_logic_vector(15 downto 0); 
    data_in_x4: out std_logic_vector(15 downto 0); 
    data_in_x5: out std_logic_vector(15 downto 0); 
    data_in_x6: out std_logic_vector(15 downto 0); 
    data_in_x7: out std_logic_vector(15 downto 0); 
    data_in_x8: out std_logic_vector(15 downto 0); 
    data_in_x9: out std_logic_vector(15 downto 0); 
    dtoa0_data_rega: out std_logic_vector(15 downto 0); 
    dtoa0_data_regb: out std_logic_vector(15 downto 0); 
    dtoa1_data_rega: out std_logic_vector(15 downto 0); 
    dtoa1_data_regb: out std_logic_vector(15 downto 0); 
    dtoa_start: out std_logic_vector(1 downto 0); 
    en: out std_logic; 
    en_x0: out std_logic; 
    en_x1: out std_logic; 
    en_x2: out std_logic; 
    en_x3: out std_logic; 
    en_x4: out std_logic; 
    en_x5: out std_logic; 
    en_x6: out std_logic; 
    en_x7: out std_logic; 
    en_x8: out std_logic; 
    en_x9: out std_logic; 
    eng_reset: out std_logic; 
    hs32: out std_logic; 
    new_sample_available: out std_logic; 
    sl_addrack: out std_logic; 
    sl_rdcomp: out std_logic; 
    sl_rddack: out std_logic; 
    sl_rddbus: out std_logic_vector(31 downto 0); 
    sl_wait: out std_logic; 
    sl_wrcomp: out std_logic; 
    sl_wrdack: out std_logic; 
    spare: out std_logic_vector(9 downto 0); 
    we: out std_logic; 
    we_x0: out std_logic; 
    we_x1: out std_logic; 
    we_x2: out std_logic; 
    we_x3: out std_logic
  );
end rtephyseng;

architecture structural of rtephyseng is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "RTEphysEng,sysgen_core,{clock_period=10.00000000,clocking=Clock_Enables,sample_periods=1.00000000000 100000000.00000000000,testbench=0,total_blocks=167,xilinx_accumulator_block=2,xilinx_adder_subtracter_block=1,xilinx_bit_slice_extractor_block=6,xilinx_bus_concatenator_block=1,xilinx_constant_block_block=7,xilinx_counter_block=7,xilinx_dual_port_random_access_memory_block=1,xilinx_edk_processor_block=1,xilinx_fdatool_interface_block=1,xilinx_gateway_in_block=11,xilinx_gateway_out_block=17,xilinx_mcode_block_block=3,xilinx_multiplier_block=2,xilinx_register_block=2,xilinx_shared_memory_based_from_register_block=11,xilinx_shared_memory_based_to_register_block=11,xilinx_shared_memory_random_access_memory_block=8,xilinx_system_generator_block=1,xilinx_type_converter_block=17,xilinx_up_sampler_block=4,xilinx_wavescope_block=1,}";

  signal addr_x0_net: std_logic_vector(9 downto 0);
  signal addr_x1_net: std_logic_vector(6 downto 0);
  signal addr_x2_net: std_logic_vector(6 downto 0);
  signal addr_x3_net: std_logic_vector(6 downto 0);
  signal addr_x4_net: std_logic_vector(6 downto 0);
  signal addr_x5_net: std_logic_vector(6 downto 0);
  signal addr_x6_net: std_logic_vector(6 downto 0);
  signal atod_datamem_addr_net: std_logic_vector(9 downto 0);
  signal atod_datamem_data_net: std_logic_vector(15 downto 0);
  signal atod_datamem_we_net: std_logic;
  signal buffer_0_fill_net: std_logic;
  signal ce_100000000_sg_x1: std_logic;
  signal ce_1_sg_x2: std_logic;
  signal clk_100000000_sg_x1: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal constant1_op_net: std_logic;
  signal constant2_op_net_x0: std_logic;
  signal control16_net: std_logic;
  signal convert_dout_net_x1: std_logic;
  signal data_in_x0_net: std_logic_vector(15 downto 0);
  signal data_in_x10_net: std_logic_vector(15 downto 0);
  signal data_in_x11_net: std_logic_vector(15 downto 0);
  signal data_in_x12_net: std_logic_vector(15 downto 0);
  signal data_in_x13_net: std_logic_vector(15 downto 0);
  signal data_in_x14_net: std_logic_vector(15 downto 0);
  signal data_in_x1_net: std_logic_vector(15 downto 0);
  signal data_in_x2_net: std_logic_vector(15 downto 0);
  signal data_in_x3_net: std_logic_vector(15 downto 0);
  signal data_in_x4_net: std_logic_vector(15 downto 0);
  signal data_in_x5_net: std_logic_vector(15 downto 0);
  signal data_in_x6_net: std_logic_vector(15 downto 0);
  signal data_in_x7_net: std_logic_vector(15 downto 0);
  signal data_in_x8_net: std_logic_vector(15 downto 0);
  signal data_in_x9_net: std_logic_vector(15 downto 0);
  signal data_out_net: std_logic_vector(15 downto 0);
  signal data_out_x0_net: std_logic_vector(15 downto 0);
  signal data_out_x10_net: std_logic_vector(15 downto 0);
  signal data_out_x11_net: std_logic_vector(15 downto 0);
  signal data_out_x12_net: std_logic_vector(15 downto 0);
  signal data_out_x13_net: std_logic_vector(15 downto 0);
  signal data_out_x14_net: std_logic_vector(15 downto 0);
  signal data_out_x15_net: std_logic_vector(15 downto 0);
  signal data_out_x16_net: std_logic_vector(15 downto 0);
  signal data_out_x1_net: std_logic_vector(15 downto 0);
  signal data_out_x2_net: std_logic_vector(15 downto 0);
  signal data_out_x7_net: std_logic_vector(15 downto 0);
  signal data_out_x8_net: std_logic_vector(15 downto 0);
  signal data_out_x9_net: std_logic_vector(15 downto 0);
  signal dtoa_start_net: std_logic_vector(1 downto 0);
  signal en_net: std_logic;
  signal en_x2_net: std_logic;
  signal en_x3_net: std_logic;
  signal en_x4_net: std_logic;
  signal en_x5_net: std_logic;
  signal en_x6_net: std_logic;
  signal en_x7_net: std_logic;
  signal en_x8_net: std_logic;
  signal en_x9_net: std_logic;
  signal eng_reset_net: std_logic;
  signal from_register1_data_out_net: std_logic_vector(15 downto 0);
  signal from_register2_data_out_net: std_logic_vector(15 downto 0);
  signal from_register3_data_out_net: std_logic_vector(15 downto 0);
  signal from_register4_data_out_net: std_logic_vector(15 downto 0);
  signal hs32_net: std_logic;
  signal new_sample_available_net: std_logic;
  signal plb_abus_net: std_logic_vector(31 downto 0);
  signal plb_pavalid_net: std_logic;
  signal plb_rnw_net: std_logic;
  signal plb_wrdbus_net: std_logic_vector(31 downto 0);
  signal sg_plb_addrpref_net: std_logic_vector(16 downto 0);
  signal sl_addrack_net: std_logic;
  signal sl_rdcomp_net: std_logic;
  signal sl_rddack_net: std_logic;
  signal sl_rddbus_net: std_logic_vector(31 downto 0);
  signal sl_wait_net: std_logic;
  signal sl_wrdack_x1: std_logic;
  signal spare_bit_1_net: std_logic;
  signal spare_net: std_logic_vector(9 downto 0);
  signal splb_rst_net: std_logic;
  signal we_x0_net: std_logic;
  signal we_x1_net: std_logic;
  signal we_x2_net: std_logic;
  signal we_x3_net: std_logic;

begin
  atod_datamem_addr_net <= atod_datamem_addr;
  atod_datamem_data_net <= atod_datamem_data;
  atod_datamem_we_net <= atod_datamem_we;
  buffer_0_fill_net <= buffer_0_fill;
  ce_1_sg_x2 <= ce_1;
  ce_100000000_sg_x1 <= ce_100000000;
  clk_1_sg_x2 <= clk_1;
  clk_100000000_sg_x1 <= clk_100000000;
  data_out_net <= data_out;
  data_out_x0_net <= data_out_x0;
  data_out_x1_net <= data_out_x1;
  data_out_x10_net <= data_out_x10;
  data_out_x11_net <= data_out_x11;
  data_out_x12_net <= data_out_x12;
  data_out_x13_net <= data_out_x13;
  data_out_x14_net <= data_out_x14;
  data_out_x15_net <= data_out_x15;
  data_out_x16_net <= data_out_x16;
  data_out_x2_net <= data_out_x2;
  from_register1_data_out_net <= data_out_x3;
  from_register2_data_out_net <= data_out_x4;
  from_register3_data_out_net <= data_out_x5;
  from_register4_data_out_net <= data_out_x6;
  data_out_x7_net <= data_out_x7;
  data_out_x8_net <= data_out_x8;
  data_out_x9_net <= data_out_x9;
  plb_abus_net <= plb_abus;
  plb_pavalid_net <= plb_pavalid;
  plb_rnw_net <= plb_rnw;
  plb_wrdbus_net <= plb_wrdbus;
  sg_plb_addrpref_net <= sg_plb_addrpref;
  spare_bit_1_net <= spare_bit_1;
  splb_rst_net <= splb_rst;
  addr <= atod_datamem_addr_net;
  addr_x0 <= addr_x0_net;
  addr_x1 <= addr_x1_net;
  addr_x2 <= addr_x2_net;
  addr_x3 <= addr_x3_net;
  addr_x4 <= addr_x4_net;
  addr_x5 <= addr_x5_net;
  addr_x6 <= addr_x6_net;
  control16 <= control16_net;
  data_in <= atod_datamem_data_net;
  data_in_x0 <= data_in_x0_net;
  data_in_x1 <= data_in_x1_net;
  data_in_x10 <= data_in_x10_net;
  data_in_x11 <= data_in_x11_net;
  data_in_x12 <= data_in_x12_net;
  data_in_x13 <= data_in_x13_net;
  data_in_x14 <= data_in_x14_net;
  data_in_x2 <= data_in_x2_net;
  data_in_x3 <= data_in_x3_net;
  data_in_x4 <= data_in_x4_net;
  data_in_x5 <= data_in_x5_net;
  data_in_x6 <= data_in_x6_net;
  data_in_x7 <= data_in_x7_net;
  data_in_x8 <= data_in_x8_net;
  data_in_x9 <= data_in_x9_net;
  dtoa0_data_rega <= from_register1_data_out_net;
  dtoa0_data_regb <= from_register2_data_out_net;
  dtoa1_data_rega <= from_register3_data_out_net;
  dtoa1_data_regb <= from_register4_data_out_net;
  dtoa_start <= dtoa_start_net;
  en <= en_net;
  en_x0 <= constant2_op_net_x0;
  en_x1 <= constant2_op_net_x0;
  en_x2 <= en_x2_net;
  en_x3 <= en_x3_net;
  en_x4 <= en_x4_net;
  en_x5 <= en_x5_net;
  en_x6 <= en_x6_net;
  en_x7 <= en_x7_net;
  en_x8 <= en_x8_net;
  en_x9 <= en_x9_net;
  eng_reset <= eng_reset_net;
  hs32 <= hs32_net;
  new_sample_available <= new_sample_available_net;
  sl_addrack <= sl_addrack_net;
  sl_rdcomp <= sl_rdcomp_net;
  sl_rddack <= sl_rddack_net;
  sl_rddbus <= sl_rddbus_net;
  sl_wait <= sl_wait_net;
  sl_wrcomp <= sl_wrdack_x1;
  sl_wrdack <= sl_wrdack_x1;
  spare <= spare_net;
  we <= atod_datamem_we_net;
  we_x0 <= we_x0_net;
  we_x1 <= we_x1_net;
  we_x2 <= we_x2_net;
  we_x3 <= we_x3_net;

  bit_0: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => data_out_net,
      y(0) => hs32_net
    );

  bit_15: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => data_out_net,
      y(0) => control16_net
    );

  bit_3: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => data_out_net,
      y(0) => new_sample_available_net
    );

  bit_4: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 4,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => data_out_net,
      y(0) => eng_reset_net
    );

  bits1and2: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 2,
      x_width => 16,
      y_width => 2
    )
    port map (
      x => data_out_net,
      y => dtoa_start_net
    );

  bits_5thru14: entity work.xlslice
    generic map (
      new_lsb => 5,
      new_msb => 14,
      x_width => 16,
      y_width => 10
    )
    port map (
      x => data_out_net,
      y => spare_net
    );

  concat: entity work.concat_3425f785d1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => constant1_op_net,
      in1(0) => constant1_op_net,
      in10(0) => constant1_op_net,
      in11(0) => constant1_op_net,
      in12(0) => constant1_op_net,
      in13(0) => constant1_op_net,
      in14(0) => spare_bit_1_net,
      in15(0) => buffer_0_fill_net,
      in2(0) => constant1_op_net,
      in3(0) => constant1_op_net,
      in4(0) => constant1_op_net,
      in5(0) => constant1_op_net,
      in6(0) => constant1_op_net,
      in7(0) => constant1_op_net,
      in8(0) => constant1_op_net,
      in9(0) => constant1_op_net,
      y => data_in_x0_net
    );

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net_x0
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => en_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_100000000_sg_x1,
      clk => clk_100000000_sg_x1,
      clr => '0',
      din(0) => eng_reset_net,
      en => "1",
      dout(0) => convert_dout_net_x1
    );

  edk_processor_e07a964799: entity work.edk_processor_entity_e07a964799
    port map (
      ce_1 => ce_1_sg_x2,
      clk_1 => clk_1_sg_x2,
      from_register => data_out_x7_net,
      from_register1 => data_out_x8_net,
      from_register2 => data_out_x9_net,
      plb_abus => plb_abus_net,
      plb_pavalid => plb_pavalid_net,
      plb_rnw => plb_rnw_net,
      plb_wrdbus => plb_wrdbus_net,
      sg_plb_addrpref => sg_plb_addrpref_net,
      shared_memory => data_out_x10_net,
      shared_memory1 => data_out_x11_net,
      shared_memory2 => data_out_x12_net,
      shared_memory3 => data_out_x13_net,
      splb_rst => splb_rst_net,
      constant5_x0 => sl_wait_net,
      plb_decode_x0 => sl_addrack_net,
      plb_decode_x1 => sl_rdcomp_net,
      plb_decode_x2 => sl_wrdack_x1,
      plb_decode_x3 => sl_rddack_net,
      plb_decode_x4 => sl_rddbus_net,
      plb_memmap_x0 => data_in_x3_net,
      plb_memmap_x1 => en_x2_net,
      plb_memmap_x10 => data_in_x8_net,
      plb_memmap_x11 => en_x7_net,
      plb_memmap_x12 => data_in_x9_net,
      plb_memmap_x13 => en_x8_net,
      plb_memmap_x14 => data_in_x10_net,
      plb_memmap_x15 => en_x9_net,
      plb_memmap_x16 => addr_x0_net,
      plb_memmap_x17 => data_in_x11_net,
      plb_memmap_x18 => we_x0_net,
      plb_memmap_x19 => addr_x1_net,
      plb_memmap_x2 => data_in_x4_net,
      plb_memmap_x20 => data_in_x12_net,
      plb_memmap_x21 => we_x1_net,
      plb_memmap_x22 => addr_x2_net,
      plb_memmap_x23 => data_in_x13_net,
      plb_memmap_x24 => we_x2_net,
      plb_memmap_x25 => addr_x3_net,
      plb_memmap_x26 => data_in_x14_net,
      plb_memmap_x27 => we_x3_net,
      plb_memmap_x3 => en_x3_net,
      plb_memmap_x4 => data_in_x5_net,
      plb_memmap_x5 => en_x4_net,
      plb_memmap_x6 => data_in_x6_net,
      plb_memmap_x7 => en_x5_net,
      plb_memmap_x8 => data_in_x7_net,
      plb_memmap_x9 => en_x6_net
    );

  engine_1_f33649db74: entity work.engine_1_entity_f33649db74
    port map (
      ce_1 => ce_1_sg_x2,
      ce_100000000 => ce_100000000_sg_x1,
      clk_1 => clk_1_sg_x2,
      clk_100000000 => clk_100000000_sg_x1,
      decimation => data_out_x2_net,
      engine_1_reset => convert_dout_net_x1,
      filter_length => data_out_x1_net,
      new_sample_available => new_sample_available_net,
      shared_memory => data_out_x14_net,
      shared_memory1 => data_out_x15_net,
      shared_memory2 => data_out_x16_net,
      template_size => data_out_x0_net,
      data_address_counter_x1 => addr_x5_net,
      filter_add_counter_x1 => addr_x6_net,
      filter_out_x0 => data_in_x2_net,
      lsd_out => data_in_x1_net,
      template_counter_x0 => addr_x4_net
    );

end structural;
