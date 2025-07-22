module tb_tristate();
    reg ctrl;
    wire a, b;
    reg tempa, tempb;
    integer i;

    
    assign a = ctrl ? tempa : 1'bz; 
    assign b = ~ctrl ? tempb : 1'bz;

    tristate uut (.a(a), .b(b), .ctrl(ctrl));

    initial begin
        $monitor("Time=%0t | ctrl=%b | a=%b | b=%b", $time, ctrl, a, b);
        {tempa,tempb,ctrl}=i;
        #10;

        for (i = 0; i < 8; i = i + 1) begin
            {ctrl, tempa, tempb} = i;
            #10;
        end
        
        $finish;
    end
endmodule