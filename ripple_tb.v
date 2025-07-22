module ripple_tb();
    reg	 [3:0]a,b;
    reg c_in;
	 wire [3:0]s;
	 wire c_out;
	  integer i,j;
ripple_carry_adder DUT (a,b,c_in,s,c_out);
  
   initial 
    begin
    c_in=0;
     for(i=0;i<16;i=i+1)
       begin
       a=i;
       #50;
       end
       for(j=0;j<16;j=j+1)
       begin
       b=j;
       #50;
      end
    end
initial
    begin
      $monitor("a=%b,b=%b,c_in=%b,s=%b,c_out=%b",a,b,c_in,s,c_out);
      end
endmodule