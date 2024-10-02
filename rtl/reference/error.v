module error (
        input  wire                         clk     ,   // 时钟信号
        input  wire                         rstn    ,   // 复位信号
        input  wire     signed     [31:0]   sig_in  ,   // 反馈信号输入
        input  wire     signed     [31:0]   target  ,   // 目标信号
 
        output reg      signed     [31:0]   error   ,   // 当前状态误差信号
        output reg      signed     [31:0]   error1  ,   // 上一状态误差信号
        output reg      signed     [31:0]   sum_e       // 误差信号累加值 用于积分环节
    );
 
    parameter [31:0] itg_max = 32'd100000000     ;       // 积分限幅，最大累加值为100
    parameter [31:0] itg_min = -32'd100000000    ;       // 积分限幅，最小累加值为-100
    always @(posedge clk or negedge rstn) begin
        if(!rstn) begin             // 复位
            error  <= 32'd0 ;
            error1 <= 32'd0 ;
            sum_e  <= 32'd0 ;
        end
        else begin
            error  <= target - sig_in   ;       // 误差信号e = 目标信号t - 反馈信号s
            error1 <= error             ;       // 将误差信号打一拍 得到上一时刻的误差值
            // 由于二进制数使用补码表示正负，因此限幅的条件与简单的十进制数表示方法存在差异
            if ((sum_e > itg_max) && (sum_e < 32'h7FFF_FFFF)) begin
                sum_e <= itg_max;
            end
            else if ((sum_e < itg_min) && (sum_e > 32'h8000_0000)) begin
                sum_e <= itg_min;
            end
            else
                sum_e  <= sum_e + error     ;       // 积分误差累加                     
        end
    end
 
endmodule
