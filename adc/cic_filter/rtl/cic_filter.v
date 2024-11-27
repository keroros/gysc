// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/11/27 17:22
// Last Modified : 2024/11/27 20:22
// File Name     : cic_filter.v
// Description   :
//         
// Copyright (c) 2024 Peking University.
// ALL RIGHTS RESERVED
// 
// Local Variables: 
// verilog-library-directories:("/home/qidc/Nutstore/Project/riscv")
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

module cic_filter (
    input                       clk         , 
    input                       rstn        , 
    input       signed [4:0]    dat_in      ,
    output  reg signed [34:0]   dat_out     ,
    output  reg                 clk_vld_out            
);

reg     signed  [34:0]  section_out1    ; 
reg     signed  [34:0]  section_out2    ;
reg     signed  [34:0]  section_out3    ;
reg     signed  [34:0]  section_out4    ;
reg     signed  [34:0]  section_out5    ;
reg     signed  [34:0]  section_out5_r  ;
reg     signed  [34:0]  section_out5_2r ;
reg     signed  [34:0]  section_out6_r  ;
reg     signed  [34:0]  section_out7_r  ;
reg     signed  [34:0]  section_out8_r  ;
reg     signed  [34:0]  section_out9_r  ;

wire    signed  [34:0]  section_out6    ;
wire    signed  [34:0]  section_out7    ;
wire    signed  [34:0]  section_out8    ;
wire    signed  [34:0]  section_out9    ;
wire    signed  [34:0]  section_out10   ;

reg     [5:0]   cur_cnt         ;
wire            phase_1         ;

//------------------ Integrator ------------------
always @(posedge clk or negedge rstn)
begin
    if (!rstn)
    begin
        section_out1 <= 35'd0;
        section_out2 <= 35'd0;
        section_out3 <= 35'd0;
        section_out4 <= 35'd0;
        section_out5 <= 35'd0;
    end
    else
    begin
        section_out1 <= dat_in       + section_out1;
        section_out2 <= section_out1 + section_out2;
        section_out3 <= section_out2 + section_out3;
        section_out4 <= section_out3 + section_out4;
        section_out5 <= section_out4 + section_out5;
    end
end

//---------- clock divider ------------------
always @(posedge clk or negedge rstn)
begin
    if (!rstn)
        cur_cnt <= 6'd0;
    else 
        cur_cnt <= cur_cnt + 6'd1;
end

assign  phase_1 = (cur_cnt == 6'd1);

//------------------ Comb ------------------
assign section_out6  = section_out5_r - section_out5_2r;
assign section_out7  = section_out6   - section_out6_r ;
assign section_out8  = section_out7   - section_out7_r ;
assign section_out9  = section_out8   - section_out8_r ;
assign section_out10 = section_out9   - section_out9_r ;

always @(posedge clk or negedge rstn)
begin
    if (!rstn)
    begin
        section_out5_r  <= 35'd0;
        section_out5_2r <= 35'd0;
        section_out6_r  <= 35'd0;
        section_out7_r  <= 35'd0;
        section_out8_r  <= 35'd0;
        section_out9_r  <= 35'd0;
    end
    else if (phase_1)
    begin
        section_out5_r  <= section_out5;
        section_out5_2r <= section_out5_r;
        section_out6_r  <= section_out6;
        section_out7_r  <= section_out7;
        section_out8_r  <= section_out8;
        section_out9_r  <= section_out9;
    end
end 

//------------------ Output Register ------------------
always @(posedge clk or negedge rstn)
begin
    if (!rstn)
        dat_out <= 35'd0;
    else if (phase_1)
        dat_out <= section_out10;
end 

always @(posedge clk or negedge rstn)
begin
    if (!rstn)
        clk_vld_out <= 1'b0;
    else
        clk_vld_out <= phase_1;
end 

endmodule  

