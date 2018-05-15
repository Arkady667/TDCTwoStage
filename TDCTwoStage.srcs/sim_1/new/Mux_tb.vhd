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
  	signal oMux :  std_logic_vector(1 downto 0);

	--CLK
    signal Clk 			: std_logic;
    constant CLKPERIOD  : natural := 20;


    procedure muxData (
    	inputData : in matrix(0 to inputsNumber-2);
    	inputSel : in std_logic_vector(inputsNumber-1 downto 0)    
    ) 
    is
    	begin
    		
    end procedure muxData;

    procedure timeInterval (
    	inputData : out matrix(0 to inputsNumber-2);
    	--startSignal : in std_logic;
    	--stopSignal : in std_logic;
    	constant TiInput : integer := 0
    ) 
    is
    	begin
    		inputData(TiInput)(0) <= '1';--startSignal;
    		wait for 1 ns;
    		inputData(TiInput)(1) <= '1';--stopSignal;

    end procedure timeInterval;
    


begin

	-- SIM PROCESS

	P_MAIN: process
  			variable inputTI : matrix(0 to inputsNumber-2);
		begin
			iSel <= "11111000";
			wait for 5 ns; 
			timeInterval(inputTI,4);
			iMux <= inputTI;
			wait for 5 ns;
			iSel <= "11100000";
			


	end process;


	--DUT

	I_DUT: entity xil_defaultlib.Mux_tb
		port map(
			iMux 	=> iMux,
		    iSel 	=> iSel,
		    oMux 	=> oMux
		);

end Behavioral;