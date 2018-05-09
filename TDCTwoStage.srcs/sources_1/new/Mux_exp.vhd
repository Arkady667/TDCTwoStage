----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2018 01:40:02 PM
-- Design Name: 
-- Module Name: Mux_exp - Behavioral
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

library xil_defaultlib;
    use xil_defaultlib.TDC_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_exp is
    port (
     iMux : in matrix(0 to inputsNumber-2);
     iSel : in std_logic_vector(inputsNumber-1 downto 0);
     oMux : out std_logic_vector(inputsWidth-1 downto 0)
    );
end Mux_exp;


architecture Behavioral of Mux_exp is

    --procedure writeData (
    --		thermoCode 			  : out std_logic_vector(31 downto 0);
    --		constant numberOfOnes : integer := 0  -- MAX 32
    --	)
    --	is
    --		variable outputData : std_logic_vector(31 downto 0) := (others => '0');
    --	begin
    --		for N in 0 to numberOfOnes-1 loop
    --			outputData(N) := '1';
    --		end loop;
    --		thermoCode := outputData;
    --end writeData;

begin

	with iSel select
		oMux <= iMux(0) when "10000000",
				iMux(1) when "11000000",
				iMux(2) when "11100000",
				iMux(3) when "11110000",
				iMux(4) when "11111000",
				iMux(5) when "11111100",
				iMux(6) when "11111110",
				"00"	when others;

end Behavioral;
