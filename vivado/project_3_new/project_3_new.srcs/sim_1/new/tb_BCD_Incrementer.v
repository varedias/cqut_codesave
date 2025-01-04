`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/28 11:22:09
// Design Name: 
// Module Name: tb_BCD_Incrementer
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


module tb_BCD_Incrementer;
    // 测试信号
    reg [11:0] BCD_in;
    wire [11:0] BCD_out;
    wire carry;

    // 实例化BCD增量器
    BCD_Incrementer uut (
        .BCD_in(BCD_in),
        .BCD_out(BCD_out),
        .carry(carry)
    );

    // 测试过程
    initial begin
        // 输出初始化
        $display("BCD Incrementer Testbench");
        $display("BCD_in    | BCD_out   | carry");

        // 测试1：BCD输入为000 000 000 (0)
        BCD_in = 12'b000000000000; 
        #10;
        $display("%b | %b | %b", BCD_in, BCD_out, carry);

        // 测试2：BCD输入为000 001 001 (199)
        BCD_in = 12'b000001001001; 
        #10;
        $display("%b | %b | %b", BCD_in, BCD_out, carry);

        // 测试3：BCD输入为000 010 010 (299)
        BCD_in = 12'b000010010010; 
        #10;
        $display("%b | %b | %b", BCD_in, BCD_out, carry);

        // 测试4：BCD输入为999 999 999 (999)
        BCD_in = 12'b100110011001; 
        #10;
        $display("%b | %b | %b", BCD_in, BCD_out, carry);

        // 结束仿真
        $finish;
    end
endmodule