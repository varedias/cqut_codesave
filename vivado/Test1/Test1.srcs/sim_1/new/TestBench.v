`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/22 10:02:56
// Design Name: 
// Module Name: TestBench
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


module TestBench(


    );
    reg A;
    reg B;
    reg C;
    wire F;
    
    Test1 Test_process(
    .A   (A),
    .B   (B),
    .C   (C),
    .F   (F)
    );
    
    initial 
    begin
    A = 0; B = 0 ;C = 0 ;
    #100;
    A = 1;B = 0 ;C = 0;
    #100
    A = 1 ; B = 1 ;C = 1 ;
    #100 
    A = 1 ;B = 0; C = 1;
    #100
    A = 0;B = 1;C = 0;
    #100
    A = 0; B = 0;C = 1;
    end

    
endmodule
