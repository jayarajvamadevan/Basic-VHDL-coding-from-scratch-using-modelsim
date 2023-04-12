entity T08_IF is
end entity;
 
architecture sim of T08_IF is
 
    signal CountUp   : integer := 0;
    signal CountDown : integer := 10;
 
begin
 
    process is
    begin
 
        CountUp   <= CountUp + 1;
        CountDown <= CountDown - 1;
        wait for 10 ns;
 
    end process;
 
    process is
    begin
 
		if  CountUp /= CountDown then
       
			report "CountUp=" & integer'image(CountUp) & " CountDown=" & integer'image(CountDown);
        else
			report "Jackpot!";
		end if;
        wait for 10 ns ;
    end process;
 
 
end sim;

