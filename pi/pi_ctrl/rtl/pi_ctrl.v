`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/9/12
// Author: QiDC
// Project Name: gysc_asic
// File Name: pi_ctrl.v
// Versions: v1.0
// Description:
//
//////////////////////////////////////////////////////////////////////////////////

module pi_ctrl (
    input  wire               clk,
    input  wire               rst_n,
    input  wire signed [31:0] ref_i,
    input  wire signed [31:0] pi_ctrl_i,
    output wire signed [31:0] pi_ctrl_o
);

    parameter K_p = 32'b1;
    parameter K_i = 32'b1;

    wire signed [31:0] error;
    wire signed [31:0] delta_u;

    reg signed  [31:0] error_prev;
    reg signed  [31:0] uk;  //

    assign error   = (ref_i) - pi_ctrl_i;
    // assign delta_u = K_p * (error - error_prev);
    assign delta_u = K_p * (error - error_prev) + K_i * error;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            error_prev <= 32'd0;
            uk         <= 32'd0;
        end else begin
            error_prev <= error;
            uk         <= uk + delta_u;
        end
    end

    assign pi_ctrl_o = uk;

endmodule
