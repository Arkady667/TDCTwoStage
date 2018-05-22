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

--library tdclib;
--	use tdclib.TDCPackage.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
    use UNISIM.VComponents.all;

entity TDL is
	generic (
		LENGTH	:integer :=64/4
	);
	port (
		iClk	: in std_logic; -- STOP
		iTaps	: in std_logic;	-- START
		iReset	: in std_logic; 
		oData	: out std_logic_vector(4*LENGTH-1 downto 0)
	);
end TDL;

architecture Behavioral of TDL is

signal taps 			: std_logic_vector(4*LENGTH-1 downto 0);
signal tapsRegister 	: std_logic_vector(4*LENGTH-1 downto 0);
signal registerOutput	: std_logic_vector(4*LENGTH-1 downto 0);
--signal initTaps 		: std_logic;


 
begin

 	DL: for i in 0 to LENGTH-1 generate
        g_firstcarry4: if i = 0 generate
            cmp_CARRY4: CARRY4 
            port map(
                CO => taps(3 downto 0),
                CI => '0',
                CYINIT => iTaps,
                DI => "0000",
                S => "1111"
            );
         end generate;

         nextcarry4: if i > 0 generate
            cmp_CARRY4: CARRY4 
            port map(
                CO => taps(4*(i+1)-1 downto 4*i),
                CI => taps(4*i-1),
                CYINIT => '0',
                DI => "0000",
                S => "1111"
            );
         end generate;
    end generate;

    REG_TAPS: for j in 0 to 4*LENGTH-1 generate
		REG : FDRE
		generic map (
			INIT => '0') -- Initial value of register ('0' or '1')
		port map (
			Q => registerOutput(j), -- Data output
			C => iClk, -- Clock input
			CE => '1', -- Clock enable input
			R => iReset, -- Synchronous reset input
			D => taps(j) -- Data input
		);
	end generate;

	oData <= registerOutput;

end Behavioral;
