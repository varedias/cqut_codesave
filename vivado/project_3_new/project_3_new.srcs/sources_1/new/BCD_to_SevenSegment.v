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
    input clk, // ʱ������
    input rst, // ��λ����
    input [11:0] BCD_in, // ����BCD��3λ���֣�
    output [6:0] seg0, // ��һ������ܣ���λ��
    output [6:0] seg1, // �ڶ�������ܣ�ʮλ��
    output [6:0] seg2  // ����������ܣ���λ��
);

    wire [11:0] BCD_out;
    wire carry;

    // BCD������ʵ��
    BCD_Incrementer incrementer (
        .BCD_in(BCD_in),
        .BCD_out(BCD_out),
        .carry(carry)
    );

    // �߶���ʾ��ʵ��
    SevenSegmentDisplay ssd0 (
        .BCD(BCD_out[3:0]),  // ��λ
        .seg(seg0)
    );
    SevenSegmentDisplay ssd1 (
        .BCD(BCD_out[7:4]),  // ʮλ
        .seg(seg1)
    );
    SevenSegmentDisplay ssd2 (
        .BCD(BCD_out[11:8]), // ��λ
        .seg(seg2)
    );

endmodule