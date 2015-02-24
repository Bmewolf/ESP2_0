----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:03:19 02/26/2014 
-- Design Name: 
-- Module Name:    Analog_Chan_Iface - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
--------------------------------------------------------------------------------
entity Analog_Chan_Iface is
    Port ( acq_clk : in  STD_LOGIC;							-- SPI clock for reading in bits
           spi_serial_in : in  STD_LOGIC;					-- connected to A/D SPI data pin
           AtoD_Data_Out : out  STD_LOGIC_VECTOR (15 downto 0));  -- 16 MSB of 18 converted
end Analog_Chan_Iface;
---------------------------------------------------------------------------------
architecture Behavioral of Analog_Chan_Iface is
signal dt : STD_LOGIC_VECTOR (17 downto 0);								--18 bit shift register
begin
-- read the A/D data bits into shift register
	process(acq_clk)
		begin
		if acq_clk'event and acq_clk = '1' then
			dt <= dt(16 downto 0) & spi_serial_in;
		end if;		
	end process;
-- I want the 16 most significant bits but, the A/D is 2's compliment with negative differential voltages taking
-- half the range, but the single ended input from the head stages is always positive, so the negative
-- range is never used. So to get the 16 most sig bits, I take outbus = bits(15-0) = A/D bits(16-1) of (17-0) 
--AtoD_Data_Out <= dt(17 downto 2);
AtoD_Data_Out <= dt(16 downto 1);

end Behavioral;

