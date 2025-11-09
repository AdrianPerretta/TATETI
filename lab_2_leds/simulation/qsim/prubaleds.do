onerror {quit -f}
vlib work
vlog -work work prubaleds.vo
vlog -work work prubaleds.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Block1_vlg_vec_tst
vcd file -direction prubaleds.msim.vcd
vcd add -internal Block1_vlg_vec_tst/*
vcd add -internal Block1_vlg_vec_tst/i1/*
add wave /*
run -all
