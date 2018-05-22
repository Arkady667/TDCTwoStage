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

entity TDL_tb is
end TDL_tb;

architecture Behavioral of TDL_tb is

		constant LENGTH : integer := 32;

		signal	iClk 	:  std_logic; --STOP (LUT VDL)
	  	signal	iTaps	:  std_logic;
	  	signal  iReset	: std_logic;
		signal  oData 	: std_logic_vector(LENGTH-1 downto 0);

begin



	MAIN: process
		begin
		
        --init
        iReset <= '0';
        wait for 1 ns;
	    iClk <= '0';
        iTaps <= '0';
        wait for 2 ns;
        
        --Start
        iTaps <= '1';
        
        --Stop
        wait for 20 ps;  --TI
        iClk <= '1';
        
        --end
        wait for 10 ns;
        iReset <= '1';
        wait for 10 ns;

        
		assert false report "end of simulation" severity failure;

		
	end process; 

	I_DUT: entity xil_defaultlib.TDL
		port map(
			iClk	=>  iClk,
			iTaps	=>  iTaps,
			iReset	=>	iReset, 
			oData	=>	oData
		);

end Behavioral;
