
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity T20_MUX_Generic_Tb is
end entity;
 
architecture sim of T20_MUX_Generic_Tb is

	constant Datawidth : integer := 8;
 
    signal Sig1 : unsigned(Datawidth-1 downto 0) := x"AA";
    signal Sig2 : unsigned(Datawidth-1 downto 0) := x"BB";
    signal Sig3 : unsigned(Datawidth-1 downto 0) := x"CC";
    signal Sig4 : unsigned(Datawidth-1 downto 0) := x"DD";
    signal Sel : unsigned(1 downto 0) := (others => '0');
    signal Output1 : unsigned(Datawidth-1 downto 0);
	signal Output2 : unsigned(Datawidth-1 downto 0);

 
begin
  -- An instance of T15_Mux with architecture rtl
    uut : entity work.T20_MUX_Generic(RTL) 
	generic map(Datawidth => Datawidth)
	port map(
        Sel    => Sel,
        Sig1   => Sig1,
        Sig2   => Sig2,
        Sig3   => Sig3,
        Sig4   => Sig4,
        Output1 => Output1,
		Output2 => Output2);
 
    -- Stimuli for the selector signal
    process is
    begin
        wait for 5 ns;
        Sel <= Sel + 1;
        wait for 5 ns;
        Sel <= Sel + 1;
        wait for 5 ns;
        Sel <= Sel + 1;
        wait for 5 ns;
        Sel <= Sel + 1;
        wait for 5 ns;
        Sel <= "UU";
        wait;
    end process;

 
end architecture;