/**
 * READ THIS DESCRIPTION!
 *
 * The processor takes in several inputs from a skeleton file.
 *
 * Inputs
 * clock: this is the clock for your processor at 50 MHz
 * reset: we should be able to assert a reset to start your pc from 0 (sync or
 * async is fine)
 *
 * Imem: input data from imem
 * Dmem: input data from dmem
 * Regfile: input data from regfile
 *
 * Outputs
 * Imem: output control signals to interface with imem
 * Dmem: output control signals and data to interface with dmem
 * Regfile: output control signals and data to interface with regfile
 *
 * Notes
 *
 * Ultimately, your processor will be tested by subsituting a master skeleton, imem, dmem, so the
 * testbench can see which controls signal you active when. Therefore, there needs to be a way to
 * "inject" imem, dmem, and regfile interfaces from some external controller module. The skeleton
 * file acts as a small wrapper around your processor for this purpose.
 *
 * You will need to figure out how to instantiate two memory elements, called
 * "syncram," in Quartus: one for imem and one for dmem. Each should take in a
 * 12-bit address and allow for storing a 32-bit value at each address. Each
 * should have a single clock.
 *
 * Each memory element should have a corresponding .mif file that initializes
 * the memory element to certain value on start up. These should be named
 * imem.mif and dmem.mif respectively.
 *
 * Importantly, these .mif files should be placed at the top level, i.e. there
 * should be an imem.mif and a dmem.mif at the same level as process.v. You
 * should figure out how to point your generated imem.v and dmem.v files at
 * these MIF files.
 *
 * imem
 * Inputs:  12-bit address, 1-bit clock enable, and a clock
 * Outputs: 32-bit q_imemuction
 *
 * dmem
 * Inputs:  12-bit address, 1-bit clock, 32-bit data, 1-bit write enable
 * Outputs: 32-bit data at the given address
 *
 */
