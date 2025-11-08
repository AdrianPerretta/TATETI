onerror {quit -f}
vlib work
vlog -work work Detector_Victoria.vo
vlog -work work Detector_Victoria.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Detector_Victoria_vlg_vec_tst
vcd file -direction Detector_Victoria.msim.vcd
vcd add -internal Detector_Victoria_vlg_vec_tst/*
vcd add -internal Detector_Victoria_vlg_vec_tst/i1/*
add wave /*
run -all
