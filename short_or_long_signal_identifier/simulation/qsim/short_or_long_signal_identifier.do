onerror {quit -f}
vlib work
vlog -work work short_or_long_signal_identifier.vo
vlog -work work short_or_long_signal_identifier.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.short_or_long_signal_identifier_vlg_vec_tst
vcd file -direction short_or_long_signal_identifier.msim.vcd
vcd add -internal short_or_long_signal_identifier_vlg_vec_tst/*
vcd add -internal short_or_long_signal_identifier_vlg_vec_tst/i1/*
add wave /*
run -all
