// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/11/27 17:23
// Last Modified : 2024/11/29 10:38
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

//-------------------------------------------
reg     signed  [34:0]      dat_r[13:0]    ;
wire    signed  [64:0]      dat2[7:0]      ;
wire    signed  [64:0]      dat3           ;
wire    signed  [34:0]      dat4           ;
reg                         cnt            ;
wire                        clk_vld_out_pre;

//-------------------------------------------
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

//---------------------------------------------------------
always @(posedge clk or negedge rstn) begin
    if (!rstn)
        cnt <= 1'b0;
    else if (clk_vld_in)
        cnt <= ~cnt;
end

assign clk_vld_out_pre = clk_vld_in & cnt;

//---------------------------------------------------------
assign dat2[0] = (dat_in   + dat_r[13]) * signed'(31'd6421026  );
assign dat2[1] = (dat_r[0] + dat_r[12]) * signed'(31'd1088314  );
assign dat2[2] = (dat_r[1] + dat_r[11]) * signed'(31'd34811522 );
assign dat2[3] = (dat_r[2] + dat_r[10]) * signed'(31'd8641811  );
assign dat2[4] = (dat_r[3] + dat_r[9] ) * signed'(31'd116533699);
assign dat2[5] = (dat_r[4] + dat_r[8] ) * signed'(31'd53216433 );
assign dat2[6] = (dat_r[5] + dat_r[7] ) * signed'(31'd356375486); 
assign dat2[7] = dat_r[6] * signed'(31'd628155438);

assign dat3 = -dat2[0] -dat2[1] +dat2[2] +dat2[3] -dat2[4] -dat2[5] +dat2[6] +dat2[7];
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



