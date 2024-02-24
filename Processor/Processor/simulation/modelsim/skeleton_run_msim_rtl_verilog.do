transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Processor/Processor {D:/Quartus/ECE550/Processor/Processor/imem.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Processor/Processor {D:/Quartus/ECE550/Processor/Processor/dmem.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Processor/Processor {D:/Quartus/ECE550/Processor/Processor/skeleton.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Processor/Processor {D:/Quartus/ECE550/Processor/Processor/regfile.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Processor/Processor {D:/Quartus/ECE550/Processor/Processor/processor.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Processor/Processor {D:/Quartus/ECE550/Processor/Processor/decoder_32.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Processor/Processor {D:/Quartus/ECE550/Processor/Processor/pc_counter.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Processor/Processor {D:/Quartus/ECE550/Processor/Processor/clk_div2.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Processor/Processor {D:/Quartus/ECE550/Processor/Processor/clk_div4_p.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Processor/Processor {D:/Quartus/ECE550/Processor/Processor/alu.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Processor/Processor {D:/Quartus/ECE550/Processor/Processor/control.v}

vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Processor/Processor {D:/Quartus/ECE550/Processor/Processor/skeleton_test_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  skeleton_test_tb

add wave *
view structure
view signals
run -all
