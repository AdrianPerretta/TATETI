transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {subsistema4_6_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/iniak/Documents/facu/TYDD2/lab2/TATETI/subsistema2/tb_subsistema2.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=subsistema4_6_1200mv_85c_vhd_slow.sdo -L altera_mf -L altera -L lpm -L sgate -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L gate_work -L work -voptargs="+acc"  tb_subsistema2

add wave *
view structure
view signals
run 1 sec
