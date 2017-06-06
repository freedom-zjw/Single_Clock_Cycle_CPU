`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/05 11:35:45
// Design Name: 
// Module Name: control
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


module control( 
    input [5:0] opCode, 
    output reg regDst, 
    output reg aluSrc, 
    output reg memToReg, 
    output reg regWrite, 
    output reg memRead, 
    output reg memWrite, 
    output reg branch, 
    output reg [1:0] aluop, 
    output reg jmp 
); 
always @(opCode) // 当opCode变化时输出不同信号
begin 
    case(opCode) 
        6'b000010:begin // J型指令
            regDst = 0; 
            aluSrc = 0; 
            memToReg = 0; 
            regWrite = 0; 
            memRead = 0; 
            memWrite = 0; 
            branch = 0; 
            aluop = 2'b00; 
            jmp = 1; 
        end 
        6'b000000:begin // R型指令
            regDst = 1; 
            aluSrc = 0; 
            memToReg = 0; 
            regWrite = 1; 
            memRead = 0; 
            memWrite = 0; 
            branch = 0; 
            aluop = 2'b10; 
            jmp = 0; 
        end 
        6'b100011:begin // lw 
            regDst = 0; 
            aluSrc = 1; 
            memToReg = 1; 
            regWrite = 1; 
            memRead = 1; 
            memWrite = 0; 
            branch = 0; 
            aluop = 2'b00; 
            jmp = 0; 
        end 
        6'b101011:begin // sw 
            regDst = 0; 
            aluSrc = 1; 
            memToReg = 0; 
            regWrite = 0; 
            memRead = 0; 
            memWrite = 1; 
            branch = 0; 
            aluop = 2'b00; 
            jmp = 0; 
        end
        6'b000100:begin //beq指令
            regDst = 0; 
            aluSrc = 0; 
            memToReg = 0; 
            regWrite = 0; 
            memRead = 0; 
            memWrite = 0; 
            branch = 1; 
            aluop = 2'b01; 
            jmp = 0; 
        end 
        6'b001000:begin // addi指令 
            regDst = 0; 
            aluSrc = 1; 
            memToReg = 0; 
            regWrite = 1; 
            memRead = 0; 
            memWrite = 0; 
            branch = 0; 
            aluop = 2'b00; 
            jmp = 0; 
        end 
        default:begin // 缺省值
            regDst = 0; 
            aluSrc = 0; 
            memToReg = 0; 
            regWrite = 0; 
            memRead = 0; 
            memWrite = 0; 
            branch = 0; 
            aluop = 2'b00; 
            jmp = 0; 
        end 
    endcase 
end 
endmodule 

