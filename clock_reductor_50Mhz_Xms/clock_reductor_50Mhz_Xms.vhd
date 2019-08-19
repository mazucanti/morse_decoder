library ieee;
use ieee.std_logic_1164.all;

entity clock_reductor_50Mhz_Xms is
	port (fast_clock	: in std_logic;
			miliseconds	: in integer;
			slow_clock	: buffer std_logic);
end clock_reductor_50Mhz_Xms;

architecture reductor of clock_reductor_50Mhz_Xms is
begin
	process(fast_clock)
		variable count : integer := 0;
	begin
		if (fast_clock'event and fast_clock = '0') then
			count := count + 1;
			if (count = 50000000*miliseconds) then
				slow_clock <= not slow_clock;
				count := 0;
			end if;
		end if;
	end process;
	
end reductor;

-- https://www.ics.uci.edu/~jmoorkan/vhdlref/generics.html
