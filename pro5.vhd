library ieee;
use ieee.std_logic_1164.all;
entity T05_While_Loop is
end entity;
 
architecture simulation of T05_While_Loop is
begin
 
    process is
	variable i: integer := 0;
    begin
	report "Hello World1";
        while i < 10 loop
        report "Hello World2 is printed "& integer'image(i);
	i := i+1;
        end loop;
	report "Hello World3";
	wait;
    end process;
 
end simulation;