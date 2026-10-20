`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2026 09:25:04 AM
// Design Name: 
// Module Name: mux_2_bit
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


module mux_4_bit(

    input [3:0]A, [3:0]B, [3:0]C, [3:0]D, Enable,
    input [1:0]Sel,
    output [3:0] Y
    
    );
    
    assign Y = Enable ? (Sel == 'b00 ? A :
                Sel == 'b01 ? B :
                Sel == 'b10 ? C : D) : 0;
    
endmodule
