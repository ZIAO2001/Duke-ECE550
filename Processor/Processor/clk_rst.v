module clk_rst (clk, reset, clk_out);
	output reg clk_out;
	input clk ;
	input reset;

	always @(posedge clk)
	begin
	if (reset)
		clk_out <= 1'b0;
	else
		clk_out <= ~clk_out;	
	end
endmodule