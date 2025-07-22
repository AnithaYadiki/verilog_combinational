
module mux_4x1(
    input [3:0]i,
	input [1:0]sel,
	output y,
	wire w1,w2);
   mux_2x1  m1(.a(i[0]),.b(i[1]),.sel(sel[0]),.y(w1));
   mux_2x1  m2(.a(i[2]),.b(i[3]),.sel(sel[0]),.y(w2));
   mux_2x1  m3(.a(w1),.b(w2),.sel(sel[1]),.y(y));
 endmodule