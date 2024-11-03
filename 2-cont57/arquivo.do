quit -sim

# Cria a biblioteca de trabalho
vlib work

# Compilação das entidades e arquiteturas
vcom -reportprogress 300 -work work {./cont_4.vhd}
vcom -reportprogress 300 -work work {./cont_57.vhd}
vcom -reportprogress 300 -work work {./cont_57_tb.vhd}

# Carrega a simulação
vsim -voptargs=+acc work.cont_57_tb

# Adiciona os sinais na janela de ondas
add wave -position insertpoint sim:/cont_57_tb/*

# Roda a simulação por 10 us
run 10 us