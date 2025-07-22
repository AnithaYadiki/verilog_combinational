module ripple_carry_adder(
     input [3:0]a,[3:0]b,c_in,
	 output [3:0]s,c_out,
	 wire w1,w2,w3);
 full_adder  b1(.a(a[0]),.b(b[0]),.c_in((c_in)),.sum(s[0]),.carry(w1));
 full_adder  b2(.a(a[1]),.b(b[1]),.c_in(w1),.sum(s[1]),.carry(w2));
 full_adder  b3(.a(a[2]),.b(b[2]),.c_in(w2),.sum(s[2]),.carry(w3));
 full_adder  b4(.a(a[3]),.b(b[3]),.c_in(w3),.sum(s[0]),.carry(c_out));

endmodule