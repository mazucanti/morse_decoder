library verilog;
use verilog.vl_types.all;
entity short_or_long_signal_identifier_vlg_check_tst is
    port(
        index_out       : in     vl_logic_vector(2 downto 0);
        output_value    : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end short_or_long_signal_identifier_vlg_check_tst;
