----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:26:32 02/28/2014 
-- Design Name: 
-- Module Name:    Data_Input - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.CONV_STD_LOGIC_VECTOR;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Data_Input is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           miso_all : in  STD_LOGIC_VECTOR (5 downto 0);
           jfrc_convert : in  STD_LOGIC;
           jfrc16_sel : in  STD_LOGIC_VECTOR (3 downto 0);
           JFRC32RESET_NOT : in  STD_LOGIC;
			  HS32 : in STD_LOGIC;
           mem_wr : out  STD_LOGIC;
           Port_A_Address : out  STD_LOGIC_VECTOR (9 downto 0);
           AtoD_data_bus : out  STD_LOGIC_VECTOR (15 downto 0);
           Buffer_0_Fill : out  STD_LOGIC;
			  SReady : out STD_LOGIC;
			  SClock : out STD_LOGIC;
			  AD7982_convert : out STD_LOGIC);			-- passed to the top for A/D converters
end Data_Input;

architecture Behavioral of Data_Input is
	 
	component edge_detect is
	  port (async_sig : in std_logic;
			  clk       : in std_logic;
			  rise      : out std_logic;
			  fall      : out std_logic);
	end component;
	
	component AsyncAnalogDataIn is
		port( 	clk	 				: 	in 	std_logic;
					Conv_start			:	in    std_logic;  			--Synchronous start of conversion pulse
					reset					:	in		std_logic;												-- 	high = reset					
					AtoD_data_bus		:	out	std_logic_vector(15 downto 0);	
					SData					: 	in		std_logic_vector(5 downto 0);
					chan0sync			:	in		std_logic;					-- for both type headstages
					SClock				:	out	std_logic;
					SReady				:	out	std_logic;
					HS_counter			:	out	std_logic_vector(2 downto 0);					-- HS_counter bits for forming mem address
					mem_wr				:	out	std_logic);
	end component;
	
   signal JFConvert_rise, JFConvert_fall : std_logic;
	signal SPImiso : STD_LOGIC_VECTOR(5 downto 0) := "ZZZZZZ";
	signal HSChannelCounter : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";
	signal AtoD_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal chan0sync	:std_logic;
	signal SData : std_logic_vector(5 downto 0);
	signal HS_counter: std_logic_vector(2 downto 0);
	signal Fill_0: std_logic;
	signal Buffer_0_Fill_local: std_logic;
	signal Channel_Counter: std_logic_vector (4 downto 0);
	signal SReadyInt : std_logic;
	signal SreadyInt_d1 : std_logic;
	signal sreg 				: 	std_logic_vector(1 downto 0);           -- used to debounce JFRC32_convert
	signal sync_out 		:	std_logic;
	signal jfrcsync			:  std_logic;


attribute KEEP : STRING;
attribute KEEP of clk:signal is "true";

attribute ASYNC_REG : string;
attribute ASYNC_REG of sreg : signal is "TRUE";

begin
EDGE_DET : edge_detect PORT MAP (jfrc_convert, clk, JFConvert_rise, JFConvert_fall);
AN_DATA : AsyncAnalogDataIn PORT MAP (clk, JFConvert_rise, reset, AtoD_data, miso_all, 
			 chan0sync, SClock, SReadyInt, HS_counter, mem_wr);

Port_A_Address <= ('0' & not Buffer_0_Fill_local & HS_counter & Channel_Counter);
AtoD_data_bus <= AtoD_data;
Sready <= SreadyInt;
AD7982_convert <= JFConvert_rise;									--use the rising edge detected pulse as the convert

-- jfrsync is the chan0 sync regardless of headstage type. HS type indicated by HS32 (true for 32 chan HS)
jfrcsync <= ((not jfrc16_sel(0)) and (not jfrc16_sel(1)) and (not jfrc16_sel(2)) and (not jfrc16_sel(3)) and not HS32) or
				((not JFRC32RESET_NOT) and HS32);
				
-- manage the multiplexor input from the headstage, if chan 0 then decode chan0 and use it as jfrsync
-- debounce either jfrsync

	Debounce_Sync : process (clk)
	begin
		if (clk'event and clk='1') then
			sync_out <= sreg(1);
			sreg <= sreg(0) & jfrcsync;
		end if;
	end process Debounce_Sync;
	chan0sync <= sync_out;
	
--------------------------------------------------------------------------------
-- this process swaps the buffers on the Sready occurring on channel 0 (once per sample period). 
-- The buffer should be filled and the next one about to start.

swap_buffers: process (clk, reset, SreadyInt)
begin
	if ( clk'event and clk = '1')then
		if (reset = '1')then
			Fill_0 <= '0';			--start filling buffer 0 but it will 'swap' at first Sready
										--so set to be filling buf 1 
			SreadyInt_d1 <= '0';
			Channel_Counter <= "00000";
		else								-- not reset
			SreadyInt_d1 <= SreadyInt;
			if (SreadyInt = '1' and SreadyInt_d1 = '0') then  -- edge of SReady
				if ( chan0sync = '1' ) then
					Fill_0 <= not Fill_0;										--swap
					Channel_Counter <= "00000";
				else
					Channel_Counter <= Channel_Counter + 1;
				end if;
			end if;	
		end if;
	end if;
end process swap_buffers;

Buffer_0_Fill_local <= Fill_0;	
Buffer_0_Fill <= Fill_0;

----------------------------------------------------------------------------------

end Behavioral;

