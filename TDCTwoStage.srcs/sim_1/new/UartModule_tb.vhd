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
  	constant TDL_DATA : integer := 6;
	constant PERIOD	  : integer := 10; 

	signal iVDL 		: std_logic_vector(VDL_DATA-1 downto 0):="00000";
  	signal iTDL 		: std_logic_vector(TDL_DATA-1 downto 0):="000000";
    signal iClk		 	: std_logic;
    signal iReady		: std_logic;
    --signal clk_in1_n 	: std_logic;
    signal iReset		: std_logic;
  	signal oTx  		: std_logic;


begin
	
    P_ClkP : process
    begin
        iClk <= '0';
        wait for (PERIOD / 2) * ns;
        iClk <= '1';
        wait for (PERIOD / 2) * ns;
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

	  	procedure TDLFifoData (
			--iData : std_logic_vector(4 downto 0);  	
			Data : out std_logic_vector(TDL_DATA-1 downto 0);
			constant DataValue : integer := 0
	  	) is
	  		variable DataPulsOne : integer :=0;
	  	begin
	  		DataPulsOne := DataValue*2;
	  		Data := std_logic_vector(to_unsigned(DataPulsOne, Data'length));
	  	end TDLFifoData;

	  	variable iDataVDL : std_logic_vector(VDL_DATA-1 downto 0);
	  	variable iDataTDL : std_logic_vector(TDL_DATA-1 downto 0);
	  	variable sim 	  : integer := 0;

	begin
		--init
		--iReset <= '1';
		--wait for 0.5 ms;
		iVDL <= "00000";
		iTDL <= "000000";
		iReady <= '1';
		iReset <= '0';
		wait for 10 ns;

		-- filling FIFOs

		for i in 1 to 20 loop 
			VDLFifoData(iDataVDL, i);
			iVDL <= iDataVDL;
			--wait for 2 ns;
			TDLFifoData(iDataTDL, i); -- +1
			iTDL <= iDataTDL;
			wait for 10 ns;	-- co tyle nowy pomiar (10 ns)
		end loop;

		wait for 3 ms;
		iReset <= '1';
		iReady <= '0';
		wait for 1 ms;
		iReset <= '0';
		wait for 1 ms;
		--sim := sim + 1;

		--if (sim = 2) then		
			--assert false report "end of simulation" severity failure;
		--end if;

	end process;

	I_DUT: entity xil_defaultlib.UartModule
		--generic map (
	 -- 		VDL_DATA => 5,
	 -- 		TDL_DATA => 5
	 -- 	)
		port map(
			iVDL		=> iVDL,
			iTDL		=> iTDL,
			iClk		=> iClk,
			iReady  	=> iReady,
			iReset		=> iReset,
			oTx 		=> oTx
		);

end Behavioral;