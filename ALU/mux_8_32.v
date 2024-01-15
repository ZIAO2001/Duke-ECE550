module mux_8_32(sel, in0, in1, in2, in3, in4, in5, in6, in7, out);
	input [2:0] sel;
	input [31:0] in0, in1, in2, in3, in4, in5, in6, in7;
	output [31:0] out;
	wire [31:0] w1, w2;
	mux_4_32 first_top(sel[1:0], in0, in1, in2, in3, w1);
	mux_4_32 first_bot(sel[1:0], in4, in5, in6, in7, w2);
	mux_2_32 second(sel[2], w1, w2, out);
endmodule
