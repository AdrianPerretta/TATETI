onerror {quit -f}
vlib work
vlog -work work Colores.vo
vlog -work work Colores.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Colores_vlg_vec_tst
vcd file -direction Colores.msim.vcd
vcd add -internal Colores_vlg_vec_tst/*
vcd add -internal Colores_vlg_vec_tst/i1/*
add wave /*
run -all
