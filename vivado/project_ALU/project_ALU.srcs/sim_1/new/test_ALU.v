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

    reg [7:0] A, B;       // ���������
    reg [3:0] ALUOp;      // ������
    wire [7:0] Result;    // ���
    wire Z, C;            // ���־λ����λ��־λ

    // ʵ����ALUģ��
    ALU uut (
        .A(A),
        .B(B),
        .ALUOp(ALUOp),
        .Result(Result),
        .Z(Z),
        .C(C)
    );

    initial begin
        // ���Լӷ�����
        $display("Test Add Operation:");
        A = 8'b00001010; B = 8'b00000101; ALUOp = 4'b0000; // A = 10, B = 5
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);
        
        A = 8'b11111111; B = 8'b00000001; ALUOp = 4'b0000; // �������
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        // ���Լ�������
        $display("Test Subtract Operation:");
        A = 8'b00001010; B = 8'b00000101; ALUOp = 4'b0001; // A = 10, B = 5
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        A = 8'b00001000; B = 8'b00001100; ALUOp = 4'b0001; // ���Խ�λ
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        // ���Գ˷�����
        $display("Test Multiply Operation:");
        A = 8'b00000101; B = 8'b00000011; ALUOp = 4'b0010; // A = 5, B = 3
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        A = 8'b11111111; B = 8'b00000001; ALUOp = 4'b0010; // ���Դ����˷�
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        // ���԰�λ�����
        $display("Test AND Operation:");
        A = 8'b10101010; B = 8'b11001100; ALUOp = 4'b0011; // ���������
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        // ���԰�λ�����
        $display("Test OR Operation:");
        A = 8'b10101010; B = 8'b11001100; ALUOp = 4'b0100; // ���Ի����
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        // ���԰�λ������
        $display("Test XOR Operation:");
        A = 8'b10101010; B = 8'b11001100; ALUOp = 4'b0101; // ����������
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        // �������Ʋ���
        $display("Test Left Shift Operation:");
        A = 8'b00001010; B = 8'b00000000; ALUOp = 4'b0110; // A����
        #10;
        $display("A = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, ALUOp, Result, Z, C);

        A = 8'b10000000; ALUOp = 4'b0110; // ��������ʱ�Ľ�λ
        #10;
        $display("A = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, ALUOp, Result, Z, C);

        // �������Ʋ���
        $display("Test Right Shift Operation:");
        A = 8'b00001010; B = 8'b00000000; ALUOp = 4'b0111; // A����
        #10;
        $display("A = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, ALUOp, Result, Z, C);

        A = 8'b10000000; ALUOp = 4'b0111; // ��������ʱ�Ľ�λ
        #10;
        $display("A = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, ALUOp, Result, Z, C);

        // ���Դ���λ�ӷ�
        $display("Test Add with Carry Operation:");
        A = 8'b00001010; B = 8'b00000101; ALUOp = 4'b1000; // A + B + 1
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        // �������־λ��Z��
        $display("Test Zero Flag (Z):");
        A = 8'b00000000; B = 8'b00000000; ALUOp = 4'b0000; // A + B = 0
        #10;
        $display("A = %b, B = %b, ALUOp = %b => Result = %b, Z = %b, C = %b", A, B, ALUOp, Result, Z, C);

        $finish;
    end

endmodule
