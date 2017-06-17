`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/02 09:07:13
// Design Name: 
// Module Name: top
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


module top(
    input clkin,
    input reset,
    input switch,
    output [3:0] sm_wei,
    output [7:0] sm_duan
    );
    reg[31:0] pc;
    reg[31:0] add4;
    //复用器信号线
    wire[31:0] expand2,mux_memToReg,next_PC,address,jmpaddr,inst;
    wire[4:0] mux_regDst;
    //CPU控制信号
    wire regDst,regRt,jmp,memRead,memWrite,memToReg;
    wire[3:0] aluop;
    wire alu_a,alu_b,regWrite;
    //alu信号线
    wire zero;
    wire[31:0]aluRes;
    //alu控制信号线
    wire[3:0]aluCtr;
    wire shamt;
    //内存信号线
    wire[31:0]memReadData;
    //寄存器信号线
    wire[31:0]RsData,RtData;
    //扩展信号线
    wire[31:0] expand;
     
    wire[31:0] mux_alu_a,mux_alu_b;
    wire[1:0] PCsource;
    wire [5:0] sa;
   
    wire alu_a_a;
	wire [31:0] sa_ext;
	wire ExtSel;
	
	integer clk_cnt;
	reg clk_div;
	always@(negedge clkin)
	begin
	   if(reset==0)
        begin
           //if(clk_cnt==32'd100000000-1)
           if(clk_cnt==32'd1000-1)  
           begin clk_cnt<=1'b0;
               clk_div=~clk_div;
           end
           else
           clk_cnt<=clk_cnt+1'b1;
        end
        else
            begin clk_div<=0;clk_cnt<=0;end
	end
	
    always@(negedge clk_div)
    begin
        if(!reset)
        begin
            pc=next_PC;
            add4=pc+4;
        end
        else
        begin
            pc=32'b0;
            add4=32'h4;
        end
    end
    //实例化控制模块
    ctr mainctr(
        .opCode(inst[31:26]),
	    .zero(zero),
	    .ExtSel(ExtSel),
        .regDst(regDst),
        .regRt(regRt),
        .aluSrc_a(alu_a),
	    .aluSrc_b(alu_b),
        .memToReg(memToReg),
        .regWrite(regWrite),
        .memRead(memRead),
        .memWrite(memWrite),
        .aluop(aluop),
	    .PCsrc(PCsource)
     );
    
    //实例化alu模块
    alu alu(
       .input1(mux_alu_a),
       .input2(mux_alu_b),
       .aluCtr(aluCtr),
       .zero(zero),
       .aluRes(aluRes)
    );
    //实例化alu控制模块
    aluctr aluCtr1(
       .ALUop(aluop),
       .funct(inst[5:0]),
       .ALUCtr(aluCtr),
       .shamt(shamt)
    );
    //实例化数据存储器RAM
    dram dmem(
       .a(aluRes[7:2]),
       .d(RtData),
       .clk(!clk_div),
       .we(memWrite),
       .spo(memReadData)
    );
    
    wire[6:0] pc8_2;
    assign pc8_2=pc[8:2];
    //实例化指令存储器ROM
    irom imem(
      .a(pc8_2),
      .clk(clk_div),
      .spo(inst));
    //实例化寄存器堆
    regFile regfile(
      .RsAddr(inst[25:21]),
      .RtAddr(inst[20:16]),
      .clk(!clk_div),
      .reset(reset),
      .regWriteAddr(mux_regDst),
      .regWriteData(mux_memToReg),
      .regWriteEn(regWrite),
      .RsData(RsData),
      .RtData(RtData)
    );
    //实例化符号扩展模块
    signext signext(
        .ExtSel(ExtSel),
        .inst(inst[15:0]),
        .data(expand)
    ); 
    //实例化数码管显示模块
    smg_ip_model smg_(
       .clkin_(clkin),
       .data(aluRes),
       .switch(switch),
       .reset(reset),
       .sm_wei(sm_wei),
       .sm_duan(sm_duan)
    );

    // 移位指令中立即数的扩展：
	assign sa=inst[10:6];
	assign sa_ext={26'h000000,1'b0,sa};
	//写寄存器时地址的选择，即RS和RD寄存器的选择：
    assign mux_regDst=regDst?inst[15:11]:inst[20:16];
    //表示ALU第一个操作数来自寄存器rs还是来及立即数，为0来自寄存器，为1来自立即数
    assign alu_a_a=shamt?1'b1:alu_a;
    //ALU第一个操作数的选择： 
    assign mux_alu_a=alu_a_a?sa_ext:RsData;
    //ALU第二个操作数的选择： 
    assign mux_alu_b=alu_b?expand:RtData;
    //写寄存器时内容的选择，即选择来自ALU计算结果还是储存器：
    assign mux_memToReg=memToReg?memReadData:aluRes; 
    //PC的改变
    assign expand2=expand<<2;
    assign next_PC=PCsource[1]?(PCsource[0]?RsData:jmpaddr):(PCsource[0]?address:add4);
    assign jmpaddr={add4[31:28],inst[25:0],2'b00};
    assign address=add4+expand2;  
    
endmodule

















