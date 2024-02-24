/**
 * NOTE: This file will be swapped out for a grading
 * "skeleton" for testing. We will  remove your imem and dmem file.
 *
 * NOTE: skeleton should be your top-level module!
 *
 * This skeleton file serves as a wrapper around the processor to provide certain control signals
 * and interfaces to memory elements. This structure allows for easier testing, as it is easier to
 * inspect which signals the processor tries to assert when.
 */

module skeleton(clock, reset, stu_imem_clock, stu_dmem_clock, stu_processor_clock, stu_regfile_clock,
		ctrl_writeReg, ctrl_readRegA, ctrl_readRegB,address_imem,q_imem,data_writeReg,
		data_readRegA, data_readRegB,
		address_dmem,data,wren,q_dmem,d,nd,op_setx,of,op_jal,aluout,temp,aluop

		);
    input clock, reset;
    output wire stu_imem_clock, stu_dmem_clock, stu_processor_clock, stu_regfile_clock;
//	 clk_div4 myclk1(.clk(clock), .reset(reset), .clk_out(stu_processor_clock)); //processor_clock
//	 clk_div2 myclk2(.clk(clock), .reset(reset), .clk_out(stu_regfile_clock)); //dmem_clock
//	 assign stu_imem_clock = clock; 					//imem_clock
//	 assign stu_regfile_clock = stu_processor_clock;  //regfile_clock
	 clk_div4_p myclkp(.clk(clock), .reset(reset), .clk_out(stu_processor_clock)); //processor_clock
	 clk_div2 myclk2(.clk(clock), .reset(reset), .clk_out(stu_regfile_clock)); //dmem_clock
	 assign stu_imem_clock = clock;
	 assign stu_dmem_clock = clock;
    /** IMEM **/
    // Figure out how to generate a Quartus syncram component and commit the generated verilog file.
    // Make sure you configure it correctly!
    output wire [11:0] address_imem;
//		wire [11:0] address_imem;
    output wire [31:0] q_imem;
//		wire [31:0] q_imem;
    imem my_imem(
        .address    (address_imem),            // address of data
        .clock      (stu_imem_clock),                  // you may need to invert the clock
        .q          (q_imem)                   // the raw instruction
    );

    /** DMEM **/
    // Figure out how to generate a Quartus syncram component and commit the generated verilog file.
    // Make sure you configure it correctly!
    output wire [11:0] address_dmem;
    output wire [31:0] data;
    output wire wren;
    output wire [31:0] q_dmem;
//	 wire [11:0] address_dmem;
//    wire [31:0] data;
//    wire wren;
//    wire [31:0] q_dmem;
    dmem my_dmem(
        .address    (address_dmem/* 12-bit wire */),       // address of data
        .clock      (stu_dmem_clock),                  // may need to invert the clock
        .data	    (data/* 32-bit data in */),    // data you want to write
        .wren	    (wren/* 1-bit signal */),      // write enable
        .q          (q_dmem/* 32-bit data out */)    // data from dmem
    );

    /** REGFILE **/
    // Instantiate your regfile
    wire ctrl_writeEnable;
    output wire [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
    output wire [31:0] data_writeReg;
    output wire [31:0] data_readRegA, data_readRegB;
	 
//	 wire [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
//    wire [31:0] data_writeReg;
//    wire [31:0] data_readRegA, data_readRegB;
    regfile my_regfile(
        stu_regfile_clock,
        ctrl_writeEnable,
        ctrl_reset,
        ctrl_writeReg,
        ctrl_readRegA,
        ctrl_readRegB,
        data_writeReg,
        data_readRegA,
        data_readRegB
    );
		output wire [4:0] d;
		output wire [4:0] nd,aluop;
		output wire op_setx,of,op_jal;
		output [31:0] aluout;
		output temp;
    /** PROCESSOR **/
    processor my_processor(
        // Control signals
        stu_processor_clock,                          // I: The master clock
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
//		  ,aluout
//		  ,d
//		  ,nd
//		  ,op_setx,of,op_jal
//		  ,temp
//		  ,aluop
    );

endmodule
