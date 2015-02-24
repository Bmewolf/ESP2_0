library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.CONV_STD_LOGIC_VECTOR;

--library 	AsyncAnalogData_v1_00_a;
 
entity AsyncAnalogDataIn is
		port( 	clk	 				: 	in 	std_logic;
					Conv_start			:	in    std_logic;  			--Synchronous start of conversion pulse
					reset					:	in		std_logic;												-- 	high = reset					
					atod_data_bus		:	out	std_logic_vector(15 downto 0);	--A/D output data			
					SData					: 	in		std_logic_vector(5 downto 0);		-- All 6 A/D SPI bus data inputs (MISO)
					chan0sync			:	in  	std_logic;								-- true when chan 0 is being converted (16 or 32)
					SClock				:	out	std_logic;
					SReady				:	out	std_logic;								-- SPI A/D read_counter_enable
					HS_counter			:	out	std_logic_vector(2 downto 0);									-- HS_counter bits for forming mem address
					mem_wr				:	out	std_logic
					);
end AsyncAnalogDataIn;


architecture structural of AsyncAnalogDataIn is			

component Analog_Chan_Iface is
    Port ( acq_clk : in  STD_LOGIC;							-- SPI clock for reading in bits
           spi_serial_in : in  STD_LOGIC;					-- connected to A/D SPI data pin
           AtoD_Data_Out : out  STD_LOGIC_VECTOR(15 downto 0));  -- 16 MSB of 18 converted
end component; 
		

		type mem_state_type is (st1_acquire_bits, st2_enable_data, st3_write_to_mem, st4_incr_HS_count, st5_check, st6_wait); 
		signal state, next_state : mem_state_type; 
		--Declare internal signals for all outputs of the state-machine
		signal HS_count_en 	: std_logic;  		-- signal to allow HS counter to count
		signal Data_memory_wr: std_logic;  		-- Memory write signal
		signal HS_count		: std_logic_vector (2 downto 0);
		signal data_en			: std_logic;		-- used to enable buffers onto memory bus
		--done state machine signals
		
		type		state_type is (IDLE, Wait_cnv, Convert, acq, Stage4, Stage5);
		signal	HS0Data			:  std_logic_vector (15 downto 0);
		signal	HS1Data			:  std_logic_vector (15 downto 0);
		signal	HS2Data			:  std_logic_vector (15 downto 0);
		signal	HS3Data			:  std_logic_vector (15 downto 0);
		signal	HS4Data			:  std_logic_vector (15 downto 0);
		signal	HS5Data			:  std_logic_vector (15 downto 0);
		signal 	process_state 	:  state_type;
		signal 	cnv_counter_en : 	std_logic;
		signal	cnv_count		:	integer;	
		signal 	rd_counter_en 	: 	std_logic;
		signal	rd_count			:	integer;
		signal 	acq_clk			:	std_logic;
--		signal 	sreg 				: 	std_logic_vector(1 downto 0);           -- used to debounce JFRC32_convert
--		signal	jfrsync			:  std_logic;
--		signal 	sync_out 		:	std_logic;
-- signals for data and mux
		signal	HS0_tri			:  std_logic_vector (15 downto 0);
		signal	HS1_tri			:  std_logic_vector (15 downto 0);
		signal	HS2_tri			:  std_logic_vector (15 downto 0);
		signal	HS3_tri			:  std_logic_vector (15 downto 0);
		signal	HS4_tri			:  std_logic_vector (15 downto 0);
		signal	HS5_tri			:  std_logic_vector (15 downto 0);	
		signal	data				:	std_logic_vector (15 downto 0);
