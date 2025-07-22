module decoder_3x8_tb();
    reg a,b,c;
    wire [7:0]y;
   integer i;
decoder3x8 DUT (a,b,c,y);
   initial 
     begin
    for(i=0;i<7;i=i+1)
	  begin
	   {a,b,c}=i;#50;
	  end
	 end
endmodule
	  
	
     