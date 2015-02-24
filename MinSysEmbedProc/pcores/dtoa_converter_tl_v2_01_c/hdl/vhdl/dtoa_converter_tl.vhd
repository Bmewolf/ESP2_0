----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:39:34 08/12/2014 
-- Design Name: 
-- Module Name:    DtoAConverter_tl - Behavioral 
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
-- Top Level for the 4 D/A converters.  They are arranged two per chip so the VHDL writes 2 commands w. data
-- each time the start is strobbed.  The start should be high for at least a full slow_clock cycle.
-- slow clock should be at most 30 MHz.
--	The data words are input seperately and there are 2 signals each for the 2 chips of the sclock, select, and din
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dtoa_converter_tl is
    Port ( slow_clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           dtoa_start : in  STD_LOGIC_VECTOR (1 downto 0);
           dtoa_data0 : in  STD_LOGIC_VECTOR (15 downto 0);
           dtoa_data1 : in  STD_LOGIC_VECTOR (15 downto 0);
           dtoa_data2 : in  STD_LOGIC_VECTOR (15 downto 0);
           dtoa_data3 : in  STD_LOGIC_VECTOR (15 downto 0);
           dtoa_select : out  STD_LOGIC_VECTOR (1 downto 0);
           dtoa_clock : out  STD_LOGIC_VECTOR (1 downto 0);
           dtoa_din : out  STD_LOGIC_VECTOR (1 downto 0));
end dtoa_converter_tl;

architecture Behavioral of dtoa_converter_tl is
component AnalogSP is
		port( 	SPI_CLK 		: 	in 	std_logic;
					reset			:	in		std_logic;												-- 	high = reset
					start			:	in		std_logic;												--pulse high to start
					set_point_A	:	in		std_logic_vector(15 downto 0);	
					set_point_B	:	in		std_logic_vector(15 downto 0);														
					SS				: 	out 	std_logic;												-- 	negative logic
					SData			: 	out	std_logic;
					SClock		:	out	std_logic);				
end component;
 
begin
data_out0: AnalogSP PORT MAP(								--interface to D to A chip 1
                  SPI_CLK => slow_clk,
                  reset => rst,
						start =>	dtoa_start(0),
						set_point_A => dtoa_data0,
						set_point_B => dtoa_data1,
						SS =>	dtoa_select(0),
						SData => dtoa_din(0),
						SClock =>dtoa_clock(0)
          );
			 
data_out1: AnalogSP PORT MAP(								--interface to D to A chip 2
                  SPI_CLK => slow_clk,
                  reset => rst,
						start =>	dtoa_start(1),
						set_point_A => dtoa_data2,
						set_point_B => dtoa_data3,
						SS =>	dtoa_select(1),
						SData => dtoa_din(1),
						SClock =>dtoa_clock(1)
          );

end Behavioral;

