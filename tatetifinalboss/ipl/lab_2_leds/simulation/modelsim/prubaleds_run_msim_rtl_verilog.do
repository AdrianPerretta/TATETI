transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/iniak/Documents/facu/TYDD2/lab_2/db {C:/Users/iniak/Documents/facu/TYDD2/lab_2/db/altpll0_altpll.v}
vcom -93 -work work {C:/Users/iniak/Documents/facu/TYDD2/lab_2/altpll0.vhd}

