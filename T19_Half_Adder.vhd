library ieee;
use ieee.std_logic_1164.all;
 
entity T19_Half_Adder is
port(
	X : in std_logic;
	Y : in std_logic;
	SUM: out std_logic;
	Cout: out std_logic);
end entity;
 
architecture RTL of T19_Half_Adder is
 
begin
--Half Adder BEHAVIOURAL MODEL
 process (X,Y) is
    begin
 
        if (X = Y)then
            SUM <= '0';
			if (X = '1' and Y= '1')then
            Cout <= '1';
			else
            Cout <= '0';
			end if;
        else
           SUM <= '1';
		   Cout <= '0';
       end if;
 
 end process;
 
end architecture;



