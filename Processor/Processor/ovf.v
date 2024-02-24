module ovf(a,b,op,of);
	
	
	input [31:0] a,b;
	input [4:0] op;
	
	
	wire signed[31:0] inner_A, inner_B;
	reg signed[32:0] inner_result;
	assign inner_A = a;
	assign inner_B = b;
	output of;
	
		assign of = (inner_result > 2147483647 || inner_result < -2147483648);
	
	always@(*) begin
		if(op == 0) begin
			inner_result = inner_A + inner_B;
		end
		if(op == 1) begin
			inner_result = inner_A - inner_B;
		end
	
	end
	


endmodule
