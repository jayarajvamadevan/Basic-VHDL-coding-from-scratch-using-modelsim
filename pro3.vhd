library ieee;
use ieee.std_logic_1164.all;
entity T03_Loop is
end entity;
 
architecture sim of T03_Loop is
begin
 
    process is
    begin
	report "Hello World1";
        loop
        report "Hello World2";
	exit;
        end loop;
	report "Hello World3";
  	wait for 10 ns;
    end process;
 
end architecture;
