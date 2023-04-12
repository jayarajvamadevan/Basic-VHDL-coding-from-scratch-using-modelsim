library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity T28_Full_procedure is
port(
    	X : in std_logic;
	Y : in std_logic;
	Cin : in std_logic;
	S1 : inout std_logic;
	C1 : inout std_logic;
	C2 : inout std_logic;
	SUM: out std_logic;
	Cout: out std_logic);
end entity;
 
architecture RTL of T28_Full_procedure is
 
 --Half Adder implementation   
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
 -- OR gate implementation   
  procedure OR_Gate (signal  X2   : in std_logic;
                   signal  Y2   : in std_logic;
                   signal  Out3   : out  std_logic) is
    begin
        
         if (X2 = '0' and Y2 = '0')then
            Out3 <= '0';
        else
           Out3 <= '1';
       end if;
    end procedure;
--------------------------------------------------------------
begin
 
    process is 
	begin
       uut1: Halfadder(X,Y,S1,C1);
       uut2: Halfadder(S1,Cin,SUM,C2);
       uut3: OR_Gate(C2,C1,Cout);
      wait for 1 ns;
    end process;
 
end architecture;
