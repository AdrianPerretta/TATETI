onerror {quit -f}
vlib work
vlog -work work Proyecto_final.vo
vlog -work work Proyecto_final.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.teclado_vlg_vec_tst
vcd file -direction Proyecto_final.msim.vcd
vcd add -internal teclado_vlg_vec_tst/*
vcd add -internal teclado_vlg_vec_tst/i1/*
add wave /*
run -all
