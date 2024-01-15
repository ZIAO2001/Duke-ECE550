module mux_8_1(sel, in0, in1, in2, in3, in4, in5, in6, in7, out);
	input [2:0] sel;
	input in0, in1, in2, in3, in4, in5, in6, in7;
	output out;
	wire w1, w2;
	mux_4_1 first_top(sel[1:0], in0, in1, in2, in3, w1);
	mux_4_1 first_bot(sel[1:0], in4, in5, in6, in7, w2);
	mux_2_1 second(sel[2], w1, w2, out);
endmodule
