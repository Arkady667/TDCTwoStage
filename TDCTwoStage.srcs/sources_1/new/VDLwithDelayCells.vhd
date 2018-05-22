----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/23/2018 10:02:43 AM
-- Design Name: 
-- Module Name: TDL - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
	use UNISIM.VComponents.all;

library xil_defaultlib;
    use xil_defaultlib.TDC_pkg.all;

entity VDL is
	generic (
		DELAY_CELLS: integer := 6;
		LENGTH : integer := 70			-- 64 + DELAY CELLS		
	);
  	port (
  		iLatch 	: in std_logic;
  		iLut	: in std_logic;
  		iReset	: in std_logic;
  		--oVDL	: out matrix(0 to LENGTH-2); -- (2*LENGTH-3)	16, -2 for last delay element ,-1 downto 0  -- FOR SIMULATION PURPOSE 
  		oData	: out std_logic_vector(VDL_LENGTH-1 downto 0); --avoiding first 6  delay cells
		oVDL    : out std_logic_vector(((2*(VDL_LENGTH-DELAY_CELLS)-1)) downto 0) --avoiding last 6  delay cells
  	);
end VDL;

architecture Behavioral of VDL is

signal luts			: std_logic_vector(LENGTH-1 downto 0);
signal latchLine 	: std_logic_vector(LENGTH-1 downto 0);
signal oNand		: std_logic_vector(LENGTH-2 downto 0);
signal merged		: std_logic_vector(((2*(VDL_LENGTH-DELAY_CELLS)-1)) downto 0);

attribute dont_touch 	: string;
attribute dont_touch of merged  : signal is "true";
--attribute dont_touch of iLut  : signal is "true";
attribute gated_clock : string;
attribute gated_clock of iLut : signal is "true";



begin
	-- delayedLuts <= luts transport after 43 ps; ??? sprawidzc

	DL: for i in 0 to LENGTH-1 generate
		LUT_init: if i = 0 generate
			cmp_1LUT: LUT2
		    generic map (
		        INIT => x"8") --AND
		    port map (
		        O => luts(0), -- LUT general output 
		        I0 => iLut,
		        I1 => iLut
		    );
		 end generate;

		LUT_next: if i > 0 generate
			cmp_1LUT: LUT2
		    generic map (
		        INIT => x"8")
		    port map (
		        O => luts(i), -- LUT general output
		        I0 => luts(i-1), -- LUT input
		        I1 => luts(i-1)
		    );

		end generate;
	end generate;

	LATCH_TAPS: for j in 0 to LENGTH-1 generate
		LATCH_init: if j = 0 generate
			LATCH_first: LDCE
			generic map (
				INIT => '0') -- Initial value of latch ('0' or '1')
			port map (
				Q => latchLine(0), -- Data output
				CLR => iReset, -- Asynchronous clear/reset input
				D => iLatch, -- Data input
				G => luts(0), -- Gate input
				GE => '1' -- Gate enable input
			);
		end generate;

		LATCH_next: if j > 0 generate
			LATCH: LDCE
			generic map (
				INIT => '0') -- Initial value of latch ('0' or '1')
			port map (
				Q => latchLine(j), -- Data output
				CLR => iReset, -- Asynchronous clear/reset input
				D => latchLine(j-1), -- Data input
				G => luts(j), -- Gate input
				GE => '1' -- Gate enable input
			);
		end generate;
	end generate;

	NAND_OUT: for k in 0 to (LENGTH-DELAY_CELLS) generate
		NAND_init: if k = 0 generate
			oNand(0) <= latchLine(0) and (not latchLine(1));
		end generate;

		NAND_next: if k > 0 and k <= (LENGTH-DELAY_CELLS-1)  generate
			oNand(k) <= latchLine(k) and (not latchLine(k+1));
		end generate;
		
	end generate;

	-- merging signals
		--merged(1 downto 0) 		<= luts(0) & oNand(0);
		--merged(3 downto 2) 		<= luts(1) & oNand(1);
		--merged(5 downto 4) 		<= luts(2) & oNand(2);
		--merged(7 downto 6) 		<= luts(3) & oNand(3);
		--merged(9 downto 8) 		<= luts(4) & oNand(4);
		--merged(11 downto 10) 	<= luts(5) & oNand(5);
		--merged(13 downto 12) 	<= luts(6) & oNand(6);

	merged(1 downto 0)	<= oNand(0) & luts(0) ;
	MUX_IN: for l in 1 to (LENGTH-1-DELAY_CELLS) generate
		merged(2*l+1 downto 2*l) <= oNand(l) & luts(l);
	end generate;



	oData <= latchLine; 
	oVDL <= merged; 

end Behavioral;


 
