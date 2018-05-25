----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2018 05:00:38 PM
-- Design Name: 
-- Module Name: SynchTDL - Behavioral
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

entity SynchTDL is
		PORT (
		    D : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		    CLK : IN STD_LOGIC;
		    SCLR : IN STD_LOGIC;
		    Q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		    oReset : out STD_LOGIC
		  );
end SynchTDL;

architecture Behavioral of SynchTDL is

begin

	process (CLK, SCLR, D)
		begin
			  if (SCLR = '1') then
			 	Q <= "000000";
			  elsif (D = "000000") then
			 	oReset <= '0';
			  elsif (rising_edge(CLK) and D /= "000000") then
			 	Q <= D;
			 	oReset <= '1';
			 end if;
	end process;

	--process (D)
	--	begin
	--		  if (D = "000000")then
	--		 	oReset <= '0';
	--		 end if;
	--end process;

	--oReset <= start_count_lead and (not start_count_follow);

end Behavioral;
