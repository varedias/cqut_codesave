`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/22 09:43:35
// Design Name: 
// Module Name: Test1
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


module Test1(
    input A,
    input B,
    input C,
    output F
    );
    
    assign F = (!A)*B*C||A*(!B)*C||A*B*(!C)||A*B*C;
    
endmodule
