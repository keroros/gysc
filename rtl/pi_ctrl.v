`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/9/12
// Author: QiDC
// Project Name: gysc_asic
// File Name: pi_ctrl.v
// Versions: v1.0
// Description: PI控制器，对解调输出的信号进行PID控制
// 
//////////////////////////////////////////////////////////////////////////////////

module pi_ctrl (
    input  wire               clk,        // 时钟
    input  wire               rst_n,      // 复位
    input  wire signed [31:0] ref_i,      // 目标值
    input  wire signed [31:0] pi_ctrl_i,  // 输入信号
    output wire signed [31:0] pi_ctrl_o   // 输出信号
);

    // 定义控制器参数
    parameter K_p = 32'b1;  // 比例系数
    parameter K_i = 32'b1;  // 积分系数

    wire signed [31:0] error;  //误差
    wire signed [31:0] delta_u;  //增量

    reg signed  [31:0] error_prev;  // 上一状态的误差
    reg signed  [31:0] uk;  // 积分值

    // 计算误差和增量
    assign error   = (ref_i) - pi_ctrl_i;
    // assign delta_u = K_p * (error - error_prev);
    assign delta_u = K_p * (error - error_prev) + K_i * error;

    // 更新状态寄存器
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            error_prev <= 32'd0;
            uk         <= 32'd0;
        end else begin
            error_prev <= error;
            uk         <= uk + delta_u;
        end
    end

    // 计算最终输出
    assign pi_ctrl_o = uk;

endmodule
