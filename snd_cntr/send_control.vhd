library ieee;
use ieee.std_logic_1164.all;

entity send_control is
--r_w controla o modo de escrita ou registro de mensagem
--recebe sinal de permissao
--send envia o sinal de permissao
--w_perm gera um led indicador de que algo pode ser recebido
--r_perm gera um led indicador de que algo pode ser enviado
	port (clk, r_w, recieve : in std_logic;
			r_perm, w_perm : buffer std_logic;
			send: out std_logic);
end entity;

architecture behav of send_control is
	begin
	--r_w é uma referéncia para a OUTRA placa
	send <= r_w;
	process(clk)
	--reduçao de clock para 4Hz
		variable count : integer range 0 to 12500000 := 0;
	begin
		if clk'event and clk = '0' then
			if recieve = '0' then
				w_perm <= '0';
				if count < 12500000 then
					count := count +1;
				else
					r_perm <= not r_perm;
					count := 0;
				end if;
				
			else
				r_perm <= '0';
				if count < 12500000 then
					count := count + 1;
				else
					w_perm <= not w_perm;
					count := 0;
				end if;
			end if;
		end if;
	end process;
end architecture;