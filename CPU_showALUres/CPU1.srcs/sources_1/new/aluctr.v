`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/02 08:41:26
// Design Name: 
// Module Name: aluctr
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

module aluctr(
    input[3:0] ALUop,
    input[5:0] funct,
    output reg[3:0] ALUCtr,
    output reg shamt
);
    always@(ALUop or funct)
    case(ALUop)
    4'b0000:begin ALUCtr=4'b0010;shamt=0;end//addi£¬lw,sw
    4'b0001:begin ALUCtr=4'b0110;shamt=0;end//beq,bne
    4'b0010:
    begin
        case(funct)
        6'b100000:begin ALUCtr=4'b0010;shamt=0;end//add
        6'b100010:begin ALUCtr=4'b0110;shamt=0;end//sub
        6'b100100:begin ALUCtr=4'b0000;shamt=0;end//and
        6'b100101:begin ALUCtr=4'b0001;shamt=0;end//or
        6'b101010:begin ALUCtr=4'b0111;shamt=0;end//slt
        6'b000000:begin ALUCtr=4'b0011;shamt=1;end//sll
        6'b000010:begin ALUCtr=4'b0100;shamt=1;end//srl
        6'b100111:begin ALUCtr=4'b1100;shamt=0;end//nor
        6'b100110:begin ALUCtr=4'b1001;shamt=0;end//xor
        default:begin ALUCtr=4'b0000;shamt=0;end
        endcase
    end
    4'b0011:begin ALUCtr=4'b1000;shamt=0; end //lui
    4'b0100:begin ALUCtr=4'b0000;shamt=0; end //andi
    4'b0101:begin ALUCtr=4'b0001;shamt=0; end //ori
    4'b0110:begin ALUCtr=4'b1001;shamt=0; end //xori
    4'b0111:begin ALUCtr=4'b0111;shamt=0; end //slti
    4'b1000:begin ALUCtr=4'b0111;shamt=0; end //sltiu
    default:begin ALUCtr=4'b0000;shamt=0; end 
    endcase
endmodule


















