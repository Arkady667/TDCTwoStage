----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2018 05:00:38 PM
-- Design Name: 
-- Module Name: SynchVDL - Behavioral
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

entity SynchVDL is
	PORT (
		    D : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		    CLK : IN STD_LOGIC;
		    SCLR : IN STD_LOGIC;
		    Q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
		  );
end SynchVDL;

architecture Behavioral of SynchVDL is

begin

	process (CLK, SCLR)
		begin
			  if (SCLR = '1')then
			 	Q <= "00000";
			  elsif (CLK'event and CLK='1') then
			 	Q <= D;
			 end if;
	end process;


end Behavioral;
