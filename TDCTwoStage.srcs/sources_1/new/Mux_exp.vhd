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
library UNISIM;
	use UNISIM.VComponents.all;

entity Mux_exp is
    port (
     iMux : in std_logic_vector((2*VDL_LENGTH-3) downto 0) := (others => '0');
     iSel : in std_logic_vector(VDL_LENGTH-1 downto 0);	
     --iEN  : in std_logic;
     oMux : out std_logic_vector(1 downto 0)
    );

    --attribute clock_buffer_type : string;
	--attribute clock_buffer_type of oMux(1 downto 0) : signal is "bufr";
end Mux_exp;


architecture Behavioral of Mux_exp is


	signal temp : std_logic_vector(1 downto 0);
	signal SelWithEn  : std_logic_vector(VDL_LENGTH downto 0); -- without -1 in case edge detector
	signal iMuxReg 	  : std_logic_vector((2*VDL_LENGTH-3) downto 0);
	signal oMuxReg 	  : std_logic_vector((2*VDL_LENGTH-3) downto 0);

	attribute dont_touch : string;
	--attribute keep : string;
	--attribute keep of iMuxReg  : signal is "true";
  

    attribute gated_clock : string;
	attribute gated_clock of iMux : signal is "true";

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
	
	--iMuxReg <= iMux;

	--MUX_REG: for i in 0 to (2*VDL_LENGTH-3) generate
	--	REG_cmp : FDRE
	--	generic map (
	--		INIT => '0') -- Initial value of register ('0' or '1')
	--	port map (
	--		Q => oMuxReg(i), -- Data output
	--		C => iMux(i), -- Clock input
	--		CE => '1', -- Clock enable input
	--		R => '1', -- Synchronous reset input
	--		D => '1' -- Data input
	--	);
	--end generate;


	-- 32 VDL

	with iSel select 
		oMux <= iMux(1 downto 0)  	when "00000000000000000000000000000001",
				iMux(3 downto 2) 	when "00000000000000000000000000000011",
				iMux(5 downto 4) 	when "00000000000000000000000000000111",
				iMux(7 downto 6) 	when "00000000000000000000000000001111",
				iMux(9 downto 8) 	when "00000000000000000000000000011111",
				iMux(11 downto 10) 	when "00000000000000000000000000111111",
				iMux(13 downto 12)	when "00000000000000000000000001111111",
				iMux(15 downto 14)	when "00000000000000000000000011111111",
				iMux(17 downto 16)	when "00000000000000000000000111111111",
				iMux(19 downto 18)	when "00000000000000000000001111111111",
				iMux(21 downto 20)	when "00000000000000000000011111111111",
				iMux(23 downto 22)	when "00000000000000000000111111111111",
				iMux(25 downto 24)	when "00000000000000000001111111111111",
				iMux(27 downto 26)	when "00000000000000000011111111111111",
				iMux(29 downto 28)	when "00000000000000000111111111111111",
				iMux(31 downto 30)	when "00000000000000001111111111111111",
				iMux(33 downto 32)  when "00000000000000011111111111111111",
				iMux(35 downto 34) 	when "00000000000000111111111111111111",
				iMux(37 downto 36) 	when "00000000000001111111111111111111",
				iMux(39 downto 38) 	when "00000000000011111111111111111111",
				iMux(41 downto 40) 	when "00000000000111111111111111111111",
				iMux(43 downto 42)	when "00000000001111111111111111111111",
				iMux(45 downto 44)	when "00000000011111111111111111111111",
				iMux(47 downto 46)	when "00000000111111111111111111111111",
				iMux(49 downto 48)	when "00000001111111111111111111111111",
				iMux(51 downto 50)	when "00000011111111111111111111111111",
				iMux(53 downto 52)	when "00000111111111111111111111111111",
				iMux(55 downto 54)	when "00001111111111111111111111111111",
				iMux(57 downto 56)	when "00011111111111111111111111111111",
				iMux(59 downto 58)	when "00111111111111111111111111111111",
				iMux(61 downto 60)	when "01111111111111111111111111111111",
				"00"	when others;

	

end Behavioral;
