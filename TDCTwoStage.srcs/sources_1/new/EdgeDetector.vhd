----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2018 08:56:17 PM
-- Design Name: 
-- Module Name: EdgeDetector - Behavioral
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
	use ieee.std_logic_misc.all;

library xil_defaultlib;
    use xil_defaultlib.TDC_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EdgeDetector is
  Port ( 
  		iDetector : in std_logic_vector(((2*(VDL_LENGTH-DELAY_CELLS)-1)) downto 0);
  		oEN 	  : out std_logic
  	);
end EdgeDetector;

architecture Behavioral of EdgeDetector is

	

begin
	


end Behavioral;
