// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/11/27 17:23
// Last Modified : 2024/12/30 14:45
// File Name     : cic_comp_filter.v
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
// 2024/11/27   Qidc            1.0                     Original
// -FHDR----------------------------------------------------------------------------

`timescale 1ns/1ps

module cic_comp_filter (
    input                       clk         ,
    input                       rstn        ,
    input                       clk_vld_in  ,
    input       signed  [34:0]  dat_in      ,

    output  reg                 clk_vld_out ,
    output  reg signed  [34:0]  dat_out
);


    reg     signed  [34:0]      dat_r[13:0]    ;
    wire    signed  [64:0]      dat2[7:0]      ;
    wire    signed  [64:0]      dat3           ;
    wire    signed  [34:0]      dat4           ;
    reg                         cnt            ;
    wire                        clk_vld_out_pre;

    // 数据打拍
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            dat_r[0]    <= 35'd0;
            dat_r[1]    <= 35'd0;
            dat_r[2]    <= 35'd0;
            dat_r[3]    <= 35'd0;
            dat_r[4]    <= 35'd0;
            dat_r[5]    <= 35'd0;
            dat_r[6]    <= 35'd0;
            dat_r[7]    <= 35'd0;
            dat_r[8]    <= 35'd0;
            dat_r[9]    <= 35'd0;
            dat_r[10]   <= 35'd0;
            dat_r[11]   <= 35'd0;
            dat_r[12]   <= 35'd0;
            dat_r[13]   <= 35'd0;
        end
        else if (clk_vld_in) begin
            dat_r[0]    <= dat_in   ;
            dat_r[1]    <= dat_r[0] ;
            dat_r[2]    <= dat_r[1] ;
            dat_r[3]    <= dat_r[2] ;
            dat_r[4]    <= dat_r[3] ;
            dat_r[5]    <= dat_r[4] ;
            dat_r[6]    <= dat_r[5] ;
            dat_r[7]    <= dat_r[6] ;
            dat_r[8]    <= dat_r[7] ;
            dat_r[9]    <= dat_r[8] ;
            dat_r[10]   <= dat_r[9] ;
            dat_r[11]   <= dat_r[10];
            dat_r[12]   <= dat_r[11];
            dat_r[13]   <= dat_r[12];
        end
    end

    // 获取同频不同相位的两个降采样时钟
    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            cnt <= 1'b0;
        else if (clk_vld_in)
            cnt <= ~cnt;
    end

    assign clk_vld_out_pre = clk_vld_in & cnt;

/*----------------  by Qidc 2024-12-30  ---------------------
    // 系数相乘计算结果
    assign dat2[0] = (dat_in   + dat_r[13]) * signed'(31'd6421026  );
    assign dat2[1] = (dat_r[0] + dat_r[12]) * signed'(31'd1088314  );
    assign dat2[2] = (dat_r[1] + dat_r[11]) * signed'(31'd34811522 );
    assign dat2[3] = (dat_r[2] + dat_r[10]) * signed'(31'd8641811  );
    assign dat2[4] = (dat_r[3] + dat_r[9] ) * signed'(31'd116533699);
    assign dat2[5] = (dat_r[4] + dat_r[8] ) * signed'(31'd53216433 );
    assign dat2[6] = (dat_r[5] + dat_r[7] ) * signed'(31'd356375486);
    assign dat2[7] = dat_r[6] * signed'(31'd628155438);
------------------  by Qidc 2024-12-30  -------------------*/

    wire signed [34:0] x[0:7];

    assign x[0] = dat_in   + dat_r[13];
    assign x[1] = dat_r[0] + dat_r[12];
    assign x[2] = dat_r[1] + dat_r[11];
    assign x[3] = dat_r[2] + dat_r[10];
    assign x[4] = dat_r[3] + dat_r[9];
    assign x[5] = dat_r[4] + dat_r[8];
    assign x[6] = dat_r[5] + dat_r[7];
    assign x[7] = dat_r[6];

    assign dat2[0] = {{8{x[0][34]}}, x[0], 22'b0}
                   + {{9{x[0][34]}}, x[0], 21'b0}
                   + {{13{x[0][34]}}, x[0], 17'b0}
                   - {{19{x[0][34]}}, x[0], 11'b0}
                   + {{21{x[0][34]}}, x[0], 9'b0}
                   + {{25{x[0][34]}}, x[0], 5'b0}
                   + {{29{x[0][34]}}, x[0], 1'b0};
    assign dat2[1] = {{10{x[1][34]}}, x[1], 20'b0}
                   + {{15{x[1][34]}}, x[1], 15'b0}
                   + {{18{x[1][34]}}, x[1], 12'b0}
                   + {{19{x[1][34]}}, x[1], 11'b0}
                   + {{21{x[1][34]}}, x[1], 9'b0}
                   + {{22{x[1][34]}}, x[1], 8'b0}
                   + {{24{x[1][34]}}, x[1], 6'b0}
                   - {{27{x[1][34]}}, x[1], 3'b0}
                   + {{29{x[1][34]}}, x[1], 1'b0};
    assign dat2[2] = {{5{x[2][34]}}, x[2], 25'b0}
                   + {{10{x[2][34]}}, x[2], 20'b0}
                   + {{13{x[2][34]}}, x[2], 17'b0}
                   + {{14{x[2][34]}}, x[2], 16'b0}
                   + {{17{x[2][34]}}, x[2], 13'b0}
                   + {{18{x[2][34]}}, x[2], 12'b0}
                   - {{21{x[2][34]}}, x[2], 9'b0}
                   + {{23{x[2][34]}}, x[2], 7'b0}
                   + {{29{x[2][34]}}, x[2], 1'b0};
    assign dat2[3] = {{7{x[3][34]}}, x[3], 23'b0}
                   + {{12{x[3][34]}}, x[3], 18'b0}
                   - {{16{x[3][34]}}, x[3], 14'b0}
                   + {{17{x[3][34]}}, x[3], 13'b0}
                   - {{20{x[3][34]}}, x[3], 10'b0}
                   + {{22{x[3][34]}}, x[3], 8'b0}
                   + {{26{x[3][34]}}, x[3], 4'b0}
                   + {{29{x[3][34]}}, x[3], 1'b0}
                   + {x[3]};
    assign dat2[4] = {{4{x[4][34]}}, x[4], 26'b0}
                   + {{5{x[4][34]}}, x[4], 25'b0}
                   + {{6{x[4][34]}}, x[4], 24'b0}
                   - {{10{x[4][34]}}, x[4], 20'b0}
                   + {{13{x[4][34]}}, x[4], 17'b0}
                   + {{17{x[4][34]}}, x[4], 13'b0}
                   + {{19{x[4][34]}}, x[4], 11'b0}
                   + {{21{x[4][34]}}, x[4], 9'b0}
                   - {{24{x[4][34]}}, x[4], 6'b0}
                   + {{29{x[4][34]}}, x[4], 1'b0}
                   + {x[4]};
    assign dat2[5] = {{5{x[5][34]}}, x[5], 25'b0}
                   + {{6{x[5][34]}}, x[5], 24'b0}
                   + {{9{x[5][34]}}, x[5], 21'b0}
                   + {{11{x[5][34]}}, x[5], 19'b0}
                   + {{12{x[5][34]}}, x[5], 18'b0}
                   + {{20{x[5][34]}}, x[5], 10'b0}
                   + {{23{x[5][34]}}, x[5], 7'b0}
                   + {{25{x[5][34]}}, x[5], 5'b0}
                   + {{26{x[5][34]}}, x[5], 4'b0}
                   + {x[5]};
    assign dat2[6] = {{2{x[6][34]}}, x[6], 28'b0}
                   + {{4{x[6][34]}}, x[6], 26'b0}
                   + {{6{x[6][34]}}, x[6], 24'b0}
                   + {{8{x[6][34]}}, x[6], 22'b0}
                   - {{12{x[6][34]}}, x[6], 18'b0}
                   + {{13{x[6][34]}}, x[6], 17'b0}
                   - {{16{x[6][34]}}, x[6], 14'b0}
                   + {{18{x[6][34]}}, x[6], 12'b0}
                   + {{19{x[6][34]}}, x[6], 11'b0}
                   + {{20{x[6][34]}}, x[6], 10'b0}
                   - {{23{x[6][34]}}, x[6], 7'b0}
                   + {{24{x[6][34]}}, x[6], 6'b0}
                   - {{29{x[6][34]}}, x[6], 1'b0};
    assign dat2[7] = {{1{x[7][34]}}, x[7], 29'b0}
                   + {{4{x[7][34]}}, x[7], 26'b0}
                   + {{6{x[7][34]}}, x[7], 24'b0}
                   + {{7{x[7][34]}}, x[7], 23'b0}
                   - {{10{x[7][34]}}, x[7], 20'b0}
                   + {{14{x[7][34]}}, x[7], 16'b0}
                   - {{17{x[7][34]}}, x[7], 13'b0}
                   + {{20{x[7][34]}}, x[7], 10'b0}
                   + {{25{x[7][34]}}, x[7], 5'b0}
                   + {{26{x[7][34]}}, x[7], 4'b0}
                   - {{29{x[7][34]}}, x[7], 1'b0};

    assign dat3 = - dat2[0]
                  - dat2[1]
                  + dat2[2]
                  + dat2[3]
                  - dat2[4]
                  - dat2[5]
                  + dat2[6]
                  + dat2[7];

    assign dat4 = dat3 >>> 30;

    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            dat_out <= 35'd0;
        else if (clk_vld_out_pre)
            dat_out <= dat4;
    end

    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            clk_vld_out <= 1'b0;
        else
            clk_vld_out <= clk_vld_out_pre;
    end

endmodule


