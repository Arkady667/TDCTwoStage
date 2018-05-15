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

entity Mux_exp_tb is
end Mux_exp_tb;

architecture Behavioral of Mux_exp_tb is

	----PORTS
	--signal iMux :  std_logic_vector((2*VDL_LENGTH-3) downto 0);
 -- 	signal iSel :  std_logic_vector(VDL_LENGTH-1 downto 0);
 -- 	signal oMux :  std_logic_vector(1 downto 0);

	----CLK
 --   signal Clk 			: std_logic;
 --   constant CLKPERIOD  : natural := 20;



    --procedure timeInterval (
    --	inputData : out std_logic_vector((2*VDL_LENGTH-3) downto 0);
    --	--startSignal : in std_logic;
    --	--stopSignal : in std_logic;
    --	constant TiInput : integer := 1
    --) 
    --is
    --	begin
    --		--inputData(TiInput)(0) := '1';--startSignal;
    --		----wait for 1 ns;
    --		--inputData(TiInput)(1) := '1';--stopSignal;

    --		inputData := (TiInput downto TiInput-1 => "11", others => "01");

    --end procedure timeInterval;
    


begin

	-- SIM PROCESS

	--P_MAIN: process
 -- 			variable inputTI : std_logic_vector((2*VDL_LENGTH-3) downto 0);
	--	begin
	--		iSel <= "11111000";
	--		wait for 5 ns; 
	--		timeInterval(inputTI,4);
	--		iMux <= inputTI;
	--		wait for 2 ns;

	--		iSel <= "11100000";
	--		timeInterval(inputTI,4);
	--		iMux <= inputTI;
	--		wait for 2 ns;

	--		iSel <= "11111100";
	--		timeInterval(inputTI,5);
	--		iMux <= inputTI;
	--		wait for 2 ns;

	--		iSel <= "11100000";
	--		timeInterval(inputTI,2);
	--		iMux <= inputTI;
	--		wait for 2 ns;

	--		iSel <= "11111000";
	--		timeInterval(inputTI,2);
	--		iMux <= inputTI;
	--		wait for 2 ns;

	--		iSel <= "11111110";
	--		timeInterval(inputTI,6);
	--		iMux <= inputTI;
	--		wait for 2 ns;
			
	--		iSel <= "10000000";
	--		timeInterval(inputTI,0);
	--		iMux <= inputTI;
	--		wait for 2 ns;
			
	--		iSel <= "11000000";
	--		timeInterval(inputTI,0);
	--		iMux <= inputTI;
	--		wait for 2 ns;
			

	--end process;


	----DUT

	--I_DUT: entity xil_defaultlib.Mux_exp
	--	port map(
	--		iMux 	=> iMux,
	--	    iSel 	=> iSel,
	--	    oMux 	=> oMux
	--	);

end Behavioral;