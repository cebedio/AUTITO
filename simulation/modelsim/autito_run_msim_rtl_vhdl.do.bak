transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Celeste/Desktop/Lab_autito_2023/db {C:/Users/Celeste/Desktop/Lab_autito_2023/db/altpll0_altpll.v}
vcom -93 -work work {C:/Users/Celeste/Desktop/Lab_autito_2023/maquina_control.vhd}
vcom -93 -work work {C:/Users/Celeste/Desktop/Lab_autito_2023/counter_16.vhd}
vcom -93 -work work {C:/Users/Celeste/Desktop/Lab_autito_2023/lpm_compare0.vhd}
vcom -93 -work work {C:/Users/Celeste/Desktop/Lab_autito_2023/altpll0.vhd}

