----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/23/2018 10:02:43 AM
-- Design Name: 
-- Module Name: TDL - Behavioral
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

entity TDC is
	--generic (
	--	TDLLength : integer :=8;
	--	VDLLength : integer :=32
	--);
    Port (
    	--clk_in1_n	: in std_logic;
    	--clk_in1_p	: in std_logic;
    	Clk 		: in std_logic;
    	iStart 		: in std_logic;
    	iStop		: in std_logic;
    	iReset		: in std_logic;
    	--oTx			: out std_logic
    	-- decoder outputs
    	oVDL		: out std_logic_vector(4 downto 0); 
    	oTDL		: out std_logic_vector(5 downto 0)	
    );

	attribute io_buffer_type : string;
	attribute clock_buffer_type : string;

	attribute io_buffer_type of iStart : signal is "ibuf";
	attribute io_buffer_type of iStop  : signal is "ibuf";
	attribute clock_buffer_type of iStart : signal is "none";
	attribute clock_buffer_type of iStop  : signal is "none";

end TDC;

architecture Behavioral of TDC is
	--InputCircuit signals
	signal oStart : std_logic;
	signal oStop  : std_logic;

	-- clock
	--signal Clk : std_logic;

	--VDL signals
	signal oVDLData 	: std_logic_vector(VDL_LENGTH-1 downto 0);
	signal oVDLtoMux  	: std_logic_vector((2*VDL_LENGTH-3) downto 0);
	signal iMuxData  	: std_logic_vector((2*VDL_LENGTH-3) downto 0);

	--SRDelayLines signals
	signal iSRDelay  	: std_logic_vector((2*VDL_LENGTH-3) downto 0);
	signal oSRDelay  	: std_logic_vector((2*VDL_LENGTH-3) downto 0);

	--TDL signals
	signal oTDLData		: std_logic_vector(4*TDL_LENGTH-1 downto 0);

	--Mux signals
	signal oMuxData		: std_logic_vector(1 downto 0);
		-- separation start and stop
		signal oMuxStart	: std_logic;
		signal oMuxStop		: std_logic;

	signal oMuxReg  	: std_logic_vector((2*VDL_LENGTH-3) downto 0);

	--VDL Decoder
	signal oVDLDecoder  : std_logic_vector(4 downto 0); -- TODO: variables, temporary aritrary

	--TDL Decoder
	signal oTDLDecoder  : std_logic_vector(5 downto 0);

	--Edge Detector 
	signal oENSignal	: std_logic;

	-- Uart signal
	signal oUartData : std_logic;
 
	-- attrubutes

	attribute keep_hierarchy : string;
	attribute dont_touch : string;
	

    attribute dont_touch of oVDLDecoder  : signal is "true";
    attribute dont_touch of oTDLDecoder  : signal is "true";
    attribute dont_touch of oStart  	 : signal is "true";
    attribute dont_touch of oStop   	 : signal is "true";
    --attribute dont_touch of oMuxReg   	 : signal is "true";


	attribute keep_hierarchy of VDL_cmp : label is "yes";       
	attribute keep_hierarchy of Mux_exp_cmp : label is "yes";
	attribute keep_hierarchy of ThermoDecoderTDL_cmp : label is "yes";
	attribute keep_hierarchy of TermDecoder_VDL_cmp : label is "yes";
	attribute keep_hierarchy of TDL_cmp : label is "yes";
	--attribute keep_hierarchy of UartModule_cmp : label is "yes";  
	--attribute keep_hierarchy of EdgeDetector_cmp : label is "yes"; 


begin
	
	-- input registers
		REG_ST : FDRE
		generic map (
			INIT => '0') -- Initial value of register ('0' or '1')
		port map (
			Q => oStart, -- Data output
			C => iStart, -- Clock input
			CE => '1', -- Clock enable input
			R => iReset, -- Synchronous reset input
			D => '1' -- Data input
		);
		REG_SP : FDRE
		generic map (
			INIT => '0') -- Initial value of register ('0' or '1')
		port map (
			Q => oStop, -- Data output
			C => iStop, -- Clock input
			CE => '1', -- Clock enable input
			R => iReset, -- Synchronous reset input
			D => '1' -- Data input
		);

	-- MUX input registers

	--MUX_REG: for i in 0 to (2*VDL_LENGTH-3) generate
	--	REG_cmp : FDRE
	--	generic map (
	--		INIT => '0') -- Initial value of register ('0' or '1')
	--	port map (
	--		Q => oMuxReg(i), -- Data output
	--		C => iMuxData(i), -- Clock input
	--		CE => '1', -- Clock enable input
	--		R => iReset, -- Synchronous reset input
	--		D => '1' -- Data input
	--	);
	--end generate;

	--Mux out conversion to std_logic

	oMuxStop <= oMuxData(0);
	oMuxStart  <= oMuxData(1);

	--Components 

	--Clk_cmp: clk_wiz_0 port map (
	--	clk_out1 	=> Clk,
	--	reset 	  	=> iReset,
	--	clk_in1_p	=> clk_in1_p,
	--	clk_in1_n	=> clk_in1_n
	--);

	--SRDelayLines_cmp: SRDelayLines port map(
	--		iClk 	 => Clk,
	--		iReset	 => iReset,
	--		iSRDelay => iSRDelay,
	--		oSRDelay => oSRDelay
	--	);

	VDL_cmp: VDL port map(
			iLatch 	=> oStart,
	  		iLut	=> oStop,
	  		iReset  => iReset,
	  		oData   => oVDLData,			
	  		oVDL    => iMuxData	  		
		);

	Mux_exp_cmp: Mux_exp port map(
			iMux 	=> iMuxData,--((2*VDL_LENGTH-3) downto 1), 
		    iSel 	=> oVDLData,
		    --iEN     => oENSignal,
		    oMux 	=> oMuxData
		);
	
	 
	TermDecoder_VDL_cmp: TermDecoder port map(
			iData 	=>	oVDLData,
	  		oData 	=>  oVDLDecoder
		);


	TDL_cmp: TDL port map(
			iClk	=>  oMuxStop,
			iTaps	=>  oMuxStart,
			iReset	=>	iReset, 
			oData	=>	oTDLData
		);

	ThermoDecoderTDL_cmp: ThermoDecoderTDL port map(
			iData => oTDLData,
			oData => oTDLDecoder
		);

	--CoinDetector_cmp: CoinDetector port map(
	--		iDetector => iMuxData,
	--		iReset    => iReset,
	--		oEN 	  => oENSignal
	--		);
		
	--UartModule_cmp: UartModule port map(
	--		iVDL		=> oVDLDecoder,
	--		iTDL		=> oTDLDecoder,
	--		clk_in1_p	=> clk_in1_p,
	--		clk_in1_n	=> clk_in1_n,
	--		iReset		=> iReset,
	--		oTx 		=> oUartData
	--	);

	--oTx <= oUartData;
	
	oVDL <= oVDLDecoder;
	oTDL <= oTDLDecoder;
	--oEN <= oENSignal;

end Behavioral;
