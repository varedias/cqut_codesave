`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/29 09:16:45
// Design Name: 
// Module Name: test_signed_multiplier
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

module test_signed_multiplier;

    reg [3:0] a, b;  // 输入
    wire [7:0] product; // 输出

    // 实例化乘法器模块
    signed_multiplier uut (
        .a(a),
        .b(b),
        .product(product)
    );

    initial begin
        // 打印头部
        $display("A     B     Product");
        $display("-------------------------");

        // 测试样例
        a = 4'b0001; b = 4'b0010; // 1 * 2
        #10;
        $display("%b * %b = %b", a, b, product);

        a = 4'b1011; b = 4'b0101; // -5 * 3
        #10;
        $display("%b * %b = %b", a, b, product);

        a = 4'b1100; b = 4'b1001; // -4 * -7
        #10;
        $display("%b * %b = %b", a, b, product);

        a = 4'b1111; b = 4'b1111; // -1 * -1
        #10;
        $display("%b * %b = %b", a, b, product);

        a = 4'b0000; b = 4'b0011; // 0 * 3
        #10;
        $display("%b * %b = %b", a, b, product);

        a = 4'b0101; b = 4'b0110; // 5 * 6
        #10;
        $display("%b * %b = %b", a, b, product);

        a = 4'b1110; b = 4'b1110; // -2 * -2
        #10;
        $display("%b * %b = %b", a, b, product);

        $finish;
    end

endmodule

