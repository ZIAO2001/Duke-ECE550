module subtractor_32(a,b,sum,cout,of,isLess,isEqual);
	input [31:0] a,b;
	output [31:0]sum;
	output cout,of;
	output isLess,isEqual;
	wire [31:0] newb;
	wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9;
	wire w10,w11,w12,w13,w14,w15,w16,w17,w18,w19;
	wire w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31;
	
	not not_0(newb[0],b[0]);
	not not_1(newb[1],b[1]);
	not not_2(newb[2],b[2]);
	not not_3(newb[3],b[3]);
	not not_4(newb[4],b[4]);
	not not_5(newb[5],b[5]);
	not not_6(newb[6],b[6]);
	not not_7(newb[7],b[7]);
	not not_8(newb[8],b[8]);
	not not_9(newb[9],b[9]);
	not not_10(newb[10],b[10]);
	not not_11(newb[11],b[11]);
	not not_12(newb[12],b[12]);
	not not_13(newb[13],b[13]);
	not not_14(newb[14],b[14]);
	not not_15(newb[15],b[15]);
	not not_16(newb[16],b[16]);
	not not_17(newb[17],b[17]);
	not not_18(newb[18],b[18]);
	not not_19(newb[19],b[19]);
	not not_20(newb[20],b[20]);
	not not_21(newb[21],b[21]);
	not not_22(newb[22],b[22]);
	not not_23(newb[23],b[23]);
	not not_24(newb[24],b[24]);
	not not_25(newb[25],b[25]);
	not not_26(newb[26],b[26]);
	not not_27(newb[27],b[27]);
	not not_28(newb[28],b[28]);
	not not_29(newb[29],b[29]);
	not not_30(newb[30],b[30]);
	not not_31(newb[31],b[31]);
	
	

	

	
	adder_32 sub(a,newb,1,sum,cout,of);
	
	or or_0(w0,sum[0],sum[1]);
	or or_1(w1,w0,sum[2]);
	or or_2(w2,w1,sum[3]);
	or or_3(w3,w2,sum[4]);
	or or_4(w4,w3,sum[5]);
	or or_5(w5,w4,sum[6]);
	or or_6(w6,w5,sum[7]);
	or or_7(w7,w6,sum[8]);
	or or_8(w8,w7,sum[9]);
	or or_9(w9,w8,sum[10]);
	or or_10(w10,w9,sum[11]);
	or or_11(w11,w10,sum[12]);
	or or_12(w12,w11,sum[13]);
	or or_13(w13,w12,sum[14]);
	or or_14(w14,w13,sum[15]);
	or or_15(w15,w14,sum[16]);
	or or_16(w16,w15,sum[17]);
	or or_17(w17,w16,sum[18]);
	or or_18(w18,w17,sum[19]);
	or or_19(w19,w18,sum[20]);
	or or_20(w20,w19,sum[21]);
	or or_21(w21,w20,sum[22]);
	or or_22(w22,w21,sum[23]);
	or or_23(w23,w22,sum[24]);
	or or_24(w24,w23,sum[25]);
	or or_25(w25,w24,sum[26]);
	or or_26(w26,w25,sum[27]);
	or or_27(w27,w26,sum[28]);
	or or_28(w28,w27,sum[29]);
	or or_29(w29,w28,sum[30]);
	or or_30(w30,w29,sum[31]);
	
	and and_0(w31,w30,1);
	
	
	mux_2_1 isEqual_mux(w31,0,1,isEqual);
	mux_2_1 isLess_mux(of,sum[31],a[31],isLess);
	

endmodule