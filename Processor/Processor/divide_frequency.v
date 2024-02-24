module divide_frequency(rst,clk_in,clk2_out,clk4_out);
	input rst,clk_in;
	output reg clk2_out,clk4_out;
	
	always@(posedge clk_in) begin
		if(rst) clk2_out <= 0;
		clk2_out <= ~clk2_out;
	end
	
	always@(posedge clk2_out) begin
		if(rst) clk4_out <= 0;
		clk4_out <= ~clk4_out;
	end


endmodule
