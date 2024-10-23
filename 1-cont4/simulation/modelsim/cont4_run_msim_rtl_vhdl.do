transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Gabriel Willig/Documents/UTFPR/8PERIODO/reconfigurable_logic_projects/1-cont4/cont4.vhd}

vcom -93 -work work {C:/Users/Gabriel Willig/Documents/UTFPR/8PERIODO/reconfigurable_logic_projects/1-cont4/cont4_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  cont4_tb

add wave *
view structure
view signals
run -all
