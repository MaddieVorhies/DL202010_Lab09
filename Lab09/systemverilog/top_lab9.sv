`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 12:23:55 PM
// Design Name: 
// Module Name: top_lab9
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


module top_lab9(
    input btnU,
    input btnD,
    input [11:0] sw,
    input clk,
    input btnC,
    output [15:0] led
    );
    
    wire [7:0] reg0_out;
    wire [7:0] alu_out;
    wire [8:0] reg1_out;
    
    register Reg0 (
       .D(sw[7:0]),
       .en(btnD),
       .clk(clk),
       .rst(btnC),
       .Q(reg0_out[7:0])
    );
    
    alu ALU(
       .in1(reg0_out[7:0]),
       .in0(sw[7:0]),
       .op(sw[11:8]),
       .out(alu_out[7:0])
    );
    
    register Reg1 (
       .D(alu_out[7:0]),
       .en(btnU),
       .clk(clk),
       .rst(btnC),
       .Q(reg1_out[7:0])
    );
    
    assign led[7:0] = reg0_out[7:0];
    assign led[15:8] = reg1_out[7:0];
    
    
endmodule
