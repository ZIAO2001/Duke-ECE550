module mux_2_16(sel, in0, in1, out);
	input sel;
	input [15:0] in0,in1;
	output [15:0] out;
	assign out = sel ? in1 : in0;
endmodule
