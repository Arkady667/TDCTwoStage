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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

package TDC_pkg is

	-- COMPONENTS
	constant DELAY_CELLS: integer := 0;
	constant VDL_LENGTH : integer := 32 + DELAY_CELLS; -- VDL Length : -12 = 64. First and last 6 cells out for mux synch 
	constant TDL_LENGTH : integer := 16; -- TDL Length 
	constant VDL_DATA : integer := 5;
  	constant TDL_DATA : integer := 5;

	attribute dont_touch : string;


	--constant	inputsNumber : integer := 8;
	constant	inputsWidth  : integer := 2;
	type matrix IS array (natural range <>) OF std_logic_vector(inputsWidth-1 downto 0);

	-- EDGE DETECTOR
	type EdgeDetectorType IS array (natural range <>) OF std_logic_vector((2*VDL_LENGTH-3) downto 0); 
	

	component VDL is
		port (
			iLatch 	: in std_logic;
	  		iLut	: in std_logic;
	  		iReset  : in std_logic;
			--oVDL	: out matrix(0 to VDL_LENGTH-2); -- SIM
			oData	: out std_logic_vector(VDL_LENGTH-1 downto 0); 
			oVDL    : out std_logic_vector((2*VDL_LENGTH-3) downto 0) --avoiding last 6  delay cells
			);
	end component VDL;

	component SynchVDL is
		  PORT (
		    D : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		    CLK : IN STD_LOGIC;
		    SCLR : IN STD_LOGIC;
		    Q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
		  );
	end component SynchVDL;

	component SynchTDL is
		  PORT (
		    D : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		    CLK : IN STD_LOGIC;
		    SCLR : IN STD_LOGIC;
		    Q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
		  );
	end component SynchTDL;


	component TermDecoder is
		port (
			iData : in std_logic_vector(VDL_LENGTH-1 downto 0);
	  		oData : out std_logic_vector(4 downto 0)	
		);
	end component TermDecoder;

	component Mux_exp is
		port (
			iMux : in std_logic_vector((2*VDL_LENGTH-3) downto 0);
		    iSel : in std_logic_vector(VDL_LENGTH-1 downto 0);	
		    --iEN  : in std_logic;	
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
	  		iData : in std_logic_vector(4*TDL_LENGTH-1 downto 0); -- (-1) !!!
	  		oData : out std_logic_vector(5 downto 0)  -- 5 bit = 31 dec
	    );
	end component ThermoDecoderTDL;


	component FifoVDL is
		port (
			clk : IN STD_LOGIC;
			rst : IN STD_LOGIC;
			din : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			wr_en : IN STD_LOGIC;
			rd_en : IN STD_LOGIC;
			dout : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
			full : OUT STD_LOGIC;
			empty : OUT STD_LOGIC
		);
	end component FifoVDL;

	component FifoTDL is
		port (
			clk : IN STD_LOGIC;
			rst : IN STD_LOGIC;
			din : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			wr_en : IN STD_LOGIC;
			rd_en : IN STD_LOGIC;
			dout : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
			full : OUT STD_LOGIC;
			empty : OUT STD_LOGIC
		);
	end component FifoTDL;

	component clk_wiz_0 is
		port (
	        clk_out1  : out std_logic;
            reset 	  : in std_logic;
            clk_in1_p : in std_logic;
            clk_in1_n : in std_logic
		);
	end component clk_wiz_0;

	component tUart is
		generic (
			baud 		: integer := 115200;
			clk_rate	: integer := 50000000 --100MHz
		);  
		port (
			data_out	: out std_logic;
			tx_ready	: out std_logic;
			start 		: in std_logic;
			data_in		: in std_logic_vector(5 downto 0);
			reset 		: in std_logic;
			clk 		: in std_logic;
			oRstCtrl	: out std_logic
		);
	end component tUart;

	component MuxUart is
    Port ( 
    	   iFifoVDL  : in STD_LOGIC_VECTOR (4 downto 0);
           iFifoTDL  : in STD_LOGIC_VECTOR (5 downto 0);
           iSel 	 : in STD_LOGIC;
           oUartData : out STD_LOGIC_VECTOR (5 downto 0)
          );
	end component MuxUart;

	component UartModule is
	  generic (
	  		VDL_DATA : integer := 5;
	  		TDL_DATA : integer := 6
	  	);
	  Port (iVDL 		: in std_logic_vector(VDL_DATA-1 downto 0);
	  		iTDL 		: in std_logic_vector(TDL_DATA-1 downto 0);
	        clk_in1_p 	: in std_logic;
	        clk_in1_n 	: in std_logic;
	        iReset		: in std_logic;
	  		oTx  		: out std_logic
	  		);
	end component UartModule;

	component Control is
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
	end component Control;


end package TDC_pkg;
