module nd(op_setx,of,op_jal,nd,d);


	input op_setx,of,op_jal;
	input [4:0]nd;
	output [4:0]d;
	wire of_setx;
	wire [4:0]mux1out;
	or(of_setx,of,op_setx);
	mux_2_5bit mux1(nd,5'b11111,op_jal,mux1out);
	mux_2_5bit mux2(mux1out,5'b11110,of_setx,d);
//	assign d = (op_setx | of) ? 30 : op_jal ? 31 : nd;
//	always@(*) begin
//		if(op_setx == 1 || of == 1) begin
//			d <= 5'd30;
//		end
//		if(op_jal == 1) begin
//			d <= 5'd31;
//		end
//		else begin
//			d <= nd;
//		end
//	end


endmodule


//module mux_2_5bit(a, b, sel, out);
//
//    input [4:0] a, b;
//    input sel;
//    output [4:0] out;
//    
//    assign out = sel ? b : a;
//
//endmodule