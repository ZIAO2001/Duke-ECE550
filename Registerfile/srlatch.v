module srlatch(r,s,q,q0);
	input r,s;
	output q,q0;
	wire w0,w1;
	nor nor_top(w0,r,w1);
	nor nor_bot(w1,w0,s);
	
	assign q = w0;
	assign q0 = w1;
	
endmodule
