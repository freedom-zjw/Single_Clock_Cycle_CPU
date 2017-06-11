`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/02 09:02:16
// Design Name: 
// Module Name: signext
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


module signext(
    input ExtSel,
    input [15:0] inst,
    output [31:0] data
);
    assign data=ExtSel==1?(inst[15:15]==1?{16'hffff,inst}:{16'h0000,inst}):({16'h0000,inst});
	
endmodule




















