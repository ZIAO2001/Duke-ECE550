module sll_1(a,shift,result);
	input [31:0]a;
	input [4:0]shift;
	output [31:0]result;
	
	wire [31:0] w0,w1,w2,w3;
	
	assign w0 = shift[0] ? {a[30:0],1'b0} : a;
	
	assign w1 = shift[1] ? {w0[29:0],2'b0} : w0;
	
	assign w2 = shift[2] ? {w1[27:0],4'b0} : w1;
	
	assign w3 = shift[3] ? {w2[23:0],8'b0} : w2;
	
	assign result = shift[4] ? {w3[15:0],16'b0} : w3;
	
	
endmodule