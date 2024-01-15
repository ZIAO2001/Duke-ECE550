module adder_32(a,b,cin,sum,cout,of);
	input [32:0] a,b;
	input cin;
	output [32:0] sum;
	output cout,of;
	parameter zero = 1'b0;
	parameter one = 1'b1;
	wire w0,w3,w4,w5,w6,w7;
	wire [16:0] w1,w2;
	adder_16 adder0(a[15:0],b[15:0],cin,sum[15:0],w0,w5);
	adder_16 adder1(a[31:16],b[31:16],zero,w1,w3,w6);
	adder_16 adder2(a[31:16],b[31:16],one,w2,w4,w7);
	mux_2_16 mux_sum(w0,w1,w2,sum[31:16]);
	mux_2_1 mux_cout(w0,w3,w4,cout);
	mux_2_1 mux_of(w0,w6,w7,of);
endmodule
