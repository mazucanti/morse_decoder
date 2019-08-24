-- Modulo PWM desenvolvido na aula 16, foram feitas algumas adaptacoes para o proposito do projeto
-- Valor atribuido a pwm_out alterado para pois os LEDs sao ativos em ALTO
-- o LED fica acesso para c estritamente menor que duty pois precisavamos que para um duty nulo, o led estivesse apagado
-- Assim torna-se mais facil de trabalhar com o modulo, mesmo que nao consigamos um duty cicle de 100%
-- Outra consequencia disso e que o botao enable tornou-se sem proposito para nossos fins

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity modulo_pwm is
	port (clk, en			: in std_logic;
		duty			: in std_logic_vector(7 downto 0);
		pwm_out			: out std_logic);
end modulo_pwm;

architecture a of modulo_pwm is
begin

	process(en, clk)
		variable c : integer range 0 to 255 := 0;
	begin
		if (clk'event and clk = '0') then
			c := c + 1;
		end if;
		
		if ((c < unsigned(duty)) and (en = '1')) then
			pwm_out <= '1';
		else
			pwm_out <= '0';
		end if;
	end process;
	
	
end a;
