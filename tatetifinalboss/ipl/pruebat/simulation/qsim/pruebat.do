onerror {quit -f}
vlib work
vlog -work work pruebat.vo
vlog -work work pruebat.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.pruebat_vlg_vec_tst
vcd file -direction pruebat.msim.vcd
vcd add -internal pruebat_vlg_vec_tst/*
vcd add -internal pruebat_vlg_vec_tst/i1/*
add wave /*
run -all
