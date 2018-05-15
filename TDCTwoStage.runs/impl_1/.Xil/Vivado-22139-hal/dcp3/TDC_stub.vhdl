-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TDC is
  Port ( 
    iStart : in STD_LOGIC;
    iStop : in STD_LOGIC;
    iReset : in STD_LOGIC;
    oVDL : out STD_LOGIC_VECTOR ( 4 downto 0 );
    oTDL : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end TDC;

architecture stub of TDC is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
begin
end;
