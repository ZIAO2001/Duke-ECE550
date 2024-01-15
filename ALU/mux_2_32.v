module mux_2_32(sel, in0, in1, out);
	input sel;
	input [31:0] in0,in1;
	output [31:0] out;
	assign out = sel ? in1 : in0;
endmodule