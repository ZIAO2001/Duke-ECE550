module d_latch(e,d,q,q0,reset);

	input e,d,reset;
	output q,q0;
	wire w0,w1,d0;
	wire reset0;
	wire d1,e1;
	
	not reset_0(reset0,reset);
	or reset_e(e1,e,reset);
	and reset_d(d1,d,reset0);
	
	not not_d(d0,d1);
	and and_top(w0,e1,d0);
	and and_bot(w1,e1,d1);
	
	
	
	srlatch sr(w0,w1,q,q0);
	
endmodule
