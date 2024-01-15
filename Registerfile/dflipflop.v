module dflipflop(data,enable,clock,q,q0,reset);

	input data,clock,enable,reset;
	output reg q,q0;
	
	always@(posedge clock)
	begin
		if(reset)
		begin
			q = 0;
			q0 = 1;
		end
		else begin
			if(enable)
			begin
				q = data;
				q0 = ~q;
			end
		end
		
	end
//	input data,enable,clock,reset;
//	output q,q0;
//	wire w0,w1;
//	wire clk0,clk_e,clk0_e;
//	
//	not clk_not(clk0,clock);
//	and clk_and(clk_e,enable,clock);
//	and clk0_and(clk0_e,enable,clk0);
//	
//
//	d_latch dlatch_left(clk0_e,data,w0,w1,reset);
//	d_latch dlatch_right(clk_e,w0,q,q0,reset);

endmodule
