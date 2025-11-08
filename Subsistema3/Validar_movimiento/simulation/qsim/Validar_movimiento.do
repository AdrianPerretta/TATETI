onerror {quit -f}
vlib work
vlog -work work Validar_movimiento.vo
vlog -work work Validar_movimiento.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Validar_movimiento_vlg_vec_tst
vcd file -direction Validar_movimiento.msim.vcd
vcd add -internal Validar_movimiento_vlg_vec_tst/*
vcd add -internal Validar_movimiento_vlg_vec_tst/i1/*
add wave /*
run -all
