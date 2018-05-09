----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2018 02:59:08 PM
-- Design Name: 
-- Module Name: TDC_tb - Behavioral
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
	use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library xil_defaultlib;
    use xil_defaultlib.TDC_pkg.all;

entity Mux_tb is
end Mux_tb;

architecture Behavioral of Mux_tb is

	--PORTS
	signal iMux :  matrix(0 to inputsNumber-2);
  	signal iSel :  std_logic_vector(inputsNumber-1 downto 0);
  	signal oMux :  std_logic_vector(inputsWidth-1 downto 0)

	--CLK
    signal Clk 			: std_logic;
    constant CLKPERIOD  : natural := 20;

    procedure writeData (
    		thermoCode 			  : out std_logic_vector(31 downto 0);
    		constant numberOfOnes : integer := 0  -- MAX 32
    	)
    	is
    		variable outputData : std_logic_vector(31 downto 0) := (others => '0');
    	begin
    		for N in 0 to numberOfOnes-1 loop
    			outputData(N) := '1';
    		end loop;
    		thermoCode := outputData;
    end writeData;
    


begin

	-- SIM PROCESS

	P_MAIN: process
  
		begin


	end process;


	--DUT

	I_DUT: entity xil_defaultlib.Mux_tb
		port map(
			iMux 	=> iMuxData,
		    iSel 	=> oVDLData,
		    oMux 	=> oMuxData
		);

end Behavioral;
