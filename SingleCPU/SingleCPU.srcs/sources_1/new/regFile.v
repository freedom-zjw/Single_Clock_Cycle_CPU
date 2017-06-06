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
    input regWriteEn,         // дʹ���ź�
    input [4:0] RsAddr,       // rs�Ĵ�����ַ����˿�
    input [4:0] RtAddr,       //rt�Ĵ�����ַ����˿�
    input [4:0]  regWriteAddr,//������д��ļĴ����˿�
    input [31:0] regWriteData,//д��Ĵ�������������˿�
    output [31:0] RsData,     //rs�Ĵ�����������˿�
    output [31:0] RtData      //rt�Ĵ�����������˿�
); 
    reg[31:0] regs[0:31]; // �Ĵ�����
    // ���ݵ�ַ����Rs��Rt�Ĵ�������
    assign RsData = (RsAddr == 5'b0 ) ? 32'b0 : regs[RsAddr]; 
    assign RtData = (RtAddr == 5'b0 ) ? 32'b0 : regs[RtAddr]; 
    integer i; 
    always @( posedge clk ) // ʱ�������ز���
    begin 
        if(!reset) 
        begin 
            if(regWriteEn == 1) // дʹ���ź�Ϊ1ʱд����
            begin 
                regs[regWriteAddr] = regWriteData; // д������
            end 
        end 
        else begin 
            for(i = 0; i < 32; i = i + 1) 
                regs[i] = 0; // ���мĴ�����ֵΪ0����λ
        end 
    end 
endmodule 

