library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.CONV_STD_LOGIC_VECTOR;

--library 	AnalogSP_v1_00_a;
 
entity AnalogSP is
		port( 	SPI_CLK 		: 	in 	std_logic;
					reset			:	in		std_logic;												-- 	high = reset
					start			:	in		std_logic;												--pulse high to start
					set_point_A	:	in		std_logic_vector(15 downto 0);	
					set_point_B	:	in		std_logic_vector(15 downto 0);										
					
					SS				: 	out 	std_logic;												-- 	negative logic
					SData			: 	out	std_logic;
					SClock		:	out	std_logic);
				
end AnalogSP;
 
architecture IMP of AnalogSP is		

	type 	 state_type is (wait_for_start, IDLE, Step1, Step2, Step3, Step4);
	signal process_state : state_type;
	
		signal	Instruction			:	std_logic_vector(7 downto 0);
		signal	clock_enable		:	std_logic;
		signal 	enable				:	std_logic;												--		strobe from high to low to start send
		signal   count_enable		:  std_logic;
--		signal	clken					:	std_logic;
--		signal	sclk					:	std_logic;
		signal 	wrn1 					:  std_logic ;
		signal 	wrn2 					:  std_logic ;
		signal 	no_bits_sent 		:  integer ;												--	Controls word_size and sequences transmitter operation		signal 	counter_num			: 	integer;
		signal 	tsr 					: 	std_logic_vector (23 downto 0) ;					--	data buffer
		signal  	din					:	std_logic_vector(15 downto 0);
		signal   sclk_delay        :  std_logic;
		signal   Buf_Sel				:	std_logic;
--		signal 	clk_count			:	std_logic_vector (3 downto 0);
		signal	counter_num			:  integer;
begin
		
		-- for count. sending new set point application	
		endless_cycle: process(SPI_CLK)
		begin
			if SPI_CLK'event and SPI_CLK = '1' then
				if reset = '1' then
					enable 			<= '1';
					count_enable  	<= '0';
					process_state 	<= wait_for_start;
					Buf_Sel 			<= '0';
				else
					case process_state is
						when wait_for_start	=> enable	<= '1';
														count_enable	<= '0';
														if start = '1' then
															process_state <= IDLE;
														else
															process_state <= wait_for_start;
														end if;
														
						when IDLE 		=>	enable       	<= '1';   						--start+1 clock
												count_enable 	<= '0';
												
												if Buf_Sel = '0' then 
													Instruction		<=	"00010000";				-- Wirte to Buffer A Loading DAC A
													din 	 			<= set_point_A;			-- assign the set point
												else 
													Instruction		<=	"00100100";				-- Wirte to Buffer B Loading DAC B
													din 	 			<= set_point_B;			-- assign the set point
												end if;
												process_state 	<= Step1;
						when Step1		=> enable <= '0';										-- enable from high to low, transfer set point 
												count_enable	<= '1';							-- tstart + 2 clock
												process_state <= Step2;	
												
						when Step2		=>	if (counter_num >= 2) then
													enable <= '1';									--t start + 5 clocks
													process_state <= Step3;
												end if;
												
						when Step3     => if (counter_num >= 24) then					--t start + 30
													count_enable <= '0';
													process_state <= Step4;
												end if;
												
						when Step4		=> if Buf_Sel = '0' then
													Buf_Sel 			<= '1';					
													count_enable <= '0';
													enable <= '1';
													process_state <= IDLE;
												else
													count_enable <= '0';
													Buf_Sel 			<= '0';
													enable <= '1';
													process_state <= wait_for_start;
												end if;
												
						when others 	=> count_enable 	<= '0';
												count_enable	<= '0';
												process_state 	<= wait_for_start;
					end case;
				end if;		
			end if;
		end process endless_cycle;
		
		-- delay n number of clock before a new set-point, min delay = 100ns 
		-- 3 clock period for 25MHz
		process_counter: process(SPI_CLK, reset, count_enable)
		begin
			if reset = '1' or count_enable = '0' then
				counter_num <= 0;
			elsif SPI_CLK'event and SPI_CLK = '1' then
					counter_num <= counter_num + 1;
			end if;		
		end process process_counter;

		--	counter to track number of bits sent
	counter: process (reset,SPI_CLK,clock_enable)
	begin
		if SPI_CLK'event and SPI_CLK = '1' then
			if reset = '1' then
				no_bits_sent <= 0;
				sclk_delay	 <= '0';
			else
				if clock_enable = '1' then
					no_bits_sent <= no_bits_sent + 1;
					if no_bits_sent >= 1 then 
						sclk_delay <= '1';
					end if;
				else
					no_bits_sent <= 0;
				end if;
			end if ;
		end if;
	end process counter;
		
   	-- wait for external enable strobe, controlled by microblaze
		external_strobe : process (reset,SPI_CLK)
		begin
			if  reset = '1' 	then
				wrn1 	<= '1';
				wrn2 	<= '1';
			elsif 	SPI_CLK'event and SPI_CLK = '1' 	then
				wrn2 <= wrn1;
				wrn1 <= enable;
			end if ;
		end process external_strobe;
		
		-- Enable External Device to Receive Set Point 
	enable_sclock: process (reset,SPI_CLK)
	begin	
		if SPI_CLK'event and SPI_CLK = '1' then
			if reset = '1' then
				clock_enable 	<= '0' ;
			elsif wrn1 = '0' and wrn2 = '1' then 			
					clock_enable <= '1' ;
			end if;
			if no_bits_sent = 23 then			-- send 25-bit, count from 1 to 24, total 24bit data length
					clock_enable <= '0' ;
			end if ;
		end if;
	end process enable_sclock;
		--busy		<=	clock_enable;

		-- Generate Chip Sellect output signal, negative = enable
		SS		<=	not(clock_enable);				
		
		-- Generate SCLOCK output signal, SClock is for output and sclk is internal clock for data bits	
		
		SClock <= clock_enable and SPI_CLK and sclk_delay;
--		sclk	 <= clock_enable and SPI_CLK and sclk_delay;
		
		-- transfer data to External Device on Falling Edge of SCLOCK
		
send_data: process (SPI_CLK, clock_enable)
begin
	if (SPI_CLK'event and SPI_CLK = '1') then
		if clock_enable = '0' then
			tsr <= Instruction & din;
--			SData <= '0';
--			SData <= tsr(23) ;				

		else 
			if(sclk_delay = '1') then
				tsr 	<=	tsr (22 downto 0) & '0';
--				SData <= tsr(23) ;				
			end if ;
		end if;
	end if;
end process;		
SData <= tsr(23) ;				
				
end IMP;
