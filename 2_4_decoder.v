

module decoder(i,y,en);

	//port declarations
	input wire [1:0]i;
	input wire en;
	output wire [3:0]y;
	
	assign en=1'b1;
	assign y[0] = ~i[1]&~i[0]&en;
	assign y[1] = ~i[1]&i[0]&en;
	assign y[2] = i[1]&~i[0]&en;
	assign y[3] = i[1]&i[0]&en;
	
endmodule
	