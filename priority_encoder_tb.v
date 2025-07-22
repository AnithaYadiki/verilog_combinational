module priority_encoder_tb();
    reg en;
	reg[7:0]d;
	wire[1:0]y;
 priority_encoder DUT (en,d,y);
 
 initial 
   begin
     en=1;d=7'b1000000;#50
	 en=1;d=6'b100000;#50
	 en=1;d=5'b10000;#50
	 en=1;d=4'b1000;#50
	 en=1;d=3'b100;#50
	 en=1;d=2'b10;#50
	 en=1;d=1'b1;#50
	 en=1;d=7'b0000000;#50
$monitor("input en=%b,d=%b,output y=%b",en,d,y);
    end
endmodule
	 