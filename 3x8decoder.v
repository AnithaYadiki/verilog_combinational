
module decoder3x8(a,b,c,y);

	//port declarations
	input wire a,b,c;
	output wire [7:0]y;

	assign y[0] = ~a&~b&~c;
	assign y[1] = ~a&~b&c;
	assign y[2] = ~a&b&~c;
	assign y[3] = ~a&b&c;
	assign y[4] = a&~b&~c;
	assign y[5] = a&~b&c;
	assign y[6] = a&b&~c;
	assign y[7] = a&b&c;
	
endmodule
	