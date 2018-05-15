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
     iMux : in std_logic_vector((2*VDL_LENGTH-3) downto 0) := (others => '0');
     iSel : in std_logic_vector(VDL_LENGTH-1 downto 0);	
     --iEN  : in std_logic;
     oMux : out std_logic_vector(1 downto 0)
    );
end Mux_exp;


architecture Behavioral of Mux_exp is


	signal temp : std_logic_vector(1 downto 0);
	signal SelWithEn  : std_logic_vector(VDL_LENGTH downto 0); 

 --   procedure thermoCode (
	--	sel 			  : out std_logic_vector(VDL_LENGTH-1 downto 0);
	--	constant numberOfOnes : integer := 0  -- MAX 32
	--)
	--is
	--	variable outputData : std_logic_vector(31 downto 0) := (others => '0');
	--begin
	--	for N in 0 to numberOfOnes-1 loop
	--		outputData(N) := '1';
	--	end loop;
	--	sel := outputData;
	--end thermoCode;

begin
	

	--SelWithEn <= iEN & iSel;

	with iSel select --SelWithEn
		oMux <= iMux(1 downto 0)  	when "100000000000000000000000000000001",
				iMux(3 downto 2) 	when "100000000000000000000000000000011",
				iMux(5 downto 4) 	when "100000000000000000000000000000111",
				iMux(7 downto 6) 	when "100000000000000000000000000001111",
				iMux(9 downto 8) 	when "100000000000000000000000000011111",
				iMux(11 downto 10) 	when "100000000000000000000000000111111",
				iMux(13 downto 12)	when "100000000000000000000000001111111",
				iMux(15 downto 14)	when "100000000000000000000000011111111",
				iMux(17 downto 16)	when "100000000000000000000000111111111",
				iMux(19 downto 18)	when "100000000000000000000001111111111",
				iMux(21 downto 20)	when "100000000000000000000011111111111",
				iMux(23 downto 22)	when "100000000000000000000111111111111",
				iMux(25 downto 24)	when "100000000000000000001111111111111",
				iMux(27 downto 26)	when "100000000000000000011111111111111",
				iMux(29 downto 28)	when "100000000000000000111111111111111",
				iMux(31 downto 30)	when "100000000000000001111111111111111",
				iMux(33 downto 32)  when "100000000000000011111111111111111",
				iMux(35 downto 34) 	when "100000000000000111111111111111111",
				iMux(37 downto 36) 	when "100000000000001111111111111111111",
				iMux(39 downto 38) 	when "100000000000011111111111111111111",
				iMux(41 downto 40) 	when "100000000000111111111111111111111",
				iMux(43 downto 42)	when "100000000001111111111111111111111",
				iMux(45 downto 44)	when "100000000011111111111111111111111",
				iMux(47 downto 46)	when "100000000111111111111111111111111",
				iMux(49 downto 48)	when "100000001111111111111111111111111",
				iMux(51 downto 50)	when "100000011111111111111111111111111",
				iMux(53 downto 52)	when "100000111111111111111111111111111",
				iMux(55 downto 54)	when "100001111111111111111111111111111",
				iMux(57 downto 56)	when "100011111111111111111111111111111",
				iMux(59 downto 58)	when "100111111111111111111111111111111",
				iMux(61 downto 60)	when "101111111111111111111111111111111",
				"00"	when others;


	--MAIN: process(temp)
	--	begin
	--		if (temp = "11") then
	--			oMux <= temp;
	--		else 
	--			oMux <= "00";
	--		end if;
	--end process;

	--oMux <= temp;

end Behavioral;
