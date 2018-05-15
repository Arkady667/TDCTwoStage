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
--library UNISIM;
--use UNISIM.VComponents.all;

entity TDC is
	--generic (
	--	TDLLength : integer :=8;
	--	VDLLength : integer :=32
	--);
    Port (
    	iStart 		: in std_logic;
    	iStop		: in std_logic;
    	iReset		: in std_logic;
    	-- decoder outputs
    	oVDL		: out std_logic_vector(4 downto 0); 
    	oTDL		: out std_logic_vector(4 downto 0)	
    );

end TDC;

architecture Behavioral of TDC is
	
	--VDL signals
	signal oVDLData 	: std_logic_vector(VDL_LENGTH-1 downto 0);
	signal iMuxData  	: std_logic_vector((2*VDL_LENGTH-3) downto 0);

	--TDL signals
	signal oTDLData		: std_logic_vector(4*TDL_LENGTH-1 downto 0);

	--Mux signals
	signal oMuxData		: std_logic_vector(1 downto 0);
		-- separation start and stop
		signal oMuxStart	: std_logic;
		signal oMuxStop		: std_logic;

	--VDL Decoder
	signal oVDLDecoder  : std_logic_vector(4 downto 0); -- TODO: variables, temporary aritrary

	--TDL Decoder
	signal oTDLDecoder  : std_logic_vector(4 downto 0);

	--Edge Detector 
	signal oENSignal	: std_logic;
 
	-- attrubutes

	attribute keep_hierarchy : string;
	attribute dont_touch : string;

    attribute dont_touch of oENSignal  : signal is "true";

	attribute keep_hierarchy of VDL_cmp : label is "yes";        --SIM
	attribute keep_hierarchy of Mux_exp_cmp : label is "yes";
	attribute keep_hierarchy of ThermoDecoderTDL_cmp : label is "yes";
	attribute keep_hierarchy of TermDecoder_VDL_cmp : label is "yes";
	attribute keep_hierarchy of TDL_cmp : label is "yes"; 
	--attribute keep_hierarchy of EdgeDetector_cmp : label is "yes"; 

begin

	--Mux out conversion to std_logic

	oMuxStart <= oMuxData(0);
	oMuxStop  <= oMuxData(1);

	--Components 

	VDL_cmp: VDL port map(
			iLatch 	=> iStart,
	  		iLut	=> iStop,
	  		iReset  => iReset,
	  		oData   => oVDLData,			
	  		oVDL    => iMuxData	  		
			);
	
	 
	TermDecoder_VDL_cmp: TermDecoder port map(
			iData 	=>	oVDLData,
	  		oData 	=>  oVDLDecoder
		);


	
	Mux_exp_cmp: Mux_exp port map(
			iMux 	=> iMuxData,
		    iSel 	=> oVDLData,
		    --iEN     => oENSignal,
		    oMux 	=> oMuxData
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

	--EdgeDetector_cmp: EdgeDetector port map(
	--		iDetector => iMuxData,
	--		oEN 	  => oENSignal
	--		);
		
	oVDL <= oVDLDecoder;
	oTDL <= oTDLDecoder;

end Behavioral;
