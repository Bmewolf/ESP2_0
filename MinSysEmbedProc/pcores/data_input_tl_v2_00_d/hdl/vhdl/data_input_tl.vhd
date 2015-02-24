----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:26:32 02/28/2014 
-- Design Name: 
-- Module Name:    Data_Input_tl - Behavioral 
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
--	This is a top level module for the data input function. It basically creates 6 converts from the one. 
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

entity Data_Input_tl is
    Port ( SPLB_Clk : in  STD_LOGIC;
           SPLB_Rst : in  STD_LOGIC;
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
			  SClock_out : out STD_LOGIC;
			  AD7982_convert_all : out STD_LOGIC_VECTOR (5 downto 0);
			  AD7982_DSI_all: out STD_LOGIC_VECTOR (5 downto 0));
end Data_Input_tl;

architecture Behavioral of Data_Input_tl is
	 
component data_input is
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
end component;

signal AD7982_convert : STD_LOGIC;
signal streg : STD_LOGIC_VECTOR (3 downto 0);
signal stout : STD_LOGIC;
signal AD7982_convert_temp :STD_LOGIC;
signal SClock : STD_LOGIC;


begin

Data_In: data_input PORT MAP (SPLB_Clk, SPLB_Rst, miso_all, jfrc_convert, jfrc16_sel, JFRC32RESET_NOT, HS32,
								mem_wr, Port_A_Address, AtoD_data_bus, Buffer_0_Fill, SReady, SClock, AD7982_convert);
SClock_out <= SClock;
	
	stretch_convert : process (SPLB_Rst, SPLB_Clk)

	begin
		if (SPLB_Clk'event and SPLB_Clk='1') then
			if (SPLB_Rst = '1') then
				streg(0) <= '0';
				streg(1) <= '0';
				streg(2) <= '0';
				streg(3) <= '0';
			else   
				streg <= streg(2 downto 0) & AD7982_convert;
			end if;
		end if;
	end process stretch_convert;
	AD7982_convert_temp <= AD7982_convert or streg(0) or streg(1) or streg(2) or streg(3);
	AD7982_convert_all(0)<= AD7982_convert_temp ;
	AD7982_convert_all(1)<= AD7982_convert_temp ;									
	AD7982_convert_all(2)<= AD7982_convert_temp ;
	AD7982_convert_all(3)<= AD7982_convert_temp ;
	AD7982_convert_all(4)<= AD7982_convert_temp ;
	AD7982_convert_all(5)<= AD7982_convert_temp ;
	
	AD7982_DSI_all(0) <= '1';
	AD7982_DSI_all(1) <= '1';
	AD7982_DSI_all(2) <= '1';
	AD7982_DSI_all(3) <= '1';
	AD7982_DSI_all(4) <= '1';
	AD7982_DSI_all(5) <= '1';

end Behavioral;																				