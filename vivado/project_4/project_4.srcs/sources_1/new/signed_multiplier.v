`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/29 09:16:10
// Design Name: 
// Module Name: signed_multiplier
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

module signed_multiplier(
    input [3:0] a,      // 输入a，4位带符号数
    input [3:0] b,      // 输入b，4位带符号数
    output [7:0] product // 输出乘积，8位
);

    wire sign_a, sign_b, sign_product;  // 符号位
    wire [3:0] abs_a, abs_b;  // 存储a和b的绝对值

    // 提取符号位
    assign sign_a = a[3];
    assign sign_b = b[3];

    // 获取绝对值
    assign abs_a = sign_a ? -a : a;
    assign abs_b = sign_b ? -b : b;

    // 计算部分乘积：逐位乘法
    wire [7:0] partial0, partial1, partial2, partial3;
    
    assign partial0 = abs_a[0] ? {4'b0000, abs_b} : 8'b0; // a[0]与b相乘
    assign partial1 = abs_a[1] ? {3'b000, abs_b, 1'b0} : 8'b0; // a[1]与b相乘
    assign partial2 = abs_a[2] ? {2'b00, abs_b, 2'b00} : 8'b0; // a[2]与b相乘
    assign partial3 = abs_a[3] ? {1'b0, abs_b, 3'b000} : 8'b0; // a[3]与b相乘

    // 加法器：逐位相加部分乘积
    wire [7:0] sum0, sum1;
    
    // 使用全加器级联进行加法
    assign sum0 = partial0 + partial1;  // partial0和partial1相加
    assign sum1 = partial2 + partial3;  // partial2和partial3相加

    wire [7:0] final_sum;
    assign final_sum = sum0 + sum1;  // 最终加法结果

    // 结果符号计算
    assign sign_product = sign_a ^ sign_b; // 符号位异或决定最终乘积的符号

    // 结果输出：根据符号位决定输出结果的正负
    assign product = sign_product ? -final_sum : final_sum;

endmodule

