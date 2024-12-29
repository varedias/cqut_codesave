`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/29 10:22:40
// Design Name: 
// Module Name: test_ALU
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

module test_ALU;

    reg [7:0] A, B;       // 输入操作数
    reg [3:0] ALUOp;      // 操作码
    wire [7:0] Result;    // 结果
    wire Z, C;            // 零标志位，进位标志位

    // 实例化ALU模块
    ALU uut (
        .A(A),
        .B(B),
        .ALUOp(ALUOp),
        .Result(Result),
        .Z(Z),
        .C(C)
    );

    initial begin
        // 测试加法操作
        $display("Test Add Operation:");
        A = 8'b00001010; B = 8'b00000101; ALUOp = 4'b0000; // A = 10, B = 5
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);
        
        A = 8'b11111111; B = 8'b00000001; ALUOp = 4'b0000; // 测试溢出
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        // 测试减法操作
        $display("Test Subtract Operation:");
        A = 8'b00001010; B = 8'b00000101; ALUOp = 4'b0001; // A = 10, B = 5
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        A = 8'b00001000; B = 8'b00001100; ALUOp = 4'b0001; // 测试借位
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        // 测试乘法操作
        $display("Test Multiply Operation:");
        A = 8'b00000101; B = 8'b00000011; ALUOp = 4'b0010; // A = 5, B = 3
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        A = 8'b11111111; B = 8'b00000001; ALUOp = 4'b0010; // 测试大数乘法
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        // 测试按位与操作
        $display("Test AND Operation:");
        A = 8'b10101010; B = 8'b11001100; ALUOp = 4'b0011; // 测试与操作
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        // 测试按位或操作
        $display("Test OR Operation:");
        A = 8'b10101010; B = 8'b11001100; ALUOp = 4'b0100; // 测试或操作
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        // 测试按位异或操作
        $display("Test XOR Operation:");
        A = 8'b10101010; B = 8'b11001100; ALUOp = 4'b0101; // 测试异或操作
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        // 测试左移操作
        $display("Test Left Shift Operation:");
        A = 8'b00001010; B = 8'b00000000; ALUOp = 4'b0110; // A左移
        #10;
        $display("A = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, ALUOp, Result, Z, C);

        A = 8'b10000000; ALUOp = 4'b0110; // 测试左移时的进位
        #10;
        $display("A = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, ALUOp, Result, Z, C);

        // 测试右移操作
        $display("Test Right Shift Operation:");
        A = 8'b00001010; B = 8'b00000000; ALUOp = 4'b0111; // A右移
        #10;
        $display("A = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, ALUOp, Result, Z, C);

        A = 8'b10000000; ALUOp = 4'b0111; // 测试右移时的进位
        #10;
        $display("A = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, ALUOp, Result, Z, C);

        // 测试带进位加法
        $display("Test Add with Carry Operation:");
        A = 8'b00001010; B = 8'b00000101; ALUOp = 4'b1000; // A + B + 1
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        // 测试零标志位（Z）
        $display("Test Zero Flag (Z):");
        A = 8'b00000000; B = 8'b00000000; ALUOp = 4'b0000; // A + B = 0
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        $finish;
    end

endmodule
