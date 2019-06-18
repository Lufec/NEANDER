onerror {quit -f}
vlib work
vlog -work work memRAM.vo
vlog -work work memRAM.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.memRAM_vlg_vec_tst
vcd file -direction memRAM.msim.vcd
vcd add -internal memRAM_vlg_vec_tst/*
vcd add -internal memRAM_vlg_vec_tst/i1/*
add wave /*
run -all
