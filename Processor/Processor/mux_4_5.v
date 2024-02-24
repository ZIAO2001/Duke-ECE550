module mux_4_5(sel, in0, in1, in2, in3, out);
	input [1:0] sel;
	input [4:0] in0, in1, in2, in3;
	output [4:0] out;
	wire [4:0] w1, w2;
	mux_2_5 first_top(sel[0], in0, in1, w1);
	mux_2_5 first_bot(sel[0], in2, in3, w2);
	mux_2_5 second(sel[1], w1, w2, out);
endmodule
