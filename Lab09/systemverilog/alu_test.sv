`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 11:30:52 AM
// Design Name: 
// Module Name: alu_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_test();

    reg [7:0] in0_t;
    reg [7:0] in1_t;
    reg [3:0] op_t;
    wire [7:0] out_t;
    
    alu dut ( 
       .out(out_t),
       .in0(in0_t), 
       .in1(in1_t),
       .op(op_t)
    );
    
    initial begin 
    
       in0_t = 4'h6; in1_t = 4'h2; op_t = 4'h0; #10;
       in0_t = 4'h6; in1_t = 4'h2; op_t = 4'h1; #10;
       in0_t = 4'h6; in1_t = 4'h2; op_t = 4'h2; #10;
       in0_t = 4'h6; in1_t = 4'h2; op_t = 4'h3; #10;
       in0_t = 4'h6; in1_t = 4'h2; op_t = 4'h4; #10;
       in0_t = 4'h6; in1_t = 4'h2; op_t = 4'h5; #10;
       $finish;
       
    end
    
endmodule
