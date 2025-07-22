module full_adder(a,b,c_in,sum,carry);
    input wire a,b,c_in;
	output wire sum,carry;
	wire w1,w2,w3;
   half_adder h1 (.a(a),.b(b),.sum(w1),.carry(w2));
   half_adder h2 (.a(w1),.b(c_in),.sum(sum),.carry(w3));
   or or1(carry,w1,w2);
endmodule