module mux_4_32(sel, in0, in1, in2, in3, out);
	input [1:0] sel;
	input [31:0] in0, in1, in2, in3;
	output [31:0] out;
	wire [31:0] w1, w2;
	mux_2_32 first_top(sel[0], in0, in1, w1);
	mux_2_32 first_bot(sel[0], in2, in3, w2);
	mux_2_32 second(sel[1], w1, w2, out);
endmodule
