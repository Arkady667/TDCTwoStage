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

entity TDC_tb is
end TDC_tb;

architecture Behavioral of TDC_tb is

	signal Clk			:  std_logic;
	signal iStart 		:  std_logic;
	signal iStop		:  std_logic;
	signal iReset		:  std_logic;
	signal oTx 			:  std_logic;
	-- decoder outputs
	--signal oVDL			:  std_logic_vector(4 downto 0); 
	--signal oTDL			:  std_logic_vector(5 downto 0);

	constant PERIOD : integer := 10; 

begin

	P_ClkP : process
    begin
        Clk <= '1';
        wait for (PERIOD / 2) * ns;
        Clk <= '0';
        wait for (PERIOD / 2) * ns;
    end process;

	P_STIM: process 
			variable TI : integer := 1;
		begin
		     --init
		    iReset <= '0';
		    iStart <= '0';
	        iStop <= '0';
	        wait for 1 us;

	        	wait for 7 ns;

	        	-- Od START do rozpoczecia kolejnego pomiaru ma minąć 10ns !

		        --Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

		        --Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';

	        	--Start
		        iStart <= '1';
		        --Stop
		        wait for 1 ns;  --TI
		        iStop <= '1';
		        wait for 8 ns;
		        iStart <= '0';
	        	iStop <= '0';
	        	wait for 1 ns;
	        	--iReset <= '1';



	        
	        --iReset <= '1';
	        wait for 3 ms;
			iReset <= '1';
			wait for 1 ms;
			--iReset <= '0';
			--wait for 1 ms;
		       	
		    
	        --end
	        --wait for 30 ns;
	        
			--assert false report "end of simulation" severity failure;

	end process;


	I_DUT: entity xil_defaultlib.TDC
		port map(
			Clk		=> Clk,
			iStart 	=> iStart,
			iStop	=> iStop,
			iReset 	=> iReset,
			oTx		=> oTx
			--oVDL	=> oVDL,
			--oTDL	=> oTDL
		);

end Behavioral;
