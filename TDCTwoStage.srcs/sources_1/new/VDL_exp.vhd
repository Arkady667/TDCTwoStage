

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

entity VDL_exp is
	generic (
		LENGTH : integer := 8
	);
  	port (
  		iLatch 	: in std_logic;
  		iLut	: in std_logic;
  		oLatch	: out std_logic_vector(LENGTH-2 downto 0);
  		oLut	: out std_logic_vector(LENGTH-1 downto 0)
  	);
end VDL_exp;

architecture Behavioral of VDL_exp is

signal luts			: std_logic_vector(LENGTH-1 downto 0);
signal latchLine 	: std_logic_vector(LENGTH-1 downto 0);
signal oNand		: std_logic_vector(LENGTH-2 downto 0);

attribute dont_touch 	: string;
attribute dont_touch of latchLine : signal is "true";
attribute dont_touch of luts : signal is "true";
--attribute dont_touch of oNand : signal is "true";

begin

	DL: for i in 0 to LENGTH-1 generate
		LUT_init: if i = 0 generate
			cmp_1LUT: LUT1
		    generic map (
		        INIT => "00")
		    port map (
		        O => luts(0), -- LUT general output
		        I0 => iLut
		    );
		 end generate;

		LUT_next: if i > 0 generate
			cmp_1LUT: LUT1
		    generic map (
		        INIT => "00")
		    port map (
		        O => luts(i), -- LUT general output
		        I0 => luts(i-1) -- LUT input
		    );

		end generate;
	end generate;

	LATCH_TAPS: for j in 0 to LENGTH-1 generate
		LATCH_init: if j = 0 generate
			process (iLatch, luts) begin
				 if (luts(0) = '1') then
					 latchLine(0) <= iLatch;
				 else
				 	latchLine(0) <= '0';
				 end if;
			end process;
		end generate;

		LATCH_next: if j > 0 generate
			 process (latchLine, luts) begin
				 if (luts(j) = '1') then
				 	latchLine(j) <= latchLine(j-1);
				 else
				 	latchLine(j) <= '0';
				 end if;
			end process;
		end generate;
	end generate;

	NAND_OUT: for k in 0 to LENGTH-1 generate
		NAND_init: if k = 0 generate
			oNand(0) <= latchLine(0) nand (not latchLine(1));
		end generate;

		NAND_next: if k > 0 and k <= LENGTH-2  generate
			oNand(k) <= latchLine(k) nand (not latchLine(k+1));
		end generate;
		
	end generate;



	oLatch <= oNand;
	oLut <= luts;

end Behavioral;


