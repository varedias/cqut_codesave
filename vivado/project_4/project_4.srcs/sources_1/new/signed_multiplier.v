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
    input [3:0] a,      // ����a��4λ��������
    input [3:0] b,      // ����b��4λ��������
    output [7:0] product // ����˻���8λ
);

    wire sign_a, sign_b, sign_product;  // ����λ
    wire [3:0] abs_a, abs_b;  // �洢a��b�ľ���ֵ

    // ��ȡ����λ
    assign sign_a = a[3];
    assign sign_b = b[3];

    // ��ȡ����ֵ
    assign abs_a = sign_a ? -a : a;
    assign abs_b = sign_b ? -b : b;

    // ���㲿�ֳ˻�����λ�˷�
    wire [7:0] partial0, partial1, partial2, partial3;
    
    assign partial0 = abs_a[0] ? {4'b0000, abs_b} : 8'b0; // a[0]��b���
    assign partial1 = abs_a[1] ? {3'b000, abs_b, 1'b0} : 8'b0; // a[1]��b���
    assign partial2 = abs_a[2] ? {2'b00, abs_b, 2'b00} : 8'b0; // a[2]��b���
    assign partial3 = abs_a[3] ? {1'b0, abs_b, 3'b000} : 8'b0; // a[3]��b���

    // �ӷ�������λ��Ӳ��ֳ˻�
    wire [7:0] sum0, sum1;
    
    // ʹ��ȫ�����������мӷ�
    assign sum0 = partial0 + partial1;  // partial0��partial1���
    assign sum1 = partial2 + partial3;  // partial2��partial3���

    wire [7:0] final_sum;
    assign final_sum = sum0 + sum1;  // ���ռӷ����

    // ������ż���
    assign sign_product = sign_a ^ sign_b; // ����λ���������ճ˻��ķ���

    // �����������ݷ���λ����������������
    assign product = sign_product ? -final_sum : final_sum;

endmodule

