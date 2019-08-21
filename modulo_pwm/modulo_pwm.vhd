library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity modulo_pwm is
	port (clk, en			: in std_logic;
			duty				: in std_logic_vector(7 downto 0);
			pwm_out			: out std_logic);
end modulo_pwm;

architecture a of modulo_pwm is
begin

	process(en, clk)
		--variable c : integer := 0;
		variable c : integer range 0 to 255 := 0;
	begin
		if (clk'event and clk = '0') then
			c := c + 1;
			--if (c = 256) then
			--	c := 0;
			--end if;
		end if;
		
		if ((c < unsigned(duty)) and (en = '1')) then
			pwm_out <= '1';
		else
			pwm_out <= '0';
		end if;
	end process;
	
	
end a;