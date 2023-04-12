 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity T25_Half_function is
port(
    	X : in integer;
	Y : in integer;
	SUM: out integer;
	Cout: out integer);
end entity;
 
architecture RTL of T25_Half_function is
 
    
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
        	   variable Carry : integer;
    begin
        if (X1 = 1 and  Y1 = 1 )then
            Carry := 1;
        else
           Carry := 0;
       end if;
        return Carry;
    end function And1;
  
begin
 
    process is 
	begin
       SUM <= xor1( X,Y);
       Cout <= And1(X,Y);
      wait for 1 ns;
    end process;
 
end architecture;
