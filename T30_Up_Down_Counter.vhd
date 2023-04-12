library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity T30_Up_Down_Counter is
    Port ( clk,rst,updown : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (3 downto 0));
end entity;

architecture RTL of T30_Up_Down_Counter is

	signal temp:std_logic_vector(3 downto 0):="0000";

begin
	process(clk,rst)
	begin

	if(rst='1')then
		temp<="0000";
	elsif(rising_edge(clk))then
			if(updown = '1') then  
				if(temp = "1111")then
				temp <= "0000";
				else
				temp <= temp + 1;
				end if;
			else 
				if(temp = "0000") then
				temp <= "1111";
				else
				temp <= temp - 1;
				end if;					
			end if;
	end if;
	end process;
count<=temp;
end RTL;