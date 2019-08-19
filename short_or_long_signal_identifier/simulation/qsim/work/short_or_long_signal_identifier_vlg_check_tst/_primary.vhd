library verilog;
use verilog.vl_types.all;
entity short_or_long_signal_identifier_vlg_check_tst is
    port(
        output_value    : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end short_or_long_signal_identifier_vlg_check_tst;
