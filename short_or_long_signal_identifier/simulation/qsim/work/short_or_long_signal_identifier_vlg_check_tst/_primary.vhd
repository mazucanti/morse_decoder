library verilog;
use verilog.vl_types.all;
entity short_or_long_signal_identifier_vlg_check_tst is
    port(
        code_current_index_test: in     vl_logic_vector(1 downto 0);
        code_test0      : in     vl_logic_vector(1 downto 0);
        code_test1      : in     vl_logic_vector(1 downto 0);
        code_test2      : in     vl_logic_vector(1 downto 0);
        code_test3      : in     vl_logic_vector(1 downto 0);
        code_test4      : in     vl_logic_vector(1 downto 0);
        index_test      : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end short_or_long_signal_identifier_vlg_check_tst;
