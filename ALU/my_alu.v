module my_alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output wire [31:0] data_result;
   output wire isNotEqual, isLessThan, overflow;
	
	wire w0;
	wire [31:0] add_result,minus_result,and_result,or_result,sll_result,sra_result;
	wire add_overflow,minus_overflow,isEqual,isLess;
	
	wire [31:0] temp1,temp2;
	wire [2:0] temp3;
	
	assign temp1 = data_operandA;
	assign temp2 = data_operandB;
	assign temp3 = ctrl_ALUopcode[2:0];

	adder_32 myadder(temp1,temp2,0,add_result,w0,add_overflow);
	subtractor_32 mysubtractor(temp1,temp2,minus_result,w0,minus_overflow,isLess,isEqual);
	bitwiseAnd myAnd(temp1, temp2,and_result);
	bitwiseOr myOr(temp1, temp2,or_result);
	sll mySll(temp1,ctrl_shiftamt,sll_result);
	sra mySra(temp1,ctrl_shiftamt,sra_result);
	
	mux_8_32 output_mux(temp3, add_result, minus_result, and_result, or_result, sll_result, sra_result, 0, 0, data_result);
	mux_8_1 overflow_mux(temp3,add_overflow,minus_overflow,0,0,0,0,0,0,overflow);
	mux_8_1 isNotEqual_mux(temp3,0,isEqual,0,0,0,0,0,0,isNotEqual);
	mux_8_1 isLessThan_mux(temp3,0,isLess,0,0,0,0,0,0,isLessThan);
	
	
//	always @ (*) 
//		begin
//			if(ctrl_ALUopcode == 5'b00000) begin
//				data_result <= add_result;
//				overflow <= add_overflow;
//			end
//			else if(ctrl_ALUopcode == 5'b00001) begin
//				data_result <= minus_result;
//				overflow <= minus_overflow;
//				isNotEqual <= isEqual;
//				isLessThan <= isLess;
//			end
//			else if(ctrl_ALUopcode == 5'b00010) begin
//				data_result <= and_result;
//			end
//			else if(ctrl_ALUopcode == 5'b00011) begin
//				data_result <= or_result;
//			end
//			else if(ctrl_ALUopcode == 5'b00100) begin
//				data_result <= sll_result;
//			end
//			else if(ctrl_ALUopcode == 5'b00101) begin
//				data_result <= sra_result;
//			end
//		end
//	
	
endmodule