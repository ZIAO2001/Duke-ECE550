module adder_8(a,b,cin,sum,cout,of);
	input [7:0] a,b;
	input cin;
	output [7:0] sum;
	output cout,of;
	wire w0,w1,w2,w3,w4,w5,w6;
	parameter zero = 1'b0;
	full_adder adder_0(a[0],b[0],cin,sum[0],w0);
	full_adder adder_1(a[1],b[1],w0,sum[1],w1);
	full_adder adder_2(a[2],b[2],w1,sum[2],w2);
	full_adder adder_3(a[3],b[3],w2,sum[3],w3);
	full_adder adder_4(a[4],b[4],w3,sum[4],w4);
	full_adder adder_5(a[5],b[5],w4,sum[5],w5);
	full_adder adder_6(a[6],b[6],w5,sum[6],w6);
	full_adder adder_7(a[7],b[7],w6,sum[7],cout);
	xor overflow(of,w6,cout);
endmodule