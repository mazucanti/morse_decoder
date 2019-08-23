library ieee;
use ieee.std_logic_1164.all;

entity send_control is
--r_w controla o modo de escrita ou registro de mensagem
--recebe sinal de permissao--send envia o sinal de permissao
--w_perm gera um led indicador de que algo pode ser recebido
--r_perm gera um led indicador de que algo pode ser enviado
	port (clk, r_w, recieve: in std_logic;
			r_perm, w_perm: out std_logic;
			send : buffer std_logic); 
end entity;

architecture behav of send_control is
	begin
	process(clk)
	--reduçao de clock para 4Hz
		variable count : integer range 0 to 12500000;
		begin
		if clk'event and clk = '0' then
			if recieve = '0' then
				if count < 12500000 then
					count := count +1;
					r_perm <= '0';
				else
					r_perm <= '1';
					count := 0;
				end if;
			else
				if count < 12500000 then
					count := count + 1;
					w_perm <= '0';
				else
					w_perm <= '1';
					count := 0;
				end if;
			end if;
		end if;
	end process;
end architecture;