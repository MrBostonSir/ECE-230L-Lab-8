`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2026 10:49:26 AM
// Design Name: 
// Module Name: demux_4_bit
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


module demux_4_bit(
    input [3:0]A,
    input Enable, [1:0]Sel,
    output [3:0]lib, [3:0]fd, [3:0]school, [3:0]rs
    );
    
    assign lib = Enable ? (Sel == 'b00 ? A : 0) : 0;
    assign fd = Enable ? (Sel == 'b01 ? A : 0) : 0;
    assign school = Enable ? (Sel == 'b10 ? A : 0) : 0;
    assign rs = Enable ? (Sel == 'b11 ? A : 0) : 0;
    
endmodule