-- state machine for strobing data out of latches onto the bus.		
begin
		Read_HSS: process(clk)
		begin
      if (clk'event and clk = '1') then
         if (reset = '1') then
            state <= st6_wait;
         else
            state <= next_state;
         -- assign other outputs to internal signals
         end if;        
      end if;
   end process;
	
	  --MOORE State-Machine - Outputs based on state only
   OUTPUT_DECODE: process (state)
   begin
      --insert statements to decode internal output signals
      --below is simple example
      if state = st1_acquire_bits then
			HS_count_en <= '0';
			Data_memory_wr <= '0';
			data_en <= '0';
      end if;
		if state = st2_enable_data then
			data_en <= '1';
			HS_count_en <= '0';
			Data_memory_wr <= '0';
		end if;
		if state = st3_write_to_mem then
         Data_memory_wr <= '1';
			data_en <= '1';
			HS_count_en <= '0';
      end if;
		if state = st4_incr_HS_count then
         HS_count_en <= '1';
			data_en <= '0';
			Data_memory_wr <= '0';
		end if;
		if state = st5_check then
			HS_count_en <= '0';
			data_en <= '0';
			Data_memory_wr <= '0';
		end if;
		if state = st6_wait then
			HS_count_en <= '0';
			data_en <= '0';
			Data_memory_wr <= '0';
      end if;
   end process;
 
   NEXT_STATE_DECODE: process (state, rd_counter_en)
   begin
      --declare default state for next_state to avoid latches
      next_state <= state;  --default is to stay in current state
      --insert statements to decode next_state
      --below is a simple example
      case (state) is
         when st1_acquire_bits =>							-- waiting for the A/D to output its bits 
            if rd_counter_en = '0' then
               next_state <= st2_enable_data;
            end if;
			when st2_enable_data =>								--start enable of the data from the HS indicated by HS_count
				next_state <= st3_write_to_mem;		
         when st3_write_to_mem =>							--start the write signal to write to memory
             next_state <= st4_incr_HS_count;
         when st4_incr_HS_count =>							--end enable, end write, increment the HS_count
				next_state <= st5_check;
			when st5_check =>
				if HS_count = "110" then							-- do all 6 headstages 
					next_state <= st6_wait;
				else
					next_state <= st2_enable_data;
				end if;
			when st6_wait =>										--wait until the next conversion starts
				if rd_counter_en = '1' then
					next_state <= st1_acquire_bits;
				end if;
         when others =>
            next_state <= st1_acquire_bits;
      end case;      
   end process;
	
	inc_hs_counter: process (clk)
	begin
		if clk'event and clk = '1' then
			if reset = '1' or state = st6_wait then 
				HS_count <= "000";
			elsif HS_count_en = '1' then
				HS_count <= HS_count + 1;
			end if;
		end if;
	end process;
	
	HS_counter <= HS_count;
	mem_wr <= Data_Memory_wr;
-----------------------------------------------------------------------------------------------------------------------
	-- process control sequence, REF. ADC7982 (Rev. B) Page 17
		-- CS Mode, 3-wire without busy indicator
		Process_Control: process (clk, reset)
		begin
			if	clk'event and clk = '1' then
				if reset = '1' then
					cnv_counter_en	<= '0';		
					rd_counter_en	<= '0';					
					process_state	<=	IDLE;
				else
					case process_state is
						when IDLE		=>		--	init state
														cnv_counter_en	<= '0';
														rd_counter_en	<= '0';
														process_state	<=	Wait_cnv;
						when  Wait_cnv =>		-- waiting for external convert
														if Conv_start = '1' then
															process_state <=Convert;
														end if;											
						when	Convert	=>		--	adc conversion start,	wait min convert time													
														cnv_counter_en	<= '1';
														if  cnv_count >= 70 then				-- clk = 100MHZ, Max Conversion = 700ns (about 1.5MHx), 100/1.5 = 66.67
															cnv_counter_en	<= '0';			-- remain low during the acqusition 
															process_state	<=	acq;
															rd_counter_en	<= '1';
														end if;
						
						when 	acq	=>			--	acqusition counter
														if rd_count >= 35 then 				-- create 18 clock pulses
															rd_counter_en	<= '0';
															process_state	<=	Wait_cnv;
														end if;
						when others		=>		-- return
														process_state	<=	IDLE;
					end case;
				end if;
			end if;
		end process Process_Control;	
		
-- conversion counter

		conversion_counter: process(clk, reset, cnv_counter_en)
		begin
			if reset = '1' or cnv_counter_en = '0' then
				cnv_count <= 0;
			elsif clk'event and clk = '1' then
					cnv_count <= cnv_count + 1;
			end if;		
		end process conversion_counter;		
		
-- acqusition counter
		acqusition_counter: process(clk, reset, rd_counter_en)
		begin
			if reset = '1' or rd_counter_en = '0' then
				rd_count <= 0;
			elsif clk'event and clk = '1' then
					rd_count <= rd_count + 1;
			end if;		
		end process acqusition_counter;


---- jfrsync which is the chan0 sync regardless of headstagge type indicated by HS32 (true for 32 chan HS)
--		jfrsync <= ((not jfr16sel(0)) and (not jfr16sel(1)) and (not jfr16sel(2)) and (not jfr16sel(3)) and not HS32) or
--				(jfr32sync and HS32);
--				
---- manage the multiplexor input, if 16 then decode chan0 and use it as jfrsync
---- debounce either jfrsync
--
--	Debounce_Sync : process (reset, clk)
--
--	begin
--		if (clk'event and clk='1') then
--			if (reset = '1') then
--				sreg(0) <= '0';
--				sreg(1) <= '0';
--				sync_out <= '0';
--			else   
--				sync_out <= sreg(1);
--				sreg <= sreg(0) & jfrsync;
--			end if;
--		end if;
--	end process Debounce_Sync;
--	chan0sync <= sync_out;			
					
		
---- generate the acq clock		
---- at 100 MHz, the system clock just misses the spec for the A/D SPI clock so I use 
---- a divide by 2 here to make the SPI clock for A/D acquisition. I simulated this with the 32 
---- channel HS and it still makes the timing.  It finishes the convert about 1.12 uS after the JFRC 
---- convert signal and the convert rate according to Brian is 631.6 kHz (1.583 uSec).
--
Gen_Acq_Clk: process (clk, reset, rd_counter_en)
	variable	acq_clk_temp	: 	std_logic :='0';
	begin
		if reset = '1' or rd_counter_en = '0' then
			acq_clk_temp := '0';
		elsif clk'event and clk = '1' then
			acq_clk_temp := not acq_clk_temp;
		end if;
	acq_clk <= acq_clk_temp;
end process Gen_Acq_Clk;

SClock <= acq_clk;
SReady <= rd_counter_en;

-- Instantiate the shift registers and create a data bus	
-- read the A/D data bits into shift register for each Head Stage
-- we need a shift reg for each A/D, because they run concurrently
-- it doesn't hurt to run them if there is no HS attached, it will
-- convert anyway
HS0: Analog_Chan_Iface PORT MAP(acq_clk, Sdata(0), HS0data);
HS1: Analog_Chan_Iface PORT MAP(acq_clk, Sdata(1), HS1data);
HS2: Analog_Chan_Iface PORT MAP(acq_clk, Sdata(2), HS2data);
HS3: Analog_Chan_Iface PORT MAP(acq_clk, Sdata(3), HS3data);
HS4: Analog_Chan_Iface PORT MAP(acq_clk, Sdata(4), HS4data);
HS5: Analog_Chan_Iface PORT MAP(acq_clk, Sdata(5), HS5data);
	
----------this next section makes a tristate buffer mux for the outputs from each of
----------the HS buffers muxing them onto the singel 'data' bus that will go to memory
mux_HS: process (data_en,hs_count, Hs0Data, HS1Data, HS2Data, HS3Data, HS4Data, HS5Data)
begin
		HS0_tri <= (others => 'Z');
		HS1_tri <= (others => 'Z');
		HS2_tri <= (others => 'Z');
		HS3_tri <= (others => 'Z');
		HS4_tri <= (others => 'Z');
		HS5_tri <= (others => 'Z');
		
		if data_en = '1' then
			case hs_count is
				when "000" =>
					HS0_tri <= HS0Data;
				when "001" =>
					HS1_tri <= HS1Data;
				when "010" =>
					HS2_tri <= HS2Data;
				when "011" =>
					HS3_tri <= HS3Data;
				when "100" =>
					HS4_tri <= HS4Data;
				when "101" =>
					HS5_tri <= HS5Data;
				when others =>
					HS0_tri <= HS0Data;
				end case;
		end if;
	end process mux_HS;

-- These are all assigned to data, this and the case statement above 
-- make 'data' a tri-state bus.	
data <= HS0_tri;
data <= HS1_tri;
data <= HS2_tri;
data <= HS3_tri;
data <= HS4_tri;
data <= HS5_tri;
atod_data_bus <= data;
end structural;
