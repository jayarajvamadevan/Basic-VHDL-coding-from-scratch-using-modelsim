library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity T26_Full_function is
port(
    	X : in integer;
	Y : in integer;
	Cin: in integer;
	W1: inout integer;
	W2: inout integer;
	W3: inout integer;
	SUM: out integer;
	Cout: out integer);
end entity;
 
architecture RTL of T26_Full_function is
 
    
    -- Calculate the Xor part
    function xor1(signal X1 : integer;
                  signal Y1 : integer) return integer is
        	   variable Sum1 : integer;
    begin
        if (X1 = Y1)then
            Sum1 := 0;
        else
           Sum1 := 1;
       end if;
        return Sum1;
    end function xor1;
 
    -- Calculate the And part
    function And1(signal X1 : integer;
                  signal Y1 : integer) return integer is
        	   variable out1 : integer;
    begin
        if (X1 = 1 and  Y1 = 1 )then
            out1 := 1;
        else
           out1 := 0;
       end if;
        return out1;
    end function And1;
-- Calculate the Or part
    function Or1(signal X1 : integer;
                  signal Y1 : integer) return integer is
        	   variable out2: integer;
    begin
        if (X1 = 0 and  Y1 = 0 )then
            out2 := 0;
        else
          out2 := 1;
       end if;
        return out2;
    end function Or1;
  
  
begin
 
    process is 
	begin
       W1 <= xor1( X,Y);
       W2 <= And1(X,Y);
       W3 <= And1(W1,Cin);
       SUM <= xor1(W1,Cin);
       Cout <= or1( W3,W2);
      wait for 1 ns;
    end process;
 
end architecture;
