`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/02 18:29:55
// Design Name: 
// Module Name: alusim
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


module alusim();
// Inputs 
reg [31:0] input1; 
reg [31:0] input2; 
reg [3:0] aluCtr; 
// Outputs 
wire [31:0] aluRes; 
wire zero; 
// Instantiate the Unit Under Test (UUT) 

    alu uut ( 
    .input1(input1), 
    .input2(input2), 
    .aluCtr(aluCtr), 
    .aluRes(aluRes), 
    .zero(zero) 
    ); 

    initial begin 
    // Initialize Inputs 
    input1 = 1; 
    input2 = 1; 
    aluCtr = 4'b0110; 
    #100; 
    input1 = 2; 
    input2 = 1; 
    aluCtr = 4'b0110; 
    #100 
    input1 = 1; 
    input2 = 1; 
    end 
endmodule
