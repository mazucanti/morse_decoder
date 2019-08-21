-- Funcao recebe um clock de 50MHz e a entrada de um botao da FPGA
-- Retorna um Inteiro que representa se o input sera considerado um ponto ou um traco
-- 0: Desligado
-- 1: Curto
-- 2: Longo

library ieee;
use ieee.std_logic_1164.all;

package code_types is
	constant MAX_CODE_LENGTH	: integer := 5;
	type integer_vector is array(0 to MAX_CODE_LENGTH-1) of integer range 0 to 2;
end package code_types;

library ieee;
use ieee.std_logic_1164.all;
use work.code_types.all;

entity short_or_long_signal_identifier is
	port (clock	: in std_logic;
			button_input	: in std_logic;

			code_test0, code_test1, code_test2, code_test3, code_test4 : out integer range 0 to 2;
			index_test	: out integer range 0 to MAX_CODE_LENGTH-1;
			code_current_index_test	:	out integer range 0 to 2);
end short_or_long_signal_identifier;

architecture verifier of short_or_long_signal_identifier is
	-- Define o tempo em que o sinal mudara de curto para longo
	constant short_long_border : integer := 25;		-- 0.5s
	signal	code	: integer_vector	:= (others => 0);		-- Guarda a "letra" salva atualmente (0: desligado, 1: ponto, 2: traco)
	signal current_index	: integer range 0 to MAX_CODE_LENGTH := 1;
	signal next_value	: integer range 0 to 2 := 0;
begin
	process(clock, button_input)
		variable count	: integer := 0;
		variable index_variable	: integer range 0 to MAX_CODE_LENGTH := current_index;
		--variable code_variable	: integer_vector := code;
		variable new_value	: integer range 0 to 2 := next_value;
	begin
		if (clock'event and clock = '0') then
			-- Botao ativo em baixo
			-- "reset" assincrono
			if	(button_input = '1') then
				if (new_value /= 0) then
					index_variable := index_variable + 1;
					if (index_variable = MAX_CODE_LENGTH) then
						index_variable := 0;
					end if;
				end if;
				next_value <= new_value;
				new_value := 0;
				count := 0;
				
			else	
				count := count + 1;
				if (count > short_long_border) then		-- Sinal longo
					new_value := 2;
				else		-- Sinal curto
					new_value := 1;
				end if;
				next_value <= new_value;
			end if;
		end if;
		
		current_index <= index_variable;
		--code <= code_variable;
	end process;
	
	index_test <= current_index;
	code_current_index_test <= next_value;

	
	--code(0) <= next_value when current_index = 0 else unaffected;
	--code(1) <= next_value when current_index = 1 else unaffected;
	--code(2) <= next_value when current_index = 2 else unaffected;
	--code(3) <= next_value when current_index = 3 else unaffected;
	--code(4) <= next_value when current_index = 4 else unaffected;
	
	--code_assigner:	for i in 0 to MAX_CODE_LENGTH-1 generate
	--	code(i) <= next_value when i = current_index else unaffected;
	--end generate code_assigner;
	
	process(clock, next_value)
	begin
		if (clock'event and clock = '0') then
			for i in 0 to MAX_CODE_LENGTH-1 loop
				case current_index is
					when i => code(i) <= next_value;
					when others => code(i) <= unaffected;
				end case;
			end loop;
		end if;
	end process;
	
	-- [DEBUG]
	code_test0 <= code(0);
	code_test1 <= code(1);
	code_test2 <= code(2);
	code_test3 <= code(3);
	code_test4 <= code(4);

end verifier;

-- Insight para a solucao do problema do indice por Ricardo Gomes
-- Referências
-- https://stackoverflow.com/questions/20308514/declaring-an-array-within-an-entity-in-vhdl