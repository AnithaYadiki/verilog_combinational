module tristate(inout a,b, input ctrl);
    bufif1(b,a,ctrl);
    bufif0(a,b,ctrl);
endmodule