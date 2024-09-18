`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/9/12
// Author: QiDC
// Project Name: gysc_asic
// File Name: pi_ctrl_top.v
// Versions: v1.0
// Description: PI控制器的与测试环路组成的Top模块
// 
//////////////////////////////////////////////////////////////////////////////////

module pi_ctrl_top (
    input wire               clk,    // 时钟
    input wire               rst_n,  // 复位
    input wire signed [31:0] ref_i   // 目标值
);

    wire [31:0] pi_ctrl_o;
    wire [31:0] feedback_o;

    pi_ctrl u_pi_ctrl (
        .clk      (clk),
        .rst_n    (rst_n),
        .ref_i    (ref_i),
        .pi_ctrl_i(feedback_o),
        .pi_ctrl_o(pi_ctrl_o)
    );

    feedback u_feedback (
        .clk       (clk),
        .rst_n     (rst_n),
        .feedback_i(pi_ctrl_o),
        .feedback_o(feedback_o)
    );

endmodule
