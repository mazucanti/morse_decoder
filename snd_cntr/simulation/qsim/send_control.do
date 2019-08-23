onerror {quit -f}
vlib work
vlog -work work send_control.vo
vlog -work work send_control.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.send_control_vlg_vec_tst
vcd file -direction send_control.msim.vcd
vcd add -internal send_control_vlg_vec_tst/*
vcd add -internal send_control_vlg_vec_tst/i1/*
add wave /*
run -all
