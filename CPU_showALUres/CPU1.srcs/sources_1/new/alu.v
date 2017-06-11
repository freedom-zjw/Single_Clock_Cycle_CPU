`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/02 08:52:11
// Design Name: 
// Module Name: alu
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


module alu(
    input [31:0] input1,
    input [31:0] input2,
    input [3:0]  aluCtr,
    output reg[31:0] aluRes,
    output reg zero
);
    always@(input1 or input2 or aluCtr)
    begin
        case(aluCtr)
        4'b0110: //sub,beq,bne
        begin
            aluRes=input1-input2;
            if(aluRes==0) zero=1;
            else zero=0;
        end
        4'b0010:  //add
            begin
                aluRes=input1+input2; 
                if(aluRes==0) zero=1;
                else zero=0;                
            end
        4'b0000:aluRes=input1&input2;//and,andi
        4'b0001:aluRes=input1|input2;//or,ori
        4'b1100:aluRes=~(input1|input2);//nor
        4'b1001:aluRes=(input1^input2);//xor,xori
        4'b0111://slt,slti,sltiu
            begin
                if(input1<input2) aluRes=1;
                else aluRes=0;
            end
        4'b0011://sll
            begin
                aluRes=input2<<input1;
            end
        4'b0100:aluRes=input2>>input1;//srl 
        4'b1000: aluRes=input2<<16; // lui
        default:
            aluRes=0;
        endcase
        if(aluRes==0) zero=1;
        else zero=0;        
    end
endmodule

























