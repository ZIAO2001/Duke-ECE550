module imem_test(address,data,clock);

	input clock;
	input [11:0] address;
	output [31:0] data;
	
	imem my_imem(address,clock,data);
	
	

endmodule
