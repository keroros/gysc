`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/9/12
// Author: QiDC
// Project Name: gysc_asic
// File Name: pi_ctrl_top_tb.v
// Versions: v1.0
// Description: PI控制器测试模块
// 
//////////////////////////////////////////////////////////////////////////////////

module pi_ctrl_top_tb;

    parameter ClockPeriod = 10;  // 时钟周期为10ns

    reg clk;
    reg rst_n;
    reg signed [31:0] ref_i;

    pi_ctrl_top u_pi_ctrl_top (
        .clk  (clk),
        .rst_n(rst_n),
        .ref_i(ref_i)
    );

    initial begin
        clk = 0;
        forever #(ClockPeriod / 2) clk = ~clk;
    end

    initial begin
        rst_n = 1;
        #ClockPeriod rst_n = 0;
        #ClockPeriod rst_n = 1;
        #(ClockPeriod * 1000) $finish;
    end

    initial begin
        ref_i = 32'd350;
    end

	initial begin
		$fsdbDumpfile("./rtl.fsdb");
		$fsdbDumpvars("+all");
	end

endmodule
