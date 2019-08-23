library verilog;
use verilog.vl_types.all;
entity send_control is
    port(
        clk             : in     vl_logic;
        r_w             : in     vl_logic;
        recieve         : in     vl_logic;
        r_perm          : out    vl_logic;
        w_perm          : out    vl_logic;
        send            : out    vl_logic
    );
end send_control;
