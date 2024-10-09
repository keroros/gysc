`timescale 1ps/1ps
module pid_controller_tb;

    //Ports
    reg                         clk     ;
    reg                         rstn    ;
    reg   signed  [31:0]        sig_in  ;
    reg   signed  [31:0]        target  ;
    reg   signed  [7:0]         kp      ;
    reg   signed  [7:0]         ki      ;
    reg   signed  [7:0]         kd      ;
    wire  signed  [63:0]        ctrl_out;
 
    integer i;
    reg [31:0]  txt_in       [0:500-1]  ;
    reg [31:0]  txt_target   [0:500-1]  ;
    reg [7:0]   count                   ;
    reg [15:0]  file                    ;
    initial begin
        $readmemh("sig_in.txt", txt_in);      // 读取输入信号sig_in
        $readmemh("target.txt", txt_target);  // 读取输入信号target
        file = $fopen("ctrl_out.txt","w");    // 建立新文件用于保存输出ctrl_out
    end
    initial begin   
        // 给定PID系数，数值与上面不同，原因见下 3.3
        kp      =   8'd50  ;
        ki      =   8'd1   ;
        kd      =   8'd200 ;
        //开启时钟及复位
        clk     =   1'b0    ;
        rstn    =   1'b1    ;
        # 5;
        rstn    =   1'b0    ;
        # 5;
        rstn    =   1'b1    ;
        // 依次读取输入数据
        for (i = 0;i <= 500; i = i + 1) begin
            sig_in = txt_in[i]      ;
            target = txt_target[i]  ;
            #10;
        end
    end
    pid_controller pid_controller_inst (
                       .clk         (clk)       ,
                       .rstn        (rstn)      ,
                       .sig_in      (sig_in)    ,
                       .target      (target)    ,
                       .kp          (kp)        ,
                       .ki          (ki)        ,
                       .kd          (kd)        ,
                       .ctrl_out    (ctrl_out)
                   );
    always #5  clk = ~clk ;
    // 将ctrl_out保存到txt文件
    always @(posedge clk) begin
        if (count < 8'd200) begin
            $fwrite(file,"%d\n", ctrl_out);
            count <= count + 1;
        end
        else begin
            count <= 8'd0;
            $fclose(file);   // 关闭文件读写
        end
    end
endmodule
