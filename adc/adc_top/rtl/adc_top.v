// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/12/12 14:42
// Last Modified : 2025/01/02 16:41
// File Name     : adc_top.v
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

`timescale 1ns/1ps

module adc_top (
    input  wire                clk,
    input  wire                rstn,
    input  wire signed [4:0]   dat_in,
    output wire                clk_vld_out,
    output wire signed [31:0]  dat_out
);

    // cic滤波器输出
    wire signed [34:0] cic_dat_out;
    wire signed        cic_clk_vld_out;

    // 例化CIC滤波器
    cic_filter u_cic_filter (
        .clk         ( clk             ),
        .rstn        ( rstn            ),
        .dat_in      ( dat_in          ),
        .dat_out     ( cic_dat_out     ),
        .clk_vld_out ( cic_clk_vld_out )
    );

    // cic补偿滤波器输出
    wire signed        comp_clk_vld_out;
    wire signed [34:0] comp_dat_out;

    // 例化CIC补偿滤波器
    cic_comp_filter u_cic_comp_filter (
        .clk         ( clk              ) ,
        .rstn        ( rstn             ) ,
        .clk_vld_in  ( cic_clk_vld_out  ) ,
        .dat_in      ( cic_dat_out      ) ,
        .clk_vld_out ( comp_clk_vld_out ) ,
        .dat_out     ( comp_dat_out     )
    );

    // hb1滤波器输出
    wire                 hb1_clk_vld_out;
    wire signed  [34:0]  hb1_dat_out;

    // 例化第一级半带滤波器
    hb1_filter u_hb1_filter (
        .clk         ( clk              ) ,
        .rstn        ( rstn             ) ,
        .clk_vld_in  ( comp_clk_vld_out ) ,
        .dat_in      ( comp_dat_out     ) ,
        .clk_vld_out ( hb1_clk_vld_out  ) ,
        .dat_out     ( hb1_dat_out      )
    );

    // hb2滤波器输出
    wire signed  [34:0]  hb2_dat_out;

    // 例化第二级半带滤波器
    hb2_filter u_hb2_filter (
        .clk         ( clk             ) ,
        .rstn        ( rstn            ) ,
        .clk_vld_in  ( hb1_clk_vld_out ) ,
        .dat_in      ( hb1_dat_out     ) ,
        .clk_vld_out ( clk_vld_out     ) ,
        .dat_out     ( hb2_dat_out     )
    );

    // 输出数据转换为IEEE754格式
    fix2float u_fix2float (
    .fixed_i ( hb2_dat_out ),
    .float_o ( dat_out     )
);


endmodule

