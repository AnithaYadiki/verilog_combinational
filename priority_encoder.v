module priority_encoder(en,d,y);
    input wire en;
	input wire[7:0]d;
	output wire[3:0]y;
	wire w1,w2,w3;
 or or1(w1,d[4],d[5],d[6],d[7]);
 or or2(w2,d[2],d[3],d[6],d[7]);
 or or3(w3,d[1],d[3],d[5],d[7]);
 
 and and1(y[2],w1,en);
 and and2(y[1],w2,en);
 and and3(y[3],w3,en);
endmodule
