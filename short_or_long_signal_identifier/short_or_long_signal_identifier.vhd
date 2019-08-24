-- Funcao recebe um clock de 50MHz e a entrada de um botao da FPGA
-- Retorna um Inteiro que representa se o input sera considerado um ponto ou um traco
-- 0: Desligado
-- 1: Curto
-- 2: Longo

-- O modulo recebe um clock de 50MHz e 3 botoes de entrada
-- Retorna um vetor de inteiros que representa um codigo em codigo morse com a seguinte logica
-- 0: Desligado
-- 1: Sinal curto (ponto)
-- 2: Sinal longo (traco)

-- Observacao sobre o funcionamento:
-- O botao input deve ser solto para que o codigo seja registrado corretamente

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
	port	(clock	: in std_logic;
		button_input	: in std_logic;			-- Botao de input do usuario, ao pressionar um sinal 1 e reconhecido, segurando por alguns instantes o sinal troca para 2 e ao soltar o sinal e gravado na posicao adequada do codigo
		backspace	: in std_logic;			-- Botao de backspace, ao pressionar, um sinal do codigo e apagado podendo assim ser sobrescrito. Possui um timer que impede sua repeticao por um tempo determinado
		clear		: in std_logic;			-- Botao de clear, apaga todo o codigo atualmente armazenado
		code		: buffer integer_vector;	-- [DEBUG] Comentar para Simulacao
		backspace_ready_signal	: out std_logic);	-- Sinal que indica se o backspace ja esta pronto para ser pressionado novamente

		
		--code_test0, code_test1, code_test2, code_test3, code_test4 : out integer range 0 to 2;	-- [DEBUG] Descomentar para Simulacao
		--index_test	: out integer range 0 to MAX_CODE_LENGTH-1);					-- [DEBUG] Descomentar para Simulacao
end short_or_long_signal_identifier;

architecture verifier of short_or_long_signal_identifier is
		constant short_long_border : integer := 25000000;	-- Define o tempo em que o sinal mudara de curto para longo, neste caso esta setado para 0.5s
		-- [DEBUG] Para Simulacao, mudar para um valor menor como 25;
	
	--signal	code	: integer_vector	:= (others => 0);		-- Guarda a "letra" salva atualmente (0: desligado, 1: ponto, 2: traco)	-- [DEBUG] Descomentar para Simulacao
begin
	process(clock, clear)
		variable count	: integer := 0;		-- Contador relacionado com o short_long_border
		variable current_index	: integer range 0 to MAX_CODE_LENGTH := 0;	-- Indice atual de escrita do codigo
		
		variable backspace_ready	: std_logic := '1';			-- Variavel que sinaliza se backspace esta pronto para ser utilizado
		variable backspace_wait_time	: integer	:= 0;			-- Contador para o tempo do backspace ready
	begin
		if (clear = '0') then	-- Se o botao de clear (assincrono) foi pressionado reinicializa as variaveis e zera o codigo
			count := 0;
			current_index := 0;
			backspace_ready := '1';
			backspace_wait_time := 0;
			for i in 0 to MAX_CODE_LENGTH-1 loop
				code(i) <= 0;
			end loop;
			
		elsif (clock'event and clock = '0') then
			
			-- Verifica se o tempo de espera do backspace ja acabou, se ja, sinaliza que backspace esta pronto para o uso, senao decrementa o timer
			if	(backspace_wait_time = 0) then
				backspace_ready := '1';
			else
				backspace_wait_time := backspace_wait_time - 1;
			end if;

			if	(backspace = '0') then							-- Se backspace esta pressionado,
				if	(current_index > 0 and backspace_ready = '1') then		-- Se e possivel utilizar o backspace
					current_index := current_index - 1;				-- Decrementa o indice e
					code(current_index) <= 0;					-- apaga o valor da posicao
					
					if	(current_index < MAX_CODE_LENGTH-1) then		-- Corige um problema do code nao apagar se o botao input for solto enquanto o backspace esta pressionado
						code(current_index+1) <= 0;
					end if;
					
					backspace_ready := '0';						-- "Seta" as variaveis referentes ao timer do backspace
					backspace_wait_time := 50000000;				-- 1s de espera
				end if;
				
			elsif	(current_index < MAX_CODE_LENGTH and button_input = '0') then		-- Senao, se o botao de input esta pressionado,
				count := count + 1;							-- incrementa o contador do input
				if (count > short_long_border) then					-- Se o contador passou do limite entre curto e longo, e um sinal longo
					code(current_index) <= 2;
				else									-- Senao e um sinal curto
					code(current_index) <= 1;
				end if;
				
				backspace_ready := '1';							-- Se um valor for escrito no codigo, backspace ja podera ser utilizado
				backspace_wait_time := 0;
			
			else										-- Se os botoes estao soltos (em especial o de input)
				if (current_index < MAX_CODE_LENGTH and code(current_index) /= 0) then	-- Se o botao input estava pressionado anteriormente, ou seja, um valor estava sendo inserido e o botao foi solto
					if	(current_index < MAX_CODE_LENGTH) then
						current_index := current_index + 1;			-- Soma o indice se possivel
					end if;
				end if;
				-- Obs.: Neste caso, se current_index = MAX_CODE_LENGTH, o indice fica travado la impedindo que se altere o codigo de forma acidental
				
				code(current_index) <= 0;						-- Zera o valor do novo indice
				count := 0;								-- Reseta o tempo do contador do input
				
			end if;
			
		end if;
		
		--index_test <= current_index;			-- Descomentar para a Simulacao
		backspace_ready_signal <= backspace_ready;	-- Envia o sinal de prontidao do backspace para o sinal out
	end process;
		
	-- [DEBUG] Descomentar para a Simulação
	--code_test0 <= code(0);
	--code_test1 <= code(1);
	--code_test2 <= code(2);
	--code_test3 <= code(3);
	--code_test4 <= code(4);

end verifier;

-- Insight para a solucao do problema do indice por Ricardo Gomes
-- Referências
-- https://stackoverflow.com/questions/20308514/declaring-an-array-within-an-entity-in-vhdl
