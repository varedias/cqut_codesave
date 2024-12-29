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
    input [7:0] A,       // ��һ��������
    input [7:0] B,       // �ڶ���������
    input [3:0] ALUOp,   // ALU ������
    output reg [7:0] Result, // ������
    output reg Z,        // ���־λ
    output reg C         // ��λ��־λ
);

    // �м����
    reg [8:0] add_result; // ���ڴ洢�ӷ������������λ��
    reg [15:0] mul_result; // ���ڴ洢�˷������16λ��

    always @(*) begin
        // Ĭ��״̬
        Z = 0;//��״̬��־
        C = 0;//��λ��־

        case (ALUOp)
            4'b0000: begin // �ӷ�
                {C, Result} = A + B;  // A + B��CΪ��λ
            end

            4'b0001: begin // ����
                {C, Result} = A - B;  // A - B��CΪ��λ
            end

            4'b0010: begin // �˷�
                mul_result = A * B;  // A * B��16λ���
                Result = mul_result[7:0]; // ȡ��8λ��Ϊ���ս��
                C = mul_result[15]; // ����˻�����255�������ý�λ
            end

            4'b0011: begin // ��λ�루AND��
                Result = A & B;
            end

            4'b0100: begin // ��λ��OR��
                Result = A | B;
            end

            4'b0101: begin // ��λ���XOR��
                Result = A ^ B;
            end

            4'b0110: begin // ����
                Result = A << 1;
                C = A[7];  // �������ʱMSBΪ1�������ý�λ
            end

            4'b0111: begin // ����
                Result = A >> 1;
                C = A[0];  // �������ʱLSBΪ1�������ý�λ
            end

            4'b1000: begin // �߼��ӷ�������λ��
                {C, Result} = A + B + 1; // A + B + 1
            end

            4'b1001: begin // ����˷����Ѵ���
                mul_result = A * B;  // A * B��16λ���
                Result = mul_result[7:0]; // ȡ��8λ��Ϊ���ս��
                C = mul_result[15]; // ����˻�����255�������ý�λ
            end

            default: begin
                Result = 8'b0;
            end
        endcase

        // �������־λ Z
        Z = (Result == 8'b0); // ������Ϊ0����Z=1
    end

endmodule
