library verilog;
use verilog.vl_types.all;
entity short_or_long_signal_identifier is
    port(
        clock           : in     vl_logic;
        button_input    : in     vl_logic;
        backspace       : in     vl_logic;
        clear           : in     vl_logic;
        code_test0      : out    vl_logic_vector(1 downto 0);
        code_test1      : out    vl_logic_vector(1 downto 0);
        code_test2      : out    vl_logic_vector(1 downto 0);
        code_test3      : out    vl_logic_vector(1 downto 0);
        code_test4      : out    vl_logic_vector(1 downto 0);
        index_test      : out    vl_logic_vector(2 downto 0)
    );
end short_or_long_signal_identifier;
