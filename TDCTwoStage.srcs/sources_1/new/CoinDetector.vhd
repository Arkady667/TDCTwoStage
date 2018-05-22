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
library UNISIM;
	use UNISIM.VComponents.all;

entity CoinDetector is
  Port ( 
  		iDetector : in std_logic_vector(((2*(VDL_LENGTH-DELAY_CELLS)-1)) downto 0);
  		iReset	  : in std_logic;
  		oEN 	  : out std_logic
  	);
end CoinDetector;

architecture Behavioral of CoinDetector is

	signal enable:  std_logic_vector(((VDL_LENGTH-DELAY_CELLS)-1) downto 0);

begin
	
	DETECTOR: for j in 0 to ((VDL_LENGTH-DELAY_CELLS)-1) generate
		DETECTOR_init: if j = 0 generate
				REG : FDRE
			generic map (
				INIT => '0') -- Initial value of register ('0' or '1')
			port map (
				Q => enable(0), -- Data output
				C => iDetector(0), -- Clock input --SP
				CE => '1', -- Clock enable input	
				R => iReset, -- Synchronous reset input
				D => iDetector(1) -- Data input --ST
			);
		end generate;

		DETECTOR_next: if j > 0 generate
				REG : FDRE
			generic map (
				INIT => '0') -- Initial value of register ('0' or '1')
			port map (
				Q => enable(j), -- Data output
				C => iDetector(2*j), -- Clock input --SP
				CE => '1', -- Clock enable input
				R => iReset, -- Synchronous reset input
				D => iDetector(2*j+1) -- Data input --ST
			);
		end generate;
	end generate;

	oEN <= or_reduce(enable);

end Behavioral;
