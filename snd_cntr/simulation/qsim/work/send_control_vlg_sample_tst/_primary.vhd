library verilog;
use verilog.vl_types.all;
entity send_control_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        r_w             : in     vl_logic;
        recieve         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end send_control_vlg_sample_tst;
