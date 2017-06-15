`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/02 08:17:45
// Design Name: 
// Module Name: ctr
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


module ctr(
    input [5:0] opCode,
    input zero,
    output reg ExtSel,
    output reg regDst,
    output reg regRt,
    output reg aluSrc_a,
    output reg aluSrc_b,
    output reg memToReg,
    output reg regWrite,
    output reg memRead,
    output reg memWrite,
    output reg[3:0] aluop,
    output reg[1:0] PCsrc
);
    always@(opCode)
    begin
        case(opCode)
        6'b000010: //JÐÍ
            begin
                 regDst=0;
                 regRt=0;
				 aluSrc_a=0;
				 aluSrc_b=0;
                 memToReg=0;
                 regWrite=0;
                 memRead=0;
                 memWrite=0;
                 aluop=4'b0000; 
                 ExtSel=0;
                 PCsrc=2'b10;
            end		
        6'b000000://RÐÍ
            begin 
                regDst=1;
                regRt=0;
				aluSrc_a=0;
				aluSrc_b=0;
                memToReg=0;
                regWrite=1;
                memRead=0;
                memWrite=0;
                aluop=4'b0010;
                ExtSel=0;
                PCsrc=2'b00; 
            end
        6'b100011://lw
            begin 
                regDst=0;
                regRt=1;
				aluSrc_a=0;
				aluSrc_b=1;
                memToReg=1;
                regWrite=1;
                memRead=1;
                memWrite=0;
                aluop=4'b0000;
                ExtSel=1;
                PCsrc=2'b00; 
            end
        6'b101011://sw
            begin 
                regDst=0;
                regRt=1;
				aluSrc_a=0;
				aluSrc_b=1;
                memToReg=0;
                regWrite=0;
                memRead=0;
                memWrite=1;
                aluop=4'b0000; 
                ExtSel=1; 
                PCsrc=2'b00; 
            end
        6'b000100://beq
            begin 
                regDst=0;
                regRt=0;
				aluSrc_a=0;
				aluSrc_b=0;
                memToReg=0;
                regWrite=0;
                memRead=0;
                memWrite=0;
                aluop=4'b0001; 
                ExtSel=1;
                if(zero==1) PCsrc=2'b01;
                else PCsrc=2'b00;    
            end
         6'b000101://bne
                begin 
                    regDst=0;
                    regRt=0;
                    aluSrc_a=0;
                    aluSrc_b=0;
                    memToReg=0;
                    regWrite=0;
                    memRead=0;
                    memWrite=0;
                    aluop=4'b0001;
                    ExtSel=1;
                    if(zero==1) PCsrc=2'b00;
                    else PCsrc=2'b01;    
                end          
        6'b001000://addi
            begin 
                regDst=0;
                regRt=1;
				aluSrc_a=0;
				aluSrc_b=1;
                memToReg=0;
                regWrite=1;
                memRead=0;
                memWrite=0;
                aluop=4'b0000;
                ExtSel=1;
                PCsrc=2'b00;
            end
         6'b001001://addiu
                begin 
                    regDst=0;
                    regRt=1;
                    aluSrc_a=0;
                    aluSrc_b=1;
                    memToReg=0;
                    regWrite=1;
                    memRead=0;
                    memWrite=0;
                    aluop=4'b0000; 
                    ExtSel=0;
                    PCsrc=2'b00;
                end
        6'b001111://lui
            begin
                regDst=0;
                regRt=1;
                aluSrc_a=0;
                aluSrc_b=1;
                memToReg=0;
                regWrite=1;
                memRead=0;
                memWrite=0;
                aluop=4'b0011;
                ExtSel=0;
                PCsrc=2'b00;
            end              
        6'b001100: //andi 
            begin
                regDst=0;
                regRt=1;
                aluSrc_a=0;
                aluSrc_b=1;
                memToReg=0;
                regWrite=1;
                memRead=0;
                memWrite=0;
                aluop=4'b0100;
                ExtSel=0;
                PCsrc=2'b00;
            end     
 
         6'b001101://ori   
            begin
                regDst=0;
                regRt=1;
                aluSrc_a=0;
                aluSrc_b=1;
                memToReg=0;
                regWrite=1;
                memRead=0;
                memWrite=0;
                aluop=4'b0101;
                ExtSel=0;
                PCsrc=2'b00;
            end  
          6'b001110: //xori
               begin
                   regDst=0;
                   regRt=1;
                   aluSrc_a=0;
                   aluSrc_b=1;
                   memToReg=0;
                   regWrite=1;
                   memRead=0;
                   memWrite=0;
                   aluop=4'b0110;
                   ExtSel=0;
                   PCsrc=2'b00;
               end  
           6'b001010://slti  
                begin
                    regDst=0;
                    regRt=1;
                    aluSrc_a=0;
                    aluSrc_b=1;
                    memToReg=0;
                    regWrite=1;
                    memRead=0;
                    memWrite=0;
                    aluop=4'b0111;
                    ExtSel=1;
                    PCsrc=2'b00;
                end                 
            6'b001011: //sltiu 
                 begin
                     regDst=0;
                     regRt=1;
                     aluSrc_a=0;
                     aluSrc_b=1;
                     memToReg=0;
                     regWrite=1;
                     memRead=0;
                     memWrite=0;
                     aluop=4'b1000;
                     ExtSel=0;
                     PCsrc=2'b00;
                 end                                    
        default:
            begin 
                regDst=0;
                regRt=0;
				aluSrc_a=0;
				aluSrc_b=0;
                memToReg=0;
                regWrite=0;
                memRead=0;
                memWrite=0;
                aluop=4'b0000; 
                ExtSel=1;
                PCsrc=2'b00;
            end
        endcase
    end 
endmodule




