module processor(
    // Control signals
    clock,                          // I: The master clock
    reset,                          // I: A reset signal

    // Imem
    address_imem,                   // O: The address of the data to get from imem
    q_imem,                         // I: The data from imem

    // Dmem
    address_dmem,                   // O: The address of the data to get or put from/to dmem
    data,                           // O: The data to write to dmem
    wren,                           // O: Write enable for dmem
    q_dmem,                         // I: The data from dmem

    // Regfile
    ctrl_writeEnable,               // O: Write enable for regfile
    ctrl_writeReg,                  // O: Register to write to in regfile
    ctrl_readRegA,                  // O: Register to read from port A of regfile
    ctrl_readRegB,                  // O: Register to read from port B of regfile
    data_writeReg,                  // O: Data to write to for regfile
    data_readRegA,                  // I: Data from port A of regfile
    data_readRegB                   // I: Data from port B of regfile
//	 ,br,jp,aluinb,aluop,dmwe,rwe,rwd,s1,s2,d,pc,pc_mux1_out
//	 ,aluinbout
//	 ,aluinb
//	 ,jp
//	 ,op_addi
//	 ,alumuxout
//	 ,aluout
//	 ,rwd
//	 ,d
//	 ,newd
//	 ,op_setx,overflow,op_jal
//	 ,temp
//	 ,aluop
);
    // Control signals
    input clock, reset;

    // Imem
    output [11:0] address_imem;//
    input [31:0] q_imem;

    // Dmem
    output [11:0] address_dmem;//
    output [31:0] data;
    output wren;//
    input [31:0] q_dmem;

    // Regfile
    output ctrl_writeEnable;//
    output [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;//
    output [31:0] data_writeReg;//
    input [31:0] data_readRegA, data_readRegB;

    /* YOUR CODE STARTS HERE */
	 wire [31:0] newpc;
	 wire [31:0] pc_in, signed_ext, unsigned_ext, alu_dataA, alu_dataB, aluout, regf_wrdata, pcp1, pcpn, dmem_wrdata, mux_1_br, pc, d;
	 wire Rtar, ALUinB, ALUop_ctrl, BR, Rwd,JP, DMwe, Rwe, op_R, op_add, op_sub, op_addi, op_sw, op_lw, op_j, op_bne, op_jal, op_jr, op_blt, op_bex, op_setx, op_ne, op_lt, of;
	 wire [16:0] N;
	 wire [26:0] T;
	 wire [4:0] opcode, ALUop, shamt, Rs, Rt, Rd;
	 wire [31:0]  dmem_out, regfile_dataA, regfile_dataB;
	 wire wren, ctrl_writeEnable;
	 
	 //pc
	 pc_counter mypc1(clock, reset, pc, newpc); 
//	 RCA_32bit myRCA1(pc_plus1,newpc, 32'd1);
	 assign pcp1 = newpc + 1;
//	 RCA_32bit myRCA2(pc_plusN1,pc_plus1, signex_N);
	 assign pcpn = newpc + 1 + signed_ext;
	 assign mux_1_br = (op_bne&op_ne|op_blt&(~op_lt)&op_ne)? pcpn:pcp1;
	 assign pc = op_jr?data_readRegB: (op_bex&op_ne)? unsigned_ext: (JP?unsigned_ext: mux_1_br);
	 
	 //imem
	 assign address_imem = newpc[11:0]; 	//output_imem
	
	 
	 //q_imem and regfile
	 assign opcode = q_imem[31:27];
	 control mycontrol(q_imem, Rtar, ALUinB, ALUop_ctrl, BR, Rwd, JP, DMwe, Rwe, op_R, op_addi
	 , op_sw, op_lw, op_j, op_bne, op_jal, op_jr, op_blt, op_bex, op_setx, op_add, op_sub);
//	 assign isR_add = is_R&(~ALUop[4])&(~ALUop[3])&(~ALUop[2])&(~ALUop[1])&(~ALUop[0]); 
//	 assign isR_sub = is_R&(~ALUop[4])&(~ALUop[3])&(~ALUop[2])&(~ALUop[1])&(ALUop[0]); 
	 assign d= op_add? 32'd1:op_sub?32'd3:op_addi?32'd2:32'd0;
	 
	 assign ALUop = op_R? q_imem[6:2]: ALUop_ctrl? 5'b00001:5'b00000;
	 assign shamt = op_R? q_imem[11:7]: 5'b00000;
	 assign Rs = op_bex? 5'b00000: q_imem[21:17];
	 assign Rt = op_bex? 5'b11110: Rtar? q_imem[26:22]: q_imem[16:12];
//	 assign Rd = op_setx? 5'b11110: op_jal? 5'b11111:((op_add|op_sub|op_addi)? (of? 5'b11110: q_imem[26:22]): q_imem[26:22]);
	 assign Rd = op_setx? 5'b11110: op_jal? 5'b11111 : q_imem[26:22];
	 assign N = q_imem[16:0];
	 assign signed_ext = {{15{N[16]}},N};
	 assign T = q_imem[26:0];
	 assign unsigned_ext = {5'd0,T};
	 
	 assign data_writeReg = op_setx? unsigned_ext: op_jal? pcp1 :(op_lw? dmem_out:(op_add|op_sub|op_addi)?(of ? d : aluout):aluout);
	 
	 assign ctrl_readRegA = Rs; 	//output_regfile
	 assign ctrl_readRegB = Rt; 	//output_regfile
	 assign ctrl_writeReg = Rd; 	//output_regfile
//	 assign data_writeReg = regf_wrdata; 	//output_regfile
	 
//	 assign regfile_dataA = data_readRegA; 	//input_regfile
//	 assign regfile_dataB = data_readRegB; 	//input_regfile
	 assign ctrl_writeEnable = Rwe;  			//output_regfile
	 
	 
	 //alu
	 assign alu_dataB = ALUinB? signed_ext: regfile_dataB; 
	 alu myalu(data_readRegA,data_readRegB, ALUop, shamt, aluout, is_ne, is_lt, of);
	 
	 //dmem
	 assign address_dmem = aluout[11:0];  //output_dmem
	 assign data = regfile_dataB;		//output_dmem
	 
	 assign dmem_out = q_dmem; //input_dmem
	 assign wren = DMwe;       //output_dmem
	 
	 
endmodule

