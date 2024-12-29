`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/28 11:28:06
// Design Name: 
// Module Name: tb_BCD_to_SevenSegment
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


module tb_BCD_to_SevenSegment;
    // 测试平台信号定义
    reg clk;            // 时钟信号
    reg rst;            // 复位信号
    reg [11:0] BCD_in;  // 输入BCD值（三位数，12位）
    wire [6:0] seg0;    // 第一个七段显示器（个位）
    wire [6:0] seg1;    // 第二个七段显示器（十位）
    wire [6:0] seg2;    // 第三个七段显示器（百位）

    // 实例化顶层模块
    BCD_to_SevenSegment uut (
        .clk(clk),
        .rst(rst),
        .BCD_in(BCD_in),
        .seg0(seg0),
        .seg1(seg1),
        .seg2(seg2)
    );

    // 时钟生成
    always begin
        #5 clk = ~clk;  // 每5个时间单位翻转时钟
    end

    // 仿真过程
    initial begin
        // 初始化信号
        clk = 0;
        rst = 0;
        BCD_in = 12'b000000000000;  // 初始输入为0

        // 打印仿真开始
        $display("Simulation Start");

        // 复位
        rst = 1;
        #10;
        rst = 0;

        // 测试：输入0
        BCD_in = 12'b000000000000;  // 0
        #10;
        $display("BCD_in = %b, seg0 = %b, seg1 = %b, seg2 = %b", BCD_in, seg0, seg1, seg2);

        // 测试：输入199
        BCD_in = 12'b000001001001;  // 199
        #10;
        $display("BCD_in = %b, seg0 = %b, seg1 = %b, seg2 = %b", BCD_in, seg0, seg1, seg2);

        // 测试：输入999
        BCD_in = 12'b100110011001;  // 999
        #10;
        $display("BCD_in = %b, seg0 = %b, seg1 = %b, seg2 = %b", BCD_in, seg0, seg1, seg2);

        // 测试：输入499
        BCD_in = 12'b010010010011;  // 499
        #10;
        $display("BCD_in = %b, seg0 = %b, seg1 = %b, seg2 = %b", BCD_in, seg0, seg1, seg2);

        // 测试：输入987
        BCD_in = 12'b100110001111;  // 987
        #10;
        $display("BCD_in = %b, seg0 = %b, seg1 = %b, seg2 = %b", BCD_in, seg0, seg1, seg2);

        // 结束仿真
        $finish;
    end
endmodule
