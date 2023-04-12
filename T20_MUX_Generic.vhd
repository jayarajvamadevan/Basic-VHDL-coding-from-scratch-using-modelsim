library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity T20_MUX_Generic is

generic(Datawidth:integer);

port(
--Inputs
	Sig1 : in unsigned(Datawidth-1 downto 0);
    Sig2 : in unsigned(Datawidth-1 downto 0);
    Sig3 : in unsigned(Datawidth-1 downto 0);
    Sig4 : in unsigned(Datawidth-1 downto 0);
    Sel : in unsigned(1 downto 0);
--Outputs
    Output1 : out unsigned(Datawidth-1 downto 0);
    Output2 : out unsigned(Datawidth-1 downto 0));
end entity;
 
architecture RTL of T20_MUX_Generic is
 begin
    -- MUX using a case statement
    process(Sel, Sig1, Sig2, Sig3, Sig4) is
    begin
 
        case Sel is
            when "00" =>
                Output1 <= Sig1;
            when "01" =>
                Output1 <= Sig2;
            when "10" =>
                Output1 <= Sig3;
            when "11" =>
                Output1 <= Sig4;
            when others => -- 'U', 'X', '-', etc.
                Output1 <= (others => 'X');
        end case;
    end process;
	
	-- Equivalent MUX using a if else statement
	process(Sel, Sig1, Sig2, Sig3, Sig4) is
	begin
		if (Sel= "00") then
			Output2 <= Sig1;
		elsif  (Sel= "01")then
			Output2 <= Sig2;
		elsif  (Sel= "10")then
			Output2 <= Sig3;
		elsif  (Sel= "11")then
			Output2 <= Sig4;
		else
			Output2 <= (others => 'X');
		end if;
	end process;
			
end architecture;
