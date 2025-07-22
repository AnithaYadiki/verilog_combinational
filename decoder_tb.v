module decoder_tb();
    reg [1:0]i;
	wire [3:0]y;
decoder DUT (i,y);

initial
  begin
    i[0]=0;i[1]=0;#50;
    i[0]=0;i[1]=1;#50;
    i[0]=1;i[1]=0;#50;
    i[0]=1;i[1]=1;#50;

  end
	initial
	begin
 q$monitor("input i[0]=%b,i[1]=%b,output y=%b",i[0],i[1],y);
    end
endmodule