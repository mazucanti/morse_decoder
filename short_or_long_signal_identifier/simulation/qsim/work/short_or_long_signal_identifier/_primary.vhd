library verilog;
use verilog.vl_types.all;
entity short_or_long_signal_identifier is
    port(
        clock           : in     vl_logic;
        button_input    : in     vl_logic;
        output_value    : out    vl_logic_vector(31 downto 0)
    );
end short_or_long_signal_identifier;
