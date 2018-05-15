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
  		iDetector : in std_logic_vector((2*VDL_LENGTH-3) downto 0);
  		oEN 	  : out std_logic
  	);
end EdgeDetector;

architecture Behavioral of EdgeDetector is

	Signal inputDetector : EdgeDetectorType((2*VDL_LENGTH-2) downto 0); -- +1 all zeros vector

begin
	
	--inputDetector <= iDetector;

	--PROC: process(iDetector)
	--		variable result : std_logic;
	--	begin
	--		for i in inputDetector'range loop
	--			if iDetector(i) = '1' then
	--	    		result := '1';
	--	    	end if;
	--	    	if iDetector(i) = '0' then
	--	    		result := '0';
	--	    	end if;
	--		end loop;
	--			oEN <= result; 
	--end process;

	--when iDetector select
	--		oEN <= '0' when x"000000000000000" & "00",
	--			   '1' when others;

	--oEN <= '0' when iDetector = x"0000000000000000" else '1';

	SIG_GEN: for i in iDetector'range generate
		SIG_GEN_init: if i = 0 generate
			inputDetector(0) <= (others => '0');	
		end generate;

		SIG_GEN_next: if i > 0 generate
			inputDetector(i) <= (i => '1', others => '0');	
		end generate;
	end generate;

	ED_GEN: for j in iDetector'range generate
		with inputDetector select
			oEN <= '0' when inputDetector(j),
				   '1' when others;

	end generate;

		--oEN <= '0' when iDetector = (others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else
		--   '0' when iDetector = (0 => '1', others => '0') else '1';

	--oEN <= or_reduce(iDetector);

end Behavioral;
