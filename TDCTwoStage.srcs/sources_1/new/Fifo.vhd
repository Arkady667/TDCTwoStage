--------------------------------------------------------------------------------
-- File title 			: Fifo.VHD
-- Design unit name 	: Fifo
-- Author 				: Kamil Ber	
-- Company				: Space Research Centre PAS
-- Current version		: 1
-- Revision: 	Version 0 	: Kamil Ber : (07/08/2013) initial
-- 				--Version 1 	: Author 	: (10/12/2011) bugs fixed, modification list…..
--
-- (c) copyright PAS 	: all right reserved.
--
---------------------------------------------------------------------------------
-- Description:
-- purpose of the code
-- INTERFACE
--		NOPUSH and NOPOP	
--			1. simultaneous assertion of both PUSH and POP - the PUSH takes priority => NOPOP
--			2. assertion of PUSH when the FIFO is full => NOPUSH
--			3. assertion of POP when the FIFO is empty => NOPOP
--
--
--
---------------------------------------------------------------------------------
-- Todo: none
---------------------------------------------------------------------------------
--Constraints:
-- assumption made for input or output signals
-- known bugs not corrected yet
------------------------------------------------------------------------------
-- Simulator name, simulator version
-- synthesis tool name , synthesis tool version
-- P&R tool name, P&R tool version



library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

    
entity Fifo is
	generic 
	(	             
		N		    : integer := 4; 							-- number of address bits for 2**N address locations
		W		    : integer := 21								-- number of data bits to/from FIFO
	); 						
	port 
	(		
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
end entity;

architecture beh of Fifo is

    type fifo_type is record
        wptr    : unsigned(N-1 downto 0);	 -- write pointer 
        rptr    : unsigned(N-1 downto 0);	 -- read pointer
        wadd    : unsigned(N-1 downto 0);	 -- write address 
        radd    : unsigned(N-1 downto 0);	 -- read address
        full    : std_logic;						
        empty   : std_logic;	
        overflow : std_logic;	
        nopop   : std_logic;	
        we      : std_logic;
        re      : std_logic;
        din     : std_logic_vector(W-1 downto 0);
    end record;
	signal r, rin   :	fifo_type;
	
begin
    SYNC: process (iClk,iRst_n) begin
        if (iRst_n = '0') then
            r.wptr      <= (others => '0');
            r.rptr      <= (others => '0');
            r.wadd      <= (others => '0');
            r.radd      <= (others => '0');
            r.din       <= (others => '0');
            r.nopop     <= '0';
            r.overflow  <= '0';
            r.full      <= '0';		
            r.empty     <= '1';
            r.we        <= '0';
            r.re        <= '0';
        elsif (iClk'event and iClk = '1') then
            r           <= rin;     
        end if;
    end process SYNC;
					
    COMB: process (iPush, iPop, iInit, iDin, r) 
    variable v : fifo_type;	
    begin    
        v := r;
        
        v.we        := '0';
        v.re        := '0';
        v.overflow  := '0';
        v.nopop     := '0';    

-- fifo logic, push always, pop if no empty and no push 
        if(r.empty = '1') then                      -- fifo is empty
            if(iPush = '1') then                    -- push operation, fifo no longer is empty
                v.we        := '1';                 -- write command
                v.din       := iDin;                -- data storage
                v.wptr      := r.wptr + 1;          -- wprt update
                v.empty     := '0';                 -- empty flag clear
                v.nopop     := iPop;                -- read from empty fifo, not possible
                -- coverage off
                if(N = 0) then                      -- valid only for 1 element queue
                    if(r.rptr = (r.wptr + 1)) then  -- next wptr will be equal to rptr - fifo is full!
                        v.full      := '1';         -- fifo full flag set
                    end if;
                end if;
                -- coverage on
            end if;
            v.nopop     := iPop;  
        elsif(r.full = '1') then                      -- fifo is full
            if(iPush = '1') then                    -- push operation
                v.we        := '1';                 -- write command
                v.din       := iDin;                -- data storage
                v.overflow  := '1';                 -- data was overwritten, fifo overflow pluse
                v.wptr      := r.wptr + 1;          -- wprt update
                v.rptr      := r.rptr + 1;          -- rprt needs to be updated too
                v.nopop     := iPop;                -- if pop during push, nopop pulse is generated
            elsif(iPop = '1') then                  -- pop operation, fifo is no longer full
                v.re        := '1';                 -- read command
                v.rptr      := r.rptr + 1;          -- rprt update
                v.full      := '0';                 -- fifo full flag clear
                -- coverage off
                if(N = 0) then                      -- valid only for 1 element queue
                    if(r.wptr = (r.rptr + 1)) then  -- next rptr will be equal to wptr - fifo is empty!
                        v.empty      := '1';             
                    end if;
                end if;
                -- coverage on
            end if;
        else                                        -- fifo no full, no empty
            if(iPush = '1') then                    -- push operation
                v.we        := '1';                 -- write command
                v.din       := iDin;                -- data storage
                v.wptr      := r.wptr + 1;          -- wprt update
                if(r.rptr = (r.wptr + 1)) then      -- next wptr will be equal to rptr - fifo is full!
                    v.full      := '1';             -- fifo full flag set
                end if;
                v.nopop     := iPop;                -- if pop during push, nopop pulse is generated
            elsif(iPop = '1') then                  -- pop operation, fifo is no longer full
                v.re        := '1';                 -- read command
                v.rptr      := r.rptr + 1;          -- rprt update
                if(r.wptr = (r.rptr + 1)) then      -- next rptr will be equal to wptr - fifo is empty!
                    v.empty      := '1';            -- fifo empty flag set
                end if;
            end if;
        end if;

-- data storage        
        v.radd  := r.rptr;
        v.wadd  := r.wptr;
        
-- init
        if (iInit = '1') then
			v.wptr          := (others => '0');
			v.rptr          := (others => '0');
            v.wadd          := (others => '0');
            v.radd          := (others => '0');
			v.nopop         := iPop;
			v.overflow      := '0';
            v.we            := '0';
            v.re            := '0';
            v.empty         := '1';
            v.full          := '0';
        end if;
        
        rin <= v;
        
	end process COMB;

    
	oOverFlow   <= r.overflow;
	oNoPop      <= r.nopop;
    oEmpty      <= r.empty;
	oFull       <= r.full;
	
end architecture;