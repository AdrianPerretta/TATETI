onerror {quit -f}
vlib work
vlog -work work subs_4.vo
vlog -work work subs_4.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Subsistema_4_vlg_vec_tst
vcd file -direction subs_4.msim.vcd
vcd add -internal Subsistema_4_vlg_vec_tst/*
vcd add -internal Subsistema_4_vlg_vec_tst/i1/*
add wave /*
run -all
