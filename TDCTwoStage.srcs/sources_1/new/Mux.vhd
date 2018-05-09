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

library xil_defaultlib;
use xil_defaultlib.TDC_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux is
	generic (
		inputsNumber : integer := 8;
		inputsWidth  : integer := 2
	);
    port ( 
    	iMux : in  matrix(0 to inputsNumber-2);
    	iSel : in  std_logic_vector(inputsNumber-1 downto 0);
    	oMux : out std_logic_vector(inputsWidth-1 downto 0)
    );

end Mux;

architecture Behavioral of Mux is

begin

	 Mux: for i in inputsWidth-1 downto 0 generate
          	oMux(i) <= iMux(iSel, i);
          end generate Mux;


end Behavioral;
