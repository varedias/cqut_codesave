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
    input [11:0] BCD_in,  // ����BCDֵ��3λʮ��������
    output reg [11:0] BCD_out, // �����1���BCDֵ
    output reg carry  // �Ƿ��н�λ
);
    // �м��������ÿ��λ�ļӷ�
    reg [3:0] digit0, digit1, digit2; 

    always @ (BCD_in) begin
        // ������BCD����λ���ֲ��
        digit0 = BCD_in[3:0];
        digit1 = BCD_in[7:4];
        digit2 = BCD_in[11:8];

        // �����������ӵ�λ����λ���м�1
        if (digit0 == 9) begin
            digit0 = 0;
            if (digit1 == 9) begin
                digit1 = 0;
                if (digit2 == 9) begin
                    digit2 = 0; // ��λ����λ
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

        // �ϲ�ÿһλ��BCDֵ
        BCD_out = {digit2, digit1, digit0};
    end
endmodule