`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/9/12
// Author: QiDC
// Project Name: gysc_asic
// File Name: feedback.v
// Versions: v1.0
// Description:
// 
//////////////////////////////////////////////////////////////////////////////////

module feedback (
    input  wire               clk,
    input  wire               rst_n,
    input  wire signed [31:0] feedback_i,  //
    output wire signed  [31:0] feedback_o   //
);

    localparam gain = 6;  // 

    // always @(posedge clk or negedge rst_n) begin
    //     if (!rst_n) begin
    //         feedback_o <= 32'b0;
    //     end else begin
    //         feedback_o <= feedback_i + 1'b1;
    //     end
    // end

    assign feedback_o = feedback_i >> gain;

endmodule
