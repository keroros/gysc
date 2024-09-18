module pid_controller (
        input  wire                  clk      ,      // 时钟50MHz
        input  wire                  rstn     ,      // 复位信号
        input  wire signed [31:0]    sig_in   ,      // 反馈信号输入
        input  wire signed [31:0]    target   ,      // 目标信号
 
        input  wire signed [7:0]     kp       ,      // 比例环节系数
        input  wire signed [7:0]     ki       ,      // 积分环节系数
        input  wire signed [7:0]     kd       ,      // 微分环节系数
 
        output wire signed [63:0]    ctrl_out        // 控制信号输出
    );
 
    wire     [31:0]  error   ;
    wire     [31:0]  error1  ;
    wire     [31:0]  sum_e   ;
    error error_inst (
              .clk            (clk)       ,
              .rstn           (rstn)      ,
              .sig_in         (sig_in)    ,
              .target         (target)    ,
              .error          (error)     ,
              .error1         (error1)    ,
              .sum_e          (sum_e)
          );

    pid_ctrl pid_ctrl_inst (
                 .clk            (clk)     ,
                 .rstn           (rstn)    ,
                 .error          (error)   ,
                 .error1         (error1)  ,
                 .sum_e          (sum_e)   ,
                 .kp             (kp)      ,
                 .ki             (ki)      ,
                 .kd             (kd)      ,
                 .ctrl_out       (ctrl_out)
             ); 
endmodule
