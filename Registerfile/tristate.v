module tristate(d,e,out);

	input [31:0]d;
	input e;
	output [31:0]out;
	
	assign out = e ? d : 32'bz;

endmodule
