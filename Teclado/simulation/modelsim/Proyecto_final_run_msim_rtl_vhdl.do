transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/crist/Documents/academico/Tecnicas y dispositivos digitales 2/Proyecto final/TATETI/Teclado/teclado.vhd}

