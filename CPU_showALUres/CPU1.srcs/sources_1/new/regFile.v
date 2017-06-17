`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/02 08:04:22
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
    input [31:0] regWriteData,
    input [4:0] regWriteAddr,
    input regWriteEn,
    output [31:0] RsData,
    output [31:0] RtData,
    input [4:0] RsAddr,
    input [4:0] RtAddr );
    reg[31:0] regs[0:31];
    //地址是0号寄存器则输出0，否则输出对应数据
    assign RsData=(RsAddr==5'b0)?32'b0:regs[RsAddr];
    assign RtData=(RtAddr==5'b0)?32'b0:regs[RtAddr];
    integer i;
    always@(posedge clk)
    begin
        if(!reset) begin 
            if(regWriteEn==1)begin//在时钟上升沿写数据
                regs[regWriteAddr]=regWriteData;
            end
        end
        else begin
            for(i=0;i<32;i=i+1)
                regs[i]=0;
        end
    end
endmodule


















