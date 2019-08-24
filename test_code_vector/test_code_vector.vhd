library ieee;
use ieee.std_logic_1164.all;

package code_types is
	constant MAX_CODE_LENGTH	: integer := 5;
	type integer_vector is array(0 to MAX_CODE_LENGTH-1) of integer range 0 to 2;
end package code_types;

library ieee;
use ieee.std_logic_1164.all;
use work.code_types.all;

entity test_code_vector is
	port (ins : in std_logic;
			outs	: out std_logic);
end test_code_vector;

architecture test of test_code_vector is
	type code_vector is array(0 to 4) of integer_vector;
begin
	
end test;