----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2018 06:02:06 PM
-- Design Name:  
-- Module Name: Control_tb - Behavioral
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
	use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UartModule_tb is
end UartModule_tb;

architecture Behavioral of UartModule_tb is

	constant VDL_DATA : integer := 5;
  	constant TDL_DATA : integer := 5;
	constant PERIOD_P : integer := 10; 
	constant PERIOD_N : integer := 10; 

	signal iVDL 		: std_logic_vector(VDL_DATA-1 downto 0):="00000";
  	signal iTDL 		: std_logic_vector(TDL_DATA-1 downto 0):="00000";
    signal clk_in1_p 	: std_logic;
    signal clk_in1_n 	: std_logic;
    signal iReset		: std_logic;
  	signal oTx  		: std_logic;


begin
	
    P_ClkP : process
    begin
        clk_in1_p <= '0';
        wait for (PERIOD_P / 2) * ns;
        clk_in1_p <= '1';
        wait for (PERIOD_P / 2) * ns;
    end process;

    P_ClkN : process
    begin
        clk_in1_n <= '1';
        wait for (PERIOD_N / 2) * ns;
        clk_in1_n <= '0';
        wait for (PERIOD_N / 2) * ns;
    end process;


	P_SIM: process

		--procedure FifoData (
  --			--iData : in std_logic_vector(4 downto 0);  	
  --			oData : out std_logic_vector(4 downto 0);
  --			constant DataValue : integer := 0

	 -- 	) is
	 -- 	begin
	 -- 		oData := std_logic_vector(to_unsigned(DataValue, oData'length);
	 -- 	end procedure FifoData;

		procedure VDLFifoData (
			--iData : std_logic_vector(4 downto 0);  	
			Data : out std_logic_vector(VDL_DATA-1 downto 0);
			constant DataValue : integer := 0
	  	) is
	  	begin
	  		Data := std_logic_vector(to_unsigned(DataValue, Data'length));
	  	end VDLFifoData;

	  	variable iData : std_logic_vector(VDL_DATA-1 downto 0);

	begin
		--init
		iVDL <= "00000";
		iTDL <= "00000";
		iReset <= '0';
		wait for 10 ns;

		VDLFifoData(iData, 5);
		iVDL <= iData;

		wait for 100 ns;


		assert false report "end of simulation" severity failure;

	end process;

	I_DUT: entity xil_defaultlib.UartModule
		--generic map (
	 -- 		VDL_DATA => 5,
	 -- 		TDL_DATA => 5
	 -- 	)
		port map(
			iVDL		=> iVDL,
			iTDL		=> iTDL,
			clk_in1_p	=> clk_in1_p,
			clk_in1_n	=> clk_in1_n,
			iReset		=> iReset,
			oTx 		=> oTx
		);

end Behavioral;