`----------------------------------------------------------------------------------
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

entity ThermoTDL_tb is
end ThermoTDL_tb;

architecture Behavioral of ThermoTDL_tb is

	--PORTS
	signal iData  		: std_logic_vector(31 downto 0); -- (-1) !!!
  	signal oData  		: std_logic_vector(4 downto 0); -- 5 bit = 31 dec

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
    		variable thermoCode : std_logic_vector(31 downto 0);
		begin
			writeData(thermoCode,1);
			iData <= thermoCode;
			wait for 10 ns;
			writeData(thermoCode,11);
			iData <= thermoCode;
			wait for 10 ns;
			writeData(thermoCode,14);
			iData <= thermoCode;
			wait for 10 ns;
			writeData(thermoCode,30);
			iData <= thermoCode;
			wait for 10 ns;
			writeData(thermoCode,29);
			iData <= thermoCode;
			wait for 10 ns;
			writeData(thermoCode,0);
			iData <= thermoCode;
			wait for 10 ns; 
			writeData(thermoCode,32);
			iData <= thermoCode;
		    wait for 10 ns;
			writeData(thermoCode,31);
			iData <= thermoCode;
			wait for 10 ns;

	end process;


	--DUT

	I_DUT: entity xil_defaultlib.ThermoDecoderTDL 
		port map(
			iData => iData,
			oData => oData
		);

end Behavioral;
