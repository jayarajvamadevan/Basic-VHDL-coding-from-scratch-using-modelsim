 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity T27_Half_procedure is
port(
    	X : in std_logic;
	Y : in std_logic;
	SUM: out std_logic;
	Cout: out std_logic);
end entity;
 
architecture RTL of T27_Half_procedure is
 
    
  procedure Halfadder(signal  X1   : in std_logic;
                      signal  Y1   : in   std_logic;
                      signal  Out1   : out   std_logic;
                      signal  Out2   : out   std_logic) is
    begin
        
         if (X1 = Y1)then
            Out1 <= '0';
	     if (X1 = '1' and Y1= '1')then
             Out2 <= '1';
	     else
             Out2 <= '0';
	     end if;
        else
           Out1 <= '1';
	   Out2 <= '0';
       end if;
    end procedure;
begin
 
    process is 
	begin
       Halfadder (X,Y,SUM,Cout);
      wait for 1 ns;
    end process;
 
end architecture;
