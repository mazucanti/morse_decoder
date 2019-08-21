library verilog;
use verilog.vl_types.all;
entity main is
    port(
        clock           : in     vl_logic;
        input_button    : in     vl_logic;
        led             : out    vl_logic_vector(0 to 4);
        code_test0      : out    vl_logic_vector(2 downto 0);
        code_test1      : out    vl_logic_vector(2 downto 0);
        code_test2      : out    vl_logic_vector(2 downto 0);
        code_test3      : out    vl_logic_vector(2 downto 0);
        code_test4      : out    vl_logic_vector(2 downto 0);
        index_test      : out    vl_logic_vector(2 downto 0)
    );
end main;
