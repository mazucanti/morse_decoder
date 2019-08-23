-- Funcao recebe um clock de 50MHz e a entrada de um botao da FPGA
-- Retorna um Inteiro que representa se o input sera considerado um ponto ou um traco
-- 0: Desligado
-- 1: Curto
-- 2: Longo

-- Falta implementar o Backspace e fazer o indice parar em MAX_CODE_LENGTH-1

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
			backspace, clear	: in std_logic;
			code	: buffer integer_vector;	-- Comentar para Simulacao
			backspace_ready_signal	: out std_logic);

			
			--code_test0, code_test1, code_test2, code_test3, code_test4 : out integer range 0 to 2;	-- Descomentar para Simulacao
			--index_test	: out integer range 0 to MAX_CODE_LENGTH-1);
end short_or_long_signal_identifier;

architecture verifier of short_or_long_signal_identifier is
	-- Define o tempo em que o sinal mudara de curto para longo
	constant short_long_border : integer := 25000000;		-- 0.5s
	
	--signal	code	: integer_vector	:= (others => 0);		-- Guarda a "letra" salva atualmente (0: desligado, 1: ponto, 2: traco)	-- Descomentar para Simulacao
begin
	process(clock, clear)
		variable count	: integer := 0;
		variable current_index	: integer range 0 to MAX_CODE_LENGTH := 0;
		
		variable backspace_ready	: std_logic := '1';
		variable backspace_wait_time	: integer	:= 0;
	begin
		if (clear = '0') then	-- Se o botao de clear foi pressionado
			count := 0;
			current_index := 0;
			backspace_ready := '1';
			backspace_wait_time := 0;
			for i in 0 to MAX_CODE_LENGTH-1 loop
				code(i) <= 0;
			end loop;
			
		elsif (clock'event and clock = '0') then
		
			if	(backspace_wait_time = 0) then
				backspace_ready := '1';
			else
				backspace_wait_time := backspace_wait_time - 1;
			end if;

			if	(backspace = '0')	then
				if	(current_index > 0 and backspace_ready = '1') then
					current_index := current_index - 1;
					code(current_index) <= 0;
					
					backspace_ready := '0';
					backspace_wait_time := 50000000;
				end if;
				
			elsif	(button_input = '0') then
				count := count + 1;
				if (count > short_long_border) then		-- Sinal longo
					code(current_index) <= 2;
				else		-- Sinal curto
					code(current_index) <= 1;
				end if;
				
				backspace_ready := '1';
				backspace_wait_time := 0;
				-- save state

			
			else	-- Se o botao de input esta solto
				if (code(current_index) /= 0) then	-- Se estava apertado antes soma indice
					if	(current_index < MAX_CODE_LENGTH) then
						current_index := current_index + 1;
					end if;
				end if;
				
				code(current_index) <= 0;
				count := 0;	
				
			end if;
			
		end if;
		
		--index_test <= current_index;
		backspace_ready_signal <= backspace_ready;
	end process;
		
	-- [DEBUG]	-- Descomentar para a Simulação
	--code_test0 <= code(0);
	--code_test1 <= code(1);
	--code_test2 <= code(2);
	--code_test3 <= code(3);
	--code_test4 <= code(4);

end verifier;

-- Insight para a solucao do problema do indice por Ricardo Gomes
-- Referências
-- https://stackoverflow.com/questions/20308514/declaring-an-array-within-an-entity-in-vhdl