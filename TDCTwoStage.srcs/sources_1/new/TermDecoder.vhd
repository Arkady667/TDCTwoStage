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
--library UNISIM;
--use UNISIM.VComponents.all;

library xil_defaultlib;
    use xil_defaultlib.TDC_pkg.all;

entity TermDecoder is
  	Port ( 
  		iData : in std_logic_vector(7 downto 0);
  		oData : out std_logic_vector(2 downto 0)
    );
end TermDecoder;

architecture Behavioral of TermDecoder is

begin

	DECODER: process(iData)
			 begin
			 	case iData is
			 		when "00000000" => oData <= "000";
			 		when "10000000" => oData <= "001";
			 		when "11000000" => oData <= "010";
			 		when "11100000" => oData <= "011";
			 		when "11110000" => oData <= "100";
			 		when "11111000" => oData <= "101";
			 		when "11111100" => oData <= "110";
			 		when "11111110" => oData <= "111";
			 		when others		=> oData <= "000";
			 	end case;
			 end process;

end Behavioral;
