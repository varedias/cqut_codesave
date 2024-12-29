`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/28 11:28:06
// Design Name: 
// Module Name: tb_BCD_to_SevenSegment
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


module tb_BCD_to_SevenSegment;
    // ����ƽ̨�źŶ���
    reg clk;            // ʱ���ź�
    reg rst;            // ��λ�ź�
    reg [11:0] BCD_in;  // ����BCDֵ����λ����12λ��
    wire [6:0] seg0;    // ��һ���߶���ʾ������λ��
    wire [6:0] seg1;    // �ڶ����߶���ʾ����ʮλ��
    wire [6:0] seg2;    // �������߶���ʾ������λ��

    // ʵ��������ģ��
    BCD_to_SevenSegment uut (
        .clk(clk),
        .rst(rst),
        .BCD_in(BCD_in),
        .seg0(seg0),
        .seg1(seg1),
        .seg2(seg2)
    );

    // ʱ������
    always begin
        #5 clk = ~clk;  // ÿ5��ʱ�䵥λ��תʱ��
    end

    // �������
    initial begin
        // ��ʼ���ź�
        clk = 0;
        rst = 0;
        BCD_in = 12'b000000000000;  // ��ʼ����Ϊ0

        // ��ӡ���濪ʼ
        $display("Simulation Start");

        // ��λ
        rst = 1;
        #10;
        rst = 0;

        // ���ԣ�����0
        BCD_in = 12'b000000000000;  // 0
        #10;
        $display("BCD_in = %b, seg0 = %b, seg1 = %b, seg2 = %b", BCD_in, seg0, seg1, seg2);

        // ���ԣ�����199
        BCD_in = 12'b000001001001;  // 199
        #10;
        $display("BCD_in = %b, seg0 = %b, seg1 = %b, seg2 = %b", BCD_in, seg0, seg1, seg2);

        // ���ԣ�����999
        BCD_in = 12'b100110011001;  // 999
        #10;
        $display("BCD_in = %b, seg0 = %b, seg1 = %b, seg2 = %b", BCD_in, seg0, seg1, seg2);

        // ���ԣ�����499
        BCD_in = 12'b010010010011;  // 499
        #10;
        $display("BCD_in = %b, seg0 = %b, seg1 = %b, seg2 = %b", BCD_in, seg0, seg1, seg2);

        // ���ԣ�����987
        BCD_in = 12'b100110001111;  // 987
        #10;
        $display("BCD_in = %b, seg0 = %b, seg1 = %b, seg2 = %b", BCD_in, seg0, seg1, seg2);

        // ��������
        $finish;
    end
endmodule
