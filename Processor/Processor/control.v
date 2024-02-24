module control(q_imem, Rtar, ALUinB, ALUop_ctrl, BR, Rwd, JP, DMwe, Rwe, op_R, op_addi
	 , op_sw, op_lw, op_j, op_bne, op_jal, op_jr, op_blt, op_bex, op_setx, op_add, op_sub);
	 
	 input [31:0] q_imem;
	 output Rtar, ALUinB, ALUop_ctrl, BR, Rwd, JP, DMwe, Rwe, op_R, op_addi
	 , op_sw, op_lw, op_j, op_bne, op_jal, op_jr, op_blt, op_bex, op_setx, op_add, op_sub;
	 wire [31:0] opcode;
	 wire [31:0]aluopcode;
	 
	 decoder_32 op_decoder(q_imem[31:27],opcode);
	 decoder_32 aluop_decoder(q_imem[6:2],aluopcode);
	 
	 assign op_sw = opcode[7];
	 assign op_lw = opcode[8];
	 assign op_j = opcode[1];
	 assign op_bne = opcode[2];
	 assign op_jal = opcode[3];
	 assign op_jr = opcode[4];
	 assign op_blt = opcode[6];
	 assign op_bex = opcode[22];
	 assign op_setx = opcode[21];
	 assign op_addi = opcode[5];
	 assign op_R = opcode[0];
	 and and_add(op_add,opcode[0],aluopcode[0]);
	 and and_sub(op_sub,opcode[0],aluopcode[1]);
//	 and and_and(op_and,opcode[0],aluopcode[2]);
//	 and and_or(op_or,opcode[0],aluopcode[3]);
//	 and and_sll(op_sll,opcode[0],aluopcode[4]);
//	 and and_sra(op_sra,opcode[0],aluopcode[5]);

	 assign Rtar = op_sw|op_bne|op_jr|op_blt;
	 assign ALUinB = op_addi|op_sw|op_lw;
	 assign ALUop_ctrl = op_bne|op_blt|op_bex;
	 assign BR = op_bne|op_blt;
	 assign JP = op_j|op_jal;
	 assign DMwe = op_sw;
	 assign Rwd = op_lw;
	 assign Rwe = op_R|op_addi|op_lw|op_jal|op_setx;
	 
endmodule
