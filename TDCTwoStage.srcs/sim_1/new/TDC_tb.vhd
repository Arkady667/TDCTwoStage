----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2018 02:59:08 PM
-- Design Name: 
-- Module Name: TDC_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
	use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library xil_defaultlib;
    use xil_defaultlib.TDC_pkg.all;

entity TDC_tb is
end TDC_tb;

architecture Behavioral of TDC_tb is

	signal iStart 		:  std_logic;
	signal iStop		:  std_logic;
	signal iReset		:  std_logic;
	-- decoder outputs
	signal oVDL			:  std_logic_vector(4 downto 0); 
	signal oTDL			:  std_logic_vector(4 downto 0);

begin

	P_STIM: process 
		begin
		     --init

		    iStart <= '0';
	        iStop <= '0';
	        wait for 2 ns;
	        
	        --Start
	        iStart <= '1';
	        
	        --Stop
	        wait for 2 ns;  --TI
	        iStop <= '1';

	        --Reset
	        wait for 10 ns;
	        iReset <= '1';
	        wait for 5 ns;
	       	iReset <= '0';
		    
	        --end
	        wait for 30 ns;
	        
			assert false report "end of simulation" severity failure;

	end process;


	I_DUT: entity xil_defaultlib.TDC
		port map(
			iStart 	=> iStart,
			iStop	=> iStop,
			iReset 	=> iReset,
			oVDL	=> oVDL,
			oTDL	=> oTDL
		);

end Behavioral;
