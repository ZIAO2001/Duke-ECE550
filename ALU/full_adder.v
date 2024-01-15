module full_adder(a,b,cin,sum,cout);
	input a;
	input b;
	input cin;
	output sum;
	output cout;
	wire w1, w2, w3;
	xor a_b_xor(w1, a, b);
	xor w1_cin_xor(sum, w1, cin);
	and w1_cin_and(w2, w1, cin);
	and a_b_and(w3, a, b);
	or w2_w3(cout, w2, w3);
endmodule
