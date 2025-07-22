module full_adder_tb( );
    reg a,b,c_in;
    wire sum,carry;
    integer i;
    full_adder DUT(a,b,c_in,sum,carry);
    initial
      begin
       {a,b,c_in} = 3'b0;
      end
    initial
      begin
        for(i=0;i<8;i=i+1)
          begin
            {a,b,c_in}=i;
            #50;
          end
      end
    initial
      begin
      $monitor("Input a=%b, b=%b, c_in=%b, Output sum=%b, carry=%b",a,b,c_in,sum,carry);
      end
endmodule
