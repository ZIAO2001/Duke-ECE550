module dff_32(data,enable,reset,clock,q);
	
	input [31:0]data;
	input enable,reset,clock;
	output [31:0]q;
	wire [31:0] q0;
	
	dflipflop dflipflop0(data[0],enable,clock,q[0],q0[0],reset);
	dflipflop dflipflop1(data[1],enable,clock,q[1],q0[1],reset);
	dflipflop dflipflop2(data[2],enable,clock,q[2],q0[2],reset);
	dflipflop dflipflop3(data[3],enable,clock,q[3],q0[3],reset);
	dflipflop dflipflop4(data[4],enable,clock,q[4],q0[4],reset);
	dflipflop dflipflop5(data[5],enable,clock,q[5],q0[5],reset);
	dflipflop dflipflop6(data[6],enable,clock,q[6],q0[6],reset);
	dflipflop dflipflop7(data[7],enable,clock,q[7],q0[7],reset);
	dflipflop dflipflop8(data[8],enable,clock,q[8],q0[8],reset);
	dflipflop dflipflop9(data[9],enable,clock,q[9],q0[9],reset);
	dflipflop dflipflop10(data[10],enable,clock,q[10],q0[10],reset);
	dflipflop dflipflop11(data[11],enable,clock,q[11],q0[11],reset);
	dflipflop dflipflop12(data[12],enable,clock,q[12],q0[12],reset);
	dflipflop dflipflop13(data[13],enable,clock,q[13],q0[13],reset);
	dflipflop dflipflop14(data[14],enable,clock,q[14],q0[14],reset);
	dflipflop dflipflop15(data[15],enable,clock,q[15],q0[15],reset);
	dflipflop dflipflop16(data[16],enable,clock,q[16],q0[16],reset);
	dflipflop dflipflop17(data[17],enable,clock,q[17],q0[17],reset);
	dflipflop dflipflop18(data[18],enable,clock,q[18],q0[18],reset);
	dflipflop dflipflop19(data[19],enable,clock,q[19],q0[19],reset);
	dflipflop dflipflop20(data[20],enable,clock,q[20],q0[20],reset);
	dflipflop dflipflop21(data[21],enable,clock,q[21],q0[21],reset);
	dflipflop dflipflop22(data[22],enable,clock,q[22],q0[22],reset);
	dflipflop dflipflop23(data[23],enable,clock,q[23],q0[23],reset);
	dflipflop dflipflop24(data[24],enable,clock,q[24],q0[24],reset);
	dflipflop dflipflop25(data[25],enable,clock,q[25],q0[25],reset);
	dflipflop dflipflop26(data[26],enable,clock,q[26],q0[26],reset);
	dflipflop dflipflop27(data[27],enable,clock,q[27],q0[27],reset);
	dflipflop dflipflop28(data[28],enable,clock,q[28],q0[28],reset);
	dflipflop dflipflop29(data[29],enable,clock,q[29],q0[29],reset);
	dflipflop dflipflop30(data[30],enable,clock,q[30],q0[30],reset);
	dflipflop dflipflop31(data[31],enable,clock,q[31],q0[31],reset);

endmodule