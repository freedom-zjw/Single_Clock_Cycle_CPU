`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/02 18:43:12
// Design Name: 
// Module Name: topsim
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


module topsim();
// Inputs 
    reg clkin; 
    reg reset; 
    reg switch;
    wire[3:0]sm_wei;
    wire[7:0]sm_duan;
    // Instantiate the Unit Under Test (UUT) 
    top uut ( 
        .clkin(clkin), 
        .reset(reset),
        .switch(switch),
        .sm_wei(sm_wei),
        .sm_duan(sm_duan)
    ); 
    initial begin 
    // Initialize Inputs 
    clkin = 0; 
    reset = 1; 
    switch=1;
    // Wait 100 ns for global reset to finish 
    #100; 
    reset = 0; 
    end 
    parameter PERIOD = 20; 
    always begin 
        clkin = 1'b0; 
        #(PERIOD / 2) clkin = 1'b1; 
        #(PERIOD / 2) ; 
    end 
endmodule

