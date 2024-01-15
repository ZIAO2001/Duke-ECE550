module sll(a,shift,result);
	input [31:0] a;
	input [4:0] shift;
	output [31:0] result;
	
	wire w0_0,w0_1,w0_2,w0_3,w0_4,w0_5,w0_6,w0_7,w0_8,w0_9;
	wire w0_10,w0_11,w0_12,w0_13,w0_14,w0_15,w0_16,w0_17,w0_18,w0_19;
	wire w0_20,w0_21,w0_22,w0_23,w0_24,w0_25,w0_26,w0_27,w0_28,w0_29,w0_30,w0_31;
	
	wire w1_0,w1_1,w1_2,w1_3,w1_4,w1_5,w1_6,w1_7,w1_8,w1_9;
	wire w1_10,w1_11,w1_12,w1_13,w1_14,w1_15,w1_16,w1_17,w1_18,w1_19;
	wire w1_20,w1_21,w1_22,w1_23,w1_24,w1_25,w1_26,w1_27,w1_28,w1_29,w1_30,w1_31;
	
	wire w2_0,w2_1,w2_2,w2_3,w2_4,w2_5,w2_6,w2_7,w2_8,w2_9;
	wire w2_10,w2_11,w2_12,w2_13,w2_14,w2_15,w2_16,w2_17,w2_18,w2_19;
	wire w2_20,w2_21,w2_22,w2_23,w2_24,w2_25,w2_26,w2_27,w2_28,w2_29,w2_30,w2_31;
	
	wire w3_0,w3_1,w3_2,w3_3,w3_4,w3_5,w3_6,w3_7,w3_8,w3_9;
	wire w3_10,w3_11,w3_12,w3_13,w3_14,w3_15,w3_16,w3_17,w3_18,w3_19;
	wire w3_20,w3_21,w3_22,w3_23,w3_24,w3_25,w3_26,w3_27,w3_28,w3_29,w3_30,w3_31;
	
	mux_2_1 mux0_0(shift[0],a[0],0,w0_0);
	mux_2_1 mux0_1(shift[0],a[1],a[0],w0_1);
	mux_2_1 mux0_2(shift[0],a[2],a[1],w0_2);
	mux_2_1 mux0_3(shift[0],a[3],a[2],w0_3);
	mux_2_1 mux0_4(shift[0],a[4],a[3],w0_4);
	mux_2_1 mux0_5(shift[0],a[5],a[4],w0_5);
	mux_2_1 mux0_6(shift[0],a[6],a[5],w0_6);
	mux_2_1 mux0_7(shift[0],a[7],a[6],w0_7);
	mux_2_1 mux0_8(shift[0],a[8],a[7],w0_8);
	mux_2_1 mux0_9(shift[0],a[9],a[8],w0_9);
	mux_2_1 mux0_10(shift[0],a[10],a[9],w0_10);
	mux_2_1 mux0_11(shift[0],a[11],a[10],w0_11);
	mux_2_1 mux0_12(shift[0],a[12],a[11],w0_12);
	mux_2_1 mux0_13(shift[0],a[13],a[12],w0_13);
	mux_2_1 mux0_14(shift[0],a[14],a[13],w0_14);
	mux_2_1 mux0_15(shift[0],a[15],a[14],w0_15);
	mux_2_1 mux0_16(shift[0],a[16],a[15],w0_16);
	mux_2_1 mux0_17(shift[0],a[17],a[16],w0_17);
	mux_2_1 mux0_18(shift[0],a[18],a[17],w0_18);
	mux_2_1 mux0_19(shift[0],a[19],a[18],w0_19);
	mux_2_1 mux0_20(shift[0],a[20],a[19],w0_20);
	mux_2_1 mux0_21(shift[0],a[21],a[20],w0_21);
	mux_2_1 mux0_22(shift[0],a[22],a[21],w0_22);
	mux_2_1 mux0_23(shift[0],a[23],a[22],w0_23);
	mux_2_1 mux0_24(shift[0],a[24],a[23],w0_24);
	mux_2_1 mux0_25(shift[0],a[25],a[24],w0_25);
	mux_2_1 mux0_26(shift[0],a[26],a[25],w0_26);
	mux_2_1 mux0_27(shift[0],a[27],a[26],w0_27);
	mux_2_1 mux0_28(shift[0],a[28],a[27],w0_28);
	mux_2_1 mux0_29(shift[0],a[29],a[28],w0_29);
	mux_2_1 mux0_30(shift[0],a[30],a[29],w0_30);
	mux_2_1 mux0_31(shift[0],a[31],a[30],w0_31);//First layer
	
	
	
	mux_2_1 mux1_0(shift[1],w0_0,0,w1_0);
	mux_2_1 mux1_1(shift[1],w0_1,0,w1_1);
	mux_2_1 mux1_2(shift[1],w0_2,w0_0,w1_2);
	mux_2_1 mux1_3(shift[1],w0_3,w0_1,w1_3);
	mux_2_1 mux1_4(shift[1],w0_4,w0_2,w1_4);
	mux_2_1 mux1_5(shift[1],w0_5,w0_3,w1_5);
	mux_2_1 mux1_6(shift[1],w0_6,w0_4,w1_6);
	mux_2_1 mux1_7(shift[1],w0_7,w0_5,w1_7);
	mux_2_1 mux1_8(shift[1],w0_8,w0_6,w1_8);
	mux_2_1 mux1_9(shift[1],w0_9,w0_7,w1_9);
	mux_2_1 mux1_10(shift[1],w0_10,w0_8,w1_10);
	mux_2_1 mux1_11(shift[1],w0_11,w0_9,w1_11);
	mux_2_1 mux1_12(shift[1],w0_12,w0_10,w1_12);
	mux_2_1 mux1_13(shift[1],w0_13,w0_11,w1_13);
	mux_2_1 mux1_14(shift[1],w0_14,w0_12,w1_14);
	mux_2_1 mux1_15(shift[1],w0_15,w0_13,w1_15);
	mux_2_1 mux1_16(shift[1],w0_16,w0_14,w1_16);
	mux_2_1 mux1_17(shift[1],w0_17,w0_15,w1_17);
	mux_2_1 mux1_18(shift[1],w0_18,w0_16,w1_18);
	mux_2_1 mux1_19(shift[1],w0_19,w0_17,w1_19);
	mux_2_1 mux1_20(shift[1],w0_20,w0_18,w1_20);
	mux_2_1 mux1_21(shift[1],w0_21,w0_19,w1_21);
	mux_2_1 mux1_22(shift[1],w0_22,w0_20,w1_22);
	mux_2_1 mux1_23(shift[1],w0_23,w0_21,w1_23);
	mux_2_1 mux1_24(shift[1],w0_24,w0_22,w1_24);
	mux_2_1 mux1_25(shift[1],w0_25,w0_23,w1_25);
	mux_2_1 mux1_26(shift[1],w0_26,w0_24,w1_26);
	mux_2_1 mux1_27(shift[1],w0_27,w0_25,w1_27);
	mux_2_1 mux1_28(shift[1],w0_28,w0_26,w1_28);
	mux_2_1 mux1_29(shift[1],w0_29,w0_27,w1_29);
	mux_2_1 mux1_30(shift[1],w0_30,w0_28,w1_30);
	mux_2_1 mux1_31(shift[1],w0_31,w0_29,w1_31);//Second layer
	
	
	mux_2_1 mux2_0(shift[2],w1_0,0,w2_0);
	mux_2_1 mux2_1(shift[2],w1_1,0,w2_1);
	mux_2_1 mux2_2(shift[2],w1_2,0,w2_2);
	mux_2_1 mux2_3(shift[2],w1_3,0,w2_3);
	mux_2_1 mux2_4(shift[2],w1_4,w1_0,w2_4);
	mux_2_1 mux2_5(shift[2],w1_5,w1_1,w2_5);
	mux_2_1 mux2_6(shift[2],w1_6,w1_2,w2_6);
	mux_2_1 mux2_7(shift[2],w1_7,w1_3,w2_7);
	mux_2_1 mux2_8(shift[2],w1_8,w1_4,w2_8);
	mux_2_1 mux2_9(shift[2],w1_9,w1_5,w2_9);
	mux_2_1 mux2_10(shift[2],w1_10,w1_6,w2_10);
	mux_2_1 mux2_11(shift[2],w1_11,w1_7,w2_11);
	mux_2_1 mux2_12(shift[2],w1_12,w1_8,w2_12);
	mux_2_1 mux2_13(shift[2],w1_13,w1_9,w2_13);
	mux_2_1 mux2_14(shift[2],w1_14,w1_10,w2_14);
	mux_2_1 mux2_15(shift[2],w1_15,w1_11,w2_15);
	mux_2_1 mux2_16(shift[2],w1_16,w1_12,w2_16);
	mux_2_1 mux2_17(shift[2],w1_17,w1_13,w2_17);
	mux_2_1 mux2_18(shift[2],w1_18,w1_14,w2_18);
	mux_2_1 mux2_19(shift[2],w1_19,w1_15,w2_19);
	mux_2_1 mux2_20(shift[2],w1_20,w1_16,w2_20);
	mux_2_1 mux2_21(shift[2],w1_21,w1_17,w2_21);
	mux_2_1 mux2_22(shift[2],w1_22,w1_18,w2_22);
	mux_2_1 mux2_23(shift[2],w1_23,w1_19,w2_23);
	mux_2_1 mux2_24(shift[2],w1_24,w1_20,w2_24);
	mux_2_1 mux2_25(shift[2],w1_25,w1_21,w2_25);
	mux_2_1 mux2_26(shift[2],w1_26,w1_22,w2_26);
	mux_2_1 mux2_27(shift[2],w1_27,w1_23,w2_27);
	mux_2_1 mux2_28(shift[2],w1_28,w1_24,w2_28);
	mux_2_1 mux2_29(shift[2],w1_29,w1_25,w2_29);
	mux_2_1 mux2_30(shift[2],w1_30,w1_26,w2_30);
	mux_2_1 mux2_31(shift[2],w1_31,w1_27,w2_31);//Third layer
	
	
	mux_2_1 mux3_0(shift[3],w2_0,0,w3_0);
	mux_2_1 mux3_1(shift[3],w2_1,0,w3_1);
	mux_2_1 mux3_2(shift[3],w2_2,0,w3_2);
	mux_2_1 mux3_3(shift[3],w2_3,0,w3_3);
	mux_2_1 mux3_4(shift[3],w2_4,0,w3_4);
	mux_2_1 mux3_5(shift[3],w2_5,0,w3_5);
	mux_2_1 mux3_6(shift[3],w2_6,0,w3_6);
	mux_2_1 mux3_7(shift[3],w2_7,0,w3_7);
	mux_2_1 mux3_8(shift[3],w2_8,w2_0,w3_8);
	mux_2_1 mux3_9(shift[3],w2_9,w2_1,w3_9);
	mux_2_1 mux3_10(shift[3],w2_10,w2_2,w3_10);
	mux_2_1 mux3_11(shift[3],w2_11,w2_3,w3_11);
	mux_2_1 mux3_12(shift[3],w2_12,w2_4,w3_12);
	mux_2_1 mux3_13(shift[3],w2_13,w2_5,w3_13);
	mux_2_1 mux3_14(shift[3],w2_14,w2_6,w3_14);
	mux_2_1 mux3_15(shift[3],w2_15,w2_7,w3_15);
	mux_2_1 mux3_16(shift[3],w2_16,w2_8,w3_16);
	mux_2_1 mux3_17(shift[3],w2_17,w2_9,w3_17);
	mux_2_1 mux3_18(shift[3],w2_18,w2_10,w3_18);
	mux_2_1 mux3_19(shift[3],w2_19,w2_11,w3_19);
	mux_2_1 mux3_20(shift[3],w2_20,w2_12,w3_20);
	mux_2_1 mux3_21(shift[3],w2_21,w2_13,w3_21);
	mux_2_1 mux3_22(shift[3],w2_22,w2_14,w3_22);
	mux_2_1 mux3_23(shift[3],w2_23,w2_15,w3_23);
	mux_2_1 mux3_24(shift[3],w2_24,w2_16,w3_24);
	mux_2_1 mux3_25(shift[3],w2_25,w2_17,w3_25);
	mux_2_1 mux3_26(shift[3],w2_26,w2_18,w3_26);
	mux_2_1 mux3_27(shift[3],w2_27,w2_19,w3_27);
	mux_2_1 mux3_28(shift[3],w2_28,w2_20,w3_28);
	mux_2_1 mux3_29(shift[3],w2_29,w2_21,w3_29);
	mux_2_1 mux3_30(shift[3],w2_30,w2_22,w3_30);
	mux_2_1 mux3_31(shift[3],w2_31,w2_23,w3_31);//Fourth layer
	
	
	mux_2_1 mux4_0(shift[4],w3_0,0,result[0]);
	mux_2_1 mux4_1(shift[4],w3_1,0,result[1]);
	mux_2_1 mux4_2(shift[4],w3_2,0,result[2]);
	mux_2_1 mux4_3(shift[4],w3_3,0,result[3]);
	mux_2_1 mux4_4(shift[4],w3_4,0,result[4]);
	mux_2_1 mux4_5(shift[4],w3_5,0,result[5]);
	mux_2_1 mux4_6(shift[4],w3_6,0,result[6]);
	mux_2_1 mux4_7(shift[4],w3_7,0,result[7]);
	mux_2_1 mux4_8(shift[4],w3_8,0,result[8]);
	mux_2_1 mux4_9(shift[4],w3_9,0,result[9]);
	mux_2_1 mux4_10(shift[4],w3_10,0,result[10]);
	mux_2_1 mux4_11(shift[4],w3_11,0,result[11]);
	mux_2_1 mux4_12(shift[4],w3_12,0,result[12]);
	mux_2_1 mux4_13(shift[4],w3_13,0,result[13]);
	mux_2_1 mux4_14(shift[4],w3_14,0,result[14]);
	mux_2_1 mux4_15(shift[4],w3_15,0,result[15]);
	mux_2_1 mux4_16(shift[4],w3_16,w3_0,result[16]);
	mux_2_1 mux4_17(shift[4],w3_17,w3_1,result[17]);
	mux_2_1 mux4_18(shift[4],w3_18,w3_2,result[18]);
	mux_2_1 mux4_19(shift[4],w3_19,w3_3,result[19]);
	mux_2_1 mux4_20(shift[4],w3_20,w3_4,result[20]);
	mux_2_1 mux4_21(shift[4],w3_21,w3_5,result[21]);
	mux_2_1 mux4_22(shift[4],w3_22,w3_6,result[22]);
	mux_2_1 mux4_23(shift[4],w3_23,w3_7,result[23]);
	mux_2_1 mux4_24(shift[4],w3_24,w3_8,result[24]);
	mux_2_1 mux4_25(shift[4],w3_25,w3_9,result[25]);
	mux_2_1 mux4_26(shift[4],w3_26,w3_10,result[26]);
	mux_2_1 mux4_27(shift[4],w3_27,w3_11,result[27]);
	mux_2_1 mux4_28(shift[4],w3_28,w3_12,result[28]);
	mux_2_1 mux4_29(shift[4],w3_29,w3_13,result[29]);
	mux_2_1 mux4_30(shift[4],w3_30,w3_14,result[30]);
	mux_2_1 mux4_31(shift[4],w3_31,w3_15,result[31]);//Fifth layer
	
	
endmodule
