module regfile (
    clock,
    ctrl_writeEnable,
    ctrl_reset, ctrl_writeReg,
    ctrl_readRegA, ctrl_readRegB, data_writeReg,
    data_readRegA, data_readRegB
);

   input clock, ctrl_writeEnable, ctrl_reset;
   input [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
   input [31:0] data_writeReg;

   output [31:0] data_readRegA, data_readRegB;

   /* YOUR CODE HERE */
	
	wire [31:0]write_oh,write_en;
	wire [31:0]out0,out1,out2,out3,out4,out5,out6,out7,out8,out9;
	wire [31:0]out10,out11,out12,out13,out14,out15,out16,out17,out18,out19;
	wire [31:0]out20,out21,out22,out23,out24,out25,out26,out27,out28,out29;
	wire [31:0]out30,out31;
	wire [31:0]readA_oh,readB_oh;
	
	assign out0 = 0;
	
	decoder_32 write_de(ctrl_writeReg,write_oh);
	decoder_32 readA_de(ctrl_readRegA,readA_oh);
	decoder_32 readB_de(ctrl_readRegB,readB_oh);
	and32_1 and_oh(write_oh,ctrl_writeEnable,write_en);
//	dff_32 dff0(data_writeReg,write_en[0],ctrl_reset,clock,out0);
	dff_32 dff1(data_writeReg,write_en[1],ctrl_reset,clock,out1);
	dff_32 dff2(data_writeReg,write_en[2],ctrl_reset,clock,out2);
	dff_32 dff3(data_writeReg,write_en[3],ctrl_reset,clock,out3);
	dff_32 dff4(data_writeReg,write_en[4],ctrl_reset,clock,out4);
	dff_32 dff5(data_writeReg,write_en[5],ctrl_reset,clock,out5);
	dff_32 dff6(data_writeReg,write_en[6],ctrl_reset,clock,out6);
	dff_32 dff7(data_writeReg,write_en[7],ctrl_reset,clock,out7);
	dff_32 dff8(data_writeReg,write_en[8],ctrl_reset,clock,out8);
	dff_32 dff9(data_writeReg,write_en[9],ctrl_reset,clock,out9);
	dff_32 dff10(data_writeReg,write_en[10],ctrl_reset,clock,out10);
	dff_32 dff11(data_writeReg,write_en[11],ctrl_reset,clock,out11);
	dff_32 dff12(data_writeReg,write_en[12],ctrl_reset,clock,out12);
	dff_32 dff13(data_writeReg,write_en[13],ctrl_reset,clock,out13);
	dff_32 dff14(data_writeReg,write_en[14],ctrl_reset,clock,out14);
	dff_32 dff15(data_writeReg,write_en[15],ctrl_reset,clock,out15);
	dff_32 dff16(data_writeReg,write_en[16],ctrl_reset,clock,out16);
	dff_32 dff17(data_writeReg,write_en[17],ctrl_reset,clock,out17);
	dff_32 dff18(data_writeReg,write_en[18],ctrl_reset,clock,out18);
	dff_32 dff19(data_writeReg,write_en[19],ctrl_reset,clock,out19);
	dff_32 dff20(data_writeReg,write_en[20],ctrl_reset,clock,out20);
	dff_32 dff21(data_writeReg,write_en[21],ctrl_reset,clock,out21);
	dff_32 dff22(data_writeReg,write_en[22],ctrl_reset,clock,out22);
	dff_32 dff23(data_writeReg,write_en[23],ctrl_reset,clock,out23);
	dff_32 dff24(data_writeReg,write_en[24],ctrl_reset,clock,out24);
	dff_32 dff25(data_writeReg,write_en[25],ctrl_reset,clock,out25);
	dff_32 dff26(data_writeReg,write_en[26],ctrl_reset,clock,out26);
	dff_32 dff27(data_writeReg,write_en[27],ctrl_reset,clock,out27);
	dff_32 dff28(data_writeReg,write_en[28],ctrl_reset,clock,out28);
	dff_32 dff29(data_writeReg,write_en[29],ctrl_reset,clock,out29);
	dff_32 dff30(data_writeReg,write_en[30],ctrl_reset,clock,out30);
	dff_32 dff31(data_writeReg,write_en[31],ctrl_reset,clock,out31);
	
	tristate triA0(out0,readA_oh[0],data_readRegA);
	tristate triA1(out1,readA_oh[1],data_readRegA);
	tristate triA2(out2,readA_oh[2],data_readRegA);
	tristate triA3(out3,readA_oh[3],data_readRegA);
	tristate triA4(out4,readA_oh[4],data_readRegA);
	tristate triA5(out5,readA_oh[5],data_readRegA);
	tristate triA6(out6,readA_oh[6],data_readRegA);
	tristate triA7(out7,readA_oh[7],data_readRegA);
	tristate triA8(out8,readA_oh[8],data_readRegA);
	tristate triA9(out9,readA_oh[9],data_readRegA);
	tristate triA10(out10,readA_oh[10],data_readRegA);
	tristate triA11(out11,readA_oh[11],data_readRegA);
	tristate triA12(out12,readA_oh[12],data_readRegA);
	tristate triA13(out13,readA_oh[13],data_readRegA);
	tristate triA14(out14,readA_oh[14],data_readRegA);
	tristate triA15(out15,readA_oh[15],data_readRegA);
	tristate triA16(out16,readA_oh[16],data_readRegA);
	tristate triA17(out17,readA_oh[17],data_readRegA);
	tristate triA18(out18,readA_oh[18],data_readRegA);
	tristate triA19(out19,readA_oh[19],data_readRegA);
	tristate triA20(out20,readA_oh[20],data_readRegA);
	tristate triA21(out21,readA_oh[21],data_readRegA);
	tristate triA22(out22,readA_oh[22],data_readRegA);
	tristate triA23(out23,readA_oh[23],data_readRegA);
	tristate triA24(out24,readA_oh[24],data_readRegA);
	tristate triA25(out25,readA_oh[25],data_readRegA);
	tristate triA26(out26,readA_oh[26],data_readRegA);
	tristate triA27(out27,readA_oh[27],data_readRegA);
	tristate triA28(out28,readA_oh[28],data_readRegA);
	tristate triA29(out29,readA_oh[29],data_readRegA);
	tristate triA30(out30,readA_oh[30],data_readRegA);
	tristate triA31(out31,readA_oh[31],data_readRegA);
	
	tristate triB0(out0,readB_oh[0],data_readRegB);
	tristate triB1(out1,readB_oh[1],data_readRegB);
	tristate triB2(out2,readB_oh[2],data_readRegB);
	tristate triB3(out3,readB_oh[3],data_readRegB);
	tristate triB4(out4,readB_oh[4],data_readRegB);
	tristate triB5(out5,readB_oh[5],data_readRegB);
	tristate triB6(out6,readB_oh[6],data_readRegB);
	tristate triB7(out7,readB_oh[7],data_readRegB);
	tristate triB8(out8,readB_oh[8],data_readRegB);
	tristate triB9(out9,readB_oh[9],data_readRegB);
	tristate triB10(out10,readB_oh[10],data_readRegB);
	tristate triB11(out11,readB_oh[11],data_readRegB);
	tristate triB12(out12,readB_oh[12],data_readRegB);
	tristate triB13(out13,readB_oh[13],data_readRegB);
	tristate triB14(out14,readB_oh[14],data_readRegB);
	tristate triB15(out15,readB_oh[15],data_readRegB);
	tristate triB16(out16,readB_oh[16],data_readRegB);
	tristate triB17(out17,readB_oh[17],data_readRegB);
	tristate triB18(out18,readB_oh[18],data_readRegB);
	tristate triB19(out19,readB_oh[19],data_readRegB);
	tristate triB20(out20,readB_oh[20],data_readRegB);
	tristate triB21(out21,readB_oh[21],data_readRegB);
	tristate triB22(out22,readB_oh[22],data_readRegB);
	tristate triB23(out23,readB_oh[23],data_readRegB);
	tristate triB24(out24,readB_oh[24],data_readRegB);
	tristate triB25(out25,readB_oh[25],data_readRegB);
	tristate triB26(out26,readB_oh[26],data_readRegB);
	tristate triB27(out27,readB_oh[27],data_readRegB);
	tristate triB28(out28,readB_oh[28],data_readRegB);
	tristate triB29(out29,readB_oh[29],data_readRegB);
	tristate triB30(out30,readB_oh[30],data_readRegB);
	tristate triB31(out31,readB_oh[31],data_readRegB);
	
	


endmodule
