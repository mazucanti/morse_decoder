library verilog;
use verilog.vl_types.all;
entity main_vlg_check_tst is
    port(
        code_test0      : in     vl_logic_vector(2 downto 0);
        code_test1      : in     vl_logic_vector(2 downto 0);
        code_test2      : in     vl_logic_vector(2 downto 0);
        code_test3      : in     vl_logic_vector(2 downto 0);
        code_test4      : in     vl_logic_vector(2 downto 0);
        index_test      : in     vl_logic_vector(2 downto 0);
        led             : in     vl_logic_vector(0 to 4);
        sampler_rx      : in     vl_logic
    );
end main_vlg_check_tst;
