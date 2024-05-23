`timescale 1ns/10ps

module alu_conv_test;
    reg [7:0] a0_mux; 
    reg [7:0] a1_mux; 
    reg a_sel;
    reg [7:0] b; 
    reg [2:0] ctrl; 
    wire [7:0] out; 
	 
    alu_conv dut (
        .a0_mux(a0_mux), 
        .a1_mux(a1_mux), 
        .a_sel(a_sel), 
        .b(b), 
        .ctrl(ctrl), 
        .out(out)
    );
    
    initial begin
        // Initializing inputs
        // Test ADD operation (ctrl = 000)
        a0_mux = 8'h08;
        a1_mux = 8'h10;
        a_sel = 1'b1;
        b = 8'h10;
        ctrl = 3'b000;
        #10; // Test Case 1: ADD

        a0_mux = 8'h50;
        a1_mux = 8'h07;
        a_sel = 1'b1;
        b = 8'h07;
        ctrl = 3'b000;
        #10; // Test Case 2: ADD

        // Test SUB operation (ctrl = 001)
        a0_mux = 8'h80;
        a1_mux = 8'h41;
        a_sel = 1'b1;
        b = 8'h03;
        ctrl = 3'b001;
        #10; // Test Case 1: SUB

        a0_mux = 8'h55;
        a1_mux = 8'h4a;
        a_sel = 1'b1;
        b = 8'h10;
        ctrl = 3'b001;
        #10; // Test Case 2: SUB

        // Test OR operation (ctrl = 010)
        a0_mux = 8'h11;
        a1_mux = 8'h02;
        a_sel = 1'b1;
        b = 8'h02;
        ctrl = 3'b010;
        #10; // Test Case 1: OR

        a0_mux = 8'h15;
        a1_mux = 8'h01;
        a_sel = 1'b1;
        b = 8'h12;
        ctrl = 3'b010;
        #10; // Test Case 2: OR

        // Test AND operation (ctrl = 011)
        a0_mux = 8'h88;
        a1_mux = 8'h03;
        a_sel = 1'b1;
        b = 8'h10;
        ctrl = 3'b011;
        #10; // Test Case 1: AND

        a0_mux = 8'h89;
        a1_mux = 8'h01;
        a_sel = 1'b1;
        b = 8'h11;
        ctrl = 3'b011;
        #10; // Test Case 2: AND

        // Test XOR operation (ctrl = 100)
        a0_mux = 8'h33;
        a1_mux = 8'h22;
        a_sel = 1'b1;
        b = 8'h12;
        ctrl = 3'b100;
        #10; // Test Case 1: XOR

        a0_mux = 8'h11;
        a1_mux = 8'h21;
        a_sel = 1'b1;
        b = 8'h10;
        ctrl = 3'b100;
        #10; // Test Case 2: XOR

        // Test NOT operation (ctrl = 101)
        a0_mux = 8'h21;
        a1_mux = 8'h47;
        a_sel = 1'b1;
        b = 8'h12;
        ctrl = 3'b101;
        #10; // Test Case 1: NOT

        a0_mux = 8'h88;
        a1_mux = 8'h78;
        a_sel = 1'b1;
        b = 8'h01;
        ctrl = 3'b101;
        #10; // Test Case 2: NOT

        // Test LSL operation (ctrl = 110)
        a0_mux = 8'h09;
        a1_mux = 8'h02;
        a_sel = 1'b1;
        b = 8'h01;
        ctrl = 3'b110;
        #10; // Test Case 1: LSL

        a0_mux = 8'h06;
        a1_mux = 8'h31;
        a_sel = 1'b1;
        b = 8'h10;
        ctrl = 3'b110;
        #10; // Test Case 2: LSL

        // Test LSR operation (ctrl = 111)
        a0_mux = 8'h02;
        a1_mux = 8'h06;
        a_sel = 1'b1;
        b = 8'h02;
        ctrl = 3'b111;
        #10; // Test Case 1: LSR

        a0_mux = 8'h09;
        a1_mux = 8'hff;
        a_sel = 1'b1;
        b = 8'h22;
        ctrl = 3'b111;
        #10; // Test Case 2: LSR

        // Finish the simulation
        #20 $finish;
    end
endmodule

