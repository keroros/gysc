// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2025/01/03 10:30
// Last Modified : 2025/01/06 08:39
// File Name     : float_adder.v
// Description   :
//         
// Copyright (c) 2025 Peking University.
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
// 2025/01/03   Qidc            1.0                     Original
// -FHDR----------------------------------------------------------------------------

`timescale 1ns/1ps

module float_adder (

    //data input
    input                   sign_aaa    ,
    input       [7:0]       exp_aaa     ,
    input       [23:0]      abs_aaa     ,

    input                   sign_bbb    ,
    input       [7:0]       exp_bbb     ,
    input       [23:0]      abs_bbb     ,

    //data output
    output  reg             sign_ccc    ,
    output  reg [7:0]       exp_ccc     ,
    output  reg [23:0]      abs_ccc     ,

    //ctrl
    input                   opCode      ,    
    output  reg             err             
);


//----------------------------------------------
wire                diff_sign   ;       // 确定符号位是否相同
reg     [7:0]       diff_exp_1  ;
reg     [7:0]       exp_both    ;
reg     [7:0]       exp_ccc_p   ;
reg     [23:0]      abs_aaa_2   ;
reg     [23:0]      abs_bbb_2   ;
reg     [24:0]      abs_ccc_2   ;



//----------------- sign  -------------------------------------
assign diff_sign = sign_aaa ^ sign_bbb;


always @(*)
begin
    if (opCode ^ diff_sign) //different sign
    begin
        if(abs_aaa_2 > abs_bbb_2)   //abs diff
            sign_ccc = sign_aaa;
        else
        begin
            if (~opCode)    //plus
                sign_ccc = sign_bbb;
            else //trime
                sign_ccc = ~sign_aaa;
        end 
    end 

    else    //same sign
        sign_ccc = sign_aaa;
end




//-------------------- abs ----------------------------------
always @(*)
begin
    if(exp_aaa > exp_bbb)
    begin
        diff_exp_1 = exp_aaa - exp_bbb;
        exp_both   = exp_aaa;
        abs_aaa_2  = abs_aaa;
        
        case(diff_exp_1)
            8'd1 :   abs_bbb_2 = {1'd0 , abs_bbb[23:1 ]};
            8'd2 :   abs_bbb_2 = {2'd0 , abs_bbb[23:2 ]};
            8'd3 :   abs_bbb_2 = {3'd0 , abs_bbb[23:3 ]};
            8'd4 :   abs_bbb_2 = {4'd0 , abs_bbb[23:4 ]};
            8'd5 :   abs_bbb_2 = {5'd0 , abs_bbb[23:5 ]};
            8'd6 :   abs_bbb_2 = {6'd0 , abs_bbb[23:6 ]};
            8'd7 :   abs_bbb_2 = {7'd0 , abs_bbb[23:7 ]};
            8'd8 :   abs_bbb_2 = {8'd0 , abs_bbb[23:8 ]};
            8'd9 :   abs_bbb_2 = {9'd0 , abs_bbb[23:9 ]};
            8'd10:   abs_bbb_2 = {10'd0, abs_bbb[23:10]};
            8'd11:   abs_bbb_2 = {11'd0, abs_bbb[23:11]};
            8'd12:   abs_bbb_2 = {12'd0, abs_bbb[23:12]};
            8'd13:   abs_bbb_2 = {13'd0, abs_bbb[23:13]};
            8'd14:   abs_bbb_2 = {14'd0, abs_bbb[23:14]};
            8'd15:   abs_bbb_2 = {15'd0, abs_bbb[23:15]};
            8'd16:   abs_bbb_2 = {16'd0, abs_bbb[23:16]};
            8'd17:   abs_bbb_2 = {17'd0, abs_bbb[23:17]};
            8'd18:   abs_bbb_2 = {18'd0, abs_bbb[23:18]};
            8'd19:   abs_bbb_2 = {19'd0, abs_bbb[23:19]};
            8'd20:   abs_bbb_2 = {20'd0, abs_bbb[23:20]};
            8'd21:   abs_bbb_2 = {21'd0, abs_bbb[23:21]};
            8'd22:   abs_bbb_2 = {22'd0, abs_bbb[23:22]};
            8'd23:   abs_bbb_2 = {23'd0, abs_bbb[23:23]};
            default: abs_bbb_2 = 24'd0;
        endcase
    end
    else
    begin
        diff_exp_1  = exp_bbb - exp_aaa;
        exp_both    = exp_bbb;
        abs_bbb_2   = abs_bbb;

        case(diff_exp_1)
            8'd0 :   abs_aaa_2 = abs_aaa[23:0];
            8'd1 :   abs_aaa_2 = {1'd0 , abs_aaa[23:1 ]};
            8'd2 :   abs_aaa_2 = {2'd0 , abs_aaa[23:2 ]};
            8'd3 :   abs_aaa_2 = {3'd0 , abs_aaa[23:3 ]};
            8'd4 :   abs_aaa_2 = {4'd0 , abs_aaa[23:4 ]};
            8'd5 :   abs_aaa_2 = {5'd0 , abs_aaa[23:5 ]};
            8'd6 :   abs_aaa_2 = {6'd0 , abs_aaa[23:6 ]};
            8'd7 :   abs_aaa_2 = {7'd0 , abs_aaa[23:7 ]};
            8'd8 :   abs_aaa_2 = {8'd0 , abs_aaa[23:8 ]};
            8'd9 :   abs_aaa_2 = {9'd0 , abs_aaa[23:9 ]};
            8'd10:   abs_aaa_2 = {10'd0, abs_aaa[23:10]};
            8'd11:   abs_aaa_2 = {11'd0, abs_aaa[23:11]};
            8'd12:   abs_aaa_2 = {12'd0, abs_aaa[23:12]};
            8'd13:   abs_aaa_2 = {13'd0, abs_aaa[23:13]};
            8'd14:   abs_aaa_2 = {14'd0, abs_aaa[23:14]};
            8'd15:   abs_aaa_2 = {15'd0, abs_aaa[23:15]};
            8'd16:   abs_aaa_2 = {16'd0, abs_aaa[23:16]};
            8'd17:   abs_aaa_2 = {17'd0, abs_aaa[23:17]};
            8'd18:   abs_aaa_2 = {18'd0, abs_aaa[23:18]};
            8'd19:   abs_aaa_2 = {19'd0, abs_aaa[23:19]};
            8'd20:   abs_aaa_2 = {20'd0, abs_aaa[23:20]};
            8'd21:   abs_aaa_2 = {21'd0, abs_aaa[23:21]};
            8'd22:   abs_aaa_2 = {22'd0, abs_aaa[23:22]};
            8'd23:   abs_aaa_2 = {23'd0, abs_aaa[23:23]};
            default: abs_aaa_2 = 24'd0;
        endcase
    end
end



always @(*)
begin
    if (opCode ^ diff_sign) //different sign
    begin
        if(abs_aaa_2 > abs_bbb_2)
            abs_ccc_2  = abs_aaa_2 - abs_bbb_2;  //(24-24 --> 24)
        else
            abs_ccc_2  = abs_bbb_2 - abs_aaa_2;
    end 
    else    //same sign
        abs_ccc_2  = abs_aaa_2 + abs_bbb_2;    //(24+24 ---> 25)
end



always @(*)
begin
    //------------
    if (abs_ccc_2[24])
    begin
        {err, exp_ccc_p} = exp_both + 8'd1;

        if (err)
        begin
            exp_ccc  = 8'hff;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = abs_ccc_2[24:1];
        end
    end

    //------------
    else if(abs_ccc_2[23])
    begin
        err       = 1'b0;
        exp_ccc_p = exp_both;
        exp_ccc   = exp_ccc_p;
        abs_ccc   = abs_ccc_2[23:0];
    end

    //------------
    else if(abs_ccc_2[22])
    begin
        {err, exp_ccc_p} = exp_both - 8'd1;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[22:0],1'd0};
        end
    end

    //------------
    else if(abs_ccc_2[21])
    begin
        {err, exp_ccc_p} = exp_both - 8'd2;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[21:0],2'd0};
        end
    end

    //------------
    else if(abs_ccc_2[20])
    begin
        {err, exp_ccc_p} = exp_both - 8'd3;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[20:0],3'd0};
        end
    end

    //------------
    else if(abs_ccc_2[19])
    begin
        {err, exp_ccc_p} = exp_both - 8'd4;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[19:0],4'd0};
        end
    end

    //------------
    else if(abs_ccc_2[18])
    begin
        {err, exp_ccc_p} = exp_both - 8'd5;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[18:0],5'd0};
        end
    end

    //------------
    else if(abs_ccc_2[17])
    begin
        {err, exp_ccc_p} = exp_both - 8'd6;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[17:0],6'd0};
        end
    end

    //------------
    else if(abs_ccc_2[16])
    begin
        {err, exp_ccc_p} = exp_both - 8'd7;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[16:0],7'd0};
        end
    end

    //------------
    else if(abs_ccc_2[15])
    begin
        {err, exp_ccc_p} = exp_both - 8'd8;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[15:0],8'd0};
        end
    end

    //------------
    else if(abs_ccc_2[14])
    begin
        {err, exp_ccc_p} = exp_both - 8'd9;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[14:0],9'd0};
        end
    end

    //------------
    else if(abs_ccc_2[13])
    begin
        {err, exp_ccc_p} = exp_both - 8'd10;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[13:0],10'd0};
        end
    end

    //------------
    else if(abs_ccc_2[12])
    begin
        {err, exp_ccc_p} = exp_both - 8'd11;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[12:0],11'd0};
        end
    end

    //------------
    else if(abs_ccc_2[11])
    begin
        {err, exp_ccc_p} = exp_both - 8'd12;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[11:0],12'd0};
        end
    end

    //------------
    else if(abs_ccc_2[10])
    begin
        {err, exp_ccc_p} = exp_both - 8'd13;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[10:0],13'd0};
        end
    end

    //------------
    else if(abs_ccc_2[9])
    begin
        {err, exp_ccc_p} = exp_both - 8'd14;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[9:0],14'd0};
        end
    end

    //------------
    else if(abs_ccc_2[8])
    begin
        {err, exp_ccc_p} = exp_both - 8'd15;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[8:0],15'd0};
        end
    end

    //------------
    else if(abs_ccc_2[7])
    begin
        {err, exp_ccc_p} = exp_both - 8'd16;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[7:0],16'd0};
        end
    end

    //------------
    else if(abs_ccc_2[6])
    begin
        {err, exp_ccc_p} = exp_both - 8'd17;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[6:0],17'd0};
        end
    end

    //------------
    else if(abs_ccc_2[5])
    begin
        {err, exp_ccc_p} = exp_both - 8'd18;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[5:0],18'd0};
        end
    end

    //------------
    else if(abs_ccc_2[4])
    begin
        {err, exp_ccc_p} = exp_both - 8'd19;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[4:0],19'd0};
        end
    end

    //------------
    else if(abs_ccc_2[3])
    begin
        {err, exp_ccc_p} = exp_both - 8'd20;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[3:0],20'd0};
        end
    end

    //------------
    else if(abs_ccc_2[2])
    begin
        {err, exp_ccc_p} = exp_both - 8'd21;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[2:0],21'd0};
        end
    end

    //------------
    else if(abs_ccc_2[1])
    begin
        {err, exp_ccc_p} = exp_both - 8'd22;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[1:0],22'd0};
        end
    end

    //------------
    else if(abs_ccc_2[0])
    begin
        {err, exp_ccc_p} = exp_both - 8'd23;

        if (err)
        begin
            exp_ccc  = 8'd0;
            abs_ccc  = 24'h800000;
        end
        else
        begin
            exp_ccc  = exp_ccc_p;
            abs_ccc  = {abs_ccc_2[0],23'd0};
        end
    end

    else
    begin
        err       = 1'b0;
        exp_ccc_p = 8'd0;
        exp_ccc   = 8'd0;
        abs_ccc   = 24'h800000;
    end
end


endmodule

