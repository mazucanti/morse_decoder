-- Funcao recebe um clock de 50MHz e a entrada de um botao da FPGA
-- Retorna um Inteiro que representa se o input sera considerado um ponto ou um traco
-- 0: Desligado
-- 1: Curto
-- 2: Longo

library ieee;
use ieee.std_logic_1164.all;

entity short_or_long_signal_identifier is
	port (clock	: in std_logic;
			button_input	: in std_logic;
			output_value	: out integer);
end short_or_long_signal_identifier;

architecture verifier of short_or_long_signal_identifier is
	-- Define o tempo em que o sinal mudara de curto para longo
	constant short_long_border : integer := 25000000;		-- 0.5s
begin
	process(clock, button_input)
		variable count	: integer := 0;
	begin
		-- Botao ativo em baixo
		-- "reset" assincrono
		if (button_input = '1') then
			output_value <= 0;
			count := 0;
			
		elsif (clock'event and clock = '0') then
			count := count + 1;
			if (count > short_long_border) then		-- Sinal longo
				output_value <= 2;
			else		-- Sinal curto
				output_value <= 1;
			end if;
		end if;
	end process;
end verifier;