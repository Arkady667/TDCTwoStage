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
--”THE HIGHEST ’1’ WITH BEC” DECOMPOSED INTO 2 SEGMENTS
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

entity ThermoDecoderTDL is
  	Port ( 
  		iData : in std_logic_vector(31 downto 0); -- (-1) !!!
  		oData : out std_logic_vector(4 downto 0)  -- 5 bit = 31 dec
    );
end ThermoDecoderTDL;

architecture Behavioral of ThermoDecoderTDL is 

	signal bin1, bin2, bin3 : std_logic_vector(4 downto 0);
	signal thermo 			: std_logic_vector(31 downto 0);
	signal temp				: unsigned(4 downto 0);

begin
	
	PROC1: process(thermo)
		--variable k : integer:=0;
	begin
		for k in 0 to 28 loop  --30
			thermo(k) <= iData(k) or iData(k+1) or iData(k+2);
			--k := k + 1;
		end loop;

		thermo(29) <= iData(29) or iData(30);
		thermo(30) <= thermo(30);
		--thermo(31) <= iData(31);
		
	end process;

	PROC2: process(thermo)
		--variable i : integer:=1;
	begin
		bin1 <= "00000";
		for i in 1 to 16 loop
			if (thermo(i-1)= '1' ) then
			 	bin1 <= std_logic_vector(to_unsigned(i,bin1'length));
			end if; 
			--i := i + 1;
		end loop;
	end process;


	PROC3: process(thermo)
		--variable j : integer:=1;
	begin
		bin2 <= "00000";
		for j in 1 to 15 loop
			if (thermo(j+15)= '1' ) then 
				bin2 <= std_logic_vector(to_unsigned(j,bin2'length));
			end if;
			--j <= j + 1;
		end loop;

	end process;

	PROC4: process(bin1, bin2)
	begin
		if (thermo(15) = '1') then
			--oData <= bin2 + "01111";
			temp <= unsigned(bin2) + 16;
			oData <= std_logic_vector(temp);
		--elsif (thermo(31) = '1') then
		--	oData <= (others => '1');
		else
			oData <= bin1;
		end if;
	end process;

end Behavioral;
