// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Tue Jun 06 22:46:52 2017
// Host        : Lenovo-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_11,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    clk,
    spo);
  input [6:0]a;
  input clk;
  output [31:0]spo;

  wire [6:0]a;
  wire clk;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "7" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "128" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "1" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "1" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 U0
       (.a(a),
        .clk(clk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "7" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "128" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "dist_mem_gen_0.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "1" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [6:0]a;
  input [31:0]d;
  input [6:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [6:0]a;
  wire clk;
  wire [31:0]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31] = \^spo [31];
  assign spo[30] = \<const0> ;
  assign spo[29:27] = \^spo [29:27];
  assign spo[26] = \^spo [27];
  assign spo[25:20] = \^spo [25:20];
  assign spo[19] = \<const0> ;
  assign spo[18:15] = \^spo [18:15];
  assign spo[14] = \<const0> ;
  assign spo[13:12] = \^spo [13:12];
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \^spo [15];
  assign spo[6:0] = \^spo [6:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .spo({\^spo [31],\^spo [29:27],\^spo [25:20],\^spo [18:15],\^spo [13:12],\^spo [6:0]}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11_synth
   (spo,
    a,
    clk);
  output [22:0]spo;
  input [6:0]a;
  input clk;

  wire [6:0]a;
  wire clk;
  wire [22:0]spo;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom \gen_rom.rom_inst 
       (.a(a),
        .clk(clk),
        .spo(spo));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom
   (spo,
    a,
    clk);
  output [22:0]spo;
  input [6:0]a;
  input clk;

  wire [6:0]a;
  wire [6:0]a_reg;
  wire clk;
  wire [22:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(a[0]),
        .Q(a_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(a[1]),
        .Q(a_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(a[2]),
        .Q(a_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(a[3]),
        .Q(a_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(a[4]),
        .Q(a_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(a[5]),
        .Q(a_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(a[6]),
        .Q(a_reg[6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(a_reg[0]),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'h00000001090F0009)) 
    \spo[0]_INST_0_i_1 
       (.I0(a_reg[1]),
        .I1(a_reg[2]),
        .I2(a_reg[6]),
        .I3(a_reg[4]),
        .I4(a_reg[3]),
        .I5(a_reg[5]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000700080000000)) 
    \spo[12]_INST_0 
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[4]),
        .I3(\spo[29]_INST_0_i_1_n_0 ),
        .I4(a_reg[2]),
        .I5(a_reg[3]),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \spo[13]_INST_0 
       (.I0(a_reg[1]),
        .I1(a_reg[0]),
        .I2(a_reg[3]),
        .I3(a_reg[2]),
        .I4(\spo[29]_INST_0_i_1_n_0 ),
        .I5(a_reg[4]),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'h79FFFFFF00000000)) 
    \spo[16]_INST_0 
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[3]),
        .I3(a_reg[2]),
        .I4(a_reg[4]),
        .I5(\spo[29]_INST_0_i_1_n_0 ),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'h0000002C00010000)) 
    \spo[17]_INST_0 
       (.I0(\spo[17]_INST_0_i_1_n_0 ),
        .I1(a_reg[3]),
        .I2(a_reg[2]),
        .I3(a_reg[6]),
        .I4(a_reg[5]),
        .I5(a_reg[4]),
        .O(spo[11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \spo[17]_INST_0_i_1 
       (.I0(a_reg[1]),
        .I1(a_reg[0]),
        .O(\spo[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \spo[18]_INST_0 
       (.I0(a_reg[3]),
        .I1(a_reg[2]),
        .I2(\spo[29]_INST_0_i_1_n_0 ),
        .I3(a_reg[4]),
        .I4(a_reg[0]),
        .I5(a_reg[1]),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'h68C1000050140000)) 
    \spo[1]_INST_0 
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[3]),
        .I3(a_reg[2]),
        .I4(\spo[29]_INST_0_i_1_n_0 ),
        .I5(a_reg[4]),
        .O(spo[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFCCA0CCA)) 
    \spo[20]_INST_0 
       (.I0(\spo[20]_INST_0_i_1_n_0 ),
        .I1(\spo[25]_INST_0_i_1_n_0 ),
        .I2(a_reg[0]),
        .I3(a_reg[1]),
        .I4(\spo[25]_INST_0_i_2_n_0 ),
        .O(spo[13]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0001009F)) 
    \spo[20]_INST_0_i_1 
       (.I0(a_reg[3]),
        .I1(a_reg[2]),
        .I2(a_reg[4]),
        .I3(a_reg[6]),
        .I4(a_reg[5]),
        .O(\spo[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE848484848484848)) 
    \spo[21]_INST_0 
       (.I0(a_reg[1]),
        .I1(\spo[26]_INST_0_i_1_n_0 ),
        .I2(a_reg[0]),
        .I3(a_reg[3]),
        .I4(\spo[31]_INST_0_i_2_n_0 ),
        .I5(a_reg[4]),
        .O(spo[14]));
  LUT6 #(
    .INIT(64'hE82828283F282828)) 
    \spo[22]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(a_reg[0]),
        .I2(a_reg[1]),
        .I3(a_reg[4]),
        .I4(\spo[31]_INST_0_i_2_n_0 ),
        .I5(a_reg[3]),
        .O(spo[15]));
  LUT5 #(
    .INIT(32'hFFEC00EC)) 
    \spo[23]_INST_0 
       (.I0(a_reg[1]),
        .I1(\spo[23]_INST_0_i_1_n_0 ),
        .I2(\spo[26]_INST_0_i_1_n_0 ),
        .I3(a_reg[0]),
        .I4(\spo[23]_INST_0_i_2_n_0 ),
        .O(spo[16]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \spo[23]_INST_0_i_1 
       (.I0(a_reg[4]),
        .I1(a_reg[5]),
        .I2(a_reg[6]),
        .I3(a_reg[2]),
        .I4(a_reg[3]),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000D800000000)) 
    \spo[23]_INST_0_i_2 
       (.I0(a_reg[2]),
        .I1(a_reg[1]),
        .I2(a_reg[3]),
        .I3(a_reg[5]),
        .I4(a_reg[6]),
        .I5(a_reg[4]),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80FF800000000000)) 
    \spo[24]_INST_0 
       (.I0(a_reg[4]),
        .I1(\spo[31]_INST_0_i_2_n_0 ),
        .I2(a_reg[3]),
        .I3(a_reg[0]),
        .I4(\spo[26]_INST_0_i_1_n_0 ),
        .I5(a_reg[1]),
        .O(spo[17]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \spo[25]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(\spo[25]_INST_0_i_1_n_0 ),
        .I2(a_reg[1]),
        .I3(a_reg[0]),
        .I4(\spo[25]_INST_0_i_2_n_0 ),
        .O(spo[18]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000009F)) 
    \spo[25]_INST_0_i_1 
       (.I0(a_reg[3]),
        .I1(a_reg[2]),
        .I2(a_reg[4]),
        .I3(a_reg[6]),
        .I4(a_reg[5]),
        .O(\spo[25]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0001000F)) 
    \spo[25]_INST_0_i_2 
       (.I0(a_reg[2]),
        .I1(a_reg[3]),
        .I2(a_reg[5]),
        .I3(a_reg[6]),
        .I4(a_reg[4]),
        .O(\spo[25]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFECE3202)) 
    \spo[26]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(a_reg[0]),
        .I2(a_reg[1]),
        .I3(\spo[26]_INST_0_i_2_n_0 ),
        .I4(\spo[31]_INST_0_i_1_n_0 ),
        .O(spo[19]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \spo[26]_INST_0_i_1 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[2]),
        .I3(a_reg[5]),
        .I4(a_reg[6]),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \spo[26]_INST_0_i_2 
       (.I0(a_reg[4]),
        .I1(a_reg[5]),
        .I2(a_reg[6]),
        .I3(a_reg[2]),
        .I4(a_reg[3]),
        .O(\spo[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \spo[28]_INST_0 
       (.I0(a_reg[3]),
        .I1(a_reg[2]),
        .I2(\spo[29]_INST_0_i_1_n_0 ),
        .I3(a_reg[4]),
        .I4(a_reg[1]),
        .I5(a_reg[0]),
        .O(spo[20]));
  LUT6 #(
    .INIT(64'h00730000FFFF0000)) 
    \spo[29]_INST_0 
       (.I0(a_reg[0]),
        .I1(a_reg[2]),
        .I2(a_reg[1]),
        .I3(a_reg[3]),
        .I4(\spo[29]_INST_0_i_1_n_0 ),
        .I5(a_reg[4]),
        .O(spo[21]));
  LUT2 #(
    .INIT(4'h1)) 
    \spo[29]_INST_0_i_1 
       (.I0(a_reg[6]),
        .I1(a_reg[5]),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h03290000C8890000)) 
    \spo[2]_INST_0 
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(\spo[29]_INST_0_i_1_n_0 ),
        .I5(a_reg[4]),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \spo[31]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(a_reg[4]),
        .I2(\spo[31]_INST_0_i_2_n_0 ),
        .I3(a_reg[3]),
        .I4(a_reg[1]),
        .I5(a_reg[0]),
        .O(spo[22]));
  LUT6 #(
    .INIT(64'h0000000F0007010F)) 
    \spo[31]_INST_0_i_1 
       (.I0(a_reg[1]),
        .I1(a_reg[2]),
        .I2(a_reg[6]),
        .I3(a_reg[5]),
        .I4(a_reg[4]),
        .I5(a_reg[3]),
        .O(\spo[31]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \spo[31]_INST_0_i_2 
       (.I0(a_reg[5]),
        .I1(a_reg[6]),
        .I2(a_reg[2]),
        .O(\spo[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCCCCC)) 
    \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[26]_INST_0_i_1_n_0 ),
        .I2(\spo[3]_INST_0_i_2_n_0 ),
        .I3(\spo[23]_INST_0_i_1_n_0 ),
        .I4(a_reg[1]),
        .I5(a_reg[0]),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'h000000D500000000)) 
    \spo[3]_INST_0_i_1 
       (.I0(a_reg[4]),
        .I1(a_reg[1]),
        .I2(a_reg[3]),
        .I3(a_reg[5]),
        .I4(a_reg[6]),
        .I5(a_reg[2]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[3]_INST_0_i_2 
       (.I0(a_reg[3]),
        .I1(a_reg[4]),
        .I2(a_reg[5]),
        .I3(a_reg[6]),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000001000000F5)) 
    \spo[4]_INST_0 
       (.I0(a_reg[0]),
        .I1(a_reg[2]),
        .I2(a_reg[3]),
        .I3(a_reg[5]),
        .I4(a_reg[6]),
        .I5(a_reg[4]),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'h15D7333200000000)) 
    \spo[5]_INST_0 
       (.I0(a_reg[2]),
        .I1(a_reg[0]),
        .I2(a_reg[1]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(\spo[29]_INST_0_i_1_n_0 ),
        .O(spo[5]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \spo[6]_INST_0 
       (.I0(a_reg[3]),
        .I1(a_reg[4]),
        .I2(a_reg[0]),
        .I3(a_reg[1]),
        .I4(a_reg[2]),
        .I5(\spo[29]_INST_0_i_1_n_0 ),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'h7000000000000000)) 
    \spo[7]_INST_0 
       (.I0(a_reg[1]),
        .I1(a_reg[0]),
        .I2(a_reg[3]),
        .I3(a_reg[2]),
        .I4(\spo[29]_INST_0_i_1_n_0 ),
        .I5(a_reg[4]),
        .O(spo[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif