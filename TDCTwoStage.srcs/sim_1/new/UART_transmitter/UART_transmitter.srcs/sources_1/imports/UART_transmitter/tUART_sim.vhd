-------------------------------------------------------------------------------
--	FILE:			tUART_sim.vhd
--
--	DESCRIPTION:	UART Transmitter Simulation File (test bench). This file
--					simulates data transmitted at the following conditions:
--						baud  		: 115200
--						data  		: 8 bit
--					  	parity  	: none
--				   		stop bits  	: 1
--
--					The following data sequence shall be transmitted:
--					'HELLO'
--
--					The required simulation time is (694.330 uS)
--
-- 	ENGINEER:		Jordan Christman
-------------------------------------------------------------------------------
-- Libraries
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use std.textio.all ;
use ieee.std_logic_textio.all ;
use work.sim_mem_init.all;

-- Entity
entity tUART_sim is
end;

-- Architecture
architecture test of tUART_sim is
-- Our UART Transmitter Design Instantiation
component tUART
generic (
	baud 		: integer := 115200;	  -- We will be running at 115200 baud
	clk_rate	: integer := 100000000);  -- 100 MHz (BASYS 3 is 100 MHz)
port (
	data_out	: out std_logic;
	tx_ready	: out std_logic;
	start 		: in std_logic;
	data_in		: in std_logic_vector(7 downto 0);
	reset 		: in std_logic;
	clk 		: in std_logic);
end component;

-- Simulation Constatnts
constant baud_rate 		: integer := 115200;
constant clock_rate  	: integer := 100000000;	 -- 100 MHz

-- Simulation signals
signal Tx_sim 			: std_logic := '1';
signal Tx_ready_sim 	: std_logic := '1';
signal start_sim 		: std_logic := '0';
signal data_in_sim 		: std_logic_vector(7 downto 0);
signal reset_sim 		: std_logic := '0';
signal clk_sim 			: std_logic := '0';

begin
	-- UART Transmitter port mapping
	dev_to_test:  tUART
		generic map(baud_rate, clock_rate)
		port map(Tx_sim, Tx_ready_sim, start_sim, data_in_sim, 
				 reset_sim, clk_sim);
	
	-- Simulate the input clock to our design
	clk_proc : process
		begin
		wait for 10 ns;
		clk_sim <= not clk_sim;
	end process clk_proc;
	
	-- Simulate the stimulus's to our design
	stimulus:  process
	begin
	
		-- Pull reset high
		wait for 4 ns;
		reset_sim <= '1';
		
		-- Transmit 'H'
		data_in_sim <= x"48";
		start_sim <= '1';
		wait for 60 ns;
		start_sim <= '0';
		wait for 86806 ns;	-- transmission should be complete
		wait for 52000 ns;	-- delay should be complete (52us)
		
		-- Transmit 'E'
		data_in_sim <= x"45";
		start_sim <= '1';
		wait for 60 ns;
		start_sim <= '0';
		wait for 86806 ns;	-- transmission should be complete
		wait for 52000 ns;	-- delay should be complete (52us)
		
		-- Transmit 'L'
		data_in_sim <= x"4C";
		start_sim <= '1';
		wait for 60 ns;
		start_sim <= '0';
		wait for 86806 ns;	-- transmission should be complete
		wait for 52000 ns;	-- delay should be complete (52us)
		
		-- Transmit 'L'
		data_in_sim <= x"4C";
		start_sim <= '1';
		wait for 60 ns;
		start_sim <= '0';
		wait for 86806 ns;	-- transmission should be complete
		wait for 52000 ns;	-- delay should be complete (52us)
		
		-- Transmit 'O'
		data_in_sim <= x"4F";
		start_sim <= '1';
		wait for 60 ns;
		start_sim <= '0';
		wait for 86806 ns;	-- transmission should be complete
		wait for 52000 ns;	-- delay should be complete (52us)
		
		-- Total simulation time of 694.330 uS
		-- Report that UART Terminal has completed
		report "UART Terminal Test Completed!";
	end process stimulus;
end test;
