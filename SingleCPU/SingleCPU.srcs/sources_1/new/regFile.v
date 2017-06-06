`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/05 11:13:29
// Design Name: 
// Module Name: regFile
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module regFile( 
    input clk, 
    input reset,  
    input regWriteEn,         // 写使能信号
    input [4:0] RsAddr,       // rs寄存器地址输入端口
    input [4:0] RtAddr,       //rt寄存器地址输入端口
    input [4:0]  regWriteAddr,//将数据写入的寄存器端口
    input [31:0] regWriteData,//写入寄存器的数据输入端口
    output [31:0] RsData,     //rs寄存器数据输出端口
    output [31:0] RtData      //rt寄存器数据输出端口
); 
    reg[31:0] regs[0:31]; // 寄存器组
    // 根据地址读出Rs、Rt寄存器数据
    assign RsData = (RsAddr == 5'b0 ) ? 32'b0 : regs[RsAddr]; 
    assign RtData = (RtAddr == 5'b0 ) ? 32'b0 : regs[RtAddr]; 
    integer i; 
    always @( posedge clk ) // 时钟上升沿操作
    begin 
        if(!reset) 
        begin 
            if(regWriteEn == 1) // 写使能信号为1时写操作
            begin 
                regs[regWriteAddr] = regWriteData; // 写入数据
            end 
        end 
        else begin 
            for(i = 0; i < 32; i = i + 1) 
                regs[i] = 0; // 所有寄存器赋值为0，复位
        end 
    end 
endmodule 

