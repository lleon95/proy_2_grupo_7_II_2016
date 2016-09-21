////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: control_salida_synthesis.v
// /___/   /\     Timestamp: Wed Sep 21 17:05:07 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim control_salida.ngc control_salida_synthesis.v 
// Device	: xc3s100e-5-vq100
// Input file	: control_salida.ngc
// Output file	: C:\Xilinx\VGA\netgen\synthesis\control_salida_synthesis.v
// # of Modules	: 1
// Design Name	: control_salida
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module control_salida (
  AD, clk, final, CS, escreg, reset, iniciar, esc, RD, escribe, WR, data_out, dato, direccion
);
  output AD;
  input clk;
  output final;
  output CS;
  output escreg;
  input reset;
  input iniciar;
  input esc;
  output RD;
  input escribe;
  output WR;
  output [7 : 0] data_out;
  input [7 : 0] dato;
  input [7 : 0] direccion;
  wire AD_OBUF_1;
  wire AD_mux0000;
  wire AD_mux000014_3;
  wire AD_mux000054_4;
  wire CS_OBUF_6;
  wire CS_mux0000;
  wire CS_or0000;
  wire CS_or0003_9;
  wire Mtridata_data_out_not0001_26;
  wire Mtrien_data_out_27;
  wire Mtrien_data_out_mux0000;
  wire N12;
  wire N14;
  wire N16;
  wire N18;
  wire N20;
  wire N22;
  wire N24;
  wire N26;
  wire N3;
  wire N30;
  wire N31;
  wire N32;
  wire N36;
  wire N38;
  wire N4;
  wire N40;
  wire N42;
  wire N44;
  wire N46;
  wire N48;
  wire N50;
  wire N51;
  wire N52;
  wire N54;
  wire N56;
  wire N58;
  wire N6;
  wire N60;
  wire N62;
  wire N64;
  wire N66;
  wire N68;
  wire N70;
  wire N71;
  wire N72;
  wire N74;
  wire N76;
  wire N78;
  wire N8;
  wire N80;
  wire N82;
  wire N83;
  wire N84;
  wire N85;
  wire N88;
  wire N89;
  wire RD_OBUF_76;
  wire RD_mux0000;
  wire WR_OBUF_84;
  wire WR_mux0000;
  wire WR_mux000016_86;
  wire WR_mux00006_87;
  wire clk_BUFGP_89;
  wire contador_or0000;
  wire dato_0_IBUF_112;
  wire dato_1_IBUF_113;
  wire dato_2_IBUF_114;
  wire dato_3_IBUF_115;
  wire dato_4_IBUF_116;
  wire dato_5_IBUF_117;
  wire dato_6_IBUF_118;
  wire dato_7_IBUF_119;
  wire direccion_0_IBUF_128;
  wire direccion_1_IBUF_129;
  wire direccion_2_IBUF_130;
  wire direccion_3_IBUF_131;
  wire direccion_4_IBUF_132;
  wire direccion_5_IBUF_133;
  wire direccion_6_IBUF_134;
  wire direccion_7_IBUF_135;
  wire esc_IBUF_137;
  wire escreg_OBUF_139;
  wire escreg_mux0000;
  wire escreg_mux000027_141;
  wire escribe_IBUF_143;
  wire final_OBUF_145;
  wire final_mux0000;
  wire iniciar_IBUF_148;
  wire reset_IBUF_150;
  wire reset_inv;
  wire [7 : 0] Mtridata_data_out;
  wire [7 : 0] Mtridata_data_out_mux0000;
  wire [4 : 0] Result;
  wire [4 : 0] contador;
  FDS   RD_1 (
    .C(clk_BUFGP_89),
    .D(RD_mux0000),
    .S(CS_or0000),
    .Q(RD_OBUF_76)
  );
  FDS   CS_2 (
    .C(clk_BUFGP_89),
    .D(CS_mux0000),
    .S(CS_or0000),
    .Q(CS_OBUF_6)
  );
  FDS   AD_3 (
    .C(clk_BUFGP_89),
    .D(AD_mux0000),
    .S(CS_or0000),
    .Q(AD_OBUF_1)
  );
  FDS   WR_4 (
    .C(clk_BUFGP_89),
    .D(WR_mux0000),
    .S(CS_or0000),
    .Q(WR_OBUF_84)
  );
  FDR   final_5 (
    .C(clk_BUFGP_89),
    .D(final_mux0000),
    .R(CS_or0000),
    .Q(final_OBUF_145)
  );
  FDE   Mtridata_data_out_0 (
    .C(clk_BUFGP_89),
    .CE(Mtridata_data_out_not0001_26),
    .D(Mtridata_data_out_mux0000[7]),
    .Q(Mtridata_data_out[0])
  );
  FDE   Mtridata_data_out_1 (
    .C(clk_BUFGP_89),
    .CE(Mtridata_data_out_not0001_26),
    .D(Mtridata_data_out_mux0000[6]),
    .Q(Mtridata_data_out[1])
  );
  FDE   Mtridata_data_out_2 (
    .C(clk_BUFGP_89),
    .CE(Mtridata_data_out_not0001_26),
    .D(Mtridata_data_out_mux0000[5]),
    .Q(Mtridata_data_out[2])
  );
  FDE   Mtridata_data_out_3 (
    .C(clk_BUFGP_89),
    .CE(Mtridata_data_out_not0001_26),
    .D(Mtridata_data_out_mux0000[4]),
    .Q(Mtridata_data_out[3])
  );
  FDE   Mtridata_data_out_4 (
    .C(clk_BUFGP_89),
    .CE(Mtridata_data_out_not0001_26),
    .D(Mtridata_data_out_mux0000[3]),
    .Q(Mtridata_data_out[4])
  );
  FDE   Mtridata_data_out_5 (
    .C(clk_BUFGP_89),
    .CE(Mtridata_data_out_not0001_26),
    .D(Mtridata_data_out_mux0000[2]),
    .Q(Mtridata_data_out[5])
  );
  FDE   Mtridata_data_out_6 (
    .C(clk_BUFGP_89),
    .CE(Mtridata_data_out_not0001_26),
    .D(Mtridata_data_out_mux0000[1]),
    .Q(Mtridata_data_out[6])
  );
  FDE   Mtridata_data_out_7 (
    .C(clk_BUFGP_89),
    .CE(Mtridata_data_out_not0001_26),
    .D(Mtridata_data_out_mux0000[0]),
    .Q(Mtridata_data_out[7])
  );
  FDE   escreg_14 (
    .C(clk_BUFGP_89),
    .CE(reset_inv),
    .D(escreg_mux0000),
    .Q(escreg_OBUF_139)
  );
  FDE   Mtrien_data_out (
    .C(clk_BUFGP_89),
    .CE(Mtridata_data_out_not0001_26),
    .D(Mtrien_data_out_mux0000),
    .Q(Mtrien_data_out_27)
  );
  FDR   contador_0 (
    .C(clk_BUFGP_89),
    .D(Result[0]),
    .R(contador_or0000),
    .Q(contador[0])
  );
  FDR   contador_1 (
    .C(clk_BUFGP_89),
    .D(Result[1]),
    .R(contador_or0000),
    .Q(contador[1])
  );
  FDR   contador_2 (
    .C(clk_BUFGP_89),
    .D(Result[2]),
    .R(contador_or0000),
    .Q(contador[2])
  );
  FDR   contador_3 (
    .C(clk_BUFGP_89),
    .D(Result[3]),
    .R(contador_or0000),
    .Q(contador[3])
  );
  FDR   contador_4 (
    .C(clk_BUFGP_89),
    .D(Result[4]),
    .R(contador_or0000),
    .Q(contador[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_contador_xor<1>11  (
    .I0(contador[1]),
    .I1(contador[0]),
    .O(Result[1])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Mcount_contador_xor<2>11  (
    .I0(contador[2]),
    .I1(contador[1]),
    .I2(contador[0]),
    .O(Result[2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \Mcount_contador_xor<3>11  (
    .I0(contador[3]),
    .I1(contador[1]),
    .I2(contador[0]),
    .I3(contador[2]),
    .O(Result[3])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  CS_or00001 (
    .I0(iniciar_IBUF_148),
    .I1(reset_IBUF_150),
    .O(CS_or0000)
  );
  LUT4 #(
    .INIT ( 16'hFBBB ))
  contador_or00001 (
    .I0(reset_IBUF_150),
    .I1(iniciar_IBUF_148),
    .I2(contador[3]),
    .I3(N88),
    .O(contador_or0000)
  );
  LUT4 #(
    .INIT ( 16'h1113 ))
  Mtridata_data_out_not0001 (
    .I0(iniciar_IBUF_148),
    .I1(reset_IBUF_150),
    .I2(contador[3]),
    .I3(N31),
    .O(Mtridata_data_out_not0001_26)
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  final_mux00001 (
    .I0(final_OBUF_145),
    .I1(contador[3]),
    .I2(N4),
    .I3(CS_or0003_9),
    .O(final_mux0000)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  AD_mux000021 (
    .I0(contador[0]),
    .I1(contador[1]),
    .O(N6)
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  CS_mux00001 (
    .I0(CS_OBUF_6),
    .I1(N3),
    .I2(CS_or0003_9),
    .O(CS_mux0000)
  );
  LUT4 #(
    .INIT ( 16'hEED7 ))
  CS_or0003_SW1 (
    .I0(contador[1]),
    .I1(contador[0]),
    .I2(contador[3]),
    .I3(contador[2]),
    .O(N8)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  WR_mux000016 (
    .I0(contador[1]),
    .I1(contador[0]),
    .I2(contador[2]),
    .I3(WR_mux00006_87),
    .O(WR_mux000016_86)
  );
  LUT4 #(
    .INIT ( 16'hFEFC ))
  WR_mux000030 (
    .I0(WR_OBUF_84),
    .I1(WR_mux000016_86),
    .I2(N3),
    .I3(CS_or0003_9),
    .O(WR_mux0000)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_150)
  );
  IBUF   iniciar_IBUF (
    .I(iniciar),
    .O(iniciar_IBUF_148)
  );
  IBUF   esc_IBUF (
    .I(esc),
    .O(esc_IBUF_137)
  );
  IBUF   escribe_IBUF (
    .I(escribe),
    .O(escribe_IBUF_143)
  );
  IBUF   dato_7_IBUF (
    .I(dato[7]),
    .O(dato_7_IBUF_119)
  );
  IBUF   dato_6_IBUF (
    .I(dato[6]),
    .O(dato_6_IBUF_118)
  );
  IBUF   dato_5_IBUF (
    .I(dato[5]),
    .O(dato_5_IBUF_117)
  );
  IBUF   dato_4_IBUF (
    .I(dato[4]),
    .O(dato_4_IBUF_116)
  );
  IBUF   dato_3_IBUF (
    .I(dato[3]),
    .O(dato_3_IBUF_115)
  );
  IBUF   dato_2_IBUF (
    .I(dato[2]),
    .O(dato_2_IBUF_114)
  );
  IBUF   dato_1_IBUF (
    .I(dato[1]),
    .O(dato_1_IBUF_113)
  );
  IBUF   dato_0_IBUF (
    .I(dato[0]),
    .O(dato_0_IBUF_112)
  );
  IBUF   direccion_7_IBUF (
    .I(direccion[7]),
    .O(direccion_7_IBUF_135)
  );
  IBUF   direccion_6_IBUF (
    .I(direccion[6]),
    .O(direccion_6_IBUF_134)
  );
  IBUF   direccion_5_IBUF (
    .I(direccion[5]),
    .O(direccion_5_IBUF_133)
  );
  IBUF   direccion_4_IBUF (
    .I(direccion[4]),
    .O(direccion_4_IBUF_132)
  );
  IBUF   direccion_3_IBUF (
    .I(direccion[3]),
    .O(direccion_3_IBUF_131)
  );
  IBUF   direccion_2_IBUF (
    .I(direccion[2]),
    .O(direccion_2_IBUF_130)
  );
  IBUF   direccion_1_IBUF (
    .I(direccion[1]),
    .O(direccion_1_IBUF_129)
  );
  IBUF   direccion_0_IBUF (
    .I(direccion[0]),
    .O(direccion_0_IBUF_128)
  );
  OBUF   AD_OBUF (
    .I(AD_OBUF_1),
    .O(AD)
  );
  OBUF   final_OBUF (
    .I(final_OBUF_145),
    .O(final)
  );
  OBUF   CS_OBUF (
    .I(CS_OBUF_6),
    .O(CS)
  );
  OBUF   escreg_OBUF (
    .I(escreg_OBUF_139),
    .O(escreg)
  );
  OBUF   RD_OBUF (
    .I(RD_OBUF_76),
    .O(RD)
  );
  OBUF   WR_OBUF (
    .I(WR_OBUF_84),
    .O(WR)
  );
  OBUFT   data_out_7_OBUFT (
    .I(Mtridata_data_out[7]),
    .T(Mtrien_data_out_27),
    .O(data_out[7])
  );
  OBUFT   data_out_6_OBUFT (
    .I(Mtridata_data_out[6]),
    .T(Mtrien_data_out_27),
    .O(data_out[6])
  );
  OBUFT   data_out_5_OBUFT (
    .I(Mtridata_data_out[5]),
    .T(Mtrien_data_out_27),
    .O(data_out[5])
  );
  OBUFT   data_out_4_OBUFT (
    .I(Mtridata_data_out[4]),
    .T(Mtrien_data_out_27),
    .O(data_out[4])
  );
  OBUFT   data_out_3_OBUFT (
    .I(Mtridata_data_out[3]),
    .T(Mtrien_data_out_27),
    .O(data_out[3])
  );
  OBUFT   data_out_2_OBUFT (
    .I(Mtridata_data_out[2]),
    .T(Mtrien_data_out_27),
    .O(data_out[2])
  );
  OBUFT   data_out_1_OBUFT (
    .I(Mtridata_data_out[1]),
    .T(Mtrien_data_out_27),
    .O(data_out[1])
  );
  OBUFT   data_out_0_OBUFT (
    .I(Mtridata_data_out[0]),
    .T(Mtrien_data_out_27),
    .O(data_out[0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mtridata_data_out_mux0000<7>1_SW0  (
    .I0(escribe_IBUF_143),
    .I1(dato_0_IBUF_112),
    .O(N12)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mtridata_data_out_mux0000<6>1_SW0  (
    .I0(escribe_IBUF_143),
    .I1(dato_1_IBUF_113),
    .O(N14)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mtridata_data_out_mux0000<5>1_SW0  (
    .I0(escribe_IBUF_143),
    .I1(dato_2_IBUF_114),
    .O(N16)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mtridata_data_out_mux0000<4>1_SW0  (
    .I0(escribe_IBUF_143),
    .I1(dato_3_IBUF_115),
    .O(N18)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mtridata_data_out_mux0000<3>1_SW0  (
    .I0(escribe_IBUF_143),
    .I1(dato_4_IBUF_116),
    .O(N20)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mtridata_data_out_mux0000<2>1_SW0  (
    .I0(escribe_IBUF_143),
    .I1(dato_5_IBUF_117),
    .O(N22)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mtridata_data_out_mux0000<1>1_SW0  (
    .I0(escribe_IBUF_143),
    .I1(dato_6_IBUF_118),
    .O(N24)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mtridata_data_out_mux0000<0>2_SW0  (
    .I0(escribe_IBUF_143),
    .I1(dato_7_IBUF_119),
    .O(N26)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  AD_mux000054 (
    .I0(AD_OBUF_1),
    .I1(contador[4]),
    .I2(contador[2]),
    .I3(N30),
    .O(AD_mux000054_4)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  escreg_mux000027 (
    .I0(escreg_OBUF_139),
    .I1(contador[3]),
    .I2(contador[1]),
    .I3(N32),
    .O(escreg_mux000027_141)
  );
  LUT4 #(
    .INIT ( 16'h8C80 ))
  \Mtridata_data_out_mux0000<7>1  (
    .I0(N12),
    .I1(iniciar_IBUF_148),
    .I2(N89),
    .I3(N36),
    .O(Mtridata_data_out_mux0000[7])
  );
  LUT4 #(
    .INIT ( 16'h8C80 ))
  \Mtridata_data_out_mux0000<6>1  (
    .I0(N14),
    .I1(iniciar_IBUF_148),
    .I2(N51),
    .I3(N38),
    .O(Mtridata_data_out_mux0000[6])
  );
  LUT4 #(
    .INIT ( 16'h8C80 ))
  \Mtridata_data_out_mux0000<5>1  (
    .I0(N16),
    .I1(iniciar_IBUF_148),
    .I2(N51),
    .I3(N40),
    .O(Mtridata_data_out_mux0000[5])
  );
  LUT4 #(
    .INIT ( 16'h8C80 ))
  \Mtridata_data_out_mux0000<4>1  (
    .I0(N18),
    .I1(iniciar_IBUF_148),
    .I2(N51),
    .I3(N42),
    .O(Mtridata_data_out_mux0000[4])
  );
  LUT4 #(
    .INIT ( 16'h8C80 ))
  \Mtridata_data_out_mux0000<3>1  (
    .I0(N20),
    .I1(iniciar_IBUF_148),
    .I2(N51),
    .I3(N44),
    .O(Mtridata_data_out_mux0000[3])
  );
  LUT4 #(
    .INIT ( 16'h8C80 ))
  \Mtridata_data_out_mux0000<2>1  (
    .I0(N22),
    .I1(iniciar_IBUF_148),
    .I2(N51),
    .I3(N46),
    .O(Mtridata_data_out_mux0000[2])
  );
  LUT4 #(
    .INIT ( 16'h8C80 ))
  \Mtridata_data_out_mux0000<1>1  (
    .I0(N24),
    .I1(iniciar_IBUF_148),
    .I2(N51),
    .I3(N48),
    .O(Mtridata_data_out_mux0000[1])
  );
  LUT4 #(
    .INIT ( 16'h8C80 ))
  \Mtridata_data_out_mux0000<0>2  (
    .I0(N26),
    .I1(iniciar_IBUF_148),
    .I2(N51),
    .I3(N50),
    .O(Mtridata_data_out_mux0000[0])
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  AD_mux000041_SW0 (
    .I0(contador[2]),
    .I1(contador[3]),
    .I2(contador[4]),
    .O(N54)
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  AD_mux000063 (
    .I0(N6),
    .I1(N54),
    .I2(AD_mux000054_4),
    .I3(AD_mux000014_3),
    .O(AD_mux0000)
  );
  LUT4 #(
    .INIT ( 16'hBB5F ))
  AD_mux000014_SW0 (
    .I0(contador[1]),
    .I1(contador[4]),
    .I2(contador[3]),
    .I3(contador[2]),
    .O(N56)
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  escreg_mux000064 (
    .I0(iniciar_IBUF_148),
    .I1(N4),
    .I2(N58),
    .I3(escreg_mux000027_141),
    .O(escreg_mux0000)
  );
  LUT4 #(
    .INIT ( 16'hC840 ))
  RD_mux000031_SW0 (
    .I0(contador[4]),
    .I1(RD_OBUF_76),
    .I2(N71),
    .I3(N8),
    .O(N60)
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  RD_mux000031 (
    .I0(contador[0]),
    .I1(N52),
    .I2(N3),
    .I3(N60),
    .O(RD_mux0000)
  );
  MUXF5   \Mtridata_data_out_mux0000<0>1_SW2  (
    .I0(N62),
    .I1(N12),
    .S(contador[3]),
    .O(N36)
  );
  LUT4 #(
    .INIT ( 16'hCCCA ))
  \Mtridata_data_out_mux0000<0>1_SW2_F  (
    .I0(direccion_0_IBUF_128),
    .I1(N12),
    .I2(contador[4]),
    .I3(contador[2]),
    .O(N62)
  );
  MUXF5   \Mtridata_data_out_mux0000<0>1_SW3  (
    .I0(N64),
    .I1(N14),
    .S(contador[3]),
    .O(N38)
  );
  LUT4 #(
    .INIT ( 16'hCCCA ))
  \Mtridata_data_out_mux0000<0>1_SW3_F  (
    .I0(direccion_1_IBUF_129),
    .I1(N14),
    .I2(contador[4]),
    .I3(contador[2]),
    .O(N64)
  );
  MUXF5   \Mtridata_data_out_mux0000<0>1_SW4  (
    .I0(N66),
    .I1(N16),
    .S(contador[3]),
    .O(N40)
  );
  LUT4 #(
    .INIT ( 16'hCCCA ))
  \Mtridata_data_out_mux0000<0>1_SW4_F  (
    .I0(direccion_2_IBUF_130),
    .I1(N16),
    .I2(contador[4]),
    .I3(contador[2]),
    .O(N66)
  );
  MUXF5   \Mtridata_data_out_mux0000<0>1_SW5  (
    .I0(N68),
    .I1(N18),
    .S(contador[3]),
    .O(N42)
  );
  LUT4 #(
    .INIT ( 16'hCCCA ))
  \Mtridata_data_out_mux0000<0>1_SW5_F  (
    .I0(direccion_3_IBUF_131),
    .I1(N18),
    .I2(contador[4]),
    .I3(contador[2]),
    .O(N68)
  );
  MUXF5   \Mtridata_data_out_mux0000<0>1_SW6  (
    .I0(N70),
    .I1(N20),
    .S(contador[3]),
    .O(N44)
  );
  LUT4 #(
    .INIT ( 16'hCCCA ))
  \Mtridata_data_out_mux0000<0>1_SW6_F  (
    .I0(direccion_4_IBUF_132),
    .I1(N20),
    .I2(contador[4]),
    .I3(contador[2]),
    .O(N70)
  );
  MUXF5   \Mtridata_data_out_mux0000<0>1_SW7  (
    .I0(N72),
    .I1(N22),
    .S(contador[3]),
    .O(N46)
  );
  LUT4 #(
    .INIT ( 16'hCCCA ))
  \Mtridata_data_out_mux0000<0>1_SW7_F  (
    .I0(direccion_5_IBUF_133),
    .I1(N22),
    .I2(contador[4]),
    .I3(contador[2]),
    .O(N72)
  );
  MUXF5   \Mtridata_data_out_mux0000<0>1_SW8  (
    .I0(N74),
    .I1(N24),
    .S(contador[3]),
    .O(N48)
  );
  LUT4 #(
    .INIT ( 16'hCCCA ))
  \Mtridata_data_out_mux0000<0>1_SW8_F  (
    .I0(direccion_6_IBUF_134),
    .I1(N24),
    .I2(contador[4]),
    .I3(contador[2]),
    .O(N74)
  );
  MUXF5   \Mtridata_data_out_mux0000<0>1_SW9  (
    .I0(N76),
    .I1(N26),
    .S(contador[3]),
    .O(N50)
  );
  LUT4 #(
    .INIT ( 16'hCCCA ))
  \Mtridata_data_out_mux0000<0>1_SW9_F  (
    .I0(direccion_7_IBUF_135),
    .I1(N26),
    .I2(contador[4]),
    .I3(contador[2]),
    .O(N76)
  );
  LUT4 #(
    .INIT ( 16'hCC6C ))
  \Mcount_contador_xor<4>1  (
    .I0(contador[0]),
    .I1(contador[4]),
    .I2(contador[1]),
    .I3(N78),
    .O(Result[4])
  );
  LUT4 #(
    .INIT ( 16'h080C ))
  Mtrien_data_out_mux00001 (
    .I0(N80),
    .I1(iniciar_IBUF_148),
    .I2(escribe_IBUF_143),
    .I3(contador[0]),
    .O(Mtrien_data_out_mux0000)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_89)
  );
  INV   reset_inv1_INV_0 (
    .I(reset_IBUF_150),
    .O(reset_inv)
  );
  INV   \Mcount_contador_xor<0>11_INV_0  (
    .I(contador[0]),
    .O(Result[0])
  );
  MUXF5   RD_mux00002 (
    .I0(N82),
    .I1(N83),
    .S(contador[4]),
    .O(N3)
  );
  LUT4 #(
    .INIT ( 16'h0206 ))
  RD_mux00002_F (
    .I0(contador[3]),
    .I1(contador[0]),
    .I2(contador[2]),
    .I3(contador[1]),
    .O(N82)
  );
  LUT4 #(
    .INIT ( 16'h0620 ))
  RD_mux00002_G (
    .I0(contador[3]),
    .I1(contador[0]),
    .I2(contador[2]),
    .I3(contador[1]),
    .O(N83)
  );
  MUXF5   CS_or0003 (
    .I0(N84),
    .I1(N85),
    .S(contador[0]),
    .O(CS_or0003_9)
  );
  LUT4 #(
    .INIT ( 16'hC6E7 ))
  CS_or0003_F (
    .I0(contador[4]),
    .I1(contador[2]),
    .I2(contador[1]),
    .I3(contador[3]),
    .O(N84)
  );
  LUT4 #(
    .INIT ( 16'hFFF6 ))
  CS_or0003_G (
    .I0(contador[4]),
    .I1(contador[1]),
    .I2(contador[3]),
    .I3(contador[2]),
    .O(N85)
  );
  LUT4_D #(
    .INIT ( 16'h1000 ))
  AD_mux000011 (
    .I0(contador[1]),
    .I1(contador[0]),
    .I2(contador[4]),
    .I3(contador[2]),
    .LO(N88),
    .O(N4)
  );
  LUT4_L #(
    .INIT ( 16'hFBEF ))
  Mtridata_data_out_not0001_SW0 (
    .I0(contador[1]),
    .I1(contador[4]),
    .I2(contador[0]),
    .I3(contador[2]),
    .LO(N31)
  );
  LUT2_D #(
    .INIT ( 4'hD ))
  \Mtridata_data_out_mux0000<0>1_SW0  (
    .I0(contador[0]),
    .I1(contador[1]),
    .LO(N89),
    .O(N51)
  );
  LUT4_L #(
    .INIT ( 16'hFFC9 ))
  CS_or0003_SW0 (
    .I0(contador[1]),
    .I1(contador[0]),
    .I2(contador[3]),
    .I3(contador[2]),
    .LO(N71)
  );
  LUT2_L #(
    .INIT ( 4'h4 ))
  WR_mux00006 (
    .I0(escribe_IBUF_143),
    .I1(contador[4]),
    .LO(WR_mux00006_87)
  );
  LUT3_L #(
    .INIT ( 8'hC9 ))
  AD_mux000054_SW0 (
    .I0(contador[1]),
    .I1(contador[0]),
    .I2(contador[3]),
    .LO(N30)
  );
  LUT3_L #(
    .INIT ( 8'hBD ))
  escreg_mux000027_SW0 (
    .I0(contador[0]),
    .I1(contador[4]),
    .I2(contador[2]),
    .LO(N32)
  );
  LUT4_L #(
    .INIT ( 16'hDFBB ))
  RD_mux000014_SW0 (
    .I0(contador[4]),
    .I1(contador[1]),
    .I2(escribe_IBUF_143),
    .I3(contador[2]),
    .LO(N52)
  );
  LUT2_L #(
    .INIT ( 4'h1 ))
  AD_mux000014 (
    .I0(contador[0]),
    .I1(N56),
    .LO(AD_mux000014_3)
  );
  LUT3_L #(
    .INIT ( 8'hEF ))
  escreg_mux000047_SW0 (
    .I0(contador[3]),
    .I1(escribe_IBUF_143),
    .I2(esc_IBUF_137),
    .LO(N58)
  );
  LUT2_L #(
    .INIT ( 4'h7 ))
  \Mcount_contador_xor<4>1_SW2  (
    .I0(contador[2]),
    .I1(contador[3]),
    .LO(N78)
  );
  LUT4_L #(
    .INIT ( 16'hFFFE ))
  Mtrien_data_out_mux00001_SW0 (
    .I0(contador[1]),
    .I1(contador[2]),
    .I2(contador[3]),
    .I3(contador[4]),
    .LO(N80)
  );
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

