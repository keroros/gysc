// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/12/12 11:25
// Last Modified : 2024/12/12 11:31
// File Name     : hb2_filter.v
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

module hb2_filter (
    input                       clk         ,
    input                       rstn        ,
    input                       clk_vld_in  ,
    input       signed  [34:0]  dat_in      ,
    output  reg                 clk_vld_out ,
    output  reg signed  [34:0]  dat_out      
);

//-------------------------------------------
reg     signed  [34:0]      dat0_r[37:0]    ;
reg     signed  [34:0]      dat1_r[18:0]    ;
wire    signed  [64:0]      dat2[19:0]      ;
wire    signed  [64:0]      dat3            ;
wire    signed  [34:0]      dat4            ;
reg                         cnt             ;
wire                        clk_vld_out_0   ;
wire                        clk_vld_out_1   ;
genvar                      ii              ;

//-------------------------------------------
always @(posedge clk or negedge rstn) begin
    if (!rstn)
        dat1_r[0]    <= 35'd0;
    else if (clk_vld_out_1)
        dat1_r[0]    <= dat_in;
end

generate
for (ii=1;ii<=18;ii=ii+1)
always @(posedge clk or negedge rstn) begin
    if (!rstn)
        dat1_r[ii]  <= 35'd0;
    else if (clk_vld_out_1)
        dat1_r[ii]  <= dat1_r[ii-1];
end
endgenerate

always @(posedge clk or negedge rstn) begin
    if (!rstn)
        dat0_r[0]    <= 35'd0;
    else if (clk_vld_out_0)
        dat0_r[0]    <= dat_in;
end

generate
for (ii=1;ii<=37;ii=ii+1)
always @(posedge clk or negedge rstn) begin
    if (!rstn)
        dat0_r[ii]  <= 35'd0;
    else if (clk_vld_out_0)
        dat0_r[ii]  <= dat0_r[ii-1];
end
endgenerate

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
assign dat2[0]  = (dat0_r[0]  + dat0_r[37]) * signed'(31'd3870     ); 
assign dat2[1]  = (dat0_r[1]  + dat0_r[36]) * signed'(31'd16305    );
assign dat2[2]  = (dat0_r[2]  + dat0_r[35]) * signed'(31'd48553    );
assign dat2[3]  = (dat0_r[3]  + dat0_r[34]) * signed'(31'd119259   );
assign dat2[4]  = (dat0_r[4]  + dat0_r[33]) * signed'(31'd257820   );
assign dat2[5]  = (dat0_r[5]  + dat0_r[32]) * signed'(31'd507429   );
assign dat2[6]  = (dat0_r[6]  + dat0_r[31]) * signed'(31'd928131   );
assign dat2[7]  = (dat0_r[7]  + dat0_r[30]) * signed'(31'd1599799  );
assign dat2[8]  = (dat0_r[8]  + dat0_r[29]) * signed'(31'd2625321  );
assign dat2[9]  = (dat0_r[9]  + dat0_r[28]) * signed'(31'd4135001  );
assign dat2[10] = (dat0_r[10] + dat0_r[27]) * signed'(31'd6294535  );
assign dat2[11] = (dat0_r[11] + dat0_r[26]) * signed'(31'd9321690  );
assign dat2[12] = (dat0_r[12] + dat0_r[25]) * signed'(31'd13522985 );
assign dat2[13] = (dat0_r[13] + dat0_r[24]) * signed'(31'd19377524 );
assign dat2[14] = (dat0_r[14] + dat0_r[23]) * signed'(31'd27742080 );
assign dat2[15] = (dat0_r[15] + dat0_r[22]) * signed'(31'd40418827 );
assign dat2[16] = (dat0_r[16] + dat0_r[21]) * signed'(31'd62096704 );
assign dat2[17] = (dat0_r[17] + dat0_r[20]) * signed'(31'd110065333);
assign dat2[18] = (dat0_r[18] + dat0_r[19]) * signed'(31'd340477051);
assign dat2[19] = dat1_r[18] * signed'(31'd536870912);

assign dat3 =   +dat2[0] 
                -dat2[1] 
                +dat2[2]
                -dat2[3]
                +dat2[4]
                -dat2[5]
                +dat2[6]
                -dat2[7]
                +dat2[8]
                -dat2[9]
                +dat2[10]
                -dat2[11]
                +dat2[12]
                -dat2[13]
                +dat2[14]
                -dat2[15]
                +dat2[16]
                -dat2[17]
                +dat2[18]
                +dat2[19];

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

