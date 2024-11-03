onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /cont_57_tb/rst
add wave -noupdate /cont_57_tb/clk
add wave -noupdate /cont_57_tb/en
add wave -noupdate /cont_57_tb/clr
add wave -noupdate -radix unsigned /cont_57_tb/q_l_u
add wave -noupdate -radix unsigned /cont_57_tb/q_m_u
add wave -noupdate -radix unsigned /cont_57_tb/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {65147 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {64575 ps} {80575 ps}
