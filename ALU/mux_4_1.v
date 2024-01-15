module mux_4_1(sel, in0, in1, in2, in3, out);
	input [1:0] sel;
	input in0, in1, in2, in3;
	output out;
	wire w1, w2;
	mux_2_1 first_top(sel[0], in0, in1, w1);
	mux_2_1 first_bot(sel[0], in2, in3, w2);
	mux_2_1 second(sel[1], w1, w2, out);
endmodule
