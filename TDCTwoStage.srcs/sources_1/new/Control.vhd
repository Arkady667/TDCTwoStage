----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2018 06:05:37 PM
-- Design Name: 
-- Module Name: Control - Behavioral
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

entity Control is
    Port ( 
    	iClk		: in std_logic;
    	iRst		: in std_logic;
    	iVDLFull 	: in std_logic;
    	iVDLEmpty	: in std_logic;
    	iTDLFull 	: in std_logic;
    	iTDLEmpty	: in std_logic;
    	iTxReady	: in std_logic;
    	oSelMux		: out std_logic; 
    	oWrEnVDL	: out std_logic;
    	oWrEnTDL	: out std_logic;
    	oRdEnVDL	: out std_logic;
    	oRdEnTDL	: out std_logic;
    	oStartTx	: out std_logic;
    	oReset		: out std_logic
    	);
end Control;

architecture Behavioral of Control is

	type ControlState is (stInit, stWrite, stReadVDL, stReadTDL, stEndTx);

	type reg_type is record
		state 		: ControlState;
		wrEnVDL 	: std_logic;
		wrEnTDL 	: std_logic;
		RdEnVDL 	: std_logic;
		RdEnTDL 	: std_logic;
		selMux 		: std_logic;
		startTx 	: std_logic;
		reset 		: std_logic;
	end record;

	signal r, rin : reg_type;

begin

	P_SEQ: process(iClk, iRst)
	begin
		if (iRst = '1') then --asynch
			r.wrEnVDL 		<= '0';
			r.wrEnTDL 		<= '0';
			r.RdEnVDL 		<= '0';
			r.RdEnTDL 		<= '0';
			r.selMux 		<= '1';
			r.startTx 		<= '0';
			r.state       	<= stInit;
			r.reset 		<= '0';
		elsif rising_edge(iClk) then
			r <= rin;			
		end if;


	end process P_SEQ;


	P_COMB: process(iVDLFull, iTDLFull, iTDLEmpty, iVDLEmpty, iTxReady, r)
		variable v : reg_type;
	begin
		v := r;

		--default
		v.WrEnVDL := '0';
		v.WrEnTDL := '0';
		v.selMux  := '1';
		--v.RdEnTDL := '0';	
		--v.RdEnVDL := '0';	

		case (r.state) is
			when stInit =>
				if (iVDLEmpty = '1' and iTDLEmpty = '1') then
					v.WrEnVDL := '1';
					v.WrEnTDL := '1';
					v.state := stWrite;
				else
					v.state := stInit;
				end if;
			when stWrite =>
				if (iVDLFull = '1' and iTDLFull = '0') then
					v.WrEnVDL := '0';
					v.WrEnTDL := '0';
					v.state := stReadVDL;
				else
					v.state := stWrite;
				end if;
			when stReadVDL =>
				v.selMux := '1';
				v.RdEnVDL := '1';
				if (iTxReady = '1') then
					v.startTx := '1';
					if (iVDLEmpty = '0') then
						v.state := stReadVDL;
					else
						v.state := stReadTDL;
					end if;
				else
					v.startTx := '0';
					v.RdEnVDL := '0';	
				end if;
			when stReadTDL =>
				v.selMux := '0';
				v.RdEnTDL := '1';
				if (iTxReady = '1') then
					v.startTx := '1';
					if (iTDLEmpty = '0') then
						v.state := stReadTDL;
					else
						v.state := stEndTx;
					end if;
				else
					v.startTx := '0';
					v.RdEnTDL := '0';	
				end if;
			when stEndTx =>
				if (iTDLEmpty = '1' and iVDLEmpty = '1') then
					v.reset := '1';
					v.state := stInit;					
				end if;


		end case;

		rin <= v;

	end process P_COMB; 

	oWrEnVDL <= r.WrEnVDL;
	oWrEnTDL <= r.WrEnTDL;
	oRdEnVDL <= r.RdEnVDL;
	oRdEnTDL <= r.RdEnTDL;
	oStartTx <= r.StartTx;
	oSelMux  <= r.selMux;
	oReset	 <= r.reset;	

end Behavioral;
