onerror {quit -f}
vlib work
vlog -work work proyecto_final.vo
vlog -work work proyecto_final.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Detector_victoria_vlg_vec_tst
vcd file -direction proyecto_final.msim.vcd
vcd add -internal Detector_victoria_vlg_vec_tst/*
vcd add -internal Detector_victoria_vlg_vec_tst/i1/*
add wave /*
run -all
