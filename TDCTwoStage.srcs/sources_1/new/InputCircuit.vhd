----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2018 03:21:41 PM
-- Design Name: 
-- Module Name: InputCircuit - Behavioral
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

entity InputCircuit is
    Port ( 
    	iReset	: in std_logic;
    	iStart  : in std_logic;
    	iStop	: in std_logic;
    	oStart	: out std_logic;
    	oStop	: out std_logic
    	);
end InputCircuit;

architecture Behavioral of InputCircuit is

begin

	P_START: process(iStart,iReset)
	begin
		if (iReset='1') then
			oStart <= '0';		
			if (rising_edge(iStart)) then
				oStart <= '1';
			end if;
		end if;
	end process;

	P_STOP: process(iStop,iReset)
	begin
		if (iReset='1') then
			oStop <= '0';	
			if (rising_edge(iStop)) then
				oStop <= '1';
			end if;
		end if;
	end process;


end Behavioral;
