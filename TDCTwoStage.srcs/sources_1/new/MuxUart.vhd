----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2018 06:20:53 PM
-- Design Name: 
-- Module Name: MuxUart - Behavioral
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

entity MuxUart is
    Port ( iFifoVDL  : in STD_LOGIC_VECTOR (4 downto 0);
           iFifoTDL  : in STD_LOGIC_VECTOR (4 downto 0);
           iSel 	 : in STD_LOGIC;
           oUartData : out STD_LOGIC_VECTOR (4 downto 0)
          );
end MuxUart;

architecture Behavioral of MuxUart is

begin

	with iSel select
		oUartData <= iFifoVDL when '1',
					 iFifoTDL when '0';


end Behavioral;
