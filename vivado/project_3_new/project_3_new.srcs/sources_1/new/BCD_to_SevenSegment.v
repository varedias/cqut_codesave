`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/28 11:26:21
// Design Name: 
// Module Name: BCD_to_SevenSegment
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


module BCD_to_SevenSegment(
    input clk, // 时钟输入
    input rst, // 复位输入
    input [11:0] BCD_in, // 输入BCD（3位数字）
    output [6:0] seg0, // 第一个数码管（个位）
    output [6:0] seg1, // 第二个数码管（十位）
    output [6:0] seg2  // 第三个数码管（百位）
);

    wire [11:0] BCD_out;
    wire carry;

    // BCD增量器实例
    BCD_Incrementer incrementer (
        .BCD_in(BCD_in),
        .BCD_out(BCD_out),
        .carry(carry)
    );

    // 七段显示器实例
    SevenSegmentDisplay ssd0 (
        .BCD(BCD_out[3:0]),  // 个位
        .seg(seg0)
    );
    SevenSegmentDisplay ssd1 (
        .BCD(BCD_out[7:4]),  // 十位
        .seg(seg1)
    );
    SevenSegmentDisplay ssd2 (
        .BCD(BCD_out[11:8]), // 百位
        .seg(seg2)
    );

endmodule