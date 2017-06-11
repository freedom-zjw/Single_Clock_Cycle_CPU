`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/02 16:53:01
// Design Name: 
// Module Name: regsim
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


module regsim();
// Inputs 
reg clk; 
reg reset; 
reg [31:0] regWriteData; 
reg [4:0] regWriteAddr; 
reg regWriteEn; 
reg [4:0] RsAddr; 
reg [4:0] RtAddr; 
wire [31:0] RsData; 
wire [31:0] RtData; 
// Instantiate the Unit Under Test (UUT) 
    regFile uut ( 
    .clk(clk), 
    .reset(reset), 
    .regWriteData(regWriteData), 
    .regWriteAddr(regWriteAddr), 
    .regWriteEn(regWriteEn), 
    .RsData(RsData), 
    .RtData(RtData), 
    .RsAddr(RsAddr), 
    .RtAddr(RtAddr) 
    ); 
    initial begin 
    // Initialize Inputs 
    clk = 0; 
    reset = 0; 
    regWriteData = 0; 
    regWriteAddr = 0; 
    regWriteEn = 0; 
    RsAddr = 0; 
    RtAddr = 0; 
    // Wait 100 ns for global reset to finish 
    #100; 
    regWriteData = 32'h55aaaa55; 
    regWriteEn = 1; 
    reset = 1; 
    #100 
    reset = 0; 
    // Add stimulus here 
    end 
    parameter PERIOD = 20; 
    always begin 
    clk = 1'b0; 
    #(PERIOD / 2) clk = 1'b1; 
    #(PERIOD / 2) ; 
    end 
    integer i; 
    always begin 
    for(i = 30; i >= 1; i = i - 1) begin 
    regWriteAddr = i; 
    RsAddr = i; 
    #PERIOD; 
    end 
end 

endmodule
