----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/08/2018 05:38:17 PM
-- Design Name: 
-- Module Name: UartModule - Behavioral
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

entity UartModule is
  generic (
  		VDL_DATA : integer := 5;
  		TDL_DATA : integer := 6
  	);
  Port (
  		iVDL 		: in std_logic_vector(VDL_DATA-1 downto 0):="00000";
  		iTDL 		: in std_logic_vector(TDL_DATA-1 downto 0):="000000";
        iClk 		: in std_logic;
        iReady 		: in std_logic_vector(0 downto 0);
        iReset		: in std_logic;
        oTDCReset	: out std_logic; 
  		oTx  		: out std_logic
  		);
end UartModule;

architecture Behavioral of UartModule is
	
	--CLK signals
	signal Clk : std_logic;

	--Fifo signal
	signal iVDLData : std_logic_vector(VDL_DATA-1 downto 0):="00000";
	signal iTDLData : std_logic_vector(TDL_DATA-1 downto 0):="000000";

	signal oFifoVDLData : std_logic_vector(VDL_DATA-1 downto 0);
	signal oFifoTDLData : std_logic_vector(TDL_DATA-1 downto 0);

	signal VDLFull		: std_logic;
	signal TDLFull		: std_logic;

	signal VDLEmpty		: std_logic;
	signal TDLEmpty		: std_logic;

	signal WrEnVDL		: std_logic;
	signal WrEnTDL		: std_logic;

	signal RdEnVDL		: std_logic;
	signal RdEnTDL		: std_logic;

	--UART signals
	signal txReady : std_logic;
	signal startTx : std_logic;

	--MUX signals
	signal iSelect		: std_logic; 
	signal iUartData 	: std_logic_vector(TDL_DATA-1 downto 0);

	--Control signals
	signal ControlReset : std_logic;
	signal RstCtrl 		: std_logic;

	--Synchronizators signals
	signal oSynchVDL : std_logic_vector(4 downto 0);
	signal oSynchTDL : std_logic_vector(5 downto 0);


	attribute keep_hierarchy : string;
	attribute dont_touch : string;

    attribute dont_touch of iVDLData  : signal is "true";
    attribute dont_touch of iTDLData  : signal is "true";
    attribute dont_touch of oFifoVDLData  : signal is "true";
    attribute dont_touch of oFifoTDLData  : signal is "true";
    attribute dont_touch of iUartData  : signal is "true";

	--attribute keep_hierarchy of FifoVDL_cmp : label is "yes";        --SIM
	attribute keep_hierarchy of MuxUart_cmp : label is "yes";
	attribute keep_hierarchy of Uart_cmp : label is "yes";
	attribute keep_hierarchy of Control_cmp : label is "yes";





begin
	
	iVDLData <= iVDL;
	iTDLData <= iTDL;
	--iFifoData <= iVDL & iTDL;

	--iVDLData(5) <= '0'; -- constant 0 cause ony 5 bits of data are comming from VDL Decoder


	--Clk_cmp: clk_wiz_0 port map (
	--	clk_out1 	=> Clk,
	--	reset 	  	=> iReset,
	--	clk_in1_p	=> clk_in1_p,
	--	clk_in1_n	=> clk_in1_n
	--);

	SynchVDL_cmp: SynchVDL port map(
			D 	 	=> iVDLData,
			CLK 	=> iClk,
			SCLR	=> ControlReset,
			Q 		=> oSynchVDL
		);


	SynchTDL_cmp: SynchTDL port map(
			D 	 	=> iTDLData,
			CLK 	=> iClk,
			SCLR	=> ControlReset,
			Q 		=> oSynchTDL,
			oReset  => oTDCReset
		);


	FifoVDL_cmp: FifoVDL port map (
			clk  	=> iClk,
			rst 	=> ControlReset,
			din 	=> oSynchVDL,
			wr_en 	=> WrEnVDL,		--control 
			rd_en 	=> RdEnVDL,		--control
			dout 	=> oFifoVDLData,
			full 	=> VDLFull,
			empty 	=> VDLEmpty
		);

	FifoTDL_cmp: FifoTDL port map (
			clk  	=> iClk,
			rst 	=> ControlReset,
			din 	=> oSynchTDL,
			wr_en 	=> WrEnTDL, 	--control 
			rd_en 	=> RdEnTDL, 	--control 
			dout 	=> oFifoTDLData,
			full 	=> TDLFull,
			empty 	=> TDLEmpty
		);


	Uart_cmp: tUart port map(
			data_out	=> oTx,
			tx_ready	=> txReady,
			start 		=> startTx, -- control
			data_in		=> iUartData,
			reset 		=> ControlReset,
			clk 		=> iClk
			--oRstCtrl	=> RstCtrl

		);	

	MuxUart_cmp: MuxUart port map(
		   iFifoVDL  => oFifoVDLData,
           iFifoTDL  => oFifoTDLData,
           iSel 	 => iSelect,	--control
           oUartData => iUartData

		);

	Control_cmp: Control port map(
			iClk		=> iClk,
	    	iRst		=> iReset, 
	    	iVDLFull 	=> VDLFull,
	    	iVDLEmpty	=> VDLEmpty,
	    	iTDLFull 	=> TDLFull,
	    	iTDLEmpty	=> TDLEmpty,
	    	iReady 		=> iReady,
	    	iTxReady	=> txReady,
	    	oSelMux		=> iSelect,
	    	oWrEnVDL	=> WrEnVDL,
	    	oWrEnTDL	=> WrEnTDL,
	    	oRdEnVDL	=> RdEnVDL,
	    	oRdEnTDL	=> RdEnTDL,
	    	oStartTx	=> startTx,
	    	oReset		=> ControlReset 
		);

	--CTRL: process(iVDL, VDLFull)
	--	begin
	--		if iVDL /= "00000" then
	--			WrEnVDL <= '1';

	--		end if;

	--		if VDLFull = '1' then
	--			RdEnVDL <= '1';
	--		end if;


	--end process;

end Behavioral;
