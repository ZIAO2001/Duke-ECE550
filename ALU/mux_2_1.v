module mux_2_1(sel, in0, in1, out);
	input sel;
	input in0,in1;
	output out;
	assign out = sel ? in1 : in0;
endmodule
