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
    wire zero;
    wire[31:0]aluRes;
    wire[3:0]aluCtr;
    wire[31:0]memReadData;
    wire[31:0]RsData,RtData;
    wire[31:0] expand;
    wire[31:0] mux_alu_a,mux_alu_b;
    wire[1:0] PCsource;
    wire [5:0] sa;
    wire shamt;
    wire alu_a_a;
	wire [31:0] sa_ext;
	wire ExtSel;
	
	integer clk_cnt;
	reg clk_div;
	always@(negedge clkin)
	begin
	   if(reset==0)
        begin
           if(clk_cnt==32'd25000000-1)
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
    
    
    alu alu(
       .input1(mux_alu_a),
       .input2(mux_alu_b),
       .aluCtr(aluCtr),
       .zero(zero),
       .aluRes(aluRes)
    );
    
    aluctr aluCtr1(
       .ALUop(aluop),
       .funct(inst[5:0]),
       .ALUCtr(aluCtr),
       .shamt(shamt)
    );
    
    dram dmem(
       .a(aluRes[7:2]),
       .d(RtData),
       .clk(!clk_div),
       .we(memWrite),
       .spo(memReadData)
    );
    
    wire[6:0] pc8_2;
    assign pc8_2=pc[8:2];
    irom imem(
      .a(pc8_2),
      .clk(clk_div),
      .spo(inst));
    
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
    
    signext signext(.ExtSel(ExtSel),.inst(inst[15:0]),.data(expand));
    
	assign sa=inst[10:6];
	assign sa_ext={26'h000000,1'b0,sa};
    assign mux_regDst=regDst?inst[15:11]:inst[20:16];
    assign mux_alu_b=alu_b?expand:RtData;
    assign alu_a_a=shamt?1'b1:alu_a;
    assign mux_alu_a=alu_a_a?sa_ext:RsData;
    assign mux_memToReg=memToReg?memReadData:aluRes;
    assign next_PC=PCsource[1]?(PCsource[0]?RsData:jmpaddr):(PCsource[0]?address:add4);
    assign expand2=expand<<2;
    assign jmpaddr={add4[31:28],inst[25:0],2'b00};
    assign address=add4+expand2;    
    
    smg_ip_model smg_(
       .clkin_(clkin),
       .data(aluRes),
       .switch(switch),
       .reset(reset),
       .sm_wei(sm_wei),
       .sm_duan(sm_duan)
    );

    
endmodule

















