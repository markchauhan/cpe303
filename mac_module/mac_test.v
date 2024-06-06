module tb_mac();

    reg signed [3:0] IN;
    reg signed [3:0] W;
    reg clk;
    reg rstb;
    wire signed [11:0] OUT;

    mac uut (
        .IN(IN),
        .W(W),
        .clk(clk),
        .rstb(rstb),
        .OUT(OUT)
    );

    initial begin
        clk = 0;
        rstb = 0;
        IN = 0;
        W = 0;
        #10 rstb = 1;

       
        #10 IN = 4; W = 3;  
        #10 IN = -1; W = 2; 
        #10 IN = 2; W = -2;  
        #10 IN = 1; W = 1; 
        #10 IN = -3; W = 1; 
        #10 IN = 3; W = -1;  
        #10 IN = -2; W = 2;  
        #10 IN = 2; W = -3; 
        #10 IN = -4; W = -4; 

        //Reset module
        #10 rstb = 0;
        #10 rstb = 1;

        #10 IN = 1; W = 1;   
        #10 IN = -1; W = -1; 
        #10 IN = 2; W = 2;  
        #10 IN = -2; W = -2; 
        #10 IN = 3; W = 3;  
        #10 IN = -3; W = -3; 
        #10 IN = 4; W = 4;  
        #10 IN = -4; W = -4;
        #10 IN = 1; W = -1;  
        #10 IN = -1; W = 1;  
        #10 IN = 2; W = -2;  

        #100 $stop;
    end

    always #5 clk = ~clk;

endmodule

