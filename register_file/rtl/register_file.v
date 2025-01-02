// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2025/01/02 17:32
// Last Modified : 2025/01/02 22:00
// File Name     : register_file.v
// Description   :
//
// Copyright (c) 2025 Peking University.
// ALL RIGHTS RESERVED
//
// Local Variables:
// verilog-library-directories:("/home/qidc/Nutstore/Project")
// verilog-library-directories-recursive:1
// End:
//
// ---------------------------------------------------------------------------------
// Modification History:
// Date         By              Version                 Change Description
// ---------------------------------------------------------------------------------
// 2025/01/02   Qidc            1.0                     Original
// -FHDR----------------------------------------------------------------------------

`timescale 1ns/1ps

module register_file (
    input wire clk,
    input wire rst_n,

    // ADC 滤波器输入的数据
    input wire  [31:0] filter_xdata;
    input wire  [31:0] filter_ydata;
    input wire  [31:0] filter_zdata;

    // 滤波器输入的数据
    input wire  [31:0] x_filter_data;
    input wire  [31:0] y_filter_data;
    input wire  [31:0] z_filter_data;

    // 解调后输入的数据
    input wire  [31:0] x_demod_data;
    input wire  [31:0] y_demod_data;
    input wire  [31:0] z_demod_data;


);


    localparam REG_AW = 8;  // 寄存器地址宽度为8
    localparam REG_DW = 8;  // 寄存器数据宽度为8


    /* ---------------- 定义全部寄存器组 ----------------*/

    // 陀螺XYZ轴滤波器输出，将每个轴的32位浮点数拆分到四个寄存器中
    reg [REG_DW-1:0] x_filter_0_reg;   // Read only
    reg [REG_DW-1:0] x_filter_1_reg;   // Read only
    reg [REG_DW-1:0] x_filter_2_reg;   // Read only
    reg [REG_DW-1:0] x_filter_3_reg;   // Read only
    reg [REG_DW-1:0] y_filter_0_reg;   // Read only
    reg [REG_DW-1:0] y_filter_1_reg;   // Read only
    reg [REG_DW-1:0] y_filter_2_reg;   // Read only
    reg [REG_DW-1:0] y_filter_3_reg;   // Read only
    reg [REG_DW-1:0] z_filter_0_reg;   // Read only
    reg [REG_DW-1:0] z_filter_1_reg;   // Read only
    reg [REG_DW-1:0] z_filter_2_reg;   // Read only
    reg [REG_DW-1:0] z_filter_3_reg;   // Read only

    // 陀螺XYZ轴解调后输出，将每个轴的32位浮点数拆分到四个寄存器中
    reg [REG_DW-1:0] x_demod_0_reg;    // Read only
    reg [REG_DW-1:0] x_demod_1_reg;    // Read only
    reg [REG_DW-1:0] x_demod_2_reg;    // Read only
    reg [REG_DW-1:0] x_demod_3_reg;    // Read only
    reg [REG_DW-1:0] y_demod_0_reg;    // Read only
    reg [REG_DW-1:0] y_demod_1_reg;    // Read only
    reg [REG_DW-1:0] y_demod_2_reg;    // Read only
    reg [REG_DW-1:0] y_demod_3_reg;    // Read only
    reg [REG_DW-1:0] z_demod_0_reg;    // Read only
    reg [REG_DW-1:0] z_demod_1_reg;    // Read only
    reg [REG_DW-1:0] z_demod_2_reg;    // Read only
    reg [REG_DW-1:0] z_demod_3_reg;    // Read only

    // FIFO的历史数据输出，将每个轴的32位浮点数拆分到四个寄存器中
    reg [REG_DW-1:0] x_fifo_out0_reg;   // Read only
    reg [REG_DW-1:0] x_fifo_out1_reg;   // Read only
    reg [REG_DW-1:0] x_fifo_out2_reg;   // Read only
    reg [REG_DW-1:0] x_fifo_out3_reg;   // Read only
    reg [REG_DW-1:0] y_fifo_out0_reg;   // Read only
    reg [REG_DW-1:0] y_fifo_out1_reg;   // Read only
    reg [REG_DW-1:0] y_fifo_out2_reg;   // Read only
    reg [REG_DW-1:0] y_fifo_out3_reg;   // Read only
    reg [REG_DW-1:0] z_fifo_out0_reg;   // Read only
    reg [REG_DW-1:0] z_fifo_out1_reg;   // Read only
    reg [REG_DW-1:0] z_fifo_out2_reg;   // Read only
    reg [REG_DW-1:0] z_fifo_out3_reg;   // Read only

    // 设备身份标识寄存器，用于识别设备
    reg [REG_DW-1:0] who_am_i_reg;      // Read only

    // 判断陀螺是否唤醒，以及每个轴是否唤醒
    reg [REG_DW-1:0] wake_up_reg;       // Read only

    // 判断是否出现各种中断，每个位表示一种状态
    reg [REG_DW-1:0] fsm_status_reg;    // Read only

    // 控制陀螺的低功耗/高性能模式选择
    reg [REG_DW-1:0] gysc_mode_ctrl_reg;    // Read or write

    // 控制FIFO写入的频率
    reg [REG_DW-1:0] fifo_write_ctrl_reg;   // Read or write

    // 控制FIFO的模式，例如数据写满时是否覆盖
    reg [REG_DW-1:0] fifo_mode_ctrl_reg;    // Read or write

    // 用户对数据进行矫正输入的偏移量
    reg [REG_DW-1:0] x_offset_reg;
    reg [REG_DW-1:0] y_offset_reg;
    reg [REG_DW-1:0] z_offset_reg;

    // 将滤波器结果输入数据寄存器
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            x_filter_0_reg <= 8'h00;    // 默认输出无效值0x7fc00000
            x_filter_1_reg <= 8'h00;
            x_filter_2_reg <= 8'hc0;
            x_filter_3_reg <= 8'h7f;
            y_filter_0_reg <= 8'h00;
            y_filter_1_reg <= 8'h00;
            y_filter_2_reg <= 8'hc0;
            y_filter_3_reg <= 8'h7f;
            z_filter_0_reg <= 8'h00;
            z_filter_1_reg <= 8'h00;
            z_filter_2_reg <= 8'hc0;
            z_filter_3_reg <= 8'h7f;
        end else begin
            x_filter_0_reg <=
            x_filter_1_reg <=
            x_filter_2_reg <=
            x_filter_3_reg <=
            y_filter_0_reg <=
            y_filter_1_reg <=
            y_filter_2_reg <=
            y_filter_3_reg <=
            z_filter_0_reg <=
            z_filter_1_reg <=
            z_filter_2_reg <=
            z_filter_3_reg <=
        end
    end



    // 设备身份标识寄存器，写入默认值6B
    always @(*) begin
        who_am_i_reg <= 8'h6b;
    end


endmodule

