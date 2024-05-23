`timescale 1ns/10ps
//================================================
// Conventional ALU: ADD(000), SUB(001), OR(010), AND(011), XOR(100), NOT(101), LSL(110), LSR(111)
// Create   Date: 11.13.2016
// Modification: 1. Based on alu_main(v3) and alu_muxGroup_v2  
//               2. ALU(w/o output mux)+ alu_muxGroup
//               3. Add input mux
// Written by: Edison
//================================================

// Top module
module alu_conv(a0_mux, a1_mux, a_sel, b, ctrl, out);	
    input  	[7:0] a0_mux;
    input  	[7:0] a1_mux;
    input         a_sel;
    input  	[7:0] b;
    input  	[2:0] ctrl;
    output  [7:0] out;
	
    wire	[7:0] a;
    wire 	[7:0] out_add;
    wire 	[7:0] out_sub;
    wire 	[7:0] out_or;
    wire 	[7:0] out_and;
    wire 	[7:0] out_xor;
    wire 	[7:0] out_not;
    wire	[7:0] out_lsl;
    wire 	[7:0] out_lsr;

    // Input muxGroups
    mux2_n #(8) muxGroup_input (
        .a   (a0_mux),
        .b   (a1_mux),
        .sel (a_sel),
        .out (a)
    );

    // ALU w/o input and output muxGroups 	
    alu_main alu (
        .a      (a),
        .b      (b),
        .out_add(out_add),
        .out_sub(out_sub),
        .out_or (out_or),
        .out_and(out_and),
        .out_xor(out_xor),
        .out_not(out_not),
        .out_lsl(out_lsl),
        .out_lsr(out_lsr)
    );

    // Output muxGroups
    mux8_n #(8) muxGroup_output (
        .a   (out_add),
        .b   (out_sub),
        .c   (out_or),
        .d   (out_and),
        .e   (out_xor),
        .f   (out_not),
        .g   (out_lsl),
        .h   (out_lsr),
        .sel (ctrl),
        .out (out)
    );
endmodule 

module add(a, b, out);
    input  [7:0] a;
    input  [7:0] b;
    output [7:0] out;
    assign out = a + b;
endmodule

module sub(a, b, out);
    input  [7:0] a;
    input  [7:0] b;
    output [7:0] out;
    assign out = a - b;
endmodule

module or_n(a, b, out);
    input  [7:0] a;
    input  [7:0] b;
    output [7:0] out;
    assign out = a | b;
endmodule

module and_n(a, b, out);
    input  [7:0] a;
    input  [7:0] b;
    output [7:0] out;
    assign out = a & b;
endmodule

module xor_n(a, b, out);
    input  [7:0] a;
    input  [7:0] b;
    output [7:0] out;
    assign out = a ^ b;
endmodule

module not_n(a, out);
    input  [7:0] a;
    output [7:0] out;
    assign out = ~a;
endmodule

module lsl(a, out);
    input  [7:0] a;
    output [7:0] out;
    assign out = a << 1;
endmodule

module lsr(a, out);
    input  [7:0] a;
    output [7:0] out;
    assign out = a >>> 1;
endmodule

module mux2_n(a, b, sel, out);
    parameter n = 8;
    input  [n-1:0] a;
    input  [n-1:0] b;
    input          sel;
    output [n-1:0] out;
    assign out = (sel == 0) ? a : b;
endmodule

// ALU_main(v3)(w/o mux group)
module alu_main(a, b, out_add, out_sub, out_or, out_and, out_xor, out_not, out_lsl, out_lsr);
    input  [7:0] a;
    input  [7:0] b;
    output [7:0] out_add;
    output [7:0] out_sub;
    output [7:0] out_or;
    output [7:0] out_and;
    output [7:0] out_xor;
    output [7:0] out_not;
    output [7:0] out_lsl;
    output [7:0] out_lsr;

    add add_1 (
        .a   (a),
        .b   (b),
        .out (out_add)
    );

    sub sub_1 (
        .a   (a),
        .b   (b),
        .out (out_sub)
    );

    or_n or_1 (
        .a   (a),
        .b   (b),
        .out (out_or)
    );

    and_n and_1 (
        .a   (a),
        .b   (b),
        .out (out_and)
    );

    xor_n xor_1 (
        .a   (a),
        .b   (b),
        .out (out_xor)
    ); 

    not_n not_1 (
        .a   (a),
        .out (out_not)
    );

    lsl lsl_1 (
        .a   (a),
        .out (out_lsl)
    );

    lsr lsr_1 (
        .a   (a),
        .out (out_lsr)
    );	
endmodule 

// Output muxGroup
module mux8_n(a, b, c, d, e, f, g, h, sel, out);
    parameter n = 8;
    input  [n-1:0] a;
    input  [n-1:0] b;
    input  [n-1:0] c;
    input  [n-1:0] d;
    input  [n-1:0] e;
    input  [n-1:0] f;
    input  [n-1:0] g;
    input  [n-1:0] h;
    input  [2:0]   sel;
    output [n-1:0] out;

    wire [7:0] mux_out_1_1;
    wire [7:0] mux_out_1_2;
    wire [7:0] mux_out_1_3;
    wire [7:0] mux_out_1_4;
    wire [7:0] mux_out_2_1;
    wire [7:0] mux_out_2_2;
    wire [7:0] mux_out_3_1;

    // level 1
    mux2_n mux_1_1 (
        .a   (a),
        .b   (b),
        .sel (sel[0]),
        .out (mux_out_1_1)
    );

    mux2_n mux_1_2 (
        .a   (c),
        .b   (d),
        .sel (sel[0]),
        .out (mux_out_1_2)
    );

    mux2_n mux_1_3 (
        .a   (e),
        .b   (f),
        .sel (sel[0]),
        .out (mux_out_1_3)
    );

    mux2_n mux_1_4 (
        .a   (g),
        .b   (h),
        .sel (sel[0]),
        .out (mux_out_1_4)
    );

    // level 2
    mux2_n mux_2_1 (
        .a   (mux_out_1_1),
        .b   (mux_out_1_2),
        .sel (sel[1]),
        .out (mux_out_2_1)
    );

    mux2_n mux_2_2 (
        .a   (mux_out_1_3),
        .b   (mux_out_1_4),
        .sel (sel[1]),
        .out (mux_out_2_2)
    );

    // level 3
    mux2_n mux_3_1 (
        .a   (mux_out_2_1),
        .b   (mux_out_2_2),
        .sel (sel[2]),
        .out (out)
    );
endmodule

