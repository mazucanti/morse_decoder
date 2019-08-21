library verilog;
use verilog.vl_types.all;
entity short_or_long_signal_identifier_vlg_sample_tst is
    port(
        button_input    : in     vl_logic;
        clock           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end short_or_long_signal_identifier_vlg_sample_tst;
