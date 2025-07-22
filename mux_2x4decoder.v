module mux_2x4decoder(i,s,en,y);
    input wire [3:0] i;
    input wire [1:0] s;
    input wire  en;
    output wire y;
    wire [3:0]b;
	
decoder d1(.i(s),.en(en),.y(b));
   
     bufif1 buf1(y,i[0],b[0]);
	 bufif1 buf2(y,i[1],b[1]);
	 bufif1 buf3(y,i[2],b[2]);
	 bufif1 buf4(y,i[3],b[3]);
endmodule