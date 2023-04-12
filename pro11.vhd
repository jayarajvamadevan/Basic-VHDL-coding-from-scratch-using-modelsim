library ieee;
use ieee.std_logic_1164.all;
 
entity T11_StdLogic_AND is
end entity;
 
architecture sim of T11_StdLogic_AND is
 
    signal X : std_logic := '0';
    signal Y : std_logic := '0';
   -- signal Z1 : std_logic := '0';   
	--signal Z2 : std_logic := '0';
	signal Z3: std_logic := '0';
 
begin
process is
    begin

        X <= not X;
	--	Z1 <= X;
		wait for 5 ns;
		Y <= not Y;
	--	Z2 <= Y;
		wait for 5 ns;
		
end process;
--AND GATE BEHAVIOURAL MODEL
 process (X,Y) is
    begin
 
        if (X = '1' and  Y = '1')then
            Z3 <= '1';
        else
           Z3 <= '0';
       end if;
 
 end process;
 
 
end architecture;

