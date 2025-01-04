`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/29 10:18:10
// Design Name: 
// Module Name: ALU
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

module ALU (
    input [7:0] A,       // 第一个操作数
    input [7:0] B,       // 第二个操作数
    input [3:0] ALUOp,   // ALU 操作码
    output reg [7:0] Result, // 运算结果
    output reg Z,        // 零标志位
    output reg C         // 进位标志位
);

    // 中间变量
    reg [8:0] add_result; // 用于存储加法结果（包含进位）
    reg [15:0] mul_result; // 用于存储乘法结果（16位）

    always @(*) begin
        // 默认状态
        Z = 0;//零状态标志
        C = 0;//进位标志

        case (ALUOp)
            4'b0000: begin // 加法
                {C, Result} = A + B;  // A + B，C为进位
            end

            4'b0001: begin // 减法
                {C, Result} = A - B;  // A - B，C为借位
            end

            4'b0010: begin // 乘法
                mul_result = A * B;  // A * B，16位结果
                Result = mul_result[7:0]; // 取低8位作为最终结果
                C = mul_result[15]; // 如果乘积大于255，则设置进位
            end

            4'b0011: begin // 按位与（AND）
                Result = A & B;
            end

            4'b0100: begin // 按位或（OR）
                Result = A | B;
            end

            4'b0101: begin // 按位异或（XOR）
                Result = A ^ B;
            end

            4'b0110: begin // 左移
                Result = A << 1;
                C = A[7];  // 如果左移时MSB为1，则设置进位
            end

            4'b0111: begin // 右移
                Result = A >> 1;
                C = A[0];  // 如果右移时LSB为1，则设置进位
            end

            4'b1000: begin // 逻辑加法（带进位）
                {C, Result} = A + B + 1; // A + B + 1
            end

            4'b1001: begin // 补码乘法（已处理）
                mul_result = A * B;  // A * B，16位结果
                Result = mul_result[7:0]; // 取低8位作为最终结果
                C = mul_result[15]; // 如果乘积大于255，则设置进位
            end

            default: begin
                Result = 8'b0;
            end
        endcase

        // 更新零标志位 Z
        Z = (Result == 8'b0); // 如果结果为0，则Z=1
    end

endmodule
