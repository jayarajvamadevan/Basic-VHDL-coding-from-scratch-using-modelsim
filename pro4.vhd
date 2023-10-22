library ieee;
use ieee.std_logic_1164.all;
entity T04_For_Loop is
end entity;
 
architecture simulation of T04_For_Loop is
begin
 
    process is
    begin
	report "Hello World1";
        for i in 1 to 10 loop
        report "Hello World2 is printed "& integer'image(i) & "th time.";
        end loop;
	report "Hello World3";
	wait;
    end process;
 
end simulation;
