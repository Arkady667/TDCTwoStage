----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2018 01:04:39 PM
-- Design Name: 
-- Module Name: TDC_pkg - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

package TDC_pkg is

	-- MUX
	constant	inputsNumber : integer := 8;
	constant	inputsWidth  : integer := 2;
	type matrix IS array (natural range <>) OF std_logic_vector(inputsWidth-1 downto 0);
	
	-- COMPONENTS
	constant VDL_LENGTH : integer := 8; -- VDL Length 
	constant TDL_LENGTH : integer := 8; -- TDL Length 

	component VDL is
		port (
			iLatch 	: in std_logic;
	  		iLut	: in std_logic;
			oVDL	: out matrix(0 to VDL_LENGTH-2);
			oData	: out std_logic_vector(VDL_LENGTH-1 downto 0)
			);
	end component VDL;

	component TermDecoder is
		port (
			iData : in std_logic_vector(7 downto 0);
	  		oData : out std_logic_vector(2 downto 0)	
		);
	end component TermDecoder;

	component Mux_exp is
		port (
			iMux : in matrix(0 to inputsNumber-2);
		    iSel : in std_logic_vector(inputsNumber-1 downto 0);
		    oMux : out std_logic_vector(inputsWidth-1 downto 0)
		);
	end component Mux_exp;

	component TDL is
		port (
			iClk	: in std_logic; -- STOP
			iTaps	: in std_logic;	-- START
			iReset	: in std_logic; 
			oData	: out std_logic_vector(4*TDL_LENGTH-1 downto 0)
		);
	end component TDL;

	component ThermoDecoderTDL is
	  	Port ( 
	  		iData : in std_logic_vector(31 downto 0); -- (-1) !!!
	  		oData : out std_logic_vector(4 downto 0)  -- 5 bit = 31 dec
	    );
	end component ThermoDecoderTDL;

	component BaudGen is
		port (
			iClk 	: in  STD_LOGIC;
	        iRst  	: in  STD_LOGIC;
	        oClk	: out STD_LOGIC
		);
	end component BaudGen;

	component Fifo is
	   generic 
        (                 
            N            : integer := 4;                             -- number of address bits for 2**N address locations
            W            : integer := 21                                -- number of data bits to/from FIFO
        );         
		port (
			iClk		: in std_logic;                             -- INPUT global CLK	
	        iRst_n   	: in std_logic;                             -- INPUT asynchronous, low level active reset signal
			iPush		: in std_logic;                             -- INPUT fifo push command (pulse)
			iPop		: in std_logic;	                            -- INPUT fifo pop command (pulse)
			iInit		: in std_logic;                             -- INPUT fifo initialize command (pulse)
			iDin		: in std_logic_vector(W-1 downto 0);        -- INPUT fifo input data
			oDout		: out std_logic_vector(W-1 downto 0);       -- OUTPUT fifo output data
			oFull		: out std_logic;                            -- OUTPUT fifo full flag
			oEmpty		: out std_logic;                            -- OUTPUT fifo empty flag
			oOverFlow   : out std_logic;						    -- OUTPUT indicates when last push operations wasn't done
			oNoPop		: out std_logic							    -- OUTPUT indicates when last pop operations wasn't done
			
		);
	end component Fifo;


	component UartTx is
		generic(
	        DBIT 			: integer :=8; -- # data bits
	        SB_TICK			: integer :=16 -- # ticks for stop bits
        );
    	port (
	        clk, reset 		: in std_logic;
	        tx_start 		: in std_logic;
	        s_tick 			: in std_logic;
	        din 			: in std_logic_vector (7 downto 0);
	        tx_done_tick 	: out std_logic;
	        tx 				: out std_logic
        );
	end component UartTx;


end package TDC_pkg;
