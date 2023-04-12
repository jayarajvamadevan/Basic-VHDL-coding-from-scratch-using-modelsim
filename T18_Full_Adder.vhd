-- 2 Half Adder reduced code
library ieee;
use ieee.std_logic_1164.all;
 
entity T18_Full_Adder is
port( 	X:in std_logic ;
		Y:in std_logic ;
		Cin:in  std_logic ;
		SUM1:inout std_logic ;   
		Cout1:inout std_logic ;
		Cout2:inout std_logic ;
		SUM_OUT: out std_logic;
		Carry_OUT: out std_logic);
end entity;
 
architecture RTL of  T18_Full_Adder is
    
begin
		--HALF ADDER 1 BEHAVIOURAL MODEL
		 process (X,Y) is
			begin
		 
				if (X = Y)then
					SUM1 <= '0';
					--nested if used here
						if (X = '1' and  Y = '1')then
						Cout1 <= '1';
						else
						Cout1 <= '0';
						end if;	
				else
				   SUM1 <= '1';
				   Cout1 <= '0';
			   end if;
		 
		 end process;

		 --HALF ADDER 2 BEHAVIOURAL MODEL
		 process (SUM1,Cin) is
			begin
		 
				if (SUM1 = Cin)then
					SUM_OUT <= '0';
					--nested if used here
						if (SUM1 = '1' and  Cin = '1')then
						Cout2 <= '1';
						else
						Cout2 <= '0';
						end if;
				else
				   SUM_OUT <= '1';
				   Cout2 <= '0';
			   end if;
		 
		 end process;
		 --OR GATE 1 BEHAVIOURAL MODEL
		 process (Cout1,Cout2) is
			begin
		 
				if (Cout1 = '0' and  Cout2 = '0')then
					Carry_OUT <= '0';
				else
				   Carry_OUT <= '1';
			   end if;
		 
		 end process;
 
end architecture;

