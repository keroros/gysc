// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/12/12 14:56
// Last Modified : 2025/01/02 13:16
// File Name     : adc_top_tb.sv
// Description   :
//         
// Copyright (c) 2024 Peking University.
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
// 2024/12/12   Qidc            1.0                     Original
// -FHDR----------------------------------------------------------------------------

module adc_top_tb;

    parameter ClockPeriod = 10;  // 时钟周期为10ns

    // 输入输出信号声明
    reg                clk;
    reg                rst_n;

    // cic滤波器输入输出
    reg  signed [4:0]  dat_in;
    wire signed [34:0] dat_out;
    wire signed        clk_vld_out;

    adc_top u_adc_top (
        .clk         ( clk         ),
        .rstn        ( rst_n       ),
        .dat_in      ( dat_in      ),
        .dat_out     ( dat_out     ),
        .clk_vld_out ( clk_vld_out )
    );

    // 时钟信号生成
    initial begin
        clk = 0;
        forever #(ClockPeriod / 2) clk = ~clk;
    end

    // 定义文件句柄和文件名
    integer file;
    integer scan_file;
    reg signed [31:0] data;
    reg signed [31:0] data_in;

    assign dat_in = data_in;

    // 初始化并读取文件
    initial begin
        rst_n = 0;
        #ClockPeriod rst_n = 1;

        // 打开文件
        file = $fopen("/home/qidc/Nutstore/Project/gysc/test/adc_out.txt", "r");

        // 初始化data_in
        data_in = 0;

        // 读取文件中的数据
        while (!$feof(file)) begin
            scan_file = $fscanf(file, "%d", data);
            if (scan_file == 1) begin
                @(posedge clk);
                data_in = data;
            end
        end

        $fclose(file);

        #ClockPeriod
        $finish;
    end

	initial begin
		$fsdbDumpfile("./rtl.fsdb");
		$fsdbDumpvars("+all");
	end

endmodule

