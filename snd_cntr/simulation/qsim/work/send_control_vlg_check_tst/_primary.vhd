library verilog;
use verilog.vl_types.all;
entity send_control_vlg_check_tst is
    port(
        r_perm          : in     vl_logic;
        send            : in     vl_logic;
        w_perm          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end send_control_vlg_check_tst;
