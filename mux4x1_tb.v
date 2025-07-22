module mux4x1_tb();
    reg [3:0]i;
	reg [1:0]sel;
	wire y;
	integer k,j;
 mux_4x1 DUT(i,sel,y);
   initial
     begin
	   for(k=0;k<16;k=k+1)
	     begin
	      i=k;
		for(j=0;j<4;j=j+1)
		 begin
		
		  sel=j;
		  #50;
		 end
		 end
    end
	initial
	begin
	$monitor("i=%b,sel=%b,y=%b",i,sel,y);
	end
endmodule
	