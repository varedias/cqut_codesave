`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/28 11:21:36
// Design Name: 
// Module Name: BCD_Incrementer
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


module BCD_Incrementer(
    input [11:0] BCD_in,  // 输入BCD值（3位十进制数）
    output reg [11:0] BCD_out, // 输出加1后的BCD值
    output reg carry  // 是否有进位
);
    // 中间变量用于每个位的加法
    reg [3:0] digit0, digit1, digit2; 

    always @ (BCD_in) begin
        // 将输入BCD的三位数字拆分
        digit0 = BCD_in[3:0];
        digit1 = BCD_in[7:4];
        digit2 = BCD_in[11:8];

        // 增量操作：从低位到高位进行加1
        if (digit0 == 9) begin
            digit0 = 0;
            if (digit1 == 9) begin
                digit1 = 0;
                if (digit2 == 9) begin
                    digit2 = 0; // 进位到三位
                    carry = 1;
                end else begin
                    digit2 = digit2 + 1;
                    carry = 0;
                end
            end else begin
                digit1 = digit1 + 1;
                carry = 0;
            end
        end else begin
            digit0 = digit0 + 1;
            carry = 0;
        end

        // 合并每一位的BCD值
        BCD_out = {digit2, digit1, digit0};
    end
endmodule