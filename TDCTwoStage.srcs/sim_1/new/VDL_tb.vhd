----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2018 10:43:29 AM
-- Design Name: 
-- Module Name: VDL_tb - Behavioral
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
library UNISIM;
	use UNISIM.VComponents.all;

library xil_defaultlib;
    use xil_defaultlib.TDC_pkg.all;

entity VDL_tb is
end VDL_tb;

architecture Behavioral of VDL_tb is

		constant LENGTH : integer := 64;

		signal	iLatch 	:  std_logic;
	  	signal	iLut	:  std_logic;
	  	signal  iReset	: std_logic;
		--signal	oVDL	:  matrix(0 to VDL_LENGTH-2);
		signal	oVDL	: std_logic_vector((2*VDL_LENGTH-3) downto 0);
		signal  oData 	: std_logic_vector(LENGTH-1 downto 0);
		--signal	outputSim  :  std_logic_vector((2*LENGTH-3) downto 0);
		--signal  oGates	:  std_logic_vector(LENGTH-2 downto 0);



begin



	MAIN: process
		begin
		
        --init
        iReset <= '0';
        wait for 1 ns;
	    iLut <= '0';
        iLatch <= '0';
        wait for 2 ns;
        
        --Start
        iLatch <= '1';
        
        --Stop
        wait for 2 ns;  --TI
        iLut <= '1';
        
        --end
        iReset <= '1';
        wait for 30 ns;

        
		assert false report "end of simulation" severity failure;

		
	end process; 

	I_DUT: entity xil_defaultlib.VDL
		port map(
			iLatch 	=> iLatch,
	  		iLut	=> iLut,
	  		iReset  => iReset,
	  		oData   => oData,
	  		oVDL	=> oVDL
	  		--oLut	=> oLut,
	  		--oGates  => oGates
	  		--outputSim  => outputSim
		);

end Behavioral;
