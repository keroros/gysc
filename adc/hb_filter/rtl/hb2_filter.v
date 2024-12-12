// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/12/12 11:25
// Last Modified : 2024/12/12 11:31
// File Name     : hb1_filter.v
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

module hb1_filter (
    input                       clk         ,
    input                       rstn        ,
    input                       clk_vld_in  ,
    input       signed  [34:0]  dat_in      ,
    output  reg                 clk_vld_out ,
    output  reg signed  [34:0]  dat_out         
);

//-------------------------------------------
reg     signed  [34:0]      dat0_r[3:0]     ;
reg     signed  [34:0]      dat1_r[1:0]     ;
wire    signed  [64:0]      dat2[2:0]       ;
wire    signed  [64:0]      dat3            ;
wire    signed  [34:0]      dat4            ;
reg                         cnt             ;
wire                        clk_vld_out_0   ;
wire                        clk_vld_out_1   ;


//-------------------------------------------
always @(posedge clk or negedge rstn) begin
    if (!rstn)
    begin
        dat1_r[0]    <= 35'd0;
        dat1_r[1]    <= 35'd0;
    end
    else if (clk_vld_out_1)
    begin
        dat1_r[0]    <= dat_in      ;
        dat1_r[1]    <= dat1_r[0]   ;
    end
end

always @(posedge clk or negedge rstn) begin
    if (!rstn)
    begin
        dat0_r[0]    <= 35'd0;
        dat0_r[1]    <= 35'd0;
        dat0_r[2]    <= 35'd0;
        dat0_r[3]    <= 35'd0;
    end
    else if (clk_vld_out_0)
    begin
        dat0_r[0]    <= dat_in      ;
        dat0_r[1]    <= dat0_r[0]   ;
        dat0_r[2]    <= dat0_r[1]   ;
        dat0_r[3]    <= dat0_r[2]   ;
    end
end

//---------------------------------------------------------
always @(posedge clk or negedge rstn) begin
    if (!rstn)
        cnt <= 1'b0;
    else if (clk_vld_in)
        cnt <= ~cnt;
end

assign clk_vld_out_0 = clk_vld_in & (~cnt);
assign clk_vld_out_1 = clk_vld_in & cnt;

//---------------------------------------------------------
assign dat2[0] = (dat0_r[0] + dat0_r[3]) * signed'(31'd54357298 );
assign dat2[1] = (dat0_r[1] + dat0_r[2]) * signed'(31'd316817548);
assign dat2[2] = dat1_r[1] * signed'(31'd536870912);

assign dat3 = -dat2[0] +dat2[1] +dat2[2];
assign dat4 = dat3 >>> 30;

always @(posedge clk or negedge rstn) begin
    if (!rstn)
        dat_out <= 35'd0;
    else if (clk_vld_out_1)
        dat_out <= dat4;
end

always @(posedge clk or negedge rstn) begin
    if (!rstn)
        clk_vld_out <= 1'b0;
    else
        clk_vld_out <= clk_vld_out_1;
end




endmodule

