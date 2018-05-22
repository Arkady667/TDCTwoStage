----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2018 01:47:43 PM
-- Design Name: 
-- Module Name: SRDelayLines - Behavioral
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

entity SRDelayLines is
  Port (
  		iClk 	 : in std_logic;
  		iReset	 : in std_logic;
  		iSRDelay : in std_logic_vector((2*VDL_LENGTH-3) downto 0);
  		oSRDelay : out std_logic_vector((2*VDL_LENGTH-3) downto 0)
  		);
end SRDelayLines;

architecture Behavioral of SRDelayLines is

begin

	SRDL: for i in 0 to (2*VDL_LENGTH-3) generate
		SRDL_cmp: ShiftRegister port map(
			D 		=> iSRDelay(i downto i),
			CLK 	=> iClk,
			SCLR 	=> iReset,
			Q 		=> oSRDelay(i downto i)
			);

	end generate;


end Behavioral;
