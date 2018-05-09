----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.01.2017 10:17:58
-- Design Name: 
-- Module Name: Baud_gen - Behavioral
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BaudGen is
    Port (
        iClk 	: in  STD_LOGIC;
        iRst  	: in  STD_LOGIC;
        oClk	: out STD_LOGIC
    );
end BaudGen;

architecture Behavioral of BaudGen is
    signal temp: STD_LOGIC;
    signal counter : integer range 0 to 162 := 0;
begin
    frequency_divider: process (iRst, iClk ) begin
        if (iRst = '1') then
            temp <= '0';
            counter <= 0;
        elsif rising_edge(iClk ) then
            if (counter = 162) then
                temp <= NOT(temp);
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
    
    oClk <= temp;
end Behavioral;