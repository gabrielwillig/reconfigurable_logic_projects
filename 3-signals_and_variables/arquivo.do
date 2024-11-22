vlib rtl_work
vmap work rtl_work

vcom -93 -work work {./cont_4.vhd}
vcom -93 -work work {./cont_4_tb.vhd}
vcom -93 -work work {./cont_for.vhd}
vcom -93 -work work {./cont_while.vhd}
vcom -93 -work work {./cont_if_then.vhd}
vcom -93 -work work {./cont_case_when.vhd}
vcom -93 -work work {./cont_direct_sum.vhd}

vsim +altera -do cont_4_run_msim_rtl_vhdl.do -l msim_transcript -gui work.cont_4_tb

add wave -position insertpoint  \
sim:/cont_4_tb/clk \
sim:/cont_4_tb/inp \
sim:/cont_4_tb/q_for \
sim:/cont_4_tb/q_while \
sim:/cont_4_tb/q_case_when \
sim:/cont_4_tb/q_if_then \
sim:/cont_4_tb/q_direct_sum

run 1ms

# Para o Gate Level
vcom -93 -work work {cont_4.vho}
vcom -93 -work work {../../cont_4_tb.vhd}