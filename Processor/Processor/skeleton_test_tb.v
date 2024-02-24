`timescale 1 ns / 100 ps
module skeleton_test_tb();

	reg clock = 1'b1;
	reg reset = 1'b1;
	wire stu_imem_clock, stu_dmem_clock, stu_processor_clock, stu_regfile_clock;
	
	integer instructions = 1;
	integer index = 0;
	
	wire inverted_reset;
	assign inverted_reset = ~reset;
	
	wire [11:0] o_address_imem;
	wire [11:0] o_address_dmem;
	wire [31:0] o_q_imem;
	wire [31:0] o_q_dmem;
	 
	wire reg_ctrl_writeEnable;
	wire [4:0] ctrl_writeReg;
	wire [31:0] reg_data_writeReg;
	
	wire [31:0] o_next_pc;
	wire [7:0] control_signal;
	
	wire [4:0] reg_ctrl_A;
	wire [31:0] reg_readA;
	wire [4:0] reg_ctrl_B;
	wire [31:0] reg_readB;
	
	wire [31:0] o_pc_plus_offset;
	
	wire [31:0] o_alu_result;
	
	wire[31:0] data;
	
	wire[4:0] d;
	
	wire[4:0] nd,aluop;
	
	wire op_setx,of,op_jal;
	
	wire wren;
	
	wire [31:0] aluout;
	
	wire temp;

	skeleton my_skeleton(
		.clock(clock), .reset(reset),
		.stu_imem_clock(stu_imem_clock), .stu_dmem_clock(stu_dmem_clock),
		.stu_processor_clock(stu_processor_clock), .stu_regfile_clock(stu_regfile_clock),
//		,
//		.o_address_imem(o_address_imem), .o_address_dmem(o_address_dmem),
//		.o_q_imem(o_q_imem), .o_q_dmem(o_q_dmem),
//		.ctrl_writeEnable(reg_ctrl_writeEnable), .ctrl_writeReg(ctrl_writeReg), .reg_data_writeReg(reg_data_writeReg)
//		.o_next_pc(o_next_pc),
//		.ctrl_writeReg(control_signal),
		.q_imem(o_q_imem),
		.address_imem(o_address_imem),
		.ctrl_writeReg(ctrl_writeReg),
		.ctrl_readRegA(reg_ctrl_A),
		.data_readRegA(reg_readA),
		.ctrl_readRegB(reg_ctrl_B),
		.data_writeReg(reg_data_writeReg),
		.data_readRegB(reg_readB),
		.address_dmem(o_address_dmem),
		.data(data),
		.wren(wren),
		.q_dmem(o_q_dmem),
		.d(d),
		.nd(nd),
//		.o_pc_plus_offset(o_pc_plus_offset),
//		.o_alu_result(o_alu_result),
//		.o_wren(wren)
		.op_setx(op_setx),
		.of(of),
		.op_jal(op_jal),
		.aluout(aluout),
		.temp(temp),
		.aluop(aluop)
	);
	
	always
	# 10 clock = ~clock;
	
	initial begin
	
		# 10;
	
		$display($time, " << Starting the Simulation >>");
		
		@(negedge clock)
		reset = 1'b0;
		
		for (index = 0; index<= instructions; index = index + 1) begin
			@(posedge clock)
			;
			@(posedge clock)
			;
			@(posedge clock)
			;
			@(posedge clock)
			;
		end
		
		$stop;
		
	end

endmodule
