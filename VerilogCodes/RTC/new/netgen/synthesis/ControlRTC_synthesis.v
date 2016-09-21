////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: ControlRTC_synthesis.v
// /___/   /\     Timestamp: Wed Sep 21 09:54:40 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ControlRTC.ngc ControlRTC_synthesis.v 
// Device	: xc3s100e-5-vq100
// Input file	: ControlRTC.ngc
// Output file	: C:\Xilinx\VGA\netgen\synthesis\ControlRTC_synthesis.v
// # of Modules	: 1
// Design Name	: ControlRTC
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

module ControlRTC (
  AD, clk, CS, reset, RD, WR, datamemoria, DatAdd, writedata, selectores, ADDreadreg, interruptores
);
  output AD;
  input clk;
  output CS;
  input reset;
  output RD;
  output WR;
  output [7 : 0] datamemoria;
  output [7 : 0] DatAdd;
  input [7 : 0] writedata;
  input [3 : 0] selectores;
  input [3 : 0] ADDreadreg;
  input [2 : 0] interruptores;
  wire ADDreadreg_0_IBUF_5;
  wire ADDreadreg_1_IBUF_6;
  wire ADDreadreg_2_IBUF_7;
  wire ADDreadreg_3_IBUF_8;
  wire \Cront_out/AD_10 ;
  wire \Cront_out/AD_mux0000 ;
  wire \Cront_out/AD_mux000024 ;
  wire \Cront_out/AD_mux0000241_13 ;
  wire \Cront_out/AD_mux0000242_14 ;
  wire \Cront_out/AD_mux000035 ;
  wire \Cront_out/CS_16 ;
  wire \Cront_out/CS_cmp_eq0005 ;
  wire \Cront_out/CS_mux0000 ;
  wire \Cront_out/CS_or0000 ;
  wire \Cront_out/CS_or0003_20 ;
  wire \Cront_out/Mtridata_data_out_not0001 ;
  wire \Cront_out/Mtrien_data_out_38 ;
  wire \Cront_out/Mtrien_data_out_mux0000 ;
  wire \Cront_out/RD_40 ;
  wire \Cront_out/RD_mux0000 ;
  wire \Cront_out/RD_mux000024_42 ;
  wire \Cront_out/RD_mux000039_43 ;
  wire \Cront_out/Result<4>1_49 ;
  wire \Cront_out/Result<4>2_50 ;
  wire \Cront_out/WR_51 ;
  wire \Cront_out/WR_mux0000_52 ;
  wire \Cront_out/contador_or0000 ;
  wire \Cront_out/escreg_59 ;
  wire \Cront_out/escreg_mux0000_60 ;
  wire \Cront_out/escreg_mux00002 ;
  wire \Cront_out/escreg_mux000021_62 ;
  wire \Cront_out/final_63 ;
  wire \Cront_out/final_mux0000 ;
  wire \Cront_out/reset_inv ;
  wire N0;
  wire N01;
  wire N02;
  wire N1;
  wire N101;
  wire N103;
  wire N105;
  wire N107;
  wire N109;
  wire N111;
  wire N113;
  wire N121;
  wire N123;
  wire N133;
  wire N134;
  wire N136;
  wire N138;
  wire N148;
  wire N154;
  wire N156;
  wire N158;
  wire N160;
  wire N162;
  wire N164;
  wire N166;
  wire N168;
  wire N182;
  wire N190;
  wire N192;
  wire N193;
  wire N194;
  wire N195;
  wire N196;
  wire N197;
  wire N198;
  wire N199;
  wire N2;
  wire N200;
  wire N201;
  wire N202;
  wire N203;
  wire N204;
  wire N205;
  wire N206;
  wire N207;
  wire N208;
  wire N209;
  wire N210;
  wire N211;
  wire N212;
  wire N213;
  wire N214;
  wire N215;
  wire N216;
  wire N217;
  wire N218;
  wire N219;
  wire N220;
  wire N221;
  wire N222;
  wire N223;
  wire N224;
  wire N225;
  wire N226;
  wire N227;
  wire N228;
  wire N229;
  wire N230;
  wire N231;
  wire N232;
  wire N233;
  wire N234;
  wire N235;
  wire N236;
  wire N237;
  wire N238;
  wire N239;
  wire N24;
  wire N240;
  wire N241;
  wire N242;
  wire N243;
  wire N244;
  wire N245;
  wire N246;
  wire N247;
  wire N248;
  wire N249;
  wire N250;
  wire N251;
  wire N252;
  wire N253;
  wire N254;
  wire N255;
  wire N256;
  wire N257;
  wire N26;
  wire N30;
  wire N32;
  wire N34;
  wire N4;
  wire N57;
  wire N6;
  wire N61;
  wire N63;
  wire N65;
  wire N87;
  wire N89;
  wire N91;
  wire N93;
  wire N95;
  wire N97;
  wire N99;
  wire \WT/dir[0] ;
  wire \WT/dir[1] ;
  wire \WT/dir[2] ;
  wire \WT/dir[5] ;
  wire \WT/dir[6] ;
  wire \WT/dir_mux0000<1>1_194 ;
  wire \WT/dir_mux0000<2>2_195 ;
  wire \WT/dir_mux0000<2>20 ;
  wire \WT/dir_mux0000<2>7_197 ;
  wire \WT/dir_mux0000<5>1_198 ;
  wire \WT/dir_mux0000<6>1_199 ;
  wire \WT/dir_mux0000<7>1_200 ;
  wire \WT/dir_reg_mux0000<0>1 ;
  wire \WT/dir_reg_mux0000<1>1_206 ;
  wire \WT/dir_reg_mux0000<2>1_207 ;
  wire \WT/dir_reg_mux0000<3>1_208 ;
  wire \WT/escritura_209 ;
  wire \WT/final_210 ;
  wire \WT/lectura_211 ;
  wire \WT/lectura_mux000011 ;
  wire \WT/lectura_mux0000111_213 ;
  wire \WT/lectura_mux000027 ;
  wire \WT/lectura_mux00004_215 ;
  wire \WT/next_state_or0000 ;
  wire \WT/next_state_or000014_217 ;
  wire \WT/next_state_or00004_218 ;
  wire \WT/state_FSM_FFd1_219 ;
  wire \WT/state_FSM_FFd1-In ;
  wire \WT/state_FSM_FFd10_221 ;
  wire \WT/state_FSM_FFd11_222 ;
  wire \WT/state_FSM_FFd11-In ;
  wire \WT/state_FSM_FFd12_224 ;
  wire \WT/state_FSM_FFd12-In ;
  wire \WT/state_FSM_FFd2_226 ;
  wire \WT/state_FSM_FFd3_227 ;
  wire \WT/state_FSM_FFd4_228 ;
  wire \WT/state_FSM_FFd5_229 ;
  wire \WT/state_FSM_FFd6_230 ;
  wire \WT/state_FSM_FFd7_231 ;
  wire \WT/state_FSM_FFd8_232 ;
  wire \WT/state_FSM_FFd9_233 ;
  wire \WT/state_or0000 ;
  wire clk_BUFGP_236;
  wire \controldeusuario/ADD2[0] ;
  wire \controldeusuario/ADD2[1] ;
  wire \controldeusuario/ADD2[2] ;
  wire \controldeusuario/ADD2[4] ;
  wire \controldeusuario/ADD2[5] ;
  wire \controldeusuario/ADD2[6] ;
  wire \controldeusuario/ADD_not0001 ;
  wire \controldeusuario/Madd_COND_2_addsub0000_cy[0] ;
  wire \controldeusuario/Madd_COND_2_addsub0000_cy[3] ;
  wire \controldeusuario/Madd_COND_2_addsub0000_cy<3>11_290 ;
  wire \controldeusuario/Madd_COND_2_addsub0000_cy[5] ;
  wire \controldeusuario/Madd_COND_4_addsub0000_cy[0] ;
  wire \controldeusuario/Madd_COND_4_addsub0000_cy[3] ;
  wire \controldeusuario/Madd_COND_4_addsub0000_cy<3>11_301 ;
  wire \controldeusuario/Madd_COND_4_addsub0000_cy[5] ;
  wire \controldeusuario/Maquina_out_327 ;
  wire \controldeusuario/Maquina_out_or0000 ;
  wire \controldeusuario/Mrom__COND_5 ;
  wire \controldeusuario/Mrom__COND_51 ;
  wire \controldeusuario/Mrom__COND_52 ;
  wire \controldeusuario/Mrom__COND_54 ;
  wire \controldeusuario/Mrom__COND_55 ;
  wire \controldeusuario/Mrom__COND_56 ;
  wire \controldeusuario/N0 ;
  wire \controldeusuario/N10 ;
  wire \controldeusuario/N11 ;
  wire \controldeusuario/N111 ;
  wire \controldeusuario/N12 ;
  wire \controldeusuario/N121 ;
  wire \controldeusuario/N13 ;
  wire \controldeusuario/N131 ;
  wire \controldeusuario/N14 ;
  wire \controldeusuario/N15 ;
  wire \controldeusuario/N151 ;
  wire \controldeusuario/N2 ;
  wire \controldeusuario/N20 ;
  wire \controldeusuario/N23 ;
  wire \controldeusuario/N27 ;
  wire \controldeusuario/N271 ;
  wire \controldeusuario/N29 ;
  wire \controldeusuario/N3 ;
  wire \controldeusuario/N30 ;
  wire \controldeusuario/N301 ;
  wire \controldeusuario/N31 ;
  wire \controldeusuario/N311 ;
  wire \controldeusuario/N32 ;
  wire \controldeusuario/N321 ;
  wire \controldeusuario/N331 ;
  wire \controldeusuario/N34 ;
  wire \controldeusuario/N341 ;
  wire \controldeusuario/N35 ;
  wire \controldeusuario/N36 ;
  wire \controldeusuario/N37 ;
  wire \controldeusuario/N391 ;
  wire \controldeusuario/N4 ;
  wire \controldeusuario/N40 ;
  wire \controldeusuario/N411 ;
  wire \controldeusuario/N5 ;
  wire \controldeusuario/N51 ;
  wire \controldeusuario/N6 ;
  wire \controldeusuario/N7 ;
  wire \controldeusuario/N8 ;
  wire \controldeusuario/N9 ;
  wire \controldeusuario/cambiosneg_0_0_402 ;
  wire \controldeusuario/cambiosneg_0_1_403 ;
  wire \controldeusuario/cambiosneg_0_2_404 ;
  wire \controldeusuario/cambiosneg_0_3_405 ;
  wire \controldeusuario/cambiosneg_0_4_406 ;
  wire \controldeusuario/cambiosneg_0_5_407 ;
  wire \controldeusuario/cambiosneg_0_6_408 ;
  wire \controldeusuario/cambiosneg_0_7_409 ;
  wire \controldeusuario/cambiosneg_0_not0001_418 ;
  wire \controldeusuario/cambiosneg_10_0_419 ;
  wire \controldeusuario/cambiosneg_10_1_420 ;
  wire \controldeusuario/cambiosneg_10_2_421 ;
  wire \controldeusuario/cambiosneg_10_3_422 ;
  wire \controldeusuario/cambiosneg_10_4_423 ;
  wire \controldeusuario/cambiosneg_10_5_424 ;
  wire \controldeusuario/cambiosneg_10_6_425 ;
  wire \controldeusuario/cambiosneg_10_7_426 ;
  wire \controldeusuario/cambiosneg_10_not0001_435 ;
  wire \controldeusuario/cambiosneg_11_0_436 ;
  wire \controldeusuario/cambiosneg_11_1_437 ;
  wire \controldeusuario/cambiosneg_11_2_438 ;
  wire \controldeusuario/cambiosneg_11_3_439 ;
  wire \controldeusuario/cambiosneg_11_4_440 ;
  wire \controldeusuario/cambiosneg_11_5_441 ;
  wire \controldeusuario/cambiosneg_11_6_442 ;
  wire \controldeusuario/cambiosneg_11_7_443 ;
  wire \controldeusuario/cambiosneg_11_not0001_452 ;
  wire \controldeusuario/cambiosneg_12_0_453 ;
  wire \controldeusuario/cambiosneg_12_1_454 ;
  wire \controldeusuario/cambiosneg_12_2_455 ;
  wire \controldeusuario/cambiosneg_12_3_456 ;
  wire \controldeusuario/cambiosneg_12_4_457 ;
  wire \controldeusuario/cambiosneg_12_5_458 ;
  wire \controldeusuario/cambiosneg_12_6_459 ;
  wire \controldeusuario/cambiosneg_12_7_460 ;
  wire \controldeusuario/cambiosneg_12_not0001 ;
  wire \controldeusuario/cambiosneg_13_0_462 ;
  wire \controldeusuario/cambiosneg_13_1_463 ;
  wire \controldeusuario/cambiosneg_13_2_464 ;
  wire \controldeusuario/cambiosneg_13_3_465 ;
  wire \controldeusuario/cambiosneg_13_4_466 ;
  wire \controldeusuario/cambiosneg_13_5_467 ;
  wire \controldeusuario/cambiosneg_13_6_468 ;
  wire \controldeusuario/cambiosneg_13_7_469 ;
  wire \controldeusuario/cambiosneg_13_not0001_478 ;
  wire \controldeusuario/cambiosneg_14_0_479 ;
  wire \controldeusuario/cambiosneg_14_1_480 ;
  wire \controldeusuario/cambiosneg_14_2_481 ;
  wire \controldeusuario/cambiosneg_14_3_482 ;
  wire \controldeusuario/cambiosneg_14_4_483 ;
  wire \controldeusuario/cambiosneg_14_5_484 ;
  wire \controldeusuario/cambiosneg_14_6_485 ;
  wire \controldeusuario/cambiosneg_14_7_486 ;
  wire \controldeusuario/cambiosneg_14_not0001_495 ;
  wire \controldeusuario/cambiosneg_15_0_496 ;
  wire \controldeusuario/cambiosneg_15_1_497 ;
  wire \controldeusuario/cambiosneg_15_2_498 ;
  wire \controldeusuario/cambiosneg_15_3_499 ;
  wire \controldeusuario/cambiosneg_15_4_500 ;
  wire \controldeusuario/cambiosneg_15_5_501 ;
  wire \controldeusuario/cambiosneg_15_6_502 ;
  wire \controldeusuario/cambiosneg_15_7_503 ;
  wire \controldeusuario/cambiosneg_15_not0001_512 ;
  wire \controldeusuario/cambiosneg_1_0_513 ;
  wire \controldeusuario/cambiosneg_1_1_514 ;
  wire \controldeusuario/cambiosneg_1_2_515 ;
  wire \controldeusuario/cambiosneg_1_3_516 ;
  wire \controldeusuario/cambiosneg_1_4_517 ;
  wire \controldeusuario/cambiosneg_1_5_518 ;
  wire \controldeusuario/cambiosneg_1_6_519 ;
  wire \controldeusuario/cambiosneg_1_7_520 ;
  wire \controldeusuario/cambiosneg_1_not0001_529 ;
  wire \controldeusuario/cambiosneg_2_0_530 ;
  wire \controldeusuario/cambiosneg_2_1_531 ;
  wire \controldeusuario/cambiosneg_2_2_532 ;
  wire \controldeusuario/cambiosneg_2_3_533 ;
  wire \controldeusuario/cambiosneg_2_4_534 ;
  wire \controldeusuario/cambiosneg_2_5_535 ;
  wire \controldeusuario/cambiosneg_2_6_536 ;
  wire \controldeusuario/cambiosneg_2_7_537 ;
  wire \controldeusuario/cambiosneg_2_not0001_546 ;
  wire \controldeusuario/cambiosneg_3_0_547 ;
  wire \controldeusuario/cambiosneg_3_1_548 ;
  wire \controldeusuario/cambiosneg_3_2_549 ;
  wire \controldeusuario/cambiosneg_3_3_550 ;
  wire \controldeusuario/cambiosneg_3_4_551 ;
  wire \controldeusuario/cambiosneg_3_5_552 ;
  wire \controldeusuario/cambiosneg_3_6_553 ;
  wire \controldeusuario/cambiosneg_3_7_554 ;
  wire \controldeusuario/cambiosneg_3_not0001_563 ;
  wire \controldeusuario/cambiosneg_4_0_564 ;
  wire \controldeusuario/cambiosneg_4_1_565 ;
  wire \controldeusuario/cambiosneg_4_2_566 ;
  wire \controldeusuario/cambiosneg_4_3_567 ;
  wire \controldeusuario/cambiosneg_4_4_568 ;
  wire \controldeusuario/cambiosneg_4_5_569 ;
  wire \controldeusuario/cambiosneg_4_6_570 ;
  wire \controldeusuario/cambiosneg_4_7_571 ;
  wire \controldeusuario/cambiosneg_4_not0001_580 ;
  wire \controldeusuario/cambiosneg_5_0_581 ;
  wire \controldeusuario/cambiosneg_5_1_582 ;
  wire \controldeusuario/cambiosneg_5_2_583 ;
  wire \controldeusuario/cambiosneg_5_3_584 ;
  wire \controldeusuario/cambiosneg_5_4_585 ;
  wire \controldeusuario/cambiosneg_5_5_586 ;
  wire \controldeusuario/cambiosneg_5_6_587 ;
  wire \controldeusuario/cambiosneg_5_7_588 ;
  wire \controldeusuario/cambiosneg_5_not0001_597 ;
  wire \controldeusuario/cambiosneg_6_0_598 ;
  wire \controldeusuario/cambiosneg_6_1_599 ;
  wire \controldeusuario/cambiosneg_6_2_600 ;
  wire \controldeusuario/cambiosneg_6_3_601 ;
  wire \controldeusuario/cambiosneg_6_4_602 ;
  wire \controldeusuario/cambiosneg_6_5_603 ;
  wire \controldeusuario/cambiosneg_6_6_604 ;
  wire \controldeusuario/cambiosneg_6_7_605 ;
  wire \controldeusuario/cambiosneg_6_not0001 ;
  wire \controldeusuario/cambiosneg_6_not000113 ;
  wire \controldeusuario/cambiosneg_6_not0001131_616 ;
  wire \controldeusuario/cambiosneg_7_0_617 ;
  wire \controldeusuario/cambiosneg_7_1_618 ;
  wire \controldeusuario/cambiosneg_7_2_619 ;
  wire \controldeusuario/cambiosneg_7_3_620 ;
  wire \controldeusuario/cambiosneg_7_4_621 ;
  wire \controldeusuario/cambiosneg_7_5_622 ;
  wire \controldeusuario/cambiosneg_7_6_623 ;
  wire \controldeusuario/cambiosneg_7_7_624 ;
  wire \controldeusuario/cambiosneg_7_not0001_633 ;
  wire \controldeusuario/cambiosneg_8_0_634 ;
  wire \controldeusuario/cambiosneg_8_1_635 ;
  wire \controldeusuario/cambiosneg_8_2_636 ;
  wire \controldeusuario/cambiosneg_8_3_637 ;
  wire \controldeusuario/cambiosneg_8_4_638 ;
  wire \controldeusuario/cambiosneg_8_5_639 ;
  wire \controldeusuario/cambiosneg_8_6_640 ;
  wire \controldeusuario/cambiosneg_8_7_641 ;
  wire \controldeusuario/cambiosneg_8_not0001_650 ;
  wire \controldeusuario/cambiosneg_9_0_651 ;
  wire \controldeusuario/cambiosneg_9_1_652 ;
  wire \controldeusuario/cambiosneg_9_2_653 ;
  wire \controldeusuario/cambiosneg_9_3_654 ;
  wire \controldeusuario/cambiosneg_9_4_655 ;
  wire \controldeusuario/cambiosneg_9_5_656 ;
  wire \controldeusuario/cambiosneg_9_6_657 ;
  wire \controldeusuario/cambiosneg_9_7_658 ;
  wire \controldeusuario/cambiosneg_9_not0001_667 ;
  wire \controldeusuario/cambiospos_0_0_668 ;
  wire \controldeusuario/cambiospos_0_1_669 ;
  wire \controldeusuario/cambiospos_0_2_670 ;
  wire \controldeusuario/cambiospos_0_3_671 ;
  wire \controldeusuario/cambiospos_0_4_672 ;
  wire \controldeusuario/cambiospos_0_5_673 ;
  wire \controldeusuario/cambiospos_0_6_674 ;
  wire \controldeusuario/cambiospos_0_7_675 ;
  wire \controldeusuario/cambiospos_0_not0001_684 ;
  wire \controldeusuario/cambiospos_10_0_685 ;
  wire \controldeusuario/cambiospos_10_1_686 ;
  wire \controldeusuario/cambiospos_10_2_687 ;
  wire \controldeusuario/cambiospos_10_3_688 ;
  wire \controldeusuario/cambiospos_10_4_689 ;
  wire \controldeusuario/cambiospos_10_5_690 ;
  wire \controldeusuario/cambiospos_10_6_691 ;
  wire \controldeusuario/cambiospos_10_7_692 ;
  wire \controldeusuario/cambiospos_10_not0001_701 ;
  wire \controldeusuario/cambiospos_11_0_702 ;
  wire \controldeusuario/cambiospos_11_1_703 ;
  wire \controldeusuario/cambiospos_11_2_704 ;
  wire \controldeusuario/cambiospos_11_3_705 ;
  wire \controldeusuario/cambiospos_11_4_706 ;
  wire \controldeusuario/cambiospos_11_5_707 ;
  wire \controldeusuario/cambiospos_11_6_708 ;
  wire \controldeusuario/cambiospos_11_7_709 ;
  wire \controldeusuario/cambiospos_11_not0001_718 ;
  wire \controldeusuario/cambiospos_12_0_719 ;
  wire \controldeusuario/cambiospos_12_1_720 ;
  wire \controldeusuario/cambiospos_12_2_721 ;
  wire \controldeusuario/cambiospos_12_3_722 ;
  wire \controldeusuario/cambiospos_12_4_723 ;
  wire \controldeusuario/cambiospos_12_5_724 ;
  wire \controldeusuario/cambiospos_12_6_725 ;
  wire \controldeusuario/cambiospos_12_7_726 ;
  wire \controldeusuario/cambiospos_12_not0001_727 ;
  wire \controldeusuario/cambiospos_13_0_728 ;
  wire \controldeusuario/cambiospos_13_1_729 ;
  wire \controldeusuario/cambiospos_13_2_730 ;
  wire \controldeusuario/cambiospos_13_3_731 ;
  wire \controldeusuario/cambiospos_13_4_732 ;
  wire \controldeusuario/cambiospos_13_5_733 ;
  wire \controldeusuario/cambiospos_13_6_734 ;
  wire \controldeusuario/cambiospos_13_7_735 ;
  wire \controldeusuario/cambiospos_13_not0001_744 ;
  wire \controldeusuario/cambiospos_14_0_745 ;
  wire \controldeusuario/cambiospos_14_1_746 ;
  wire \controldeusuario/cambiospos_14_2_747 ;
  wire \controldeusuario/cambiospos_14_3_748 ;
  wire \controldeusuario/cambiospos_14_4_749 ;
  wire \controldeusuario/cambiospos_14_5_750 ;
  wire \controldeusuario/cambiospos_14_6_751 ;
  wire \controldeusuario/cambiospos_14_7_752 ;
  wire \controldeusuario/cambiospos_14_not0001_761 ;
  wire \controldeusuario/cambiospos_15_0_762 ;
  wire \controldeusuario/cambiospos_15_1_763 ;
  wire \controldeusuario/cambiospos_15_2_764 ;
  wire \controldeusuario/cambiospos_15_3_765 ;
  wire \controldeusuario/cambiospos_15_4_766 ;
  wire \controldeusuario/cambiospos_15_5_767 ;
  wire \controldeusuario/cambiospos_15_6_768 ;
  wire \controldeusuario/cambiospos_15_7_769 ;
  wire \controldeusuario/cambiospos_15_not0001_778 ;
  wire \controldeusuario/cambiospos_1_0_779 ;
  wire \controldeusuario/cambiospos_1_1_780 ;
  wire \controldeusuario/cambiospos_1_2_781 ;
  wire \controldeusuario/cambiospos_1_3_782 ;
  wire \controldeusuario/cambiospos_1_4_783 ;
  wire \controldeusuario/cambiospos_1_5_784 ;
  wire \controldeusuario/cambiospos_1_6_785 ;
  wire \controldeusuario/cambiospos_1_7_786 ;
  wire \controldeusuario/cambiospos_1_not0001 ;
  wire \controldeusuario/cambiospos_1_not000125_796 ;
  wire \controldeusuario/cambiospos_2_0_797 ;
  wire \controldeusuario/cambiospos_2_1_798 ;
  wire \controldeusuario/cambiospos_2_2_799 ;
  wire \controldeusuario/cambiospos_2_3_800 ;
  wire \controldeusuario/cambiospos_2_4_801 ;
  wire \controldeusuario/cambiospos_2_5_802 ;
  wire \controldeusuario/cambiospos_2_6_803 ;
  wire \controldeusuario/cambiospos_2_7_804 ;
  wire \controldeusuario/cambiospos_2_not0001_813 ;
  wire \controldeusuario/cambiospos_3_0_814 ;
  wire \controldeusuario/cambiospos_3_1_815 ;
  wire \controldeusuario/cambiospos_3_2_816 ;
  wire \controldeusuario/cambiospos_3_3_817 ;
  wire \controldeusuario/cambiospos_3_4_818 ;
  wire \controldeusuario/cambiospos_3_5_819 ;
  wire \controldeusuario/cambiospos_3_6_820 ;
  wire \controldeusuario/cambiospos_3_7_821 ;
  wire \controldeusuario/cambiospos_3_not0001_830 ;
  wire \controldeusuario/cambiospos_4_0_831 ;
  wire \controldeusuario/cambiospos_4_1_832 ;
  wire \controldeusuario/cambiospos_4_2_833 ;
  wire \controldeusuario/cambiospos_4_3_834 ;
  wire \controldeusuario/cambiospos_4_4_835 ;
  wire \controldeusuario/cambiospos_4_5_836 ;
  wire \controldeusuario/cambiospos_4_6_837 ;
  wire \controldeusuario/cambiospos_4_7_838 ;
  wire \controldeusuario/cambiospos_4_not0001_847 ;
  wire \controldeusuario/cambiospos_5_0_848 ;
  wire \controldeusuario/cambiospos_5_1_849 ;
  wire \controldeusuario/cambiospos_5_2_850 ;
  wire \controldeusuario/cambiospos_5_3_851 ;
  wire \controldeusuario/cambiospos_5_4_852 ;
  wire \controldeusuario/cambiospos_5_5_853 ;
  wire \controldeusuario/cambiospos_5_6_854 ;
  wire \controldeusuario/cambiospos_5_7_855 ;
  wire \controldeusuario/cambiospos_5_not0001_864 ;
  wire \controldeusuario/cambiospos_6_0_865 ;
  wire \controldeusuario/cambiospos_6_1_866 ;
  wire \controldeusuario/cambiospos_6_2_867 ;
  wire \controldeusuario/cambiospos_6_3_868 ;
  wire \controldeusuario/cambiospos_6_4_869 ;
  wire \controldeusuario/cambiospos_6_5_870 ;
  wire \controldeusuario/cambiospos_6_6_871 ;
  wire \controldeusuario/cambiospos_6_7_872 ;
  wire \controldeusuario/cambiospos_6_not0001 ;
  wire \controldeusuario/cambiospos_6_not000113_882 ;
  wire \controldeusuario/cambiospos_6_not000128_883 ;
  wire \controldeusuario/cambiospos_7_0_884 ;
  wire \controldeusuario/cambiospos_7_1_885 ;
  wire \controldeusuario/cambiospos_7_2_886 ;
  wire \controldeusuario/cambiospos_7_3_887 ;
  wire \controldeusuario/cambiospos_7_4_888 ;
  wire \controldeusuario/cambiospos_7_5_889 ;
  wire \controldeusuario/cambiospos_7_6_890 ;
  wire \controldeusuario/cambiospos_7_7_891 ;
  wire \controldeusuario/cambiospos_7_not0001_900 ;
  wire \controldeusuario/cambiospos_8_0_901 ;
  wire \controldeusuario/cambiospos_8_1_902 ;
  wire \controldeusuario/cambiospos_8_2_903 ;
  wire \controldeusuario/cambiospos_8_3_904 ;
  wire \controldeusuario/cambiospos_8_4_905 ;
  wire \controldeusuario/cambiospos_8_5_906 ;
  wire \controldeusuario/cambiospos_8_6_907 ;
  wire \controldeusuario/cambiospos_8_7_908 ;
  wire \controldeusuario/cambiospos_8_not0001_917 ;
  wire \controldeusuario/cambiospos_9_0_918 ;
  wire \controldeusuario/cambiospos_9_1_919 ;
  wire \controldeusuario/cambiospos_9_2_920 ;
  wire \controldeusuario/cambiospos_9_3_921 ;
  wire \controldeusuario/cambiospos_9_4_922 ;
  wire \controldeusuario/cambiospos_9_5_923 ;
  wire \controldeusuario/cambiospos_9_6_924 ;
  wire \controldeusuario/cambiospos_9_7_925 ;
  wire \controldeusuario/cambiospos_9_not0001 ;
  wire \controldeusuario/cambiospos_9_not000122_935 ;
  wire \controldeusuario/escritura_936 ;
  wire \controldeusuario/final_937 ;
  wire \controldeusuario/final_cmp_eq0000 ;
  wire \controldeusuario/final_cmp_eq0001 ;
  wire \controldeusuario/final_mux0000 ;
  wire \controldeusuario/final_not0001_941 ;
  wire \controldeusuario/mux10_3_f6_942 ;
  wire \controldeusuario/mux10_4_f5_943 ;
  wire \controldeusuario/mux10_4_f6_944 ;
  wire \controldeusuario/mux10_5_945 ;
  wire \controldeusuario/mux10_5_f5_946 ;
  wire \controldeusuario/mux10_5_f51 ;
  wire \controldeusuario/mux10_6_948 ;
  wire \controldeusuario/mux10_61_949 ;
  wire \controldeusuario/mux10_62_950 ;
  wire \controldeusuario/mux10_6_f5_951 ;
  wire \controldeusuario/mux10_7_952 ;
  wire \controldeusuario/mux10_71_953 ;
  wire \controldeusuario/mux10_72_954 ;
  wire \controldeusuario/mux10_8_955 ;
  wire \controldeusuario/mux11_3_f6_956 ;
  wire \controldeusuario/mux11_4_f5_957 ;
  wire \controldeusuario/mux11_4_f6_958 ;
  wire \controldeusuario/mux11_5_959 ;
  wire \controldeusuario/mux11_5_f5_960 ;
  wire \controldeusuario/mux11_5_f51 ;
  wire \controldeusuario/mux11_6_962 ;
  wire \controldeusuario/mux11_61_963 ;
  wire \controldeusuario/mux11_62_964 ;
  wire \controldeusuario/mux11_6_f5_965 ;
  wire \controldeusuario/mux11_7_966 ;
  wire \controldeusuario/mux11_71_967 ;
  wire \controldeusuario/mux11_72_968 ;
  wire \controldeusuario/mux11_8_969 ;
  wire \controldeusuario/mux12_3_f6_970 ;
  wire \controldeusuario/mux12_4_f5_971 ;
  wire \controldeusuario/mux12_4_f6_972 ;
  wire \controldeusuario/mux12_5_973 ;
  wire \controldeusuario/mux12_5_f5_974 ;
  wire \controldeusuario/mux12_5_f51 ;
  wire \controldeusuario/mux12_6_976 ;
  wire \controldeusuario/mux12_61_977 ;
  wire \controldeusuario/mux12_62_978 ;
  wire \controldeusuario/mux12_6_f5_979 ;
  wire \controldeusuario/mux12_7_980 ;
  wire \controldeusuario/mux12_71_981 ;
  wire \controldeusuario/mux12_72_982 ;
  wire \controldeusuario/mux12_8_983 ;
  wire \controldeusuario/mux13_3_f6_984 ;
  wire \controldeusuario/mux13_4_f5_985 ;
  wire \controldeusuario/mux13_4_f6_986 ;
  wire \controldeusuario/mux13_5_987 ;
  wire \controldeusuario/mux13_5_f5_988 ;
  wire \controldeusuario/mux13_5_f51 ;
  wire \controldeusuario/mux13_6_990 ;
  wire \controldeusuario/mux13_61_991 ;
  wire \controldeusuario/mux13_62_992 ;
  wire \controldeusuario/mux13_6_f5_993 ;
  wire \controldeusuario/mux13_7_994 ;
  wire \controldeusuario/mux13_71_995 ;
  wire \controldeusuario/mux13_72_996 ;
  wire \controldeusuario/mux13_8_997 ;
  wire \controldeusuario/mux14_3_f6_998 ;
  wire \controldeusuario/mux14_4_f5_999 ;
  wire \controldeusuario/mux14_4_f6_1000 ;
  wire \controldeusuario/mux14_5_1001 ;
  wire \controldeusuario/mux14_5_f5_1002 ;
  wire \controldeusuario/mux14_5_f51 ;
  wire \controldeusuario/mux14_6_1004 ;
  wire \controldeusuario/mux14_61_1005 ;
  wire \controldeusuario/mux14_62_1006 ;
  wire \controldeusuario/mux14_6_f5_1007 ;
  wire \controldeusuario/mux14_7_1008 ;
  wire \controldeusuario/mux14_71_1009 ;
  wire \controldeusuario/mux14_72_1010 ;
  wire \controldeusuario/mux14_8_1011 ;
  wire \controldeusuario/mux15_3_f6_1012 ;
  wire \controldeusuario/mux15_4_f5_1013 ;
  wire \controldeusuario/mux15_4_f6_1014 ;
  wire \controldeusuario/mux15_5_1015 ;
  wire \controldeusuario/mux15_5_f5_1016 ;
  wire \controldeusuario/mux15_5_f51 ;
  wire \controldeusuario/mux15_6_1018 ;
  wire \controldeusuario/mux15_61_1019 ;
  wire \controldeusuario/mux15_62_1020 ;
  wire \controldeusuario/mux15_6_f5_1021 ;
  wire \controldeusuario/mux15_7_1022 ;
  wire \controldeusuario/mux15_71_1023 ;
  wire \controldeusuario/mux15_72_1024 ;
  wire \controldeusuario/mux15_8_1025 ;
  wire \controldeusuario/mux16_3_f6_1026 ;
  wire \controldeusuario/mux16_4_f5_1027 ;
  wire \controldeusuario/mux16_4_f6_1028 ;
  wire \controldeusuario/mux16_5_1029 ;
  wire \controldeusuario/mux16_5_f5_1030 ;
  wire \controldeusuario/mux16_5_f51 ;
  wire \controldeusuario/mux16_6_1032 ;
  wire \controldeusuario/mux16_61_1033 ;
  wire \controldeusuario/mux16_62_1034 ;
  wire \controldeusuario/mux16_6_f5_1035 ;
  wire \controldeusuario/mux16_7_1036 ;
  wire \controldeusuario/mux16_71_1037 ;
  wire \controldeusuario/mux16_72_1038 ;
  wire \controldeusuario/mux16_8_1039 ;
  wire \controldeusuario/mux17_3_f6_1040 ;
  wire \controldeusuario/mux17_4_f5_1041 ;
  wire \controldeusuario/mux17_4_f6_1042 ;
  wire \controldeusuario/mux17_5_1043 ;
  wire \controldeusuario/mux17_5_f5_1044 ;
  wire \controldeusuario/mux17_5_f51 ;
  wire \controldeusuario/mux17_6_1046 ;
  wire \controldeusuario/mux17_61_1047 ;
  wire \controldeusuario/mux17_62_1048 ;
  wire \controldeusuario/mux17_6_f5_1049 ;
  wire \controldeusuario/mux17_7_1050 ;
  wire \controldeusuario/mux17_71_1051 ;
  wire \controldeusuario/mux17_72_1052 ;
  wire \controldeusuario/mux17_8_1053 ;
  wire \controldeusuario/mux18_3_f6_1054 ;
  wire \controldeusuario/mux18_4_f5_1055 ;
  wire \controldeusuario/mux18_4_f6_1056 ;
  wire \controldeusuario/mux18_5_1057 ;
  wire \controldeusuario/mux18_5_f5_1058 ;
  wire \controldeusuario/mux18_5_f51 ;
  wire \controldeusuario/mux18_6_1060 ;
  wire \controldeusuario/mux18_61_1061 ;
  wire \controldeusuario/mux18_62_1062 ;
  wire \controldeusuario/mux18_6_f5_1063 ;
  wire \controldeusuario/mux18_7_1064 ;
  wire \controldeusuario/mux18_71_1065 ;
  wire \controldeusuario/mux18_72_1066 ;
  wire \controldeusuario/mux18_8_1067 ;
  wire \controldeusuario/mux19_3_f6_1068 ;
  wire \controldeusuario/mux19_4_f5_1069 ;
  wire \controldeusuario/mux19_4_f6_1070 ;
  wire \controldeusuario/mux19_5_1071 ;
  wire \controldeusuario/mux19_5_f5_1072 ;
  wire \controldeusuario/mux19_5_f51 ;
  wire \controldeusuario/mux19_6_1074 ;
  wire \controldeusuario/mux19_61_1075 ;
  wire \controldeusuario/mux19_62_1076 ;
  wire \controldeusuario/mux19_6_f5_1077 ;
  wire \controldeusuario/mux19_7_1078 ;
  wire \controldeusuario/mux19_71_1079 ;
  wire \controldeusuario/mux19_72_1080 ;
  wire \controldeusuario/mux19_8_1081 ;
  wire \controldeusuario/mux1_3_f6_1082 ;
  wire \controldeusuario/mux1_4_f5_1083 ;
  wire \controldeusuario/mux1_4_f6_1084 ;
  wire \controldeusuario/mux1_5_1085 ;
  wire \controldeusuario/mux1_5_f5_1086 ;
  wire \controldeusuario/mux1_5_f51 ;
  wire \controldeusuario/mux1_6_1088 ;
  wire \controldeusuario/mux1_61_1089 ;
  wire \controldeusuario/mux1_62_1090 ;
  wire \controldeusuario/mux1_6_f5_1091 ;
  wire \controldeusuario/mux1_7_1092 ;
  wire \controldeusuario/mux1_71_1093 ;
  wire \controldeusuario/mux1_72_1094 ;
  wire \controldeusuario/mux1_8_1095 ;
  wire \controldeusuario/mux20_3_f6_1096 ;
  wire \controldeusuario/mux20_4_f5_1097 ;
  wire \controldeusuario/mux20_4_f6_1098 ;
  wire \controldeusuario/mux20_5_1099 ;
  wire \controldeusuario/mux20_5_f5_1100 ;
  wire \controldeusuario/mux20_5_f51 ;
  wire \controldeusuario/mux20_6_1102 ;
  wire \controldeusuario/mux20_61_1103 ;
  wire \controldeusuario/mux20_62_1104 ;
  wire \controldeusuario/mux20_6_f5_1105 ;
  wire \controldeusuario/mux20_7_1106 ;
  wire \controldeusuario/mux20_71_1107 ;
  wire \controldeusuario/mux20_72_1108 ;
  wire \controldeusuario/mux20_8_1109 ;
  wire \controldeusuario/mux21_3_f6_1110 ;
  wire \controldeusuario/mux21_4_f5_1111 ;
  wire \controldeusuario/mux21_4_f6_1112 ;
  wire \controldeusuario/mux21_5_1113 ;
  wire \controldeusuario/mux21_5_f5_1114 ;
  wire \controldeusuario/mux21_5_f51 ;
  wire \controldeusuario/mux21_6_1116 ;
  wire \controldeusuario/mux21_61_1117 ;
  wire \controldeusuario/mux21_62_1118 ;
  wire \controldeusuario/mux21_6_f5_1119 ;
  wire \controldeusuario/mux21_7_1120 ;
  wire \controldeusuario/mux21_71_1121 ;
  wire \controldeusuario/mux21_72_1122 ;
  wire \controldeusuario/mux21_8_1123 ;
  wire \controldeusuario/mux22_3_f6_1124 ;
  wire \controldeusuario/mux22_4_f5_1125 ;
  wire \controldeusuario/mux22_4_f6_1126 ;
  wire \controldeusuario/mux22_5_1127 ;
  wire \controldeusuario/mux22_5_f5_1128 ;
  wire \controldeusuario/mux22_5_f51 ;
  wire \controldeusuario/mux22_6_1130 ;
  wire \controldeusuario/mux22_61_1131 ;
  wire \controldeusuario/mux22_62_1132 ;
  wire \controldeusuario/mux22_6_f5_1133 ;
  wire \controldeusuario/mux22_7_1134 ;
  wire \controldeusuario/mux22_71_1135 ;
  wire \controldeusuario/mux22_72_1136 ;
  wire \controldeusuario/mux22_8_1137 ;
  wire \controldeusuario/mux23_3_f6_1138 ;
  wire \controldeusuario/mux23_4_f5_1139 ;
  wire \controldeusuario/mux23_4_f6_1140 ;
  wire \controldeusuario/mux23_5_1141 ;
  wire \controldeusuario/mux23_5_f5_1142 ;
  wire \controldeusuario/mux23_5_f51 ;
  wire \controldeusuario/mux23_6_1144 ;
  wire \controldeusuario/mux23_61_1145 ;
  wire \controldeusuario/mux23_62_1146 ;
  wire \controldeusuario/mux23_6_f5_1147 ;
  wire \controldeusuario/mux23_7_1148 ;
  wire \controldeusuario/mux23_71_1149 ;
  wire \controldeusuario/mux23_72_1150 ;
  wire \controldeusuario/mux23_8_1151 ;
  wire \controldeusuario/mux24_3_f6_1152 ;
  wire \controldeusuario/mux24_4_f5_1153 ;
  wire \controldeusuario/mux24_4_f6_1154 ;
  wire \controldeusuario/mux24_5_1155 ;
  wire \controldeusuario/mux24_5_f5_1156 ;
  wire \controldeusuario/mux24_5_f51 ;
  wire \controldeusuario/mux24_6_1158 ;
  wire \controldeusuario/mux24_61_1159 ;
  wire \controldeusuario/mux24_62_1160 ;
  wire \controldeusuario/mux24_6_f5_1161 ;
  wire \controldeusuario/mux24_7_1162 ;
  wire \controldeusuario/mux24_71_1163 ;
  wire \controldeusuario/mux24_72_1164 ;
  wire \controldeusuario/mux24_8_1165 ;
  wire \controldeusuario/mux25_3_f6_1166 ;
  wire \controldeusuario/mux25_4_f5_1167 ;
  wire \controldeusuario/mux25_4_f6_1168 ;
  wire \controldeusuario/mux25_5_1169 ;
  wire \controldeusuario/mux25_5_f5_1170 ;
  wire \controldeusuario/mux25_5_f51 ;
  wire \controldeusuario/mux25_6_1172 ;
  wire \controldeusuario/mux25_61_1173 ;
  wire \controldeusuario/mux25_62_1174 ;
  wire \controldeusuario/mux25_6_f5_1175 ;
  wire \controldeusuario/mux25_7_1176 ;
  wire \controldeusuario/mux25_71_1177 ;
  wire \controldeusuario/mux25_72_1178 ;
  wire \controldeusuario/mux25_8_1179 ;
  wire \controldeusuario/mux26_3_f6_1180 ;
  wire \controldeusuario/mux26_4_f5_1181 ;
  wire \controldeusuario/mux26_4_f6_1182 ;
  wire \controldeusuario/mux26_5_1183 ;
  wire \controldeusuario/mux26_5_f5_1184 ;
  wire \controldeusuario/mux26_5_f51 ;
  wire \controldeusuario/mux26_6_1186 ;
  wire \controldeusuario/mux26_61_1187 ;
  wire \controldeusuario/mux26_62_1188 ;
  wire \controldeusuario/mux26_6_f5_1189 ;
  wire \controldeusuario/mux26_7_1190 ;
  wire \controldeusuario/mux26_71_1191 ;
  wire \controldeusuario/mux26_72_1192 ;
  wire \controldeusuario/mux26_8_1193 ;
  wire \controldeusuario/mux27_3_f6_1194 ;
  wire \controldeusuario/mux27_4_f5_1195 ;
  wire \controldeusuario/mux27_4_f6_1196 ;
  wire \controldeusuario/mux27_5_1197 ;
  wire \controldeusuario/mux27_5_f5_1198 ;
  wire \controldeusuario/mux27_5_f51 ;
  wire \controldeusuario/mux27_6_1200 ;
  wire \controldeusuario/mux27_61_1201 ;
  wire \controldeusuario/mux27_62_1202 ;
  wire \controldeusuario/mux27_6_f5_1203 ;
  wire \controldeusuario/mux27_7_1204 ;
  wire \controldeusuario/mux27_71_1205 ;
  wire \controldeusuario/mux27_72_1206 ;
  wire \controldeusuario/mux27_8_1207 ;
  wire \controldeusuario/mux28_3_f6_1208 ;
  wire \controldeusuario/mux28_4_f5_1209 ;
  wire \controldeusuario/mux28_4_f6_1210 ;
  wire \controldeusuario/mux28_5_1211 ;
  wire \controldeusuario/mux28_5_f5_1212 ;
  wire \controldeusuario/mux28_5_f51 ;
  wire \controldeusuario/mux28_6_1214 ;
  wire \controldeusuario/mux28_61_1215 ;
  wire \controldeusuario/mux28_62_1216 ;
  wire \controldeusuario/mux28_6_f5_1217 ;
  wire \controldeusuario/mux28_7_1218 ;
  wire \controldeusuario/mux28_71_1219 ;
  wire \controldeusuario/mux28_72_1220 ;
  wire \controldeusuario/mux28_8_1221 ;
  wire \controldeusuario/mux29_3_f6_1222 ;
  wire \controldeusuario/mux29_4_f5_1223 ;
  wire \controldeusuario/mux29_4_f6_1224 ;
  wire \controldeusuario/mux29_5_1225 ;
  wire \controldeusuario/mux29_5_f5_1226 ;
  wire \controldeusuario/mux29_5_f51 ;
  wire \controldeusuario/mux29_6_1228 ;
  wire \controldeusuario/mux29_61_1229 ;
  wire \controldeusuario/mux29_62_1230 ;
  wire \controldeusuario/mux29_6_f5_1231 ;
  wire \controldeusuario/mux29_7_1232 ;
  wire \controldeusuario/mux29_71_1233 ;
  wire \controldeusuario/mux29_72_1234 ;
  wire \controldeusuario/mux29_8_1235 ;
  wire \controldeusuario/mux2_3_f6_1236 ;
  wire \controldeusuario/mux2_4_f5_1237 ;
  wire \controldeusuario/mux2_4_f6_1238 ;
  wire \controldeusuario/mux2_5_1239 ;
  wire \controldeusuario/mux2_5_f5_1240 ;
  wire \controldeusuario/mux2_5_f51 ;
  wire \controldeusuario/mux2_6_1242 ;
  wire \controldeusuario/mux2_61_1243 ;
  wire \controldeusuario/mux2_62_1244 ;
  wire \controldeusuario/mux2_6_f5_1245 ;
  wire \controldeusuario/mux2_7_1246 ;
  wire \controldeusuario/mux2_71_1247 ;
  wire \controldeusuario/mux2_72_1248 ;
  wire \controldeusuario/mux2_8_1249 ;
  wire \controldeusuario/mux30_3_f6_1250 ;
  wire \controldeusuario/mux30_4_f5_1251 ;
  wire \controldeusuario/mux30_4_f6_1252 ;
  wire \controldeusuario/mux30_5_1253 ;
  wire \controldeusuario/mux30_5_f5_1254 ;
  wire \controldeusuario/mux30_5_f51 ;
  wire \controldeusuario/mux30_6_1256 ;
  wire \controldeusuario/mux30_61_1257 ;
  wire \controldeusuario/mux30_62_1258 ;
  wire \controldeusuario/mux30_6_f5_1259 ;
  wire \controldeusuario/mux30_7_1260 ;
  wire \controldeusuario/mux30_71_1261 ;
  wire \controldeusuario/mux30_72_1262 ;
  wire \controldeusuario/mux30_8_1263 ;
  wire \controldeusuario/mux31_3_f6_1264 ;
  wire \controldeusuario/mux31_4_f5_1265 ;
  wire \controldeusuario/mux31_4_f6_1266 ;
  wire \controldeusuario/mux31_5_1267 ;
  wire \controldeusuario/mux31_5_f5_1268 ;
  wire \controldeusuario/mux31_5_f51 ;
  wire \controldeusuario/mux31_6_1270 ;
  wire \controldeusuario/mux31_61_1271 ;
  wire \controldeusuario/mux31_62_1272 ;
  wire \controldeusuario/mux31_6_f5_1273 ;
  wire \controldeusuario/mux31_7_1274 ;
  wire \controldeusuario/mux31_71_1275 ;
  wire \controldeusuario/mux31_72_1276 ;
  wire \controldeusuario/mux31_8_1277 ;
  wire \controldeusuario/mux3_3_f6_1278 ;
  wire \controldeusuario/mux3_4_f5_1279 ;
  wire \controldeusuario/mux3_4_f6_1280 ;
  wire \controldeusuario/mux3_5_1281 ;
  wire \controldeusuario/mux3_5_f5_1282 ;
  wire \controldeusuario/mux3_5_f51 ;
  wire \controldeusuario/mux3_6_1284 ;
  wire \controldeusuario/mux3_61_1285 ;
  wire \controldeusuario/mux3_62_1286 ;
  wire \controldeusuario/mux3_6_f5_1287 ;
  wire \controldeusuario/mux3_7_1288 ;
  wire \controldeusuario/mux3_71_1289 ;
  wire \controldeusuario/mux3_72_1290 ;
  wire \controldeusuario/mux3_8_1291 ;
  wire \controldeusuario/mux4_3_f6_1292 ;
  wire \controldeusuario/mux4_4_f5_1293 ;
  wire \controldeusuario/mux4_4_f6_1294 ;
  wire \controldeusuario/mux4_5_1295 ;
  wire \controldeusuario/mux4_5_f5_1296 ;
  wire \controldeusuario/mux4_5_f51 ;
  wire \controldeusuario/mux4_6_1298 ;
  wire \controldeusuario/mux4_61_1299 ;
  wire \controldeusuario/mux4_62_1300 ;
  wire \controldeusuario/mux4_6_f5_1301 ;
  wire \controldeusuario/mux4_7_1302 ;
  wire \controldeusuario/mux4_71_1303 ;
  wire \controldeusuario/mux4_72_1304 ;
  wire \controldeusuario/mux4_8_1305 ;
  wire \controldeusuario/mux5_3_f6_1306 ;
  wire \controldeusuario/mux5_4_f5_1307 ;
  wire \controldeusuario/mux5_4_f6_1308 ;
  wire \controldeusuario/mux5_5_1309 ;
  wire \controldeusuario/mux5_5_f5_1310 ;
  wire \controldeusuario/mux5_5_f51 ;
  wire \controldeusuario/mux5_6_1312 ;
  wire \controldeusuario/mux5_61_1313 ;
  wire \controldeusuario/mux5_62_1314 ;
  wire \controldeusuario/mux5_6_f5_1315 ;
  wire \controldeusuario/mux5_7_1316 ;
  wire \controldeusuario/mux5_71_1317 ;
  wire \controldeusuario/mux5_72_1318 ;
  wire \controldeusuario/mux5_8_1319 ;
  wire \controldeusuario/mux6_3_f6_1320 ;
  wire \controldeusuario/mux6_4_f5_1321 ;
  wire \controldeusuario/mux6_4_f6_1322 ;
  wire \controldeusuario/mux6_5_1323 ;
  wire \controldeusuario/mux6_5_f5_1324 ;
  wire \controldeusuario/mux6_5_f51 ;
  wire \controldeusuario/mux6_6_1326 ;
  wire \controldeusuario/mux6_61_1327 ;
  wire \controldeusuario/mux6_62_1328 ;
  wire \controldeusuario/mux6_6_f5_1329 ;
  wire \controldeusuario/mux6_7_1330 ;
  wire \controldeusuario/mux6_71_1331 ;
  wire \controldeusuario/mux6_72_1332 ;
  wire \controldeusuario/mux6_8_1333 ;
  wire \controldeusuario/mux7_3_f6_1334 ;
  wire \controldeusuario/mux7_4_f5_1335 ;
  wire \controldeusuario/mux7_4_f6_1336 ;
  wire \controldeusuario/mux7_5_1337 ;
  wire \controldeusuario/mux7_5_f5_1338 ;
  wire \controldeusuario/mux7_5_f51 ;
  wire \controldeusuario/mux7_6_1340 ;
  wire \controldeusuario/mux7_61_1341 ;
  wire \controldeusuario/mux7_62_1342 ;
  wire \controldeusuario/mux7_6_f5_1343 ;
  wire \controldeusuario/mux7_7_1344 ;
  wire \controldeusuario/mux7_71_1345 ;
  wire \controldeusuario/mux7_72_1346 ;
  wire \controldeusuario/mux7_8_1347 ;
  wire \controldeusuario/mux8_3_f6_1348 ;
  wire \controldeusuario/mux8_4_f5_1349 ;
  wire \controldeusuario/mux8_4_f6_1350 ;
  wire \controldeusuario/mux8_5_1351 ;
  wire \controldeusuario/mux8_5_f5_1352 ;
  wire \controldeusuario/mux8_5_f51 ;
  wire \controldeusuario/mux8_6_1354 ;
  wire \controldeusuario/mux8_61_1355 ;
  wire \controldeusuario/mux8_62_1356 ;
  wire \controldeusuario/mux8_6_f5_1357 ;
  wire \controldeusuario/mux8_7_1358 ;
  wire \controldeusuario/mux8_71_1359 ;
  wire \controldeusuario/mux8_72_1360 ;
  wire \controldeusuario/mux8_8_1361 ;
  wire \controldeusuario/mux9_3_f6_1362 ;
  wire \controldeusuario/mux9_4_f5_1363 ;
  wire \controldeusuario/mux9_4_f6_1364 ;
  wire \controldeusuario/mux9_5_1365 ;
  wire \controldeusuario/mux9_5_f5_1366 ;
  wire \controldeusuario/mux9_5_f51 ;
  wire \controldeusuario/mux9_6_1368 ;
  wire \controldeusuario/mux9_61_1369 ;
  wire \controldeusuario/mux9_62_1370 ;
  wire \controldeusuario/mux9_6_f5_1371 ;
  wire \controldeusuario/mux9_7_1372 ;
  wire \controldeusuario/mux9_71_1373 ;
  wire \controldeusuario/mux9_72_1374 ;
  wire \controldeusuario/mux9_8_1375 ;
  wire \controldeusuario/mux_3_f6_1376 ;
  wire \controldeusuario/mux_4_f5_1377 ;
  wire \controldeusuario/mux_4_f6_1378 ;
  wire \controldeusuario/mux_5_1379 ;
  wire \controldeusuario/mux_5_f5_1380 ;
  wire \controldeusuario/mux_5_f51 ;
  wire \controldeusuario/mux_6_1382 ;
  wire \controldeusuario/mux_61_1383 ;
  wire \controldeusuario/mux_62_1384 ;
  wire \controldeusuario/mux_6_f5_1385 ;
  wire \controldeusuario/mux_7_1386 ;
  wire \controldeusuario/mux_71_1387 ;
  wire \controldeusuario/mux_72_1388 ;
  wire \controldeusuario/mux_8_1389 ;
  wire \controldeusuario/puntero2_0_1_1391 ;
  wire \controldeusuario/puntero2_0_2_1392 ;
  wire \controldeusuario/puntero2_not0001 ;
  wire \controldeusuario/puntero2_or0000 ;
  wire \controldeusuario/puntero_0_1_1407 ;
  wire \controldeusuario/puntero_0_2_1408 ;
  wire \controldeusuario/puntero_1_1_1410 ;
  wire \controldeusuario/puntero_1_2_1411 ;
  wire \controldeusuario/puntero_and00001_1414 ;
  wire \controldeusuario/puntero_cmp_gt0003 ;
  wire \controldeusuario/puntero_cmp_lt0000 ;
  wire \controldeusuario/puntero_mux0000<0>23_1418 ;
  wire \controldeusuario/puntero_mux0000<0>3_1419 ;
  wire \controldeusuario/puntero_mux0000<0>35 ;
  wire \controldeusuario/puntero_mux0000<0>62_SW0_SW0 ;
  wire \controldeusuario/puntero_mux0000<0>71 ;
  wire \controldeusuario/puntero_mux0000<0>711_1423 ;
  wire \controldeusuario/puntero_mux0000<0>712_1424 ;
  wire \controldeusuario/puntero_mux0000<0>8_1425 ;
  wire \controldeusuario/puntero_mux0000<1>10_1427 ;
  wire \controldeusuario/puntero_mux0000<1>16_1428 ;
  wire \controldeusuario/puntero_mux0000<1>31_1429 ;
  wire \controldeusuario/puntero_mux0000<1>37_1430 ;
  wire \controldeusuario/puntero_mux0000<1>4 ;
  wire \controldeusuario/puntero_mux0000<1>69_1432 ;
  wire \controldeusuario/puntero_mux0000<2>20_1434 ;
  wire \controldeusuario/puntero_mux0000<2>40_1435 ;
  wire \controldeusuario/puntero_mux0000<2>76_1436 ;
  wire \controldeusuario/puntero_mux0000<3>104_1438 ;
  wire \controldeusuario/puntero_mux0000<3>149_1439 ;
  wire \controldeusuario/puntero_mux0000<3>182_1440 ;
  wire \controldeusuario/puntero_mux0000<3>241_1441 ;
  wire \controldeusuario/puntero_mux0000<3>26_1442 ;
  wire \controldeusuario/puntero_mux0000<3>44_1443 ;
  wire \controldeusuario/puntero_mux0000<3>62_1444 ;
  wire \controldeusuario/puntero_mux0000<3>76_1445 ;
  wire \controldeusuario/puntero_mux0000<3>90_1446 ;
  wire \controldeusuario/puntero_not0000 ;
  wire fininwt;
  wire interruptores_0_IBUF_1460;
  wire interruptores_1_IBUF_1461;
  wire interruptores_2_IBUF_1462;
  wire \maquinaprincipal/CrontUs_1463 ;
  wire \maquinaprincipal/CrontUs_mux00001 ;
  wire \maquinaprincipal/NextState[1] ;
  wire \maquinaprincipal/NextState[2] ;
  wire \maquinaprincipal/NextState[4] ;
  wire \maquinaprincipal/NextState[5] ;
  wire \maquinaprincipal/whileT_1474 ;
  wire \maquinaprincipal/whileT_mux00001 ;
  wire \memoria/N4 ;
  wire \memoria/N5 ;
  wire \memoria/N6 ;
  wire \memoria/memoria1_0_0_1511 ;
  wire \memoria/memoria1_0_1_1512 ;
  wire \memoria/memoria1_0_2_1513 ;
  wire \memoria/memoria1_0_3_1514 ;
  wire \memoria/memoria1_0_4_1515 ;
  wire \memoria/memoria1_0_5_1516 ;
  wire \memoria/memoria1_0_6_1517 ;
  wire \memoria/memoria1_0_7_1518 ;
  wire \memoria/memoria1_0_not0001 ;
  wire \memoria/memoria1_0_not00011_1520 ;
  wire \memoria/memoria1_10_0_1521 ;
  wire \memoria/memoria1_10_1_1522 ;
  wire \memoria/memoria1_10_2_1523 ;
  wire \memoria/memoria1_10_3_1524 ;
  wire \memoria/memoria1_10_4_1525 ;
  wire \memoria/memoria1_10_5_1526 ;
  wire \memoria/memoria1_10_6_1527 ;
  wire \memoria/memoria1_10_7_1528 ;
  wire \memoria/memoria1_10_not0001 ;
  wire \memoria/memoria1_11_0_1530 ;
  wire \memoria/memoria1_11_1_1531 ;
  wire \memoria/memoria1_11_2_1532 ;
  wire \memoria/memoria1_11_3_1533 ;
  wire \memoria/memoria1_11_4_1534 ;
  wire \memoria/memoria1_11_5_1535 ;
  wire \memoria/memoria1_11_6_1536 ;
  wire \memoria/memoria1_11_7_1537 ;
  wire \memoria/memoria1_11_not0001 ;
  wire \memoria/memoria1_12_0_1539 ;
  wire \memoria/memoria1_12_1_1540 ;
  wire \memoria/memoria1_12_2_1541 ;
  wire \memoria/memoria1_12_3_1542 ;
  wire \memoria/memoria1_13_0_1543 ;
  wire \memoria/memoria1_13_1_1544 ;
  wire \memoria/memoria1_13_2_1545 ;
  wire \memoria/memoria1_13_3_1546 ;
  wire \memoria/memoria1_13_4_1547 ;
  wire \memoria/memoria1_13_5_1548 ;
  wire \memoria/memoria1_13_6_1549 ;
  wire \memoria/memoria1_13_7_1550 ;
  wire \memoria/memoria1_13_not0001 ;
  wire \memoria/memoria1_14_0_1552 ;
  wire \memoria/memoria1_14_1_1553 ;
  wire \memoria/memoria1_14_2_1554 ;
  wire \memoria/memoria1_14_3_1555 ;
  wire \memoria/memoria1_14_4_1556 ;
  wire \memoria/memoria1_14_5_1557 ;
  wire \memoria/memoria1_14_6_1558 ;
  wire \memoria/memoria1_14_7_1559 ;
  wire \memoria/memoria1_14_not0001 ;
  wire \memoria/memoria1_15_0_1561 ;
  wire \memoria/memoria1_15_1_1562 ;
  wire \memoria/memoria1_15_2_1563 ;
  wire \memoria/memoria1_15_3_1564 ;
  wire \memoria/memoria1_15_4_1565 ;
  wire \memoria/memoria1_15_5_1566 ;
  wire \memoria/memoria1_15_6_1567 ;
  wire \memoria/memoria1_15_7_1568 ;
  wire \memoria/memoria1_15_not0001 ;
  wire \memoria/memoria1_1_0_1570 ;
  wire \memoria/memoria1_1_1_1571 ;
  wire \memoria/memoria1_1_2_1572 ;
  wire \memoria/memoria1_1_3_1573 ;
  wire \memoria/memoria1_1_4_1574 ;
  wire \memoria/memoria1_1_5_1575 ;
  wire \memoria/memoria1_1_6_1576 ;
  wire \memoria/memoria1_1_7_1577 ;
  wire \memoria/memoria1_1_not0001 ;
  wire \memoria/memoria1_2_0_1579 ;
  wire \memoria/memoria1_2_1_1580 ;
  wire \memoria/memoria1_2_2_1581 ;
  wire \memoria/memoria1_2_3_1582 ;
  wire \memoria/memoria1_2_4_1583 ;
  wire \memoria/memoria1_2_5_1584 ;
  wire \memoria/memoria1_2_6_1585 ;
  wire \memoria/memoria1_2_7_1586 ;
  wire \memoria/memoria1_2_not0001 ;
  wire \memoria/memoria1_3_0_1588 ;
  wire \memoria/memoria1_3_1_1589 ;
  wire \memoria/memoria1_3_2_1590 ;
  wire \memoria/memoria1_3_3_1591 ;
  wire \memoria/memoria1_3_4_1592 ;
  wire \memoria/memoria1_3_5_1593 ;
  wire \memoria/memoria1_3_6_1594 ;
  wire \memoria/memoria1_3_7_1595 ;
  wire \memoria/memoria1_3_not0001 ;
  wire \memoria/memoria1_4_0_1597 ;
  wire \memoria/memoria1_4_1_1598 ;
  wire \memoria/memoria1_4_2_1599 ;
  wire \memoria/memoria1_4_3_1600 ;
  wire \memoria/memoria1_4_4_1601 ;
  wire \memoria/memoria1_4_5_1602 ;
  wire \memoria/memoria1_4_6_1603 ;
  wire \memoria/memoria1_4_7_1604 ;
  wire \memoria/memoria1_4_not0001 ;
  wire \memoria/memoria1_4_not00011_1606 ;
  wire \memoria/memoria1_5_0_1607 ;
  wire \memoria/memoria1_5_1_1608 ;
  wire \memoria/memoria1_5_2_1609 ;
  wire \memoria/memoria1_5_3_1610 ;
  wire \memoria/memoria1_5_4_1611 ;
  wire \memoria/memoria1_5_5_1612 ;
  wire \memoria/memoria1_5_6_1613 ;
  wire \memoria/memoria1_5_7_1614 ;
  wire \memoria/memoria1_5_not0001 ;
  wire \memoria/memoria1_6_0_1616 ;
  wire \memoria/memoria1_6_1_1617 ;
  wire \memoria/memoria1_6_2_1618 ;
  wire \memoria/memoria1_6_3_1619 ;
  wire \memoria/memoria1_6_4_1620 ;
  wire \memoria/memoria1_6_5_1621 ;
  wire \memoria/memoria1_6_6_1622 ;
  wire \memoria/memoria1_6_7_1623 ;
  wire \memoria/memoria1_6_not0001 ;
  wire \memoria/memoria1_7_0_1625 ;
  wire \memoria/memoria1_7_1_1626 ;
  wire \memoria/memoria1_7_2_1627 ;
  wire \memoria/memoria1_7_3_1628 ;
  wire \memoria/memoria1_7_4_1629 ;
  wire \memoria/memoria1_7_5_1630 ;
  wire \memoria/memoria1_7_6_1631 ;
  wire \memoria/memoria1_7_7_1632 ;
  wire \memoria/memoria1_7_not0001 ;
  wire \memoria/memoria1_8_0_1634 ;
  wire \memoria/memoria1_8_1_1635 ;
  wire \memoria/memoria1_8_2_1636 ;
  wire \memoria/memoria1_8_3_1637 ;
  wire \memoria/memoria1_8_4_1638 ;
  wire \memoria/memoria1_8_5_1639 ;
  wire \memoria/memoria1_8_6_1640 ;
  wire \memoria/memoria1_8_7_1641 ;
  wire \memoria/memoria1_8_not0001 ;
  wire \memoria/memoria1_8_not00011_1643 ;
  wire \memoria/memoria1_9_0_1644 ;
  wire \memoria/memoria1_9_1_1645 ;
  wire \memoria/memoria1_9_2_1646 ;
  wire \memoria/memoria1_9_3_1647 ;
  wire \memoria/memoria1_9_4_1648 ;
  wire \memoria/memoria1_9_5_1649 ;
  wire \memoria/memoria1_9_6_1650 ;
  wire \memoria/memoria1_9_7_1651 ;
  wire \memoria/memoria1_9_not0001 ;
  wire \memoria/mux10_3_f6_1653 ;
  wire \memoria/mux10_4_f5_1654 ;
  wire \memoria/mux10_4_f6_1655 ;
  wire \memoria/mux10_5_1656 ;
  wire \memoria/mux10_5_f5_1657 ;
  wire \memoria/mux10_5_f51 ;
  wire \memoria/mux10_6_1659 ;
  wire \memoria/mux10_61_1660 ;
  wire \memoria/mux10_62_1661 ;
  wire \memoria/mux10_6_f5_1662 ;
  wire \memoria/mux10_7_1663 ;
  wire \memoria/mux10_71_1664 ;
  wire \memoria/mux10_72_1665 ;
  wire \memoria/mux10_8_1666 ;
  wire \memoria/mux11_3_f6_1667 ;
  wire \memoria/mux11_4_f5_1668 ;
  wire \memoria/mux11_4_f6_1669 ;
  wire \memoria/mux11_5_1670 ;
  wire \memoria/mux11_5_f5_1671 ;
  wire \memoria/mux11_5_f51 ;
  wire \memoria/mux11_6_1673 ;
  wire \memoria/mux11_61_1674 ;
  wire \memoria/mux11_62_1675 ;
  wire \memoria/mux11_6_f5_1676 ;
  wire \memoria/mux11_7_1677 ;
  wire \memoria/mux11_71_1678 ;
  wire \memoria/mux11_72_1679 ;
  wire \memoria/mux11_8_1680 ;
  wire \memoria/mux12_3_f6_1681 ;
  wire \memoria/mux12_4_f5_1682 ;
  wire \memoria/mux12_4_f6_1683 ;
  wire \memoria/mux12_5_1684 ;
  wire \memoria/mux12_5_f5_1685 ;
  wire \memoria/mux12_5_f51 ;
  wire \memoria/mux12_6_1687 ;
  wire \memoria/mux12_61_1688 ;
  wire \memoria/mux12_62_1689 ;
  wire \memoria/mux12_6_f5_1690 ;
  wire \memoria/mux12_7_1691 ;
  wire \memoria/mux12_71_1692 ;
  wire \memoria/mux12_72_1693 ;
  wire \memoria/mux12_8_1694 ;
  wire \memoria/mux13_3_f6_1695 ;
  wire \memoria/mux13_4_f5_1696 ;
  wire \memoria/mux13_4_f6_1697 ;
  wire \memoria/mux13_5_1698 ;
  wire \memoria/mux13_5_f5_1699 ;
  wire \memoria/mux13_5_f51 ;
  wire \memoria/mux13_6_1701 ;
  wire \memoria/mux13_61_1702 ;
  wire \memoria/mux13_62_1703 ;
  wire \memoria/mux13_6_f5_1704 ;
  wire \memoria/mux13_7_1705 ;
  wire \memoria/mux13_71_1706 ;
  wire \memoria/mux13_72_1707 ;
  wire \memoria/mux13_8_1708 ;
  wire \memoria/mux14_3_f6_1709 ;
  wire \memoria/mux14_4_f5_1710 ;
  wire \memoria/mux14_4_f6_1711 ;
  wire \memoria/mux14_5_1712 ;
  wire \memoria/mux14_5_f5_1713 ;
  wire \memoria/mux14_5_f51 ;
  wire \memoria/mux14_6_1715 ;
  wire \memoria/mux14_61_1716 ;
  wire \memoria/mux14_62_1717 ;
  wire \memoria/mux14_6_f5_1718 ;
  wire \memoria/mux14_7_1719 ;
  wire \memoria/mux14_71_1720 ;
  wire \memoria/mux14_72_1721 ;
  wire \memoria/mux14_8_1722 ;
  wire \memoria/mux15_3_f6_1723 ;
  wire \memoria/mux15_4_f5_1724 ;
  wire \memoria/mux15_4_f6_1725 ;
  wire \memoria/mux15_5_1726 ;
  wire \memoria/mux15_5_f5_1727 ;
  wire \memoria/mux15_5_f51 ;
  wire \memoria/mux15_6_1729 ;
  wire \memoria/mux15_61_1730 ;
  wire \memoria/mux15_62_1731 ;
  wire \memoria/mux15_6_f5_1732 ;
  wire \memoria/mux15_7_1733 ;
  wire \memoria/mux15_71_1734 ;
  wire \memoria/mux15_72_1735 ;
  wire \memoria/mux15_8_1736 ;
  wire \memoria/mux1_3_f6_1737 ;
  wire \memoria/mux1_4_f5_1738 ;
  wire \memoria/mux1_4_f6_1739 ;
  wire \memoria/mux1_5_1740 ;
  wire \memoria/mux1_5_f5_1741 ;
  wire \memoria/mux1_5_f51 ;
  wire \memoria/mux1_6_1743 ;
  wire \memoria/mux1_61_1744 ;
  wire \memoria/mux1_62_1745 ;
  wire \memoria/mux1_6_f5_1746 ;
  wire \memoria/mux1_7_1747 ;
  wire \memoria/mux1_71_1748 ;
  wire \memoria/mux1_72_1749 ;
  wire \memoria/mux1_8_1750 ;
  wire \memoria/mux2_3_f6_1751 ;
  wire \memoria/mux2_4_f5_1752 ;
  wire \memoria/mux2_4_f6_1753 ;
  wire \memoria/mux2_5_1754 ;
  wire \memoria/mux2_5_f5_1755 ;
  wire \memoria/mux2_5_f51 ;
  wire \memoria/mux2_6_1757 ;
  wire \memoria/mux2_61_1758 ;
  wire \memoria/mux2_62_1759 ;
  wire \memoria/mux2_6_f5_1760 ;
  wire \memoria/mux2_7_1761 ;
  wire \memoria/mux2_71_1762 ;
  wire \memoria/mux2_72_1763 ;
  wire \memoria/mux2_8_1764 ;
  wire \memoria/mux3_3_f6_1765 ;
  wire \memoria/mux3_4_f5_1766 ;
  wire \memoria/mux3_4_f6_1767 ;
  wire \memoria/mux3_5_1768 ;
  wire \memoria/mux3_5_f5_1769 ;
  wire \memoria/mux3_5_f51 ;
  wire \memoria/mux3_6_1771 ;
  wire \memoria/mux3_61_1772 ;
  wire \memoria/mux3_62_1773 ;
  wire \memoria/mux3_6_f5_1774 ;
  wire \memoria/mux3_7_1775 ;
  wire \memoria/mux3_71_1776 ;
  wire \memoria/mux3_72_1777 ;
  wire \memoria/mux3_8_1778 ;
  wire \memoria/mux4_3_f6_1779 ;
  wire \memoria/mux4_4_f5_1780 ;
  wire \memoria/mux4_4_f6_1781 ;
  wire \memoria/mux4_5_1782 ;
  wire \memoria/mux4_5_f5_1783 ;
  wire \memoria/mux4_5_f51 ;
  wire \memoria/mux4_6_1785 ;
  wire \memoria/mux4_61_1786 ;
  wire \memoria/mux4_62_1787 ;
  wire \memoria/mux4_6_f5_1788 ;
  wire \memoria/mux4_7_1789 ;
  wire \memoria/mux4_71_1790 ;
  wire \memoria/mux4_72_1791 ;
  wire \memoria/mux4_8_1792 ;
  wire \memoria/mux5_3_f6_1793 ;
  wire \memoria/mux5_4_f5_1794 ;
  wire \memoria/mux5_4_f6_1795 ;
  wire \memoria/mux5_5_1796 ;
  wire \memoria/mux5_5_f5_1797 ;
  wire \memoria/mux5_5_f51 ;
  wire \memoria/mux5_6_1799 ;
  wire \memoria/mux5_61_1800 ;
  wire \memoria/mux5_62_1801 ;
  wire \memoria/mux5_6_f5_1802 ;
  wire \memoria/mux5_7_1803 ;
  wire \memoria/mux5_71_1804 ;
  wire \memoria/mux5_72_1805 ;
  wire \memoria/mux5_8_1806 ;
  wire \memoria/mux6_3_f6_1807 ;
  wire \memoria/mux6_4_f5_1808 ;
  wire \memoria/mux6_4_f6_1809 ;
  wire \memoria/mux6_5_1810 ;
  wire \memoria/mux6_5_f5_1811 ;
  wire \memoria/mux6_5_f51 ;
  wire \memoria/mux6_6_1813 ;
  wire \memoria/mux6_61_1814 ;
  wire \memoria/mux6_62_1815 ;
  wire \memoria/mux6_6_f5_1816 ;
  wire \memoria/mux6_7_1817 ;
  wire \memoria/mux6_71_1818 ;
  wire \memoria/mux6_72_1819 ;
  wire \memoria/mux6_8_1820 ;
  wire \memoria/mux7_3_f6_1821 ;
  wire \memoria/mux7_4_f5_1822 ;
  wire \memoria/mux7_4_f6_1823 ;
  wire \memoria/mux7_5_1824 ;
  wire \memoria/mux7_5_f5_1825 ;
  wire \memoria/mux7_5_f51 ;
  wire \memoria/mux7_6_1827 ;
  wire \memoria/mux7_61_1828 ;
  wire \memoria/mux7_62_1829 ;
  wire \memoria/mux7_6_f5_1830 ;
  wire \memoria/mux7_7_1831 ;
  wire \memoria/mux7_71_1832 ;
  wire \memoria/mux7_72_1833 ;
  wire \memoria/mux7_8_1834 ;
  wire \memoria/mux8_3_f6_1835 ;
  wire \memoria/mux8_4_f5_1836 ;
  wire \memoria/mux8_4_f6_1837 ;
  wire \memoria/mux8_5_1838 ;
  wire \memoria/mux8_5_f5_1839 ;
  wire \memoria/mux8_5_f51 ;
  wire \memoria/mux8_6_1841 ;
  wire \memoria/mux8_61_1842 ;
  wire \memoria/mux8_62_1843 ;
  wire \memoria/mux8_6_f5_1844 ;
  wire \memoria/mux8_7_1845 ;
  wire \memoria/mux8_71_1846 ;
  wire \memoria/mux8_72_1847 ;
  wire \memoria/mux8_8_1848 ;
  wire \memoria/mux9_3_f6_1849 ;
  wire \memoria/mux9_4_f5_1850 ;
  wire \memoria/mux9_4_f6_1851 ;
  wire \memoria/mux9_5_1852 ;
  wire \memoria/mux9_5_f5_1853 ;
  wire \memoria/mux9_5_f51 ;
  wire \memoria/mux9_6_1855 ;
  wire \memoria/mux9_61_1856 ;
  wire \memoria/mux9_62_1857 ;
  wire \memoria/mux9_6_f5_1858 ;
  wire \memoria/mux9_7_1859 ;
  wire \memoria/mux9_71_1860 ;
  wire \memoria/mux9_72_1861 ;
  wire \memoria/mux9_8_1862 ;
  wire \memoria/mux_3_f6_1863 ;
  wire \memoria/mux_4_f5_1864 ;
  wire \memoria/mux_4_f6_1865 ;
  wire \memoria/mux_5_1866 ;
  wire \memoria/mux_5_f5_1867 ;
  wire \memoria/mux_5_f51 ;
  wire \memoria/mux_6_1869 ;
  wire \memoria/mux_61_1870 ;
  wire \memoria/mux_62_1871 ;
  wire \memoria/mux_6_f5_1872 ;
  wire \memoria/mux_7_1873 ;
  wire \memoria/mux_71_1874 ;
  wire \memoria/mux_72_1875 ;
  wire \memoria/mux_8_1876 ;
  wire \read/activa_1877 ;
  wire \read/dir_out[0] ;
  wire \read/dir_out[1] ;
  wire \read/dir_out[2] ;
  wire \read/dir_out[5] ;
  wire \read/dir_out[6] ;
  wire \read/dir_out[7] ;
  wire \read/dir_out_mux0000[1] ;
  wire \read/dir_out_mux0000[2] ;
  wire \read/dir_out_mux0000[3] ;
  wire \read/dir_out_mux0000[5] ;
  wire \read/dir_out_mux0000[6] ;
  wire \read/dir_out_mux0000[7] ;
  wire \read/final_1890 ;
  wire \read/state_FSM_FFd1_1899 ;
  wire \read/state_FSM_FFd1-In ;
  wire \read/state_FSM_FFd2_1901 ;
  wire \read/state_FSM_FFd2-In ;
  wire \read/state_or0000 ;
  wire \read/w_1904 ;
  wire \read/w_mux0000 ;
  wire reset_IBUF_1907;
  wire selectores_0_IBUF_1912;
  wire selectores_1_IBUF_1913;
  wire selectores_2_IBUF_1914;
  wire selectores_3_IBUF_1915;
  wire \write/activa_1916 ;
  wire \write/dir_out[0] ;
  wire \write/dir_out[1] ;
  wire \write/dir_out[2] ;
  wire \write/dir_out[4] ;
  wire \write/dir_out[5] ;
  wire \write/dir_out[6] ;
  wire \write/dir_out[7] ;
  wire \write/dir_out_mux0000[0] ;
  wire \write/dir_out_mux0000[1] ;
  wire \write/dir_out_mux0000<1>1_1942 ;
  wire \write/dir_out_mux0000<1>2_1943 ;
  wire \write/dir_out_mux0000[2] ;
  wire \write/dir_out_mux0000<2>1_1945 ;
  wire \write/dir_out_mux0000<2>2_1946 ;
  wire \write/dir_out_mux0000[3] ;
  wire \write/dir_out_mux0000<3>1_1948 ;
  wire \write/dir_out_mux0000<3>2_1949 ;
  wire \write/dir_out_mux0000[5] ;
  wire \write/dir_out_mux0000[6] ;
  wire \write/dir_out_mux0000[7] ;
  wire \write/final_1953 ;
  wire \write/state_FSM_FFd1_1954 ;
  wire \write/state_FSM_FFd1-In ;
  wire \write/state_FSM_FFd2_1956 ;
  wire \write/state_FSM_FFd2-In ;
  wire \write/state_FSM_FFd2-In1 ;
  wire \write/state_FSM_FFd2-In11_1959 ;
  wire \write/state_cmp_eq0003 ;
  wire \write/state_or0000 ;
  wire writedata_0_IBUF_1970;
  wire writedata_1_IBUF_1971;
  wire writedata_2_IBUF_1972;
  wire writedata_3_IBUF_1973;
  wire writedata_4_IBUF_1974;
  wire writedata_5_IBUF_1975;
  wire writedata_6_IBUF_1976;
  wire writedata_7_IBUF_1977;
  wire [7 : 0] \Cront_out/Mtridata_data_out ;
  wire [7 : 0] \Cront_out/Mtridata_data_out_mux0000 ;
  wire [4 : 0] \Cront_out/Result ;
  wire [4 : 0] \Cront_out/contador ;
  wire [3 : 0] \WT/dir_reg ;
  wire [3 : 0] \controldeusuario/ADD ;
  wire [7 : 0] \controldeusuario/COND_2_addsub0000 ;
  wire [7 : 0] \controldeusuario/COND_4_addsub0000 ;
  wire [7 : 0] \controldeusuario/Dato_out ;
  wire [7 : 0] \controldeusuario/Dato_out_addsub0000 ;
  wire [7 : 0] \controldeusuario/Dato_out_sub0000 ;
  wire [7 : 1] \controldeusuario/Madd_COND_2_addsub0000_lut ;
  wire [7 : 1] \controldeusuario/Madd_COND_4_addsub0000_lut ;
  wire [6 : 0] \controldeusuario/Madd_Dato_out_addsub0000_cy ;
  wire [7 : 0] \controldeusuario/Madd_Dato_out_addsub0000_lut ;
  wire [1 : 1] \controldeusuario/Maddsub_puntero_share0000_cy ;
  wire [1 : 1] \controldeusuario/Maddsub_puntero_share0000_lut ;
  wire [6 : 0] \controldeusuario/Msub_Dato_out_sub0000_cy ;
  wire [7 : 0] \controldeusuario/Msub_Dato_out_sub0000_lut ;
  wire [3 : 0] \controldeusuario/Result ;
  wire [7 : 0] \controldeusuario/_COND_7 ;
  wire [7 : 0] \controldeusuario/cambiosneg_0_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiosneg_10_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiosneg_11_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiosneg_13_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiosneg_14_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiosneg_15_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiosneg_1_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiosneg_2_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiosneg_3_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiosneg_4_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiosneg_5_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiosneg_6_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiosneg_7_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiosneg_8_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiosneg_9_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiospos_0_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiospos_10_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiospos_11_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiospos_13_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiospos_14_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiospos_15_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiospos_1_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiospos_2_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiospos_3_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiospos_4_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiospos_5_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiospos_6_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiospos_7_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiospos_8_mux0000 ;
  wire [7 : 0] \controldeusuario/cambiospos_9_mux0000 ;
  wire [3 : 0] \controldeusuario/puntero2 ;
  wire [3 : 0] \controldeusuario/punteroOut ;
  wire [3 : 0] \controldeusuario/punteroOut_mux0000 ;
  wire [3 : 0] \controldeusuario/puntero ;
  wire [3 : 0] \controldeusuario/puntero_mux0000 ;
  wire [5 : 1] \maquinaprincipal/State ;
  wire [7 : 0] \memoria/Dato2 ;
  wire [7 : 0] \memoria/Dato3 ;
  wire [7 : 0] \memoria/_COND_8 ;
  wire [7 : 0] \memoria/_COND_9 ;
  wire [3 : 0] \read/reg_out ;
  wire [3 : 0] \read/reg_out_mux0000 ;
  wire [7 : 0] \write/data_out ;
  wire [7 : 0] \write/data_out_mux0000 ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDR   \Cront_out/contador_4  (
    .C(clk_BUFGP_236),
    .D(\Cront_out/Result [4]),
    .R(\Cront_out/contador_or0000 ),
    .Q(\Cront_out/contador [4])
  );
  FDR   \Cront_out/contador_3  (
    .C(clk_BUFGP_236),
    .D(\Cront_out/Result [3]),
    .R(\Cront_out/contador_or0000 ),
    .Q(\Cront_out/contador [3])
  );
  FDR   \Cront_out/contador_2  (
    .C(clk_BUFGP_236),
    .D(\Cront_out/Result [2]),
    .R(\Cront_out/contador_or0000 ),
    .Q(\Cront_out/contador [2])
  );
  FDR   \Cront_out/contador_1  (
    .C(clk_BUFGP_236),
    .D(\Cront_out/Result [1]),
    .R(\Cront_out/contador_or0000 ),
    .Q(\Cront_out/contador [1])
  );
  FDR   \Cront_out/contador_0  (
    .C(clk_BUFGP_236),
    .D(\Cront_out/Result [0]),
    .R(\Cront_out/contador_or0000 ),
    .Q(\Cront_out/contador [0])
  );
  FDE   \Cront_out/Mtrien_data_out  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtrien_data_out_mux0000 ),
    .Q(\Cront_out/Mtrien_data_out_38 )
  );
  FDE   \Cront_out/escreg  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/reset_inv ),
    .D(\Cront_out/escreg_mux0000_60 ),
    .Q(\Cront_out/escreg_59 )
  );
  FDE   \Cront_out/Mtridata_data_out_7  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [0]),
    .Q(\Cront_out/Mtridata_data_out [7])
  );
  FDE   \Cront_out/Mtridata_data_out_6  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [1]),
    .Q(\Cront_out/Mtridata_data_out [6])
  );
  FDE   \Cront_out/Mtridata_data_out_5  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [2]),
    .Q(\Cront_out/Mtridata_data_out [5])
  );
  FDE   \Cront_out/Mtridata_data_out_4  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [3]),
    .Q(\Cront_out/Mtridata_data_out [4])
  );
  FDE   \Cront_out/Mtridata_data_out_3  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [4]),
    .Q(\Cront_out/Mtridata_data_out [3])
  );
  FDE   \Cront_out/Mtridata_data_out_2  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [5]),
    .Q(\Cront_out/Mtridata_data_out [2])
  );
  FDE   \Cront_out/Mtridata_data_out_1  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [6]),
    .Q(\Cront_out/Mtridata_data_out [1])
  );
  FDE   \Cront_out/Mtridata_data_out_0  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [7]),
    .Q(\Cront_out/Mtridata_data_out [0])
  );
  FDR   \Cront_out/final  (
    .C(clk_BUFGP_236),
    .D(\Cront_out/final_mux0000 ),
    .R(\Cront_out/CS_or0000 ),
    .Q(\Cront_out/final_63 )
  );
  FDS   \Cront_out/WR  (
    .C(clk_BUFGP_236),
    .D(\Cront_out/WR_mux0000_52 ),
    .S(\Cront_out/CS_or0000 ),
    .Q(\Cront_out/WR_51 )
  );
  FDS   \Cront_out/AD  (
    .C(clk_BUFGP_236),
    .D(\Cront_out/AD_mux0000 ),
    .S(\Cront_out/CS_or0000 ),
    .Q(\Cront_out/AD_10 )
  );
  FDS   \Cront_out/CS  (
    .C(clk_BUFGP_236),
    .D(\Cront_out/CS_mux0000 ),
    .S(\Cront_out/CS_or0000 ),
    .Q(\Cront_out/CS_16 )
  );
  FDS   \Cront_out/RD  (
    .C(clk_BUFGP_236),
    .D(\Cront_out/RD_mux0000 ),
    .S(\Cront_out/CS_or0000 ),
    .Q(\Cront_out/RD_40 )
  );
  FDE   \maquinaprincipal/State_5  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/reset_inv ),
    .D(\maquinaprincipal/NextState[5] ),
    .Q(\maquinaprincipal/State [5])
  );
  FDE   \maquinaprincipal/State_4  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/reset_inv ),
    .D(\maquinaprincipal/NextState[4] ),
    .Q(\maquinaprincipal/State [4])
  );
  FDE   \maquinaprincipal/State_3  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/reset_inv ),
    .D(\maquinaprincipal/State [2]),
    .Q(\maquinaprincipal/State [3])
  );
  FDE   \maquinaprincipal/State_2  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/reset_inv ),
    .D(\maquinaprincipal/NextState[2] ),
    .Q(\maquinaprincipal/State [2])
  );
  FDE   \maquinaprincipal/State_1  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/reset_inv ),
    .D(\maquinaprincipal/NextState[1] ),
    .Q(\maquinaprincipal/State [1])
  );
  XORCY   \controldeusuario/Msub_Dato_out_sub0000_xor<7>  (
    .CI(\controldeusuario/Msub_Dato_out_sub0000_cy [6]),
    .LI(\controldeusuario/Msub_Dato_out_sub0000_lut [7]),
    .O(\controldeusuario/Dato_out_sub0000 [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \controldeusuario/Msub_Dato_out_sub0000_lut<7>  (
    .I0(\controldeusuario/_COND_7 [7]),
    .I1(\controldeusuario/Dato_out_addsub0000 [7]),
    .O(\controldeusuario/Msub_Dato_out_sub0000_lut [7])
  );
  XORCY   \controldeusuario/Msub_Dato_out_sub0000_xor<6>  (
    .CI(\controldeusuario/Msub_Dato_out_sub0000_cy [5]),
    .LI(\controldeusuario/Msub_Dato_out_sub0000_lut [6]),
    .O(\controldeusuario/Dato_out_sub0000 [6])
  );
  MUXCY   \controldeusuario/Msub_Dato_out_sub0000_cy<6>  (
    .CI(\controldeusuario/Msub_Dato_out_sub0000_cy [5]),
    .DI(\controldeusuario/Dato_out_addsub0000 [6]),
    .S(\controldeusuario/Msub_Dato_out_sub0000_lut [6]),
    .O(\controldeusuario/Msub_Dato_out_sub0000_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \controldeusuario/Msub_Dato_out_sub0000_lut<6>  (
    .I0(\controldeusuario/_COND_7 [6]),
    .I1(\controldeusuario/Dato_out_addsub0000 [6]),
    .O(\controldeusuario/Msub_Dato_out_sub0000_lut [6])
  );
  XORCY   \controldeusuario/Msub_Dato_out_sub0000_xor<5>  (
    .CI(\controldeusuario/Msub_Dato_out_sub0000_cy [4]),
    .LI(\controldeusuario/Msub_Dato_out_sub0000_lut [5]),
    .O(\controldeusuario/Dato_out_sub0000 [5])
  );
  MUXCY   \controldeusuario/Msub_Dato_out_sub0000_cy<5>  (
    .CI(\controldeusuario/Msub_Dato_out_sub0000_cy [4]),
    .DI(\controldeusuario/Dato_out_addsub0000 [5]),
    .S(\controldeusuario/Msub_Dato_out_sub0000_lut [5]),
    .O(\controldeusuario/Msub_Dato_out_sub0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \controldeusuario/Msub_Dato_out_sub0000_lut<5>  (
    .I0(\controldeusuario/_COND_7 [5]),
    .I1(\controldeusuario/Dato_out_addsub0000 [5]),
    .O(\controldeusuario/Msub_Dato_out_sub0000_lut [5])
  );
  XORCY   \controldeusuario/Msub_Dato_out_sub0000_xor<4>  (
    .CI(\controldeusuario/Msub_Dato_out_sub0000_cy [3]),
    .LI(\controldeusuario/Msub_Dato_out_sub0000_lut [4]),
    .O(\controldeusuario/Dato_out_sub0000 [4])
  );
  MUXCY   \controldeusuario/Msub_Dato_out_sub0000_cy<4>  (
    .CI(\controldeusuario/Msub_Dato_out_sub0000_cy [3]),
    .DI(\controldeusuario/Dato_out_addsub0000 [4]),
    .S(\controldeusuario/Msub_Dato_out_sub0000_lut [4]),
    .O(\controldeusuario/Msub_Dato_out_sub0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \controldeusuario/Msub_Dato_out_sub0000_lut<4>  (
    .I0(\controldeusuario/_COND_7 [4]),
    .I1(\controldeusuario/Dato_out_addsub0000 [4]),
    .O(\controldeusuario/Msub_Dato_out_sub0000_lut [4])
  );
  XORCY   \controldeusuario/Msub_Dato_out_sub0000_xor<3>  (
    .CI(\controldeusuario/Msub_Dato_out_sub0000_cy [2]),
    .LI(\controldeusuario/Msub_Dato_out_sub0000_lut [3]),
    .O(\controldeusuario/Dato_out_sub0000 [3])
  );
  MUXCY   \controldeusuario/Msub_Dato_out_sub0000_cy<3>  (
    .CI(\controldeusuario/Msub_Dato_out_sub0000_cy [2]),
    .DI(\controldeusuario/Dato_out_addsub0000 [3]),
    .S(\controldeusuario/Msub_Dato_out_sub0000_lut [3]),
    .O(\controldeusuario/Msub_Dato_out_sub0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \controldeusuario/Msub_Dato_out_sub0000_lut<3>  (
    .I0(\controldeusuario/_COND_7 [3]),
    .I1(\controldeusuario/Dato_out_addsub0000 [3]),
    .O(\controldeusuario/Msub_Dato_out_sub0000_lut [3])
  );
  XORCY   \controldeusuario/Msub_Dato_out_sub0000_xor<2>  (
    .CI(\controldeusuario/Msub_Dato_out_sub0000_cy [1]),
    .LI(\controldeusuario/Msub_Dato_out_sub0000_lut [2]),
    .O(\controldeusuario/Dato_out_sub0000 [2])
  );
  MUXCY   \controldeusuario/Msub_Dato_out_sub0000_cy<2>  (
    .CI(\controldeusuario/Msub_Dato_out_sub0000_cy [1]),
    .DI(\controldeusuario/Dato_out_addsub0000 [2]),
    .S(\controldeusuario/Msub_Dato_out_sub0000_lut [2]),
    .O(\controldeusuario/Msub_Dato_out_sub0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \controldeusuario/Msub_Dato_out_sub0000_lut<2>  (
    .I0(\controldeusuario/_COND_7 [2]),
    .I1(\controldeusuario/Dato_out_addsub0000 [2]),
    .O(\controldeusuario/Msub_Dato_out_sub0000_lut [2])
  );
  XORCY   \controldeusuario/Msub_Dato_out_sub0000_xor<1>  (
    .CI(\controldeusuario/Msub_Dato_out_sub0000_cy [0]),
    .LI(\controldeusuario/Msub_Dato_out_sub0000_lut [1]),
    .O(\controldeusuario/Dato_out_sub0000 [1])
  );
  MUXCY   \controldeusuario/Msub_Dato_out_sub0000_cy<1>  (
    .CI(\controldeusuario/Msub_Dato_out_sub0000_cy [0]),
    .DI(\controldeusuario/Dato_out_addsub0000 [1]),
    .S(\controldeusuario/Msub_Dato_out_sub0000_lut [1]),
    .O(\controldeusuario/Msub_Dato_out_sub0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \controldeusuario/Msub_Dato_out_sub0000_lut<1>  (
    .I0(\controldeusuario/_COND_7 [1]),
    .I1(\controldeusuario/Dato_out_addsub0000 [1]),
    .O(\controldeusuario/Msub_Dato_out_sub0000_lut [1])
  );
  XORCY   \controldeusuario/Msub_Dato_out_sub0000_xor<0>  (
    .CI(N1),
    .LI(\controldeusuario/Msub_Dato_out_sub0000_lut [0]),
    .O(\controldeusuario/Dato_out_sub0000 [0])
  );
  MUXCY   \controldeusuario/Msub_Dato_out_sub0000_cy<0>  (
    .CI(N1),
    .DI(\controldeusuario/Dato_out_addsub0000 [0]),
    .S(\controldeusuario/Msub_Dato_out_sub0000_lut [0]),
    .O(\controldeusuario/Msub_Dato_out_sub0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \controldeusuario/Msub_Dato_out_sub0000_lut<0>  (
    .I0(\controldeusuario/_COND_7 [0]),
    .I1(\controldeusuario/Dato_out_addsub0000 [0]),
    .O(\controldeusuario/Msub_Dato_out_sub0000_lut [0])
  );
  XORCY   \controldeusuario/Madd_Dato_out_addsub0000_xor<7>  (
    .CI(\controldeusuario/Madd_Dato_out_addsub0000_cy [6]),
    .LI(\controldeusuario/Madd_Dato_out_addsub0000_lut [7]),
    .O(\controldeusuario/Dato_out_addsub0000 [7])
  );
  XORCY   \controldeusuario/Madd_Dato_out_addsub0000_xor<6>  (
    .CI(\controldeusuario/Madd_Dato_out_addsub0000_cy [5]),
    .LI(\controldeusuario/Madd_Dato_out_addsub0000_lut [6]),
    .O(\controldeusuario/Dato_out_addsub0000 [6])
  );
  MUXCY   \controldeusuario/Madd_Dato_out_addsub0000_cy<6>  (
    .CI(\controldeusuario/Madd_Dato_out_addsub0000_cy [5]),
    .DI(\memoria/Dato3 [6]),
    .S(\controldeusuario/Madd_Dato_out_addsub0000_lut [6]),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_cy [6])
  );
  XORCY   \controldeusuario/Madd_Dato_out_addsub0000_xor<5>  (
    .CI(\controldeusuario/Madd_Dato_out_addsub0000_cy [4]),
    .LI(\controldeusuario/Madd_Dato_out_addsub0000_lut [5]),
    .O(\controldeusuario/Dato_out_addsub0000 [5])
  );
  MUXCY   \controldeusuario/Madd_Dato_out_addsub0000_cy<5>  (
    .CI(\controldeusuario/Madd_Dato_out_addsub0000_cy [4]),
    .DI(\memoria/Dato3 [5]),
    .S(\controldeusuario/Madd_Dato_out_addsub0000_lut [5]),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_cy [5])
  );
  XORCY   \controldeusuario/Madd_Dato_out_addsub0000_xor<4>  (
    .CI(\controldeusuario/Madd_Dato_out_addsub0000_cy [3]),
    .LI(\controldeusuario/Madd_Dato_out_addsub0000_lut [4]),
    .O(\controldeusuario/Dato_out_addsub0000 [4])
  );
  MUXCY   \controldeusuario/Madd_Dato_out_addsub0000_cy<4>  (
    .CI(\controldeusuario/Madd_Dato_out_addsub0000_cy [3]),
    .DI(\memoria/Dato3 [4]),
    .S(\controldeusuario/Madd_Dato_out_addsub0000_lut [4]),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_cy [4])
  );
  XORCY   \controldeusuario/Madd_Dato_out_addsub0000_xor<3>  (
    .CI(\controldeusuario/Madd_Dato_out_addsub0000_cy [2]),
    .LI(\controldeusuario/Madd_Dato_out_addsub0000_lut [3]),
    .O(\controldeusuario/Dato_out_addsub0000 [3])
  );
  MUXCY   \controldeusuario/Madd_Dato_out_addsub0000_cy<3>  (
    .CI(\controldeusuario/Madd_Dato_out_addsub0000_cy [2]),
    .DI(\memoria/Dato3 [3]),
    .S(\controldeusuario/Madd_Dato_out_addsub0000_lut [3]),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_cy [3])
  );
  XORCY   \controldeusuario/Madd_Dato_out_addsub0000_xor<2>  (
    .CI(\controldeusuario/Madd_Dato_out_addsub0000_cy [1]),
    .LI(\controldeusuario/Madd_Dato_out_addsub0000_lut [2]),
    .O(\controldeusuario/Dato_out_addsub0000 [2])
  );
  MUXCY   \controldeusuario/Madd_Dato_out_addsub0000_cy<2>  (
    .CI(\controldeusuario/Madd_Dato_out_addsub0000_cy [1]),
    .DI(\memoria/Dato3 [2]),
    .S(\controldeusuario/Madd_Dato_out_addsub0000_lut [2]),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_cy [2])
  );
  XORCY   \controldeusuario/Madd_Dato_out_addsub0000_xor<1>  (
    .CI(\controldeusuario/Madd_Dato_out_addsub0000_cy [0]),
    .LI(\controldeusuario/Madd_Dato_out_addsub0000_lut [1]),
    .O(\controldeusuario/Dato_out_addsub0000 [1])
  );
  MUXCY   \controldeusuario/Madd_Dato_out_addsub0000_cy<1>  (
    .CI(\controldeusuario/Madd_Dato_out_addsub0000_cy [0]),
    .DI(\memoria/Dato3 [1]),
    .S(\controldeusuario/Madd_Dato_out_addsub0000_lut [1]),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_cy [1])
  );
  XORCY   \controldeusuario/Madd_Dato_out_addsub0000_xor<0>  (
    .CI(N0),
    .LI(\controldeusuario/Madd_Dato_out_addsub0000_lut [0]),
    .O(\controldeusuario/Dato_out_addsub0000 [0])
  );
  MUXCY   \controldeusuario/Madd_Dato_out_addsub0000_cy<0>  (
    .CI(N0),
    .DI(\memoria/Dato3 [0]),
    .S(\controldeusuario/Madd_Dato_out_addsub0000_lut [0]),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux31_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_14_7_486 ),
    .I2(\controldeusuario/cambiosneg_15_7_503 ),
    .O(\controldeusuario/mux31_5_1267 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux31_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_7_460 ),
    .I2(\controldeusuario/cambiosneg_13_7_469 ),
    .O(\controldeusuario/mux31_6_1270 )
  );
  MUXF5   \controldeusuario/mux31_4_f5  (
    .I0(\controldeusuario/mux31_6_1270 ),
    .I1(\controldeusuario/mux31_5_1267 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux31_4_f5_1265 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux31_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_7_426 ),
    .I2(\controldeusuario/cambiosneg_11_7_443 ),
    .O(\controldeusuario/mux31_61_1271 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux31_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_7_641 ),
    .I2(\controldeusuario/cambiosneg_9_7_658 ),
    .O(\controldeusuario/mux31_7_1274 )
  );
  MUXF5   \controldeusuario/mux31_5_f5  (
    .I0(\controldeusuario/mux31_7_1274 ),
    .I1(\controldeusuario/mux31_61_1271 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux31_5_f5_1268 )
  );
  MUXF6   \controldeusuario/mux31_3_f6  (
    .I0(\controldeusuario/mux31_5_f5_1268 ),
    .I1(\controldeusuario/mux31_4_f5_1265 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux31_3_f6_1264 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux31_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_7_605 ),
    .I2(\controldeusuario/cambiosneg_7_7_624 ),
    .O(\controldeusuario/mux31_62_1272 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux31_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_7_571 ),
    .I2(\controldeusuario/cambiosneg_5_7_588 ),
    .O(\controldeusuario/mux31_71_1275 )
  );
  MUXF5   \controldeusuario/mux31_5_f5_0  (
    .I0(\controldeusuario/mux31_71_1275 ),
    .I1(\controldeusuario/mux31_62_1272 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux31_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux31_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_7_537 ),
    .I2(\controldeusuario/cambiosneg_3_7_554 ),
    .O(\controldeusuario/mux31_72_1276 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux31_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_7_409 ),
    .I2(\controldeusuario/cambiosneg_1_7_520 ),
    .O(\controldeusuario/mux31_8_1277 )
  );
  MUXF5   \controldeusuario/mux31_6_f5  (
    .I0(\controldeusuario/mux31_8_1277 ),
    .I1(\controldeusuario/mux31_72_1276 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux31_6_f5_1273 )
  );
  MUXF6   \controldeusuario/mux31_4_f6  (
    .I0(\controldeusuario/mux31_6_f5_1273 ),
    .I1(\controldeusuario/mux31_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux31_4_f6_1266 )
  );
  MUXF7   \controldeusuario/mux31_2_f7  (
    .I0(\controldeusuario/mux31_4_f6_1266 ),
    .I1(\controldeusuario/mux31_3_f6_1264 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_14_5_484 ),
    .I2(\controldeusuario/cambiosneg_15_5_501 ),
    .O(\controldeusuario/mux29_5_1225 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_5_458 ),
    .I2(\controldeusuario/cambiosneg_13_5_467 ),
    .O(\controldeusuario/mux29_6_1228 )
  );
  MUXF5   \controldeusuario/mux29_4_f5  (
    .I0(\controldeusuario/mux29_6_1228 ),
    .I1(\controldeusuario/mux29_5_1225 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux29_4_f5_1223 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_5_424 ),
    .I2(\controldeusuario/cambiosneg_11_5_441 ),
    .O(\controldeusuario/mux29_61_1229 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_5_639 ),
    .I2(\controldeusuario/cambiosneg_9_5_656 ),
    .O(\controldeusuario/mux29_7_1232 )
  );
  MUXF5   \controldeusuario/mux29_5_f5  (
    .I0(\controldeusuario/mux29_7_1232 ),
    .I1(\controldeusuario/mux29_61_1229 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux29_5_f5_1226 )
  );
  MUXF6   \controldeusuario/mux29_3_f6  (
    .I0(\controldeusuario/mux29_5_f5_1226 ),
    .I1(\controldeusuario/mux29_4_f5_1223 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux29_3_f6_1222 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_5_603 ),
    .I2(\controldeusuario/cambiosneg_7_5_622 ),
    .O(\controldeusuario/mux29_62_1230 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_5_569 ),
    .I2(\controldeusuario/cambiosneg_5_5_586 ),
    .O(\controldeusuario/mux29_71_1233 )
  );
  MUXF5   \controldeusuario/mux29_5_f5_0  (
    .I0(\controldeusuario/mux29_71_1233 ),
    .I1(\controldeusuario/mux29_62_1230 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux29_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_5_535 ),
    .I2(\controldeusuario/cambiosneg_3_5_552 ),
    .O(\controldeusuario/mux29_72_1234 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_5_407 ),
    .I2(\controldeusuario/cambiosneg_1_5_518 ),
    .O(\controldeusuario/mux29_8_1235 )
  );
  MUXF5   \controldeusuario/mux29_6_f5  (
    .I0(\controldeusuario/mux29_8_1235 ),
    .I1(\controldeusuario/mux29_72_1234 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux29_6_f5_1231 )
  );
  MUXF6   \controldeusuario/mux29_4_f6  (
    .I0(\controldeusuario/mux29_6_f5_1231 ),
    .I1(\controldeusuario/mux29_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux29_4_f6_1224 )
  );
  MUXF7   \controldeusuario/mux29_2_f7  (
    .I0(\controldeusuario/mux29_4_f6_1224 ),
    .I1(\controldeusuario/mux29_3_f6_1222 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_14_4_483 ),
    .I2(\controldeusuario/cambiosneg_15_4_500 ),
    .O(\controldeusuario/mux28_5_1211 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_4_457 ),
    .I2(\controldeusuario/cambiosneg_13_4_466 ),
    .O(\controldeusuario/mux28_6_1214 )
  );
  MUXF5   \controldeusuario/mux28_4_f5  (
    .I0(\controldeusuario/mux28_6_1214 ),
    .I1(\controldeusuario/mux28_5_1211 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux28_4_f5_1209 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_4_423 ),
    .I2(\controldeusuario/cambiosneg_11_4_440 ),
    .O(\controldeusuario/mux28_61_1215 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_4_638 ),
    .I2(\controldeusuario/cambiosneg_9_4_655 ),
    .O(\controldeusuario/mux28_7_1218 )
  );
  MUXF5   \controldeusuario/mux28_5_f5  (
    .I0(\controldeusuario/mux28_7_1218 ),
    .I1(\controldeusuario/mux28_61_1215 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux28_5_f5_1212 )
  );
  MUXF6   \controldeusuario/mux28_3_f6  (
    .I0(\controldeusuario/mux28_5_f5_1212 ),
    .I1(\controldeusuario/mux28_4_f5_1209 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux28_3_f6_1208 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_4_602 ),
    .I2(\controldeusuario/cambiosneg_7_4_621 ),
    .O(\controldeusuario/mux28_62_1216 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_4_568 ),
    .I2(\controldeusuario/cambiosneg_5_4_585 ),
    .O(\controldeusuario/mux28_71_1219 )
  );
  MUXF5   \controldeusuario/mux28_5_f5_0  (
    .I0(\controldeusuario/mux28_71_1219 ),
    .I1(\controldeusuario/mux28_62_1216 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux28_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_4_534 ),
    .I2(\controldeusuario/cambiosneg_3_4_551 ),
    .O(\controldeusuario/mux28_72_1220 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_4_406 ),
    .I2(\controldeusuario/cambiosneg_1_4_517 ),
    .O(\controldeusuario/mux28_8_1221 )
  );
  MUXF5   \controldeusuario/mux28_6_f5  (
    .I0(\controldeusuario/mux28_8_1221 ),
    .I1(\controldeusuario/mux28_72_1220 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux28_6_f5_1217 )
  );
  MUXF6   \controldeusuario/mux28_4_f6  (
    .I0(\controldeusuario/mux28_6_f5_1217 ),
    .I1(\controldeusuario/mux28_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux28_4_f6_1210 )
  );
  MUXF7   \controldeusuario/mux28_2_f7  (
    .I0(\controldeusuario/mux28_4_f6_1210 ),
    .I1(\controldeusuario/mux28_3_f6_1208 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_14_6_485 ),
    .I2(\controldeusuario/cambiosneg_15_6_502 ),
    .O(\controldeusuario/mux30_5_1253 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_6_459 ),
    .I2(\controldeusuario/cambiosneg_13_6_468 ),
    .O(\controldeusuario/mux30_6_1256 )
  );
  MUXF5   \controldeusuario/mux30_4_f5  (
    .I0(\controldeusuario/mux30_6_1256 ),
    .I1(\controldeusuario/mux30_5_1253 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux30_4_f5_1251 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_6_425 ),
    .I2(\controldeusuario/cambiosneg_11_6_442 ),
    .O(\controldeusuario/mux30_61_1257 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_6_640 ),
    .I2(\controldeusuario/cambiosneg_9_6_657 ),
    .O(\controldeusuario/mux30_7_1260 )
  );
  MUXF5   \controldeusuario/mux30_5_f5  (
    .I0(\controldeusuario/mux30_7_1260 ),
    .I1(\controldeusuario/mux30_61_1257 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux30_5_f5_1254 )
  );
  MUXF6   \controldeusuario/mux30_3_f6  (
    .I0(\controldeusuario/mux30_5_f5_1254 ),
    .I1(\controldeusuario/mux30_4_f5_1251 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux30_3_f6_1250 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_6_604 ),
    .I2(\controldeusuario/cambiosneg_7_6_623 ),
    .O(\controldeusuario/mux30_62_1258 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_6_570 ),
    .I2(\controldeusuario/cambiosneg_5_6_587 ),
    .O(\controldeusuario/mux30_71_1261 )
  );
  MUXF5   \controldeusuario/mux30_5_f5_0  (
    .I0(\controldeusuario/mux30_71_1261 ),
    .I1(\controldeusuario/mux30_62_1258 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux30_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_6_536 ),
    .I2(\controldeusuario/cambiosneg_3_6_553 ),
    .O(\controldeusuario/mux30_72_1262 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_6_408 ),
    .I2(\controldeusuario/cambiosneg_1_6_519 ),
    .O(\controldeusuario/mux30_8_1263 )
  );
  MUXF5   \controldeusuario/mux30_6_f5  (
    .I0(\controldeusuario/mux30_8_1263 ),
    .I1(\controldeusuario/mux30_72_1262 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux30_6_f5_1259 )
  );
  MUXF6   \controldeusuario/mux30_4_f6  (
    .I0(\controldeusuario/mux30_6_f5_1259 ),
    .I1(\controldeusuario/mux30_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux30_4_f6_1252 )
  );
  MUXF7   \controldeusuario/mux30_2_f7  (
    .I0(\controldeusuario/mux30_4_f6_1252 ),
    .I1(\controldeusuario/mux30_3_f6_1250 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_14_2_481 ),
    .I2(\controldeusuario/cambiosneg_15_2_498 ),
    .O(\controldeusuario/mux26_5_1183 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_2_455 ),
    .I2(\controldeusuario/cambiosneg_13_2_464 ),
    .O(\controldeusuario/mux26_6_1186 )
  );
  MUXF5   \controldeusuario/mux26_4_f5  (
    .I0(\controldeusuario/mux26_6_1186 ),
    .I1(\controldeusuario/mux26_5_1183 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux26_4_f5_1181 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_2_421 ),
    .I2(\controldeusuario/cambiosneg_11_2_438 ),
    .O(\controldeusuario/mux26_61_1187 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_2_636 ),
    .I2(\controldeusuario/cambiosneg_9_2_653 ),
    .O(\controldeusuario/mux26_7_1190 )
  );
  MUXF5   \controldeusuario/mux26_5_f5  (
    .I0(\controldeusuario/mux26_7_1190 ),
    .I1(\controldeusuario/mux26_61_1187 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux26_5_f5_1184 )
  );
  MUXF6   \controldeusuario/mux26_3_f6  (
    .I0(\controldeusuario/mux26_5_f5_1184 ),
    .I1(\controldeusuario/mux26_4_f5_1181 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux26_3_f6_1180 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_2_600 ),
    .I2(\controldeusuario/cambiosneg_7_2_619 ),
    .O(\controldeusuario/mux26_62_1188 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_2_566 ),
    .I2(\controldeusuario/cambiosneg_5_2_583 ),
    .O(\controldeusuario/mux26_71_1191 )
  );
  MUXF5   \controldeusuario/mux26_5_f5_0  (
    .I0(\controldeusuario/mux26_71_1191 ),
    .I1(\controldeusuario/mux26_62_1188 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux26_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_2_532 ),
    .I2(\controldeusuario/cambiosneg_3_2_549 ),
    .O(\controldeusuario/mux26_72_1192 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_2_404 ),
    .I2(\controldeusuario/cambiosneg_1_2_515 ),
    .O(\controldeusuario/mux26_8_1193 )
  );
  MUXF5   \controldeusuario/mux26_6_f5  (
    .I0(\controldeusuario/mux26_8_1193 ),
    .I1(\controldeusuario/mux26_72_1192 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux26_6_f5_1189 )
  );
  MUXF6   \controldeusuario/mux26_4_f6  (
    .I0(\controldeusuario/mux26_6_f5_1189 ),
    .I1(\controldeusuario/mux26_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux26_4_f6_1182 )
  );
  MUXF7   \controldeusuario/mux26_2_f7  (
    .I0(\controldeusuario/mux26_4_f6_1182 ),
    .I1(\controldeusuario/mux26_3_f6_1180 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_14_1_480 ),
    .I2(\controldeusuario/cambiosneg_15_1_497 ),
    .O(\controldeusuario/mux25_5_1169 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_1_454 ),
    .I2(\controldeusuario/cambiosneg_13_1_463 ),
    .O(\controldeusuario/mux25_6_1172 )
  );
  MUXF5   \controldeusuario/mux25_4_f5  (
    .I0(\controldeusuario/mux25_6_1172 ),
    .I1(\controldeusuario/mux25_5_1169 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux25_4_f5_1167 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_1_420 ),
    .I2(\controldeusuario/cambiosneg_11_1_437 ),
    .O(\controldeusuario/mux25_61_1173 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_1_635 ),
    .I2(\controldeusuario/cambiosneg_9_1_652 ),
    .O(\controldeusuario/mux25_7_1176 )
  );
  MUXF5   \controldeusuario/mux25_5_f5  (
    .I0(\controldeusuario/mux25_7_1176 ),
    .I1(\controldeusuario/mux25_61_1173 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux25_5_f5_1170 )
  );
  MUXF6   \controldeusuario/mux25_3_f6  (
    .I0(\controldeusuario/mux25_5_f5_1170 ),
    .I1(\controldeusuario/mux25_4_f5_1167 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux25_3_f6_1166 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_1_599 ),
    .I2(\controldeusuario/cambiosneg_7_1_618 ),
    .O(\controldeusuario/mux25_62_1174 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_1_565 ),
    .I2(\controldeusuario/cambiosneg_5_1_582 ),
    .O(\controldeusuario/mux25_71_1177 )
  );
  MUXF5   \controldeusuario/mux25_5_f5_0  (
    .I0(\controldeusuario/mux25_71_1177 ),
    .I1(\controldeusuario/mux25_62_1174 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux25_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_1_531 ),
    .I2(\controldeusuario/cambiosneg_3_1_548 ),
    .O(\controldeusuario/mux25_72_1178 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_1_403 ),
    .I2(\controldeusuario/cambiosneg_1_1_514 ),
    .O(\controldeusuario/mux25_8_1179 )
  );
  MUXF5   \controldeusuario/mux25_6_f5  (
    .I0(\controldeusuario/mux25_8_1179 ),
    .I1(\controldeusuario/mux25_72_1178 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux25_6_f5_1175 )
  );
  MUXF6   \controldeusuario/mux25_4_f6  (
    .I0(\controldeusuario/mux25_6_f5_1175 ),
    .I1(\controldeusuario/mux25_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux25_4_f6_1168 )
  );
  MUXF7   \controldeusuario/mux25_2_f7  (
    .I0(\controldeusuario/mux25_4_f6_1168 ),
    .I1(\controldeusuario/mux25_3_f6_1166 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_14_3_482 ),
    .I2(\controldeusuario/cambiosneg_15_3_499 ),
    .O(\controldeusuario/mux27_5_1197 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_3_456 ),
    .I2(\controldeusuario/cambiosneg_13_3_465 ),
    .O(\controldeusuario/mux27_6_1200 )
  );
  MUXF5   \controldeusuario/mux27_4_f5  (
    .I0(\controldeusuario/mux27_6_1200 ),
    .I1(\controldeusuario/mux27_5_1197 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux27_4_f5_1195 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_3_422 ),
    .I2(\controldeusuario/cambiosneg_11_3_439 ),
    .O(\controldeusuario/mux27_61_1201 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_3_637 ),
    .I2(\controldeusuario/cambiosneg_9_3_654 ),
    .O(\controldeusuario/mux27_7_1204 )
  );
  MUXF5   \controldeusuario/mux27_5_f5  (
    .I0(\controldeusuario/mux27_7_1204 ),
    .I1(\controldeusuario/mux27_61_1201 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux27_5_f5_1198 )
  );
  MUXF6   \controldeusuario/mux27_3_f6  (
    .I0(\controldeusuario/mux27_5_f5_1198 ),
    .I1(\controldeusuario/mux27_4_f5_1195 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux27_3_f6_1194 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_3_601 ),
    .I2(\controldeusuario/cambiosneg_7_3_620 ),
    .O(\controldeusuario/mux27_62_1202 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_3_567 ),
    .I2(\controldeusuario/cambiosneg_5_3_584 ),
    .O(\controldeusuario/mux27_71_1205 )
  );
  MUXF5   \controldeusuario/mux27_5_f5_0  (
    .I0(\controldeusuario/mux27_71_1205 ),
    .I1(\controldeusuario/mux27_62_1202 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux27_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_3_533 ),
    .I2(\controldeusuario/cambiosneg_3_3_550 ),
    .O(\controldeusuario/mux27_72_1206 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_3_405 ),
    .I2(\controldeusuario/cambiosneg_1_3_516 ),
    .O(\controldeusuario/mux27_8_1207 )
  );
  MUXF5   \controldeusuario/mux27_6_f5  (
    .I0(\controldeusuario/mux27_8_1207 ),
    .I1(\controldeusuario/mux27_72_1206 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux27_6_f5_1203 )
  );
  MUXF6   \controldeusuario/mux27_4_f6  (
    .I0(\controldeusuario/mux27_6_f5_1203 ),
    .I1(\controldeusuario/mux27_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux27_4_f6_1196 )
  );
  MUXF7   \controldeusuario/mux27_2_f7  (
    .I0(\controldeusuario/mux27_4_f6_1196 ),
    .I1(\controldeusuario/mux27_3_f6_1194 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux23_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiospos_14_7_752 ),
    .I2(\controldeusuario/cambiospos_15_7_769 ),
    .O(\controldeusuario/mux23_5_1141 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux23_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiospos_12_7_726 ),
    .I2(\controldeusuario/cambiospos_13_7_735 ),
    .O(\controldeusuario/mux23_6_1144 )
  );
  MUXF5   \controldeusuario/mux23_4_f5  (
    .I0(\controldeusuario/mux23_6_1144 ),
    .I1(\controldeusuario/mux23_5_1141 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux23_4_f5_1139 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux23_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiospos_10_7_692 ),
    .I2(\controldeusuario/cambiospos_11_7_709 ),
    .O(\controldeusuario/mux23_61_1145 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux23_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiospos_8_7_908 ),
    .I2(\controldeusuario/cambiospos_9_7_925 ),
    .O(\controldeusuario/mux23_7_1148 )
  );
  MUXF5   \controldeusuario/mux23_5_f5  (
    .I0(\controldeusuario/mux23_7_1148 ),
    .I1(\controldeusuario/mux23_61_1145 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux23_5_f5_1142 )
  );
  MUXF6   \controldeusuario/mux23_3_f6  (
    .I0(\controldeusuario/mux23_5_f5_1142 ),
    .I1(\controldeusuario/mux23_4_f5_1139 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux23_3_f6_1138 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux23_62  (
    .I0(\controldeusuario/cambiospos_7_7_891 ),
    .I1(\controldeusuario/cambiospos_6_7_872 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux23_62_1146 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux23_71  (
    .I0(\controldeusuario/cambiospos_5_7_855 ),
    .I1(\controldeusuario/cambiospos_4_7_838 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux23_71_1149 )
  );
  MUXF5   \controldeusuario/mux23_5_f5_0  (
    .I0(\controldeusuario/mux23_71_1149 ),
    .I1(\controldeusuario/mux23_62_1146 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux23_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux23_72  (
    .I0(\controldeusuario/cambiospos_3_7_821 ),
    .I1(\controldeusuario/cambiospos_2_7_804 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux23_72_1150 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux23_8  (
    .I0(\controldeusuario/cambiospos_1_7_786 ),
    .I1(\controldeusuario/cambiospos_0_7_675 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux23_8_1151 )
  );
  MUXF5   \controldeusuario/mux23_6_f5  (
    .I0(\controldeusuario/mux23_8_1151 ),
    .I1(\controldeusuario/mux23_72_1150 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux23_6_f5_1147 )
  );
  MUXF6   \controldeusuario/mux23_4_f6  (
    .I0(\controldeusuario/mux23_6_f5_1147 ),
    .I1(\controldeusuario/mux23_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux23_4_f6_1140 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_5  (
    .I0(\controldeusuario/cambiospos_15_6_768 ),
    .I1(\controldeusuario/cambiospos_14_6_751 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_5_1127 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_6  (
    .I0(\controldeusuario/cambiospos_13_6_734 ),
    .I1(\controldeusuario/cambiospos_12_6_725 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_6_1130 )
  );
  MUXF5   \controldeusuario/mux22_4_f5  (
    .I0(\controldeusuario/mux22_6_1130 ),
    .I1(\controldeusuario/mux22_5_1127 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux22_4_f5_1125 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_61  (
    .I0(\controldeusuario/cambiospos_11_6_708 ),
    .I1(\controldeusuario/cambiospos_10_6_691 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_61_1131 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_7  (
    .I0(\controldeusuario/cambiospos_9_6_924 ),
    .I1(\controldeusuario/cambiospos_8_6_907 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_7_1134 )
  );
  MUXF5   \controldeusuario/mux22_5_f5  (
    .I0(\controldeusuario/mux22_7_1134 ),
    .I1(\controldeusuario/mux22_61_1131 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux22_5_f5_1128 )
  );
  MUXF6   \controldeusuario/mux22_3_f6  (
    .I0(\controldeusuario/mux22_5_f5_1128 ),
    .I1(\controldeusuario/mux22_4_f5_1125 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux22_3_f6_1124 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_62  (
    .I0(\controldeusuario/cambiospos_7_6_890 ),
    .I1(\controldeusuario/cambiospos_6_6_871 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_62_1132 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_71  (
    .I0(\controldeusuario/cambiospos_5_6_854 ),
    .I1(\controldeusuario/cambiospos_4_6_837 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_71_1135 )
  );
  MUXF5   \controldeusuario/mux22_5_f5_0  (
    .I0(\controldeusuario/mux22_71_1135 ),
    .I1(\controldeusuario/mux22_62_1132 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux22_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_72  (
    .I0(\controldeusuario/cambiospos_3_6_820 ),
    .I1(\controldeusuario/cambiospos_2_6_803 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_72_1136 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_8  (
    .I0(\controldeusuario/cambiospos_1_6_785 ),
    .I1(\controldeusuario/cambiospos_0_6_674 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_8_1137 )
  );
  MUXF5   \controldeusuario/mux22_6_f5  (
    .I0(\controldeusuario/mux22_8_1137 ),
    .I1(\controldeusuario/mux22_72_1136 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux22_6_f5_1133 )
  );
  MUXF6   \controldeusuario/mux22_4_f6  (
    .I0(\controldeusuario/mux22_6_f5_1133 ),
    .I1(\controldeusuario/mux22_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux22_4_f6_1126 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_14_0_479 ),
    .I2(\controldeusuario/cambiosneg_15_0_496 ),
    .O(\controldeusuario/mux24_5_1155 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_0_453 ),
    .I2(\controldeusuario/cambiosneg_13_0_462 ),
    .O(\controldeusuario/mux24_6_1158 )
  );
  MUXF5   \controldeusuario/mux24_4_f5  (
    .I0(\controldeusuario/mux24_6_1158 ),
    .I1(\controldeusuario/mux24_5_1155 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux24_4_f5_1153 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_0_419 ),
    .I2(\controldeusuario/cambiosneg_11_0_436 ),
    .O(\controldeusuario/mux24_61_1159 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_0_634 ),
    .I2(\controldeusuario/cambiosneg_9_0_651 ),
    .O(\controldeusuario/mux24_7_1162 )
  );
  MUXF5   \controldeusuario/mux24_5_f5  (
    .I0(\controldeusuario/mux24_7_1162 ),
    .I1(\controldeusuario/mux24_61_1159 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux24_5_f5_1156 )
  );
  MUXF6   \controldeusuario/mux24_3_f6  (
    .I0(\controldeusuario/mux24_5_f5_1156 ),
    .I1(\controldeusuario/mux24_4_f5_1153 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux24_3_f6_1152 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_0_598 ),
    .I2(\controldeusuario/cambiosneg_7_0_617 ),
    .O(\controldeusuario/mux24_62_1160 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_0_564 ),
    .I2(\controldeusuario/cambiosneg_5_0_581 ),
    .O(\controldeusuario/mux24_71_1163 )
  );
  MUXF5   \controldeusuario/mux24_5_f5_0  (
    .I0(\controldeusuario/mux24_71_1163 ),
    .I1(\controldeusuario/mux24_62_1160 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux24_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_0_530 ),
    .I2(\controldeusuario/cambiosneg_3_0_547 ),
    .O(\controldeusuario/mux24_72_1164 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_0_402 ),
    .I2(\controldeusuario/cambiosneg_1_0_513 ),
    .O(\controldeusuario/mux24_8_1165 )
  );
  MUXF5   \controldeusuario/mux24_6_f5  (
    .I0(\controldeusuario/mux24_8_1165 ),
    .I1(\controldeusuario/mux24_72_1164 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux24_6_f5_1161 )
  );
  MUXF6   \controldeusuario/mux24_4_f6  (
    .I0(\controldeusuario/mux24_6_f5_1161 ),
    .I1(\controldeusuario/mux24_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux24_4_f6_1154 )
  );
  MUXF7   \controldeusuario/mux24_2_f7  (
    .I0(\controldeusuario/mux24_4_f6_1154 ),
    .I1(\controldeusuario/mux24_3_f6_1152 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [0])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_5  (
    .I0(\controldeusuario/cambiospos_15_5_767 ),
    .I1(\controldeusuario/cambiospos_14_5_750 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux21_5_1113 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_6  (
    .I0(\controldeusuario/cambiospos_13_5_733 ),
    .I1(\controldeusuario/cambiospos_12_5_724 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux21_6_1116 )
  );
  MUXF5   \controldeusuario/mux21_4_f5  (
    .I0(\controldeusuario/mux21_6_1116 ),
    .I1(\controldeusuario/mux21_5_1113 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux21_4_f5_1111 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_61  (
    .I0(\controldeusuario/cambiospos_11_5_707 ),
    .I1(\controldeusuario/cambiospos_10_5_690 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux21_61_1117 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_7  (
    .I0(\controldeusuario/cambiospos_9_5_923 ),
    .I1(\controldeusuario/cambiospos_8_5_906 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux21_7_1120 )
  );
  MUXF5   \controldeusuario/mux21_5_f5  (
    .I0(\controldeusuario/mux21_7_1120 ),
    .I1(\controldeusuario/mux21_61_1117 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux21_5_f5_1114 )
  );
  MUXF6   \controldeusuario/mux21_3_f6  (
    .I0(\controldeusuario/mux21_5_f5_1114 ),
    .I1(\controldeusuario/mux21_4_f5_1111 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux21_3_f6_1110 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_62  (
    .I0(\controldeusuario/cambiospos_7_5_889 ),
    .I1(\controldeusuario/cambiospos_6_5_870 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux21_62_1118 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_71  (
    .I0(\controldeusuario/cambiospos_5_5_853 ),
    .I1(\controldeusuario/cambiospos_4_5_836 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux21_71_1121 )
  );
  MUXF5   \controldeusuario/mux21_5_f5_0  (
    .I0(\controldeusuario/mux21_71_1121 ),
    .I1(\controldeusuario/mux21_62_1118 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux21_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_72  (
    .I0(\controldeusuario/cambiospos_3_5_819 ),
    .I1(\controldeusuario/cambiospos_2_5_802 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux21_72_1122 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_8  (
    .I0(\controldeusuario/cambiospos_1_5_784 ),
    .I1(\controldeusuario/cambiospos_0_5_673 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux21_8_1123 )
  );
  MUXF5   \controldeusuario/mux21_6_f5  (
    .I0(\controldeusuario/mux21_8_1123 ),
    .I1(\controldeusuario/mux21_72_1122 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux21_6_f5_1119 )
  );
  MUXF6   \controldeusuario/mux21_4_f6  (
    .I0(\controldeusuario/mux21_6_f5_1119 ),
    .I1(\controldeusuario/mux21_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux21_4_f6_1112 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_5  (
    .I0(\controldeusuario/cambiospos_15_4_766 ),
    .I1(\controldeusuario/cambiospos_14_4_749 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux20_5_1099 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_6  (
    .I0(\controldeusuario/cambiospos_13_4_732 ),
    .I1(\controldeusuario/cambiospos_12_4_723 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux20_6_1102 )
  );
  MUXF5   \controldeusuario/mux20_4_f5  (
    .I0(\controldeusuario/mux20_6_1102 ),
    .I1(\controldeusuario/mux20_5_1099 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux20_4_f5_1097 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_61  (
    .I0(\controldeusuario/cambiospos_11_4_706 ),
    .I1(\controldeusuario/cambiospos_10_4_689 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux20_61_1103 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_7  (
    .I0(\controldeusuario/cambiospos_9_4_922 ),
    .I1(\controldeusuario/cambiospos_8_4_905 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux20_7_1106 )
  );
  MUXF5   \controldeusuario/mux20_5_f5  (
    .I0(\controldeusuario/mux20_7_1106 ),
    .I1(\controldeusuario/mux20_61_1103 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux20_5_f5_1100 )
  );
  MUXF6   \controldeusuario/mux20_3_f6  (
    .I0(\controldeusuario/mux20_5_f5_1100 ),
    .I1(\controldeusuario/mux20_4_f5_1097 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux20_3_f6_1096 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_62  (
    .I0(\controldeusuario/cambiospos_7_4_888 ),
    .I1(\controldeusuario/cambiospos_6_4_869 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux20_62_1104 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_71  (
    .I0(\controldeusuario/cambiospos_5_4_852 ),
    .I1(\controldeusuario/cambiospos_4_4_835 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux20_71_1107 )
  );
  MUXF5   \controldeusuario/mux20_5_f5_0  (
    .I0(\controldeusuario/mux20_71_1107 ),
    .I1(\controldeusuario/mux20_62_1104 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux20_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_72  (
    .I0(\controldeusuario/cambiospos_3_4_818 ),
    .I1(\controldeusuario/cambiospos_2_4_801 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux20_72_1108 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_8  (
    .I0(\controldeusuario/cambiospos_1_4_783 ),
    .I1(\controldeusuario/cambiospos_0_4_672 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux20_8_1109 )
  );
  MUXF5   \controldeusuario/mux20_6_f5  (
    .I0(\controldeusuario/mux20_8_1109 ),
    .I1(\controldeusuario/mux20_72_1108 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux20_6_f5_1105 )
  );
  MUXF6   \controldeusuario/mux20_4_f6  (
    .I0(\controldeusuario/mux20_6_f5_1105 ),
    .I1(\controldeusuario/mux20_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux20_4_f6_1098 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_5  (
    .I0(\controldeusuario/cambiospos_15_2_764 ),
    .I1(\controldeusuario/cambiospos_14_2_747 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux18_5_1057 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_6  (
    .I0(\controldeusuario/cambiospos_13_2_730 ),
    .I1(\controldeusuario/cambiospos_12_2_721 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux18_6_1060 )
  );
  MUXF5   \controldeusuario/mux18_4_f5  (
    .I0(\controldeusuario/mux18_6_1060 ),
    .I1(\controldeusuario/mux18_5_1057 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux18_4_f5_1055 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_61  (
    .I0(\controldeusuario/cambiospos_11_2_704 ),
    .I1(\controldeusuario/cambiospos_10_2_687 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux18_61_1061 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_7  (
    .I0(\controldeusuario/cambiospos_9_2_920 ),
    .I1(\controldeusuario/cambiospos_8_2_903 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux18_7_1064 )
  );
  MUXF5   \controldeusuario/mux18_5_f5  (
    .I0(\controldeusuario/mux18_7_1064 ),
    .I1(\controldeusuario/mux18_61_1061 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux18_5_f5_1058 )
  );
  MUXF6   \controldeusuario/mux18_3_f6  (
    .I0(\controldeusuario/mux18_5_f5_1058 ),
    .I1(\controldeusuario/mux18_4_f5_1055 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux18_3_f6_1054 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_62  (
    .I0(\controldeusuario/cambiospos_7_2_886 ),
    .I1(\controldeusuario/cambiospos_6_2_867 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux18_62_1062 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_71  (
    .I0(\controldeusuario/cambiospos_5_2_850 ),
    .I1(\controldeusuario/cambiospos_4_2_833 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux18_71_1065 )
  );
  MUXF5   \controldeusuario/mux18_5_f5_0  (
    .I0(\controldeusuario/mux18_71_1065 ),
    .I1(\controldeusuario/mux18_62_1062 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux18_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_72  (
    .I0(\controldeusuario/cambiospos_3_2_816 ),
    .I1(\controldeusuario/cambiospos_2_2_799 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux18_72_1066 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_8  (
    .I0(\controldeusuario/cambiospos_1_2_781 ),
    .I1(\controldeusuario/cambiospos_0_2_670 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux18_8_1067 )
  );
  MUXF5   \controldeusuario/mux18_6_f5  (
    .I0(\controldeusuario/mux18_8_1067 ),
    .I1(\controldeusuario/mux18_72_1066 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux18_6_f5_1063 )
  );
  MUXF6   \controldeusuario/mux18_4_f6  (
    .I0(\controldeusuario/mux18_6_f5_1063 ),
    .I1(\controldeusuario/mux18_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux18_4_f6_1056 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_5  (
    .I0(\controldeusuario/cambiospos_15_1_763 ),
    .I1(\controldeusuario/cambiospos_14_1_746 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux17_5_1043 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_6  (
    .I0(\controldeusuario/cambiospos_13_1_729 ),
    .I1(\controldeusuario/cambiospos_12_1_720 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux17_6_1046 )
  );
  MUXF5   \controldeusuario/mux17_4_f5  (
    .I0(\controldeusuario/mux17_6_1046 ),
    .I1(\controldeusuario/mux17_5_1043 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux17_4_f5_1041 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_61  (
    .I0(\controldeusuario/cambiospos_11_1_703 ),
    .I1(\controldeusuario/cambiospos_10_1_686 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux17_61_1047 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_7  (
    .I0(\controldeusuario/cambiospos_9_1_919 ),
    .I1(\controldeusuario/cambiospos_8_1_902 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux17_7_1050 )
  );
  MUXF5   \controldeusuario/mux17_5_f5  (
    .I0(\controldeusuario/mux17_7_1050 ),
    .I1(\controldeusuario/mux17_61_1047 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux17_5_f5_1044 )
  );
  MUXF6   \controldeusuario/mux17_3_f6  (
    .I0(\controldeusuario/mux17_5_f5_1044 ),
    .I1(\controldeusuario/mux17_4_f5_1041 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux17_3_f6_1040 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_62  (
    .I0(\controldeusuario/cambiospos_7_1_885 ),
    .I1(\controldeusuario/cambiospos_6_1_866 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux17_62_1048 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_71  (
    .I0(\controldeusuario/cambiospos_5_1_849 ),
    .I1(\controldeusuario/cambiospos_4_1_832 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux17_71_1051 )
  );
  MUXF5   \controldeusuario/mux17_5_f5_0  (
    .I0(\controldeusuario/mux17_71_1051 ),
    .I1(\controldeusuario/mux17_62_1048 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux17_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_72  (
    .I0(\controldeusuario/cambiospos_3_1_815 ),
    .I1(\controldeusuario/cambiospos_2_1_798 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux17_72_1052 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_8  (
    .I0(\controldeusuario/cambiospos_1_1_780 ),
    .I1(\controldeusuario/cambiospos_0_1_669 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux17_8_1053 )
  );
  MUXF5   \controldeusuario/mux17_6_f5  (
    .I0(\controldeusuario/mux17_8_1053 ),
    .I1(\controldeusuario/mux17_72_1052 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux17_6_f5_1049 )
  );
  MUXF6   \controldeusuario/mux17_4_f6  (
    .I0(\controldeusuario/mux17_6_f5_1049 ),
    .I1(\controldeusuario/mux17_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux17_4_f6_1042 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_5  (
    .I0(\controldeusuario/cambiospos_15_3_765 ),
    .I1(\controldeusuario/cambiospos_14_3_748 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux19_5_1071 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_6  (
    .I0(\controldeusuario/cambiospos_13_3_731 ),
    .I1(\controldeusuario/cambiospos_12_3_722 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux19_6_1074 )
  );
  MUXF5   \controldeusuario/mux19_4_f5  (
    .I0(\controldeusuario/mux19_6_1074 ),
    .I1(\controldeusuario/mux19_5_1071 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux19_4_f5_1069 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_61  (
    .I0(\controldeusuario/cambiospos_11_3_705 ),
    .I1(\controldeusuario/cambiospos_10_3_688 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux19_61_1075 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_7  (
    .I0(\controldeusuario/cambiospos_9_3_921 ),
    .I1(\controldeusuario/cambiospos_8_3_904 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux19_7_1078 )
  );
  MUXF5   \controldeusuario/mux19_5_f5  (
    .I0(\controldeusuario/mux19_7_1078 ),
    .I1(\controldeusuario/mux19_61_1075 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux19_5_f5_1072 )
  );
  MUXF6   \controldeusuario/mux19_3_f6  (
    .I0(\controldeusuario/mux19_5_f5_1072 ),
    .I1(\controldeusuario/mux19_4_f5_1069 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux19_3_f6_1068 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_62  (
    .I0(\controldeusuario/cambiospos_7_3_887 ),
    .I1(\controldeusuario/cambiospos_6_3_868 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux19_62_1076 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_71  (
    .I0(\controldeusuario/cambiospos_5_3_851 ),
    .I1(\controldeusuario/cambiospos_4_3_834 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux19_71_1079 )
  );
  MUXF5   \controldeusuario/mux19_5_f5_0  (
    .I0(\controldeusuario/mux19_71_1079 ),
    .I1(\controldeusuario/mux19_62_1076 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux19_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_72  (
    .I0(\controldeusuario/cambiospos_3_3_817 ),
    .I1(\controldeusuario/cambiospos_2_3_800 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux19_72_1080 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_8  (
    .I0(\controldeusuario/cambiospos_1_3_782 ),
    .I1(\controldeusuario/cambiospos_0_3_671 ),
    .I2(\controldeusuario/puntero2_0_2_1392 ),
    .O(\controldeusuario/mux19_8_1081 )
  );
  MUXF5   \controldeusuario/mux19_6_f5  (
    .I0(\controldeusuario/mux19_8_1081 ),
    .I1(\controldeusuario/mux19_72_1080 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux19_6_f5_1077 )
  );
  MUXF6   \controldeusuario/mux19_4_f6  (
    .I0(\controldeusuario/mux19_6_f5_1077 ),
    .I1(\controldeusuario/mux19_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux19_4_f6_1070 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_5  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_14_7_752 ),
    .I2(\controldeusuario/cambiospos_15_7_769 ),
    .O(\controldeusuario/mux15_5_1015 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_6  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_12_7_726 ),
    .I2(\controldeusuario/cambiospos_13_7_735 ),
    .O(\controldeusuario/mux15_6_1018 )
  );
  MUXF5   \controldeusuario/mux15_4_f5  (
    .I0(\controldeusuario/mux15_6_1018 ),
    .I1(\controldeusuario/mux15_5_1015 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux15_4_f5_1013 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_61  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_10_7_692 ),
    .I2(\controldeusuario/cambiospos_11_7_709 ),
    .O(\controldeusuario/mux15_61_1019 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_7  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_8_7_908 ),
    .I2(\controldeusuario/cambiospos_9_7_925 ),
    .O(\controldeusuario/mux15_7_1022 )
  );
  MUXF5   \controldeusuario/mux15_5_f5  (
    .I0(\controldeusuario/mux15_7_1022 ),
    .I1(\controldeusuario/mux15_61_1019 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux15_5_f5_1016 )
  );
  MUXF6   \controldeusuario/mux15_3_f6  (
    .I0(\controldeusuario/mux15_5_f5_1016 ),
    .I1(\controldeusuario/mux15_4_f5_1013 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux15_3_f6_1012 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_62  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_6_7_872 ),
    .I2(\controldeusuario/cambiospos_7_7_891 ),
    .O(\controldeusuario/mux15_62_1020 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_71  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_4_7_838 ),
    .I2(\controldeusuario/cambiospos_5_7_855 ),
    .O(\controldeusuario/mux15_71_1023 )
  );
  MUXF5   \controldeusuario/mux15_5_f5_0  (
    .I0(\controldeusuario/mux15_71_1023 ),
    .I1(\controldeusuario/mux15_62_1020 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux15_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_72  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_2_7_804 ),
    .I2(\controldeusuario/cambiospos_3_7_821 ),
    .O(\controldeusuario/mux15_72_1024 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_8  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_0_7_675 ),
    .I2(\controldeusuario/cambiospos_1_7_786 ),
    .O(\controldeusuario/mux15_8_1025 )
  );
  MUXF5   \controldeusuario/mux15_6_f5  (
    .I0(\controldeusuario/mux15_8_1025 ),
    .I1(\controldeusuario/mux15_72_1024 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux15_6_f5_1021 )
  );
  MUXF6   \controldeusuario/mux15_4_f6  (
    .I0(\controldeusuario/mux15_6_f5_1021 ),
    .I1(\controldeusuario/mux15_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux15_4_f6_1014 )
  );
  MUXF7   \controldeusuario/mux15_2_f7  (
    .I0(\controldeusuario/mux15_4_f6_1014 ),
    .I1(\controldeusuario/mux15_3_f6_1012 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_lut [7])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_5  (
    .I0(\controldeusuario/cambiospos_15_6_768 ),
    .I1(\controldeusuario/cambiospos_14_6_751 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_5_1001 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_6  (
    .I0(\controldeusuario/cambiospos_13_6_734 ),
    .I1(\controldeusuario/cambiospos_12_6_725 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_6_1004 )
  );
  MUXF5   \controldeusuario/mux14_4_f5  (
    .I0(\controldeusuario/mux14_6_1004 ),
    .I1(\controldeusuario/mux14_5_1001 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux14_4_f5_999 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_61  (
    .I0(\controldeusuario/cambiospos_11_6_708 ),
    .I1(\controldeusuario/cambiospos_10_6_691 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_61_1005 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_7  (
    .I0(\controldeusuario/cambiospos_9_6_924 ),
    .I1(\controldeusuario/cambiospos_8_6_907 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_7_1008 )
  );
  MUXF5   \controldeusuario/mux14_5_f5  (
    .I0(\controldeusuario/mux14_7_1008 ),
    .I1(\controldeusuario/mux14_61_1005 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux14_5_f5_1002 )
  );
  MUXF6   \controldeusuario/mux14_3_f6  (
    .I0(\controldeusuario/mux14_5_f5_1002 ),
    .I1(\controldeusuario/mux14_4_f5_999 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux14_3_f6_998 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_62  (
    .I0(\controldeusuario/cambiospos_7_6_890 ),
    .I1(\controldeusuario/cambiospos_6_6_871 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_62_1006 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_71  (
    .I0(\controldeusuario/cambiospos_5_6_854 ),
    .I1(\controldeusuario/cambiospos_4_6_837 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_71_1009 )
  );
  MUXF5   \controldeusuario/mux14_5_f5_0  (
    .I0(\controldeusuario/mux14_71_1009 ),
    .I1(\controldeusuario/mux14_62_1006 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux14_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_72  (
    .I0(\controldeusuario/cambiospos_3_6_820 ),
    .I1(\controldeusuario/cambiospos_2_6_803 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_72_1010 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_8  (
    .I0(\controldeusuario/cambiospos_1_6_785 ),
    .I1(\controldeusuario/cambiospos_0_6_674 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_8_1011 )
  );
  MUXF5   \controldeusuario/mux14_6_f5  (
    .I0(\controldeusuario/mux14_8_1011 ),
    .I1(\controldeusuario/mux14_72_1010 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux14_6_f5_1007 )
  );
  MUXF6   \controldeusuario/mux14_4_f6  (
    .I0(\controldeusuario/mux14_6_f5_1007 ),
    .I1(\controldeusuario/mux14_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux14_4_f6_1000 )
  );
  MUXF7   \controldeusuario/mux14_2_f7  (
    .I0(\controldeusuario/mux14_4_f6_1000 ),
    .I1(\controldeusuario/mux14_3_f6_998 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_lut [6])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_5  (
    .I0(\controldeusuario/cambiospos_15_0_762 ),
    .I1(\controldeusuario/cambiospos_14_0_745 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux16_5_1029 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_6  (
    .I0(\controldeusuario/cambiospos_13_0_728 ),
    .I1(\controldeusuario/cambiospos_12_0_719 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux16_6_1032 )
  );
  MUXF5   \controldeusuario/mux16_4_f5  (
    .I0(\controldeusuario/mux16_6_1032 ),
    .I1(\controldeusuario/mux16_5_1029 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux16_4_f5_1027 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_61  (
    .I0(\controldeusuario/cambiospos_11_0_702 ),
    .I1(\controldeusuario/cambiospos_10_0_685 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux16_61_1033 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_7  (
    .I0(\controldeusuario/cambiospos_9_0_918 ),
    .I1(\controldeusuario/cambiospos_8_0_901 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux16_7_1036 )
  );
  MUXF5   \controldeusuario/mux16_5_f5  (
    .I0(\controldeusuario/mux16_7_1036 ),
    .I1(\controldeusuario/mux16_61_1033 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux16_5_f5_1030 )
  );
  MUXF6   \controldeusuario/mux16_3_f6  (
    .I0(\controldeusuario/mux16_5_f5_1030 ),
    .I1(\controldeusuario/mux16_4_f5_1027 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux16_3_f6_1026 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_62  (
    .I0(\controldeusuario/cambiospos_7_0_884 ),
    .I1(\controldeusuario/cambiospos_6_0_865 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux16_62_1034 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_71  (
    .I0(\controldeusuario/cambiospos_5_0_848 ),
    .I1(\controldeusuario/cambiospos_4_0_831 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux16_71_1037 )
  );
  MUXF5   \controldeusuario/mux16_5_f5_0  (
    .I0(\controldeusuario/mux16_71_1037 ),
    .I1(\controldeusuario/mux16_62_1034 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux16_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_72  (
    .I0(\controldeusuario/cambiospos_3_0_814 ),
    .I1(\controldeusuario/cambiospos_2_0_797 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux16_72_1038 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_8  (
    .I0(\controldeusuario/cambiospos_1_0_779 ),
    .I1(\controldeusuario/cambiospos_0_0_668 ),
    .I2(\controldeusuario/puntero2_0_1_1391 ),
    .O(\controldeusuario/mux16_8_1039 )
  );
  MUXF5   \controldeusuario/mux16_6_f5  (
    .I0(\controldeusuario/mux16_8_1039 ),
    .I1(\controldeusuario/mux16_72_1038 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux16_6_f5_1035 )
  );
  MUXF6   \controldeusuario/mux16_4_f6  (
    .I0(\controldeusuario/mux16_6_f5_1035 ),
    .I1(\controldeusuario/mux16_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux16_4_f6_1028 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_5  (
    .I0(\controldeusuario/cambiospos_15_4_766 ),
    .I1(\controldeusuario/cambiospos_14_4_749 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_5_973 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_6  (
    .I0(\controldeusuario/cambiospos_13_4_732 ),
    .I1(\controldeusuario/cambiospos_12_4_723 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_6_976 )
  );
  MUXF5   \controldeusuario/mux12_4_f5  (
    .I0(\controldeusuario/mux12_6_976 ),
    .I1(\controldeusuario/mux12_5_973 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux12_4_f5_971 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_61  (
    .I0(\controldeusuario/cambiospos_11_4_706 ),
    .I1(\controldeusuario/cambiospos_10_4_689 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_61_977 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_7  (
    .I0(\controldeusuario/cambiospos_9_4_922 ),
    .I1(\controldeusuario/cambiospos_8_4_905 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_7_980 )
  );
  MUXF5   \controldeusuario/mux12_5_f5  (
    .I0(\controldeusuario/mux12_7_980 ),
    .I1(\controldeusuario/mux12_61_977 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux12_5_f5_974 )
  );
  MUXF6   \controldeusuario/mux12_3_f6  (
    .I0(\controldeusuario/mux12_5_f5_974 ),
    .I1(\controldeusuario/mux12_4_f5_971 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux12_3_f6_970 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_62  (
    .I0(\controldeusuario/cambiospos_7_4_888 ),
    .I1(\controldeusuario/cambiospos_6_4_869 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_62_978 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_71  (
    .I0(\controldeusuario/cambiospos_5_4_852 ),
    .I1(\controldeusuario/cambiospos_4_4_835 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_71_981 )
  );
  MUXF5   \controldeusuario/mux12_5_f5_0  (
    .I0(\controldeusuario/mux12_71_981 ),
    .I1(\controldeusuario/mux12_62_978 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux12_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_72  (
    .I0(\controldeusuario/cambiospos_3_4_818 ),
    .I1(\controldeusuario/cambiospos_2_4_801 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_72_982 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_8  (
    .I0(\controldeusuario/cambiospos_1_4_783 ),
    .I1(\controldeusuario/cambiospos_0_4_672 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_8_983 )
  );
  MUXF5   \controldeusuario/mux12_6_f5  (
    .I0(\controldeusuario/mux12_8_983 ),
    .I1(\controldeusuario/mux12_72_982 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux12_6_f5_979 )
  );
  MUXF6   \controldeusuario/mux12_4_f6  (
    .I0(\controldeusuario/mux12_6_f5_979 ),
    .I1(\controldeusuario/mux12_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux12_4_f6_972 )
  );
  MUXF7   \controldeusuario/mux12_2_f7  (
    .I0(\controldeusuario/mux12_4_f6_972 ),
    .I1(\controldeusuario/mux12_3_f6_970 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_lut [4])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_5  (
    .I0(\controldeusuario/cambiospos_15_3_765 ),
    .I1(\controldeusuario/cambiospos_14_3_748 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_5_959 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_6  (
    .I0(\controldeusuario/cambiospos_13_3_731 ),
    .I1(\controldeusuario/cambiospos_12_3_722 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_6_962 )
  );
  MUXF5   \controldeusuario/mux11_4_f5  (
    .I0(\controldeusuario/mux11_6_962 ),
    .I1(\controldeusuario/mux11_5_959 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux11_4_f5_957 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_61  (
    .I0(\controldeusuario/cambiospos_11_3_705 ),
    .I1(\controldeusuario/cambiospos_10_3_688 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_61_963 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_7  (
    .I0(\controldeusuario/cambiospos_9_3_921 ),
    .I1(\controldeusuario/cambiospos_8_3_904 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_7_966 )
  );
  MUXF5   \controldeusuario/mux11_5_f5  (
    .I0(\controldeusuario/mux11_7_966 ),
    .I1(\controldeusuario/mux11_61_963 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux11_5_f5_960 )
  );
  MUXF6   \controldeusuario/mux11_3_f6  (
    .I0(\controldeusuario/mux11_5_f5_960 ),
    .I1(\controldeusuario/mux11_4_f5_957 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux11_3_f6_956 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_62  (
    .I0(\controldeusuario/cambiospos_7_3_887 ),
    .I1(\controldeusuario/cambiospos_6_3_868 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_62_964 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_71  (
    .I0(\controldeusuario/cambiospos_5_3_851 ),
    .I1(\controldeusuario/cambiospos_4_3_834 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_71_967 )
  );
  MUXF5   \controldeusuario/mux11_5_f5_0  (
    .I0(\controldeusuario/mux11_71_967 ),
    .I1(\controldeusuario/mux11_62_964 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux11_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_72  (
    .I0(\controldeusuario/cambiospos_3_3_817 ),
    .I1(\controldeusuario/cambiospos_2_3_800 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_72_968 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_8  (
    .I0(\controldeusuario/cambiospos_1_3_782 ),
    .I1(\controldeusuario/cambiospos_0_3_671 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_8_969 )
  );
  MUXF5   \controldeusuario/mux11_6_f5  (
    .I0(\controldeusuario/mux11_8_969 ),
    .I1(\controldeusuario/mux11_72_968 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux11_6_f5_965 )
  );
  MUXF6   \controldeusuario/mux11_4_f6  (
    .I0(\controldeusuario/mux11_6_f5_965 ),
    .I1(\controldeusuario/mux11_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux11_4_f6_958 )
  );
  MUXF7   \controldeusuario/mux11_2_f7  (
    .I0(\controldeusuario/mux11_4_f6_958 ),
    .I1(\controldeusuario/mux11_3_f6_956 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_lut [3])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_5  (
    .I0(\controldeusuario/cambiospos_15_5_767 ),
    .I1(\controldeusuario/cambiospos_14_5_750 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_5_987 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_6  (
    .I0(\controldeusuario/cambiospos_13_5_733 ),
    .I1(\controldeusuario/cambiospos_12_5_724 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_6_990 )
  );
  MUXF5   \controldeusuario/mux13_4_f5  (
    .I0(\controldeusuario/mux13_6_990 ),
    .I1(\controldeusuario/mux13_5_987 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux13_4_f5_985 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_61  (
    .I0(\controldeusuario/cambiospos_11_5_707 ),
    .I1(\controldeusuario/cambiospos_10_5_690 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_61_991 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_7  (
    .I0(\controldeusuario/cambiospos_9_5_923 ),
    .I1(\controldeusuario/cambiospos_8_5_906 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_7_994 )
  );
  MUXF5   \controldeusuario/mux13_5_f5  (
    .I0(\controldeusuario/mux13_7_994 ),
    .I1(\controldeusuario/mux13_61_991 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux13_5_f5_988 )
  );
  MUXF6   \controldeusuario/mux13_3_f6  (
    .I0(\controldeusuario/mux13_5_f5_988 ),
    .I1(\controldeusuario/mux13_4_f5_985 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux13_3_f6_984 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_62  (
    .I0(\controldeusuario/cambiospos_7_5_889 ),
    .I1(\controldeusuario/cambiospos_6_5_870 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_62_992 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_71  (
    .I0(\controldeusuario/cambiospos_5_5_853 ),
    .I1(\controldeusuario/cambiospos_4_5_836 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_71_995 )
  );
  MUXF5   \controldeusuario/mux13_5_f5_0  (
    .I0(\controldeusuario/mux13_71_995 ),
    .I1(\controldeusuario/mux13_62_992 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux13_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_72  (
    .I0(\controldeusuario/cambiospos_3_5_819 ),
    .I1(\controldeusuario/cambiospos_2_5_802 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_72_996 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_8  (
    .I0(\controldeusuario/cambiospos_1_5_784 ),
    .I1(\controldeusuario/cambiospos_0_5_673 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_8_997 )
  );
  MUXF5   \controldeusuario/mux13_6_f5  (
    .I0(\controldeusuario/mux13_8_997 ),
    .I1(\controldeusuario/mux13_72_996 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux13_6_f5_993 )
  );
  MUXF6   \controldeusuario/mux13_4_f6  (
    .I0(\controldeusuario/mux13_6_f5_993 ),
    .I1(\controldeusuario/mux13_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux13_4_f6_986 )
  );
  MUXF7   \controldeusuario/mux13_2_f7  (
    .I0(\controldeusuario/mux13_4_f6_986 ),
    .I1(\controldeusuario/mux13_3_f6_984 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_lut [5])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_5  (
    .I0(\controldeusuario/cambiospos_15_2_764 ),
    .I1(\controldeusuario/cambiospos_14_2_747 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux10_5_945 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_6  (
    .I0(\controldeusuario/cambiospos_13_2_730 ),
    .I1(\controldeusuario/cambiospos_12_2_721 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux10_6_948 )
  );
  MUXF5   \controldeusuario/mux10_4_f5  (
    .I0(\controldeusuario/mux10_6_948 ),
    .I1(\controldeusuario/mux10_5_945 ),
    .S(\controldeusuario/puntero_1_2_1411 ),
    .O(\controldeusuario/mux10_4_f5_943 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_61  (
    .I0(\controldeusuario/cambiospos_11_2_704 ),
    .I1(\controldeusuario/cambiospos_10_2_687 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux10_61_949 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_7  (
    .I0(\controldeusuario/cambiospos_9_2_920 ),
    .I1(\controldeusuario/cambiospos_8_2_903 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux10_7_952 )
  );
  MUXF5   \controldeusuario/mux10_5_f5  (
    .I0(\controldeusuario/mux10_7_952 ),
    .I1(\controldeusuario/mux10_61_949 ),
    .S(\controldeusuario/puntero_1_2_1411 ),
    .O(\controldeusuario/mux10_5_f5_946 )
  );
  MUXF6   \controldeusuario/mux10_3_f6  (
    .I0(\controldeusuario/mux10_5_f5_946 ),
    .I1(\controldeusuario/mux10_4_f5_943 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux10_3_f6_942 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_62  (
    .I0(\controldeusuario/cambiospos_7_2_886 ),
    .I1(\controldeusuario/cambiospos_6_2_867 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux10_62_950 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_71  (
    .I0(\controldeusuario/cambiospos_5_2_850 ),
    .I1(\controldeusuario/cambiospos_4_2_833 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux10_71_953 )
  );
  MUXF5   \controldeusuario/mux10_5_f5_0  (
    .I0(\controldeusuario/mux10_71_953 ),
    .I1(\controldeusuario/mux10_62_950 ),
    .S(\controldeusuario/puntero_1_2_1411 ),
    .O(\controldeusuario/mux10_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_72  (
    .I0(\controldeusuario/cambiospos_3_2_816 ),
    .I1(\controldeusuario/cambiospos_2_2_799 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux10_72_954 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_8  (
    .I0(\controldeusuario/cambiospos_1_2_781 ),
    .I1(\controldeusuario/cambiospos_0_2_670 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux10_8_955 )
  );
  MUXF5   \controldeusuario/mux10_6_f5  (
    .I0(\controldeusuario/mux10_8_955 ),
    .I1(\controldeusuario/mux10_72_954 ),
    .S(\controldeusuario/puntero_1_2_1411 ),
    .O(\controldeusuario/mux10_6_f5_951 )
  );
  MUXF6   \controldeusuario/mux10_4_f6  (
    .I0(\controldeusuario/mux10_6_f5_951 ),
    .I1(\controldeusuario/mux10_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux10_4_f6_944 )
  );
  MUXF7   \controldeusuario/mux10_2_f7  (
    .I0(\controldeusuario/mux10_4_f6_944 ),
    .I1(\controldeusuario/mux10_3_f6_942 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_lut [2])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_5  (
    .I0(\controldeusuario/cambiospos_15_1_763 ),
    .I1(\controldeusuario/cambiospos_14_1_746 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux9_5_1365 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_6  (
    .I0(\controldeusuario/cambiospos_13_1_729 ),
    .I1(\controldeusuario/cambiospos_12_1_720 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux9_6_1368 )
  );
  MUXF5   \controldeusuario/mux9_4_f5  (
    .I0(\controldeusuario/mux9_6_1368 ),
    .I1(\controldeusuario/mux9_5_1365 ),
    .S(\controldeusuario/puntero_1_1_1410 ),
    .O(\controldeusuario/mux9_4_f5_1363 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_61  (
    .I0(\controldeusuario/cambiospos_11_1_703 ),
    .I1(\controldeusuario/cambiospos_10_1_686 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux9_61_1369 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_7  (
    .I0(\controldeusuario/cambiospos_9_1_919 ),
    .I1(\controldeusuario/cambiospos_8_1_902 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux9_7_1372 )
  );
  MUXF5   \controldeusuario/mux9_5_f5  (
    .I0(\controldeusuario/mux9_7_1372 ),
    .I1(\controldeusuario/mux9_61_1369 ),
    .S(\controldeusuario/puntero_1_1_1410 ),
    .O(\controldeusuario/mux9_5_f5_1366 )
  );
  MUXF6   \controldeusuario/mux9_3_f6  (
    .I0(\controldeusuario/mux9_5_f5_1366 ),
    .I1(\controldeusuario/mux9_4_f5_1363 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux9_3_f6_1362 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_62  (
    .I0(\controldeusuario/cambiospos_7_1_885 ),
    .I1(\controldeusuario/cambiospos_6_1_866 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux9_62_1370 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_71  (
    .I0(\controldeusuario/cambiospos_5_1_849 ),
    .I1(\controldeusuario/cambiospos_4_1_832 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux9_71_1373 )
  );
  MUXF5   \controldeusuario/mux9_5_f5_0  (
    .I0(\controldeusuario/mux9_71_1373 ),
    .I1(\controldeusuario/mux9_62_1370 ),
    .S(\controldeusuario/puntero_1_1_1410 ),
    .O(\controldeusuario/mux9_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_72  (
    .I0(\controldeusuario/cambiospos_3_1_815 ),
    .I1(\controldeusuario/cambiospos_2_1_798 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux9_72_1374 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_8  (
    .I0(\controldeusuario/cambiospos_1_1_780 ),
    .I1(\controldeusuario/cambiospos_0_1_669 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux9_8_1375 )
  );
  MUXF5   \controldeusuario/mux9_6_f5  (
    .I0(\controldeusuario/mux9_8_1375 ),
    .I1(\controldeusuario/mux9_72_1374 ),
    .S(\controldeusuario/puntero_1_1_1410 ),
    .O(\controldeusuario/mux9_6_f5_1371 )
  );
  MUXF6   \controldeusuario/mux9_4_f6  (
    .I0(\controldeusuario/mux9_6_f5_1371 ),
    .I1(\controldeusuario/mux9_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux9_4_f6_1364 )
  );
  MUXF7   \controldeusuario/mux9_2_f7  (
    .I0(\controldeusuario/mux9_4_f6_1364 ),
    .I1(\controldeusuario/mux9_3_f6_1362 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_lut [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_5  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_14_7_486 ),
    .I2(\controldeusuario/cambiosneg_15_7_503 ),
    .O(\controldeusuario/mux7_5_1337 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_6  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_12_7_460 ),
    .I2(\controldeusuario/cambiosneg_13_7_469 ),
    .O(\controldeusuario/mux7_6_1340 )
  );
  MUXF5   \controldeusuario/mux7_4_f5  (
    .I0(\controldeusuario/mux7_6_1340 ),
    .I1(\controldeusuario/mux7_5_1337 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux7_4_f5_1335 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_61  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_10_7_426 ),
    .I2(\controldeusuario/cambiosneg_11_7_443 ),
    .O(\controldeusuario/mux7_61_1341 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_7  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_8_7_641 ),
    .I2(\controldeusuario/cambiosneg_9_7_658 ),
    .O(\controldeusuario/mux7_7_1344 )
  );
  MUXF5   \controldeusuario/mux7_5_f5  (
    .I0(\controldeusuario/mux7_7_1344 ),
    .I1(\controldeusuario/mux7_61_1341 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux7_5_f5_1338 )
  );
  MUXF6   \controldeusuario/mux7_3_f6  (
    .I0(\controldeusuario/mux7_5_f5_1338 ),
    .I1(\controldeusuario/mux7_4_f5_1335 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux7_3_f6_1334 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_62  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_6_7_605 ),
    .I2(\controldeusuario/cambiosneg_7_7_624 ),
    .O(\controldeusuario/mux7_62_1342 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_71  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_4_7_571 ),
    .I2(\controldeusuario/cambiosneg_5_7_588 ),
    .O(\controldeusuario/mux7_71_1345 )
  );
  MUXF5   \controldeusuario/mux7_5_f5_0  (
    .I0(\controldeusuario/mux7_71_1345 ),
    .I1(\controldeusuario/mux7_62_1342 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux7_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_72  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_2_7_537 ),
    .I2(\controldeusuario/cambiosneg_3_7_554 ),
    .O(\controldeusuario/mux7_72_1346 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_8  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_0_7_409 ),
    .I2(\controldeusuario/cambiosneg_1_7_520 ),
    .O(\controldeusuario/mux7_8_1347 )
  );
  MUXF5   \controldeusuario/mux7_6_f5  (
    .I0(\controldeusuario/mux7_8_1347 ),
    .I1(\controldeusuario/mux7_72_1346 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux7_6_f5_1343 )
  );
  MUXF6   \controldeusuario/mux7_4_f6  (
    .I0(\controldeusuario/mux7_6_f5_1343 ),
    .I1(\controldeusuario/mux7_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux7_4_f6_1336 )
  );
  MUXF7   \controldeusuario/mux7_2_f7  (
    .I0(\controldeusuario/mux7_4_f6_1336 ),
    .I1(\controldeusuario/mux7_3_f6_1334 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_lut [7])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_5  (
    .I0(\controldeusuario/cambiosneg_15_6_502 ),
    .I1(\controldeusuario/cambiosneg_14_6_485 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_5_1323 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_6  (
    .I0(\controldeusuario/cambiosneg_13_6_468 ),
    .I1(\controldeusuario/cambiosneg_12_6_459 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_6_1326 )
  );
  MUXF5   \controldeusuario/mux6_4_f5  (
    .I0(\controldeusuario/mux6_6_1326 ),
    .I1(\controldeusuario/mux6_5_1323 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux6_4_f5_1321 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_61  (
    .I0(\controldeusuario/cambiosneg_11_6_442 ),
    .I1(\controldeusuario/cambiosneg_10_6_425 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_61_1327 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_7  (
    .I0(\controldeusuario/cambiosneg_9_6_657 ),
    .I1(\controldeusuario/cambiosneg_8_6_640 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_7_1330 )
  );
  MUXF5   \controldeusuario/mux6_5_f5  (
    .I0(\controldeusuario/mux6_7_1330 ),
    .I1(\controldeusuario/mux6_61_1327 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux6_5_f5_1324 )
  );
  MUXF6   \controldeusuario/mux6_3_f6  (
    .I0(\controldeusuario/mux6_5_f5_1324 ),
    .I1(\controldeusuario/mux6_4_f5_1321 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux6_3_f6_1320 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_62  (
    .I0(\controldeusuario/cambiosneg_7_6_623 ),
    .I1(\controldeusuario/cambiosneg_6_6_604 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_62_1328 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_71  (
    .I0(\controldeusuario/cambiosneg_5_6_587 ),
    .I1(\controldeusuario/cambiosneg_4_6_570 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_71_1331 )
  );
  MUXF5   \controldeusuario/mux6_5_f5_0  (
    .I0(\controldeusuario/mux6_71_1331 ),
    .I1(\controldeusuario/mux6_62_1328 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux6_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_72  (
    .I0(\controldeusuario/cambiosneg_3_6_553 ),
    .I1(\controldeusuario/cambiosneg_2_6_536 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_72_1332 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_8  (
    .I0(\controldeusuario/cambiosneg_1_6_519 ),
    .I1(\controldeusuario/cambiosneg_0_6_408 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_8_1333 )
  );
  MUXF5   \controldeusuario/mux6_6_f5  (
    .I0(\controldeusuario/mux6_8_1333 ),
    .I1(\controldeusuario/mux6_72_1332 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux6_6_f5_1329 )
  );
  MUXF6   \controldeusuario/mux6_4_f6  (
    .I0(\controldeusuario/mux6_6_f5_1329 ),
    .I1(\controldeusuario/mux6_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux6_4_f6_1322 )
  );
  MUXF7   \controldeusuario/mux6_2_f7  (
    .I0(\controldeusuario/mux6_4_f6_1322 ),
    .I1(\controldeusuario/mux6_3_f6_1320 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_lut [6])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_5  (
    .I0(\controldeusuario/cambiospos_15_0_762 ),
    .I1(\controldeusuario/cambiospos_14_0_745 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux8_5_1351 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_6  (
    .I0(\controldeusuario/cambiospos_13_0_728 ),
    .I1(\controldeusuario/cambiospos_12_0_719 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux8_6_1354 )
  );
  MUXF5   \controldeusuario/mux8_4_f5  (
    .I0(\controldeusuario/mux8_6_1354 ),
    .I1(\controldeusuario/mux8_5_1351 ),
    .S(\controldeusuario/puntero_1_2_1411 ),
    .O(\controldeusuario/mux8_4_f5_1349 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_61  (
    .I0(\controldeusuario/cambiospos_11_0_702 ),
    .I1(\controldeusuario/cambiospos_10_0_685 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux8_61_1355 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_7  (
    .I0(\controldeusuario/cambiospos_9_0_918 ),
    .I1(\controldeusuario/cambiospos_8_0_901 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux8_7_1358 )
  );
  MUXF5   \controldeusuario/mux8_5_f5  (
    .I0(\controldeusuario/mux8_7_1358 ),
    .I1(\controldeusuario/mux8_61_1355 ),
    .S(\controldeusuario/puntero_1_2_1411 ),
    .O(\controldeusuario/mux8_5_f5_1352 )
  );
  MUXF6   \controldeusuario/mux8_3_f6  (
    .I0(\controldeusuario/mux8_5_f5_1352 ),
    .I1(\controldeusuario/mux8_4_f5_1349 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux8_3_f6_1348 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_62  (
    .I0(\controldeusuario/cambiospos_7_0_884 ),
    .I1(\controldeusuario/cambiospos_6_0_865 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux8_62_1356 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_71  (
    .I0(\controldeusuario/cambiospos_5_0_848 ),
    .I1(\controldeusuario/cambiospos_4_0_831 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux8_71_1359 )
  );
  MUXF5   \controldeusuario/mux8_5_f5_0  (
    .I0(\controldeusuario/mux8_71_1359 ),
    .I1(\controldeusuario/mux8_62_1356 ),
    .S(\controldeusuario/puntero_1_2_1411 ),
    .O(\controldeusuario/mux8_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_72  (
    .I0(\controldeusuario/cambiospos_3_0_814 ),
    .I1(\controldeusuario/cambiospos_2_0_797 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux8_72_1360 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_8  (
    .I0(\controldeusuario/cambiospos_1_0_779 ),
    .I1(\controldeusuario/cambiospos_0_0_668 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux8_8_1361 )
  );
  MUXF5   \controldeusuario/mux8_6_f5  (
    .I0(\controldeusuario/mux8_8_1361 ),
    .I1(\controldeusuario/mux8_72_1360 ),
    .S(\controldeusuario/puntero_1_2_1411 ),
    .O(\controldeusuario/mux8_6_f5_1357 )
  );
  MUXF6   \controldeusuario/mux8_4_f6  (
    .I0(\controldeusuario/mux8_6_f5_1357 ),
    .I1(\controldeusuario/mux8_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux8_4_f6_1350 )
  );
  MUXF7   \controldeusuario/mux8_2_f7  (
    .I0(\controldeusuario/mux8_4_f6_1350 ),
    .I1(\controldeusuario/mux8_3_f6_1348 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_cy[0] )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_5  (
    .I0(\controldeusuario/cambiosneg_15_4_500 ),
    .I1(\controldeusuario/cambiosneg_14_4_483 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_5_1295 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_6  (
    .I0(\controldeusuario/cambiosneg_13_4_466 ),
    .I1(\controldeusuario/cambiosneg_12_4_457 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_6_1298 )
  );
  MUXF5   \controldeusuario/mux4_4_f5  (
    .I0(\controldeusuario/mux4_6_1298 ),
    .I1(\controldeusuario/mux4_5_1295 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux4_4_f5_1293 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_61  (
    .I0(\controldeusuario/cambiosneg_11_4_440 ),
    .I1(\controldeusuario/cambiosneg_10_4_423 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_61_1299 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_7  (
    .I0(\controldeusuario/cambiosneg_9_4_655 ),
    .I1(\controldeusuario/cambiosneg_8_4_638 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_7_1302 )
  );
  MUXF5   \controldeusuario/mux4_5_f5  (
    .I0(\controldeusuario/mux4_7_1302 ),
    .I1(\controldeusuario/mux4_61_1299 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux4_5_f5_1296 )
  );
  MUXF6   \controldeusuario/mux4_3_f6  (
    .I0(\controldeusuario/mux4_5_f5_1296 ),
    .I1(\controldeusuario/mux4_4_f5_1293 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux4_3_f6_1292 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_62  (
    .I0(\controldeusuario/cambiosneg_7_4_621 ),
    .I1(\controldeusuario/cambiosneg_6_4_602 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_62_1300 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_71  (
    .I0(\controldeusuario/cambiosneg_5_4_585 ),
    .I1(\controldeusuario/cambiosneg_4_4_568 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_71_1303 )
  );
  MUXF5   \controldeusuario/mux4_5_f5_0  (
    .I0(\controldeusuario/mux4_71_1303 ),
    .I1(\controldeusuario/mux4_62_1300 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux4_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_72  (
    .I0(\controldeusuario/cambiosneg_3_4_551 ),
    .I1(\controldeusuario/cambiosneg_2_4_534 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_72_1304 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_8  (
    .I0(\controldeusuario/cambiosneg_1_4_517 ),
    .I1(\controldeusuario/cambiosneg_0_4_406 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_8_1305 )
  );
  MUXF5   \controldeusuario/mux4_6_f5  (
    .I0(\controldeusuario/mux4_8_1305 ),
    .I1(\controldeusuario/mux4_72_1304 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux4_6_f5_1301 )
  );
  MUXF6   \controldeusuario/mux4_4_f6  (
    .I0(\controldeusuario/mux4_6_f5_1301 ),
    .I1(\controldeusuario/mux4_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux4_4_f6_1294 )
  );
  MUXF7   \controldeusuario/mux4_2_f7  (
    .I0(\controldeusuario/mux4_4_f6_1294 ),
    .I1(\controldeusuario/mux4_3_f6_1292 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_lut [4])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_5  (
    .I0(\controldeusuario/cambiosneg_15_3_499 ),
    .I1(\controldeusuario/cambiosneg_14_3_482 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_5_1281 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_6  (
    .I0(\controldeusuario/cambiosneg_13_3_465 ),
    .I1(\controldeusuario/cambiosneg_12_3_456 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_6_1284 )
  );
  MUXF5   \controldeusuario/mux3_4_f5  (
    .I0(\controldeusuario/mux3_6_1284 ),
    .I1(\controldeusuario/mux3_5_1281 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux3_4_f5_1279 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_61  (
    .I0(\controldeusuario/cambiosneg_11_3_439 ),
    .I1(\controldeusuario/cambiosneg_10_3_422 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_61_1285 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_7  (
    .I0(\controldeusuario/cambiosneg_9_3_654 ),
    .I1(\controldeusuario/cambiosneg_8_3_637 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_7_1288 )
  );
  MUXF5   \controldeusuario/mux3_5_f5  (
    .I0(\controldeusuario/mux3_7_1288 ),
    .I1(\controldeusuario/mux3_61_1285 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux3_5_f5_1282 )
  );
  MUXF6   \controldeusuario/mux3_3_f6  (
    .I0(\controldeusuario/mux3_5_f5_1282 ),
    .I1(\controldeusuario/mux3_4_f5_1279 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux3_3_f6_1278 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_62  (
    .I0(\controldeusuario/cambiosneg_7_3_620 ),
    .I1(\controldeusuario/cambiosneg_6_3_601 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_62_1286 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_71  (
    .I0(\controldeusuario/cambiosneg_5_3_584 ),
    .I1(\controldeusuario/cambiosneg_4_3_567 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_71_1289 )
  );
  MUXF5   \controldeusuario/mux3_5_f5_0  (
    .I0(\controldeusuario/mux3_71_1289 ),
    .I1(\controldeusuario/mux3_62_1286 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux3_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_72  (
    .I0(\controldeusuario/cambiosneg_3_3_550 ),
    .I1(\controldeusuario/cambiosneg_2_3_533 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_72_1290 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_8  (
    .I0(\controldeusuario/cambiosneg_1_3_516 ),
    .I1(\controldeusuario/cambiosneg_0_3_405 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_8_1291 )
  );
  MUXF5   \controldeusuario/mux3_6_f5  (
    .I0(\controldeusuario/mux3_8_1291 ),
    .I1(\controldeusuario/mux3_72_1290 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux3_6_f5_1287 )
  );
  MUXF6   \controldeusuario/mux3_4_f6  (
    .I0(\controldeusuario/mux3_6_f5_1287 ),
    .I1(\controldeusuario/mux3_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux3_4_f6_1280 )
  );
  MUXF7   \controldeusuario/mux3_2_f7  (
    .I0(\controldeusuario/mux3_4_f6_1280 ),
    .I1(\controldeusuario/mux3_3_f6_1278 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_lut [3])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_5  (
    .I0(\controldeusuario/cambiosneg_15_5_501 ),
    .I1(\controldeusuario/cambiosneg_14_5_484 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_5_1309 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_6  (
    .I0(\controldeusuario/cambiosneg_13_5_467 ),
    .I1(\controldeusuario/cambiosneg_12_5_458 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_6_1312 )
  );
  MUXF5   \controldeusuario/mux5_4_f5  (
    .I0(\controldeusuario/mux5_6_1312 ),
    .I1(\controldeusuario/mux5_5_1309 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux5_4_f5_1307 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_61  (
    .I0(\controldeusuario/cambiosneg_11_5_441 ),
    .I1(\controldeusuario/cambiosneg_10_5_424 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_61_1313 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_7  (
    .I0(\controldeusuario/cambiosneg_9_5_656 ),
    .I1(\controldeusuario/cambiosneg_8_5_639 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_7_1316 )
  );
  MUXF5   \controldeusuario/mux5_5_f5  (
    .I0(\controldeusuario/mux5_7_1316 ),
    .I1(\controldeusuario/mux5_61_1313 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux5_5_f5_1310 )
  );
  MUXF6   \controldeusuario/mux5_3_f6  (
    .I0(\controldeusuario/mux5_5_f5_1310 ),
    .I1(\controldeusuario/mux5_4_f5_1307 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux5_3_f6_1306 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_62  (
    .I0(\controldeusuario/cambiosneg_7_5_622 ),
    .I1(\controldeusuario/cambiosneg_6_5_603 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_62_1314 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_71  (
    .I0(\controldeusuario/cambiosneg_5_5_586 ),
    .I1(\controldeusuario/cambiosneg_4_5_569 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_71_1317 )
  );
  MUXF5   \controldeusuario/mux5_5_f5_0  (
    .I0(\controldeusuario/mux5_71_1317 ),
    .I1(\controldeusuario/mux5_62_1314 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux5_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_72  (
    .I0(\controldeusuario/cambiosneg_3_5_552 ),
    .I1(\controldeusuario/cambiosneg_2_5_535 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_72_1318 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_8  (
    .I0(\controldeusuario/cambiosneg_1_5_518 ),
    .I1(\controldeusuario/cambiosneg_0_5_407 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_8_1319 )
  );
  MUXF5   \controldeusuario/mux5_6_f5  (
    .I0(\controldeusuario/mux5_8_1319 ),
    .I1(\controldeusuario/mux5_72_1318 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux5_6_f5_1315 )
  );
  MUXF6   \controldeusuario/mux5_4_f6  (
    .I0(\controldeusuario/mux5_6_f5_1315 ),
    .I1(\controldeusuario/mux5_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux5_4_f6_1308 )
  );
  MUXF7   \controldeusuario/mux5_2_f7  (
    .I0(\controldeusuario/mux5_4_f6_1308 ),
    .I1(\controldeusuario/mux5_3_f6_1306 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_lut [5])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_5  (
    .I0(\controldeusuario/cambiosneg_15_1_497 ),
    .I1(\controldeusuario/cambiosneg_14_1_480 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux1_5_1085 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_6  (
    .I0(\controldeusuario/cambiosneg_13_1_463 ),
    .I1(\controldeusuario/cambiosneg_12_1_454 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux1_6_1088 )
  );
  MUXF5   \controldeusuario/mux1_4_f5  (
    .I0(\controldeusuario/mux1_6_1088 ),
    .I1(\controldeusuario/mux1_5_1085 ),
    .S(\controldeusuario/puntero_1_1_1410 ),
    .O(\controldeusuario/mux1_4_f5_1083 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_61  (
    .I0(\controldeusuario/cambiosneg_11_1_437 ),
    .I1(\controldeusuario/cambiosneg_10_1_420 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux1_61_1089 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_7  (
    .I0(\controldeusuario/cambiosneg_9_1_652 ),
    .I1(\controldeusuario/cambiosneg_8_1_635 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux1_7_1092 )
  );
  MUXF5   \controldeusuario/mux1_5_f5  (
    .I0(\controldeusuario/mux1_7_1092 ),
    .I1(\controldeusuario/mux1_61_1089 ),
    .S(\controldeusuario/puntero_1_1_1410 ),
    .O(\controldeusuario/mux1_5_f5_1086 )
  );
  MUXF6   \controldeusuario/mux1_3_f6  (
    .I0(\controldeusuario/mux1_5_f5_1086 ),
    .I1(\controldeusuario/mux1_4_f5_1083 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux1_3_f6_1082 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_62  (
    .I0(\controldeusuario/cambiosneg_7_1_618 ),
    .I1(\controldeusuario/cambiosneg_6_1_599 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux1_62_1090 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_71  (
    .I0(\controldeusuario/cambiosneg_5_1_582 ),
    .I1(\controldeusuario/cambiosneg_4_1_565 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux1_71_1093 )
  );
  MUXF5   \controldeusuario/mux1_5_f5_0  (
    .I0(\controldeusuario/mux1_71_1093 ),
    .I1(\controldeusuario/mux1_62_1090 ),
    .S(\controldeusuario/puntero_1_1_1410 ),
    .O(\controldeusuario/mux1_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_72  (
    .I0(\controldeusuario/cambiosneg_3_1_548 ),
    .I1(\controldeusuario/cambiosneg_2_1_531 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux1_72_1094 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_8  (
    .I0(\controldeusuario/cambiosneg_1_1_514 ),
    .I1(\controldeusuario/cambiosneg_0_1_403 ),
    .I2(\controldeusuario/puntero_0_1_1407 ),
    .O(\controldeusuario/mux1_8_1095 )
  );
  MUXF5   \controldeusuario/mux1_6_f5  (
    .I0(\controldeusuario/mux1_8_1095 ),
    .I1(\controldeusuario/mux1_72_1094 ),
    .S(\controldeusuario/puntero_1_1_1410 ),
    .O(\controldeusuario/mux1_6_f5_1091 )
  );
  MUXF6   \controldeusuario/mux1_4_f6  (
    .I0(\controldeusuario/mux1_6_f5_1091 ),
    .I1(\controldeusuario/mux1_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux1_4_f6_1084 )
  );
  MUXF7   \controldeusuario/mux1_2_f7  (
    .I0(\controldeusuario/mux1_4_f6_1084 ),
    .I1(\controldeusuario/mux1_3_f6_1082 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_lut [1])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_5  (
    .I0(\controldeusuario/cambiosneg_15_0_496 ),
    .I1(\controldeusuario/cambiosneg_14_0_479 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux_5_1379 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_6  (
    .I0(\controldeusuario/cambiosneg_13_0_462 ),
    .I1(\controldeusuario/cambiosneg_12_0_453 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux_6_1382 )
  );
  MUXF5   \controldeusuario/mux_4_f5  (
    .I0(\controldeusuario/mux_6_1382 ),
    .I1(\controldeusuario/mux_5_1379 ),
    .S(\controldeusuario/puntero_1_1_1410 ),
    .O(\controldeusuario/mux_4_f5_1377 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_61  (
    .I0(\controldeusuario/cambiosneg_11_0_436 ),
    .I1(\controldeusuario/cambiosneg_10_0_419 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux_61_1383 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_7  (
    .I0(\controldeusuario/cambiosneg_9_0_651 ),
    .I1(\controldeusuario/cambiosneg_8_0_634 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux_7_1386 )
  );
  MUXF5   \controldeusuario/mux_5_f5  (
    .I0(\controldeusuario/mux_7_1386 ),
    .I1(\controldeusuario/mux_61_1383 ),
    .S(\controldeusuario/puntero_1_1_1410 ),
    .O(\controldeusuario/mux_5_f5_1380 )
  );
  MUXF6   \controldeusuario/mux_3_f6  (
    .I0(\controldeusuario/mux_5_f5_1380 ),
    .I1(\controldeusuario/mux_4_f5_1377 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux_3_f6_1376 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_62  (
    .I0(\controldeusuario/cambiosneg_7_0_617 ),
    .I1(\controldeusuario/cambiosneg_6_0_598 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux_62_1384 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_71  (
    .I0(\controldeusuario/cambiosneg_5_0_581 ),
    .I1(\controldeusuario/cambiosneg_4_0_564 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux_71_1387 )
  );
  MUXF5   \controldeusuario/mux_5_f5_0  (
    .I0(\controldeusuario/mux_71_1387 ),
    .I1(\controldeusuario/mux_62_1384 ),
    .S(\controldeusuario/puntero_1_1_1410 ),
    .O(\controldeusuario/mux_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_72  (
    .I0(\controldeusuario/cambiosneg_3_0_547 ),
    .I1(\controldeusuario/cambiosneg_2_0_530 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux_72_1388 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_8  (
    .I0(\controldeusuario/cambiosneg_1_0_513 ),
    .I1(\controldeusuario/cambiosneg_0_0_402 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux_8_1389 )
  );
  MUXF5   \controldeusuario/mux_6_f5  (
    .I0(\controldeusuario/mux_8_1389 ),
    .I1(\controldeusuario/mux_72_1388 ),
    .S(\controldeusuario/puntero_1_1_1410 ),
    .O(\controldeusuario/mux_6_f5_1385 )
  );
  MUXF6   \controldeusuario/mux_4_f6  (
    .I0(\controldeusuario/mux_6_f5_1385 ),
    .I1(\controldeusuario/mux_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux_4_f6_1378 )
  );
  MUXF7   \controldeusuario/mux_2_f7  (
    .I0(\controldeusuario/mux_4_f6_1378 ),
    .I1(\controldeusuario/mux_3_f6_1376 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_cy[0] )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_5  (
    .I0(\controldeusuario/cambiosneg_15_2_498 ),
    .I1(\controldeusuario/cambiosneg_14_2_481 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux2_5_1239 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_6  (
    .I0(\controldeusuario/cambiosneg_13_2_464 ),
    .I1(\controldeusuario/cambiosneg_12_2_455 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux2_6_1242 )
  );
  MUXF5   \controldeusuario/mux2_4_f5  (
    .I0(\controldeusuario/mux2_6_1242 ),
    .I1(\controldeusuario/mux2_5_1239 ),
    .S(\controldeusuario/puntero_1_2_1411 ),
    .O(\controldeusuario/mux2_4_f5_1237 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_61  (
    .I0(\controldeusuario/cambiosneg_11_2_438 ),
    .I1(\controldeusuario/cambiosneg_10_2_421 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux2_61_1243 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_7  (
    .I0(\controldeusuario/cambiosneg_9_2_653 ),
    .I1(\controldeusuario/cambiosneg_8_2_636 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux2_7_1246 )
  );
  MUXF5   \controldeusuario/mux2_5_f5  (
    .I0(\controldeusuario/mux2_7_1246 ),
    .I1(\controldeusuario/mux2_61_1243 ),
    .S(\controldeusuario/puntero_1_2_1411 ),
    .O(\controldeusuario/mux2_5_f5_1240 )
  );
  MUXF6   \controldeusuario/mux2_3_f6  (
    .I0(\controldeusuario/mux2_5_f5_1240 ),
    .I1(\controldeusuario/mux2_4_f5_1237 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux2_3_f6_1236 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_62  (
    .I0(\controldeusuario/cambiosneg_7_2_619 ),
    .I1(\controldeusuario/cambiosneg_6_2_600 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux2_62_1244 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_71  (
    .I0(\controldeusuario/cambiosneg_5_2_583 ),
    .I1(\controldeusuario/cambiosneg_4_2_566 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux2_71_1247 )
  );
  MUXF5   \controldeusuario/mux2_5_f5_0  (
    .I0(\controldeusuario/mux2_71_1247 ),
    .I1(\controldeusuario/mux2_62_1244 ),
    .S(\controldeusuario/puntero_1_2_1411 ),
    .O(\controldeusuario/mux2_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_72  (
    .I0(\controldeusuario/cambiosneg_3_2_549 ),
    .I1(\controldeusuario/cambiosneg_2_2_532 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux2_72_1248 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_8  (
    .I0(\controldeusuario/cambiosneg_1_2_515 ),
    .I1(\controldeusuario/cambiosneg_0_2_404 ),
    .I2(\controldeusuario/puntero_0_2_1408 ),
    .O(\controldeusuario/mux2_8_1249 )
  );
  MUXF5   \controldeusuario/mux2_6_f5  (
    .I0(\controldeusuario/mux2_8_1249 ),
    .I1(\controldeusuario/mux2_72_1248 ),
    .S(\controldeusuario/puntero_1_2_1411 ),
    .O(\controldeusuario/mux2_6_f5_1245 )
  );
  MUXF6   \controldeusuario/mux2_4_f6  (
    .I0(\controldeusuario/mux2_6_f5_1245 ),
    .I1(\controldeusuario/mux2_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux2_4_f6_1238 )
  );
  MUXF7   \controldeusuario/mux2_2_f7  (
    .I0(\controldeusuario/mux2_4_f6_1238 ),
    .I1(\controldeusuario/mux2_3_f6_1236 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_lut [2])
  );
  FDRE   \controldeusuario/puntero2_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/puntero2_not0001 ),
    .D(\controldeusuario/Result [3]),
    .R(\controldeusuario/puntero2_or0000 ),
    .Q(\controldeusuario/puntero2 [3])
  );
  FDRE   \controldeusuario/puntero2_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/puntero2_not0001 ),
    .D(\controldeusuario/Result [2]),
    .R(\controldeusuario/puntero2_or0000 ),
    .Q(\controldeusuario/puntero2 [2])
  );
  FDRE   \controldeusuario/puntero2_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/puntero2_not0001 ),
    .D(\controldeusuario/Result [1]),
    .R(\controldeusuario/puntero2_or0000 ),
    .Q(\controldeusuario/puntero2 [1])
  );
  FDRE   \controldeusuario/puntero2_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/puntero2_not0001 ),
    .D(\controldeusuario/Result [0]),
    .R(\controldeusuario/puntero2_or0000 ),
    .Q(\controldeusuario/puntero2 [0])
  );
  FDRE   \controldeusuario/Dato_out_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/Dato_out [7])
  );
  FDRE   \controldeusuario/Dato_out_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/Dato_out [6])
  );
  FDRE   \controldeusuario/Dato_out_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/Dato_out [5])
  );
  FDRE   \controldeusuario/Dato_out_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/Dato_out [4])
  );
  FDRE   \controldeusuario/Dato_out_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/Dato_out [3])
  );
  FDRE   \controldeusuario/Dato_out_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/Dato_out [2])
  );
  FDRE   \controldeusuario/Dato_out_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/Dato_out [1])
  );
  FDRE   \controldeusuario/Dato_out_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/Dato_out [0])
  );
  FDRE   \controldeusuario/cambiosneg_12_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_12_7_460 )
  );
  FDRE   \controldeusuario/cambiosneg_12_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_12_6_459 )
  );
  FDRE   \controldeusuario/cambiosneg_12_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_12_5_458 )
  );
  FDRE   \controldeusuario/cambiosneg_12_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_12_4_457 )
  );
  FDRE   \controldeusuario/cambiosneg_12_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_12_3_456 )
  );
  FDRE   \controldeusuario/cambiosneg_12_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_12_2_455 )
  );
  FDRE   \controldeusuario/cambiosneg_12_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_12_1_454 )
  );
  FDRE   \controldeusuario/cambiosneg_12_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_12_0_453 )
  );
  FDRE   \controldeusuario/cambiospos_12_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_12_not0001_727 ),
    .D(\controldeusuario/COND_4_addsub0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_12_7_726 )
  );
  FDRE   \controldeusuario/cambiospos_12_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_12_not0001_727 ),
    .D(\controldeusuario/COND_4_addsub0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_12_6_725 )
  );
  FDRE   \controldeusuario/cambiospos_12_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_12_not0001_727 ),
    .D(\controldeusuario/COND_4_addsub0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_12_5_724 )
  );
  FDRE   \controldeusuario/cambiospos_12_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_12_not0001_727 ),
    .D(\controldeusuario/COND_4_addsub0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_12_4_723 )
  );
  FDRE   \controldeusuario/cambiospos_12_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_12_not0001_727 ),
    .D(\controldeusuario/COND_4_addsub0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_12_3_722 )
  );
  FDRE   \controldeusuario/cambiospos_12_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_12_not0001_727 ),
    .D(\controldeusuario/COND_4_addsub0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_12_2_721 )
  );
  FDRE   \controldeusuario/cambiospos_12_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_12_not0001_727 ),
    .D(\controldeusuario/COND_4_addsub0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_12_1_720 )
  );
  FDRE   \controldeusuario/cambiospos_12_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_12_not0001_727 ),
    .D(\controldeusuario/COND_4_addsub0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_12_0_719 )
  );
  FDRE   \controldeusuario/ADD2_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Mrom__COND_56 ),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/ADD2[6] )
  );
  FDRE   \controldeusuario/ADD2_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Mrom__COND_55 ),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/ADD2[5] )
  );
  FDRE   \controldeusuario/ADD2_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Mrom__COND_54 ),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/ADD2[4] )
  );
  FDRE   \controldeusuario/ADD2_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Mrom__COND_52 ),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/ADD2[2] )
  );
  FDRE   \controldeusuario/ADD2_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Mrom__COND_51 ),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/ADD2[1] )
  );
  FDRE   \controldeusuario/ADD2_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Mrom__COND_5 ),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/ADD2[0] )
  );
  FDRE   \controldeusuario/ADD_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/puntero2 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/ADD [3])
  );
  FDRE   \controldeusuario/ADD_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/puntero2 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/ADD [2])
  );
  FDRE   \controldeusuario/ADD_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/puntero2 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/ADD [1])
  );
  FDRE   \controldeusuario/ADD_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/puntero2 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/ADD [0])
  );
  FDE   \controldeusuario/punteroOut_3  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/reset_inv ),
    .D(\controldeusuario/punteroOut_mux0000 [3]),
    .Q(\controldeusuario/punteroOut [3])
  );
  FDE   \controldeusuario/punteroOut_2  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/reset_inv ),
    .D(\controldeusuario/punteroOut_mux0000 [2]),
    .Q(\controldeusuario/punteroOut [2])
  );
  FDE   \controldeusuario/punteroOut_1  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/reset_inv ),
    .D(\controldeusuario/punteroOut_mux0000 [1]),
    .Q(\controldeusuario/punteroOut [1])
  );
  FDE   \controldeusuario/punteroOut_0  (
    .C(clk_BUFGP_236),
    .CE(\Cront_out/reset_inv ),
    .D(\controldeusuario/punteroOut_mux0000 [0]),
    .Q(\controldeusuario/punteroOut [0])
  );
  FDRE   \controldeusuario/cambiosneg_15_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_15_not0001_512 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_15_7_503 )
  );
  FDRE   \controldeusuario/cambiosneg_15_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_15_not0001_512 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_15_6_502 )
  );
  FDRE   \controldeusuario/cambiosneg_15_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_15_not0001_512 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_15_5_501 )
  );
  FDRE   \controldeusuario/cambiosneg_15_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_15_not0001_512 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_15_4_500 )
  );
  FDRE   \controldeusuario/cambiosneg_15_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_15_not0001_512 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_15_3_499 )
  );
  FDRE   \controldeusuario/cambiosneg_15_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_15_not0001_512 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_15_2_498 )
  );
  FDRE   \controldeusuario/cambiosneg_15_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_15_not0001_512 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_15_1_497 )
  );
  FDRE   \controldeusuario/cambiosneg_15_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_15_not0001_512 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_15_0_496 )
  );
  FDRE   \controldeusuario/cambiosneg_14_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_14_not0001_495 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_14_7_486 )
  );
  FDRE   \controldeusuario/cambiosneg_14_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_14_not0001_495 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_14_6_485 )
  );
  FDRE   \controldeusuario/cambiosneg_14_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_14_not0001_495 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_14_5_484 )
  );
  FDRE   \controldeusuario/cambiosneg_14_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_14_not0001_495 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_14_4_483 )
  );
  FDRE   \controldeusuario/cambiosneg_14_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_14_not0001_495 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_14_3_482 )
  );
  FDRE   \controldeusuario/cambiosneg_14_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_14_not0001_495 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_14_2_481 )
  );
  FDRE   \controldeusuario/cambiosneg_14_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_14_not0001_495 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_14_1_480 )
  );
  FDRE   \controldeusuario/cambiosneg_14_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_14_not0001_495 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_14_0_479 )
  );
  FDRE   \controldeusuario/cambiosneg_13_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_13_not0001_478 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_13_7_469 )
  );
  FDRE   \controldeusuario/cambiosneg_13_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_13_not0001_478 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_13_6_468 )
  );
  FDRE   \controldeusuario/cambiosneg_13_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_13_not0001_478 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_13_5_467 )
  );
  FDRE   \controldeusuario/cambiosneg_13_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_13_not0001_478 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_13_4_466 )
  );
  FDRE   \controldeusuario/cambiosneg_13_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_13_not0001_478 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_13_3_465 )
  );
  FDRE   \controldeusuario/cambiosneg_13_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_13_not0001_478 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_13_2_464 )
  );
  FDRE   \controldeusuario/cambiosneg_13_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_13_not0001_478 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_13_1_463 )
  );
  FDRE   \controldeusuario/cambiosneg_13_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_13_not0001_478 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_13_0_462 )
  );
  FDRE   \controldeusuario/cambiosneg_10_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_10_not0001_435 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_10_7_426 )
  );
  FDRE   \controldeusuario/cambiosneg_10_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_10_not0001_435 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_10_6_425 )
  );
  FDRE   \controldeusuario/cambiosneg_10_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_10_not0001_435 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_10_5_424 )
  );
  FDRE   \controldeusuario/cambiosneg_10_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_10_not0001_435 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_10_4_423 )
  );
  FDRE   \controldeusuario/cambiosneg_10_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_10_not0001_435 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_10_3_422 )
  );
  FDRE   \controldeusuario/cambiosneg_10_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_10_not0001_435 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_10_2_421 )
  );
  FDRE   \controldeusuario/cambiosneg_10_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_10_not0001_435 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_10_1_420 )
  );
  FDRE   \controldeusuario/cambiosneg_10_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_10_not0001_435 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_10_0_419 )
  );
  FDRE   \controldeusuario/cambiosneg_9_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_9_not0001_667 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_9_7_658 )
  );
  FDRE   \controldeusuario/cambiosneg_9_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_9_not0001_667 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_9_6_657 )
  );
  FDRE   \controldeusuario/cambiosneg_9_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_9_not0001_667 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_9_5_656 )
  );
  FDRE   \controldeusuario/cambiosneg_9_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_9_not0001_667 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_9_4_655 )
  );
  FDRE   \controldeusuario/cambiosneg_9_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_9_not0001_667 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_9_3_654 )
  );
  FDRE   \controldeusuario/cambiosneg_9_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_9_not0001_667 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_9_2_653 )
  );
  FDRE   \controldeusuario/cambiosneg_9_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_9_not0001_667 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_9_1_652 )
  );
  FDRE   \controldeusuario/cambiosneg_9_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_9_not0001_667 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_9_0_651 )
  );
  FDRE   \controldeusuario/cambiosneg_11_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_11_not0001_452 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_11_7_443 )
  );
  FDRE   \controldeusuario/cambiosneg_11_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_11_not0001_452 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_11_6_442 )
  );
  FDRE   \controldeusuario/cambiosneg_11_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_11_not0001_452 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_11_5_441 )
  );
  FDRE   \controldeusuario/cambiosneg_11_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_11_not0001_452 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_11_4_440 )
  );
  FDRE   \controldeusuario/cambiosneg_11_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_11_not0001_452 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_11_3_439 )
  );
  FDRE   \controldeusuario/cambiosneg_11_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_11_not0001_452 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_11_2_438 )
  );
  FDRE   \controldeusuario/cambiosneg_11_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_11_not0001_452 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_11_1_437 )
  );
  FDRE   \controldeusuario/cambiosneg_11_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_11_not0001_452 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_11_0_436 )
  );
  FDRE   \controldeusuario/cambiosneg_8_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_8_not0001_650 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_8_7_641 )
  );
  FDRE   \controldeusuario/cambiosneg_8_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_8_not0001_650 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_8_6_640 )
  );
  FDRE   \controldeusuario/cambiosneg_8_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_8_not0001_650 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_8_5_639 )
  );
  FDRE   \controldeusuario/cambiosneg_8_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_8_not0001_650 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_8_4_638 )
  );
  FDRE   \controldeusuario/cambiosneg_8_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_8_not0001_650 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_8_3_637 )
  );
  FDRE   \controldeusuario/cambiosneg_8_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_8_not0001_650 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_8_2_636 )
  );
  FDRE   \controldeusuario/cambiosneg_8_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_8_not0001_650 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_8_1_635 )
  );
  FDRE   \controldeusuario/cambiosneg_8_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_8_not0001_650 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_8_0_634 )
  );
  FDRE   \controldeusuario/cambiosneg_7_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_7_not0001_633 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_7_7_624 )
  );
  FDRE   \controldeusuario/cambiosneg_7_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_7_not0001_633 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_7_6_623 )
  );
  FDRE   \controldeusuario/cambiosneg_7_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_7_not0001_633 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_7_5_622 )
  );
  FDRE   \controldeusuario/cambiosneg_7_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_7_not0001_633 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_7_4_621 )
  );
  FDRE   \controldeusuario/cambiosneg_7_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_7_not0001_633 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_7_3_620 )
  );
  FDRE   \controldeusuario/cambiosneg_7_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_7_not0001_633 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_7_2_619 )
  );
  FDRE   \controldeusuario/cambiosneg_7_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_7_not0001_633 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_7_1_618 )
  );
  FDRE   \controldeusuario/cambiosneg_7_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_7_not0001_633 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_7_0_617 )
  );
  FDRE   \controldeusuario/cambiosneg_6_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_6_7_605 )
  );
  FDRE   \controldeusuario/cambiosneg_6_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_6_6_604 )
  );
  FDRE   \controldeusuario/cambiosneg_6_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_6_5_603 )
  );
  FDRE   \controldeusuario/cambiosneg_6_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_6_4_602 )
  );
  FDRE   \controldeusuario/cambiosneg_6_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_6_3_601 )
  );
  FDRE   \controldeusuario/cambiosneg_6_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_6_2_600 )
  );
  FDRE   \controldeusuario/cambiosneg_6_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_6_1_599 )
  );
  FDRE   \controldeusuario/cambiosneg_6_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_6_0_598 )
  );
  FDRE   \controldeusuario/cambiosneg_5_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_5_not0001_597 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_5_7_588 )
  );
  FDRE   \controldeusuario/cambiosneg_5_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_5_not0001_597 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_5_6_587 )
  );
  FDRE   \controldeusuario/cambiosneg_5_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_5_not0001_597 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_5_5_586 )
  );
  FDRE   \controldeusuario/cambiosneg_5_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_5_not0001_597 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_5_4_585 )
  );
  FDRE   \controldeusuario/cambiosneg_5_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_5_not0001_597 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_5_3_584 )
  );
  FDRE   \controldeusuario/cambiosneg_5_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_5_not0001_597 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_5_2_583 )
  );
  FDRE   \controldeusuario/cambiosneg_5_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_5_not0001_597 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_5_1_582 )
  );
  FDRE   \controldeusuario/cambiosneg_5_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_5_not0001_597 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_5_0_581 )
  );
  FDRE   \controldeusuario/cambiosneg_3_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_3_not0001_563 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_3_7_554 )
  );
  FDRE   \controldeusuario/cambiosneg_3_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_3_not0001_563 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_3_6_553 )
  );
  FDRE   \controldeusuario/cambiosneg_3_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_3_not0001_563 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_3_5_552 )
  );
  FDRE   \controldeusuario/cambiosneg_3_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_3_not0001_563 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_3_4_551 )
  );
  FDRE   \controldeusuario/cambiosneg_3_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_3_not0001_563 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_3_3_550 )
  );
  FDRE   \controldeusuario/cambiosneg_3_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_3_not0001_563 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_3_2_549 )
  );
  FDRE   \controldeusuario/cambiosneg_3_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_3_not0001_563 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_3_1_548 )
  );
  FDRE   \controldeusuario/cambiosneg_3_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_3_not0001_563 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_3_0_547 )
  );
  FDRE   \controldeusuario/cambiosneg_2_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_2_not0001_546 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_2_7_537 )
  );
  FDRE   \controldeusuario/cambiosneg_2_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_2_not0001_546 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_2_6_536 )
  );
  FDRE   \controldeusuario/cambiosneg_2_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_2_not0001_546 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_2_5_535 )
  );
  FDRE   \controldeusuario/cambiosneg_2_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_2_not0001_546 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_2_4_534 )
  );
  FDRE   \controldeusuario/cambiosneg_2_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_2_not0001_546 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_2_3_533 )
  );
  FDRE   \controldeusuario/cambiosneg_2_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_2_not0001_546 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_2_2_532 )
  );
  FDRE   \controldeusuario/cambiosneg_2_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_2_not0001_546 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_2_1_531 )
  );
  FDRE   \controldeusuario/cambiosneg_2_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_2_not0001_546 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_2_0_530 )
  );
  FDRE   \controldeusuario/cambiosneg_4_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_4_not0001_580 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_4_7_571 )
  );
  FDRE   \controldeusuario/cambiosneg_4_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_4_not0001_580 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_4_6_570 )
  );
  FDRE   \controldeusuario/cambiosneg_4_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_4_not0001_580 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_4_5_569 )
  );
  FDRE   \controldeusuario/cambiosneg_4_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_4_not0001_580 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_4_4_568 )
  );
  FDRE   \controldeusuario/cambiosneg_4_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_4_not0001_580 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_4_3_567 )
  );
  FDRE   \controldeusuario/cambiosneg_4_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_4_not0001_580 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_4_2_566 )
  );
  FDRE   \controldeusuario/cambiosneg_4_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_4_not0001_580 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_4_1_565 )
  );
  FDRE   \controldeusuario/cambiosneg_4_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_4_not0001_580 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_4_0_564 )
  );
  FDRE   \controldeusuario/cambiosneg_1_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_1_not0001_529 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_1_7_520 )
  );
  FDRE   \controldeusuario/cambiosneg_1_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_1_not0001_529 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_1_6_519 )
  );
  FDRE   \controldeusuario/cambiosneg_1_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_1_not0001_529 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_1_5_518 )
  );
  FDRE   \controldeusuario/cambiosneg_1_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_1_not0001_529 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_1_4_517 )
  );
  FDRE   \controldeusuario/cambiosneg_1_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_1_not0001_529 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_1_3_516 )
  );
  FDRE   \controldeusuario/cambiosneg_1_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_1_not0001_529 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_1_2_515 )
  );
  FDRE   \controldeusuario/cambiosneg_1_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_1_not0001_529 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_1_1_514 )
  );
  FDRE   \controldeusuario/cambiosneg_1_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_1_not0001_529 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_1_0_513 )
  );
  FDRE   \controldeusuario/cambiosneg_0_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_0_not0001_418 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_0_7_409 )
  );
  FDRE   \controldeusuario/cambiosneg_0_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_0_not0001_418 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_0_6_408 )
  );
  FDRE   \controldeusuario/cambiosneg_0_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_0_not0001_418 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_0_5_407 )
  );
  FDRE   \controldeusuario/cambiosneg_0_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_0_not0001_418 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_0_4_406 )
  );
  FDRE   \controldeusuario/cambiosneg_0_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_0_not0001_418 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_0_3_405 )
  );
  FDRE   \controldeusuario/cambiosneg_0_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_0_not0001_418 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_0_2_404 )
  );
  FDRE   \controldeusuario/cambiosneg_0_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_0_not0001_418 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_0_1_403 )
  );
  FDRE   \controldeusuario/cambiosneg_0_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiosneg_0_not0001_418 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiosneg_0_0_402 )
  );
  FDRE   \controldeusuario/cambiospos_15_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_15_not0001_778 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_15_7_769 )
  );
  FDRE   \controldeusuario/cambiospos_15_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_15_not0001_778 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_15_6_768 )
  );
  FDRE   \controldeusuario/cambiospos_15_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_15_not0001_778 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_15_5_767 )
  );
  FDRE   \controldeusuario/cambiospos_15_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_15_not0001_778 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_15_4_766 )
  );
  FDRE   \controldeusuario/cambiospos_15_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_15_not0001_778 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_15_3_765 )
  );
  FDRE   \controldeusuario/cambiospos_15_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_15_not0001_778 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_15_2_764 )
  );
  FDRE   \controldeusuario/cambiospos_15_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_15_not0001_778 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_15_1_763 )
  );
  FDRE   \controldeusuario/cambiospos_15_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_15_not0001_778 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_15_0_762 )
  );
  FDRE   \controldeusuario/cambiospos_14_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_14_not0001_761 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_14_7_752 )
  );
  FDRE   \controldeusuario/cambiospos_14_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_14_not0001_761 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_14_6_751 )
  );
  FDRE   \controldeusuario/cambiospos_14_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_14_not0001_761 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_14_5_750 )
  );
  FDRE   \controldeusuario/cambiospos_14_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_14_not0001_761 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_14_4_749 )
  );
  FDRE   \controldeusuario/cambiospos_14_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_14_not0001_761 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_14_3_748 )
  );
  FDRE   \controldeusuario/cambiospos_14_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_14_not0001_761 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_14_2_747 )
  );
  FDRE   \controldeusuario/cambiospos_14_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_14_not0001_761 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_14_1_746 )
  );
  FDRE   \controldeusuario/cambiospos_14_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_14_not0001_761 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_14_0_745 )
  );
  FDRE   \controldeusuario/cambiospos_11_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_11_not0001_718 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_11_7_709 )
  );
  FDRE   \controldeusuario/cambiospos_11_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_11_not0001_718 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_11_6_708 )
  );
  FDRE   \controldeusuario/cambiospos_11_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_11_not0001_718 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_11_5_707 )
  );
  FDRE   \controldeusuario/cambiospos_11_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_11_not0001_718 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_11_4_706 )
  );
  FDRE   \controldeusuario/cambiospos_11_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_11_not0001_718 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_11_3_705 )
  );
  FDRE   \controldeusuario/cambiospos_11_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_11_not0001_718 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_11_2_704 )
  );
  FDRE   \controldeusuario/cambiospos_11_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_11_not0001_718 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_11_1_703 )
  );
  FDRE   \controldeusuario/cambiospos_11_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_11_not0001_718 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_11_0_702 )
  );
  FDRE   \controldeusuario/cambiospos_13_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_13_not0001_744 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_13_7_735 )
  );
  FDRE   \controldeusuario/cambiospos_13_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_13_not0001_744 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_13_6_734 )
  );
  FDRE   \controldeusuario/cambiospos_13_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_13_not0001_744 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_13_5_733 )
  );
  FDRE   \controldeusuario/cambiospos_13_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_13_not0001_744 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_13_4_732 )
  );
  FDRE   \controldeusuario/cambiospos_13_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_13_not0001_744 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_13_3_731 )
  );
  FDRE   \controldeusuario/cambiospos_13_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_13_not0001_744 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_13_2_730 )
  );
  FDRE   \controldeusuario/cambiospos_13_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_13_not0001_744 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_13_1_729 )
  );
  FDRE   \controldeusuario/cambiospos_13_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_13_not0001_744 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_13_0_728 )
  );
  FDRE   \controldeusuario/cambiospos_10_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_10_not0001_701 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_10_7_692 )
  );
  FDRE   \controldeusuario/cambiospos_10_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_10_not0001_701 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_10_6_691 )
  );
  FDRE   \controldeusuario/cambiospos_10_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_10_not0001_701 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_10_5_690 )
  );
  FDRE   \controldeusuario/cambiospos_10_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_10_not0001_701 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_10_4_689 )
  );
  FDRE   \controldeusuario/cambiospos_10_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_10_not0001_701 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_10_3_688 )
  );
  FDRE   \controldeusuario/cambiospos_10_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_10_not0001_701 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_10_2_687 )
  );
  FDRE   \controldeusuario/cambiospos_10_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_10_not0001_701 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_10_1_686 )
  );
  FDRE   \controldeusuario/cambiospos_10_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_10_not0001_701 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_10_0_685 )
  );
  FDRE   \controldeusuario/cambiospos_9_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_9_7_925 )
  );
  FDRE   \controldeusuario/cambiospos_9_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_9_6_924 )
  );
  FDRE   \controldeusuario/cambiospos_9_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_9_5_923 )
  );
  FDRE   \controldeusuario/cambiospos_9_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_9_4_922 )
  );
  FDRE   \controldeusuario/cambiospos_9_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_9_3_921 )
  );
  FDRE   \controldeusuario/cambiospos_9_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_9_2_920 )
  );
  FDRE   \controldeusuario/cambiospos_9_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_9_1_919 )
  );
  FDRE   \controldeusuario/cambiospos_9_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_9_0_918 )
  );
  FDRE   \controldeusuario/cambiospos_8_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_8_not0001_917 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_8_7_908 )
  );
  FDRE   \controldeusuario/cambiospos_8_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_8_not0001_917 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_8_6_907 )
  );
  FDRE   \controldeusuario/cambiospos_8_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_8_not0001_917 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_8_5_906 )
  );
  FDRE   \controldeusuario/cambiospos_8_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_8_not0001_917 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_8_4_905 )
  );
  FDRE   \controldeusuario/cambiospos_8_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_8_not0001_917 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_8_3_904 )
  );
  FDRE   \controldeusuario/cambiospos_8_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_8_not0001_917 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_8_2_903 )
  );
  FDRE   \controldeusuario/cambiospos_8_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_8_not0001_917 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_8_1_902 )
  );
  FDRE   \controldeusuario/cambiospos_8_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_8_not0001_917 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_8_0_901 )
  );
  FDRE   \controldeusuario/cambiospos_7_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_7_not0001_900 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_7_7_891 )
  );
  FDRE   \controldeusuario/cambiospos_7_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_7_not0001_900 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_7_6_890 )
  );
  FDRE   \controldeusuario/cambiospos_7_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_7_not0001_900 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_7_5_889 )
  );
  FDRE   \controldeusuario/cambiospos_7_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_7_not0001_900 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_7_4_888 )
  );
  FDRE   \controldeusuario/cambiospos_7_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_7_not0001_900 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_7_3_887 )
  );
  FDRE   \controldeusuario/cambiospos_7_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_7_not0001_900 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_7_2_886 )
  );
  FDRE   \controldeusuario/cambiospos_7_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_7_not0001_900 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_7_1_885 )
  );
  FDRE   \controldeusuario/cambiospos_7_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_7_not0001_900 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_7_0_884 )
  );
  FDRE   \controldeusuario/cambiospos_5_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_5_not0001_864 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_5_7_855 )
  );
  FDRE   \controldeusuario/cambiospos_5_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_5_not0001_864 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_5_6_854 )
  );
  FDRE   \controldeusuario/cambiospos_5_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_5_not0001_864 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_5_5_853 )
  );
  FDRE   \controldeusuario/cambiospos_5_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_5_not0001_864 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_5_4_852 )
  );
  FDRE   \controldeusuario/cambiospos_5_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_5_not0001_864 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_5_3_851 )
  );
  FDRE   \controldeusuario/cambiospos_5_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_5_not0001_864 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_5_2_850 )
  );
  FDRE   \controldeusuario/cambiospos_5_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_5_not0001_864 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_5_1_849 )
  );
  FDRE   \controldeusuario/cambiospos_5_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_5_not0001_864 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_5_0_848 )
  );
  FDRE   \controldeusuario/cambiospos_4_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_4_not0001_847 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_4_7_838 )
  );
  FDRE   \controldeusuario/cambiospos_4_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_4_not0001_847 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_4_6_837 )
  );
  FDRE   \controldeusuario/cambiospos_4_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_4_not0001_847 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_4_5_836 )
  );
  FDRE   \controldeusuario/cambiospos_4_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_4_not0001_847 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_4_4_835 )
  );
  FDRE   \controldeusuario/cambiospos_4_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_4_not0001_847 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_4_3_834 )
  );
  FDRE   \controldeusuario/cambiospos_4_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_4_not0001_847 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_4_2_833 )
  );
  FDRE   \controldeusuario/cambiospos_4_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_4_not0001_847 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_4_1_832 )
  );
  FDRE   \controldeusuario/cambiospos_4_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_4_not0001_847 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_4_0_831 )
  );
  FDRE   \controldeusuario/cambiospos_6_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_6_7_872 )
  );
  FDRE   \controldeusuario/cambiospos_6_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_6_6_871 )
  );
  FDRE   \controldeusuario/cambiospos_6_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_6_5_870 )
  );
  FDRE   \controldeusuario/cambiospos_6_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_6_4_869 )
  );
  FDRE   \controldeusuario/cambiospos_6_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_6_3_868 )
  );
  FDRE   \controldeusuario/cambiospos_6_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_6_2_867 )
  );
  FDRE   \controldeusuario/cambiospos_6_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_6_1_866 )
  );
  FDRE   \controldeusuario/cambiospos_6_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_6_0_865 )
  );
  FDRE   \controldeusuario/cambiospos_3_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_3_not0001_830 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_3_7_821 )
  );
  FDRE   \controldeusuario/cambiospos_3_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_3_not0001_830 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_3_6_820 )
  );
  FDRE   \controldeusuario/cambiospos_3_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_3_not0001_830 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_3_5_819 )
  );
  FDRE   \controldeusuario/cambiospos_3_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_3_not0001_830 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_3_4_818 )
  );
  FDRE   \controldeusuario/cambiospos_3_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_3_not0001_830 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_3_3_817 )
  );
  FDRE   \controldeusuario/cambiospos_3_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_3_not0001_830 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_3_2_816 )
  );
  FDRE   \controldeusuario/cambiospos_3_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_3_not0001_830 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_3_1_815 )
  );
  FDRE   \controldeusuario/cambiospos_3_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_3_not0001_830 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_3_0_814 )
  );
  FDRE   \controldeusuario/cambiospos_2_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_2_not0001_813 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_2_7_804 )
  );
  FDRE   \controldeusuario/cambiospos_2_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_2_not0001_813 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_2_6_803 )
  );
  FDRE   \controldeusuario/cambiospos_2_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_2_not0001_813 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_2_5_802 )
  );
  FDRE   \controldeusuario/cambiospos_2_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_2_not0001_813 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_2_4_801 )
  );
  FDRE   \controldeusuario/cambiospos_2_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_2_not0001_813 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_2_3_800 )
  );
  FDRE   \controldeusuario/cambiospos_2_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_2_not0001_813 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_2_2_799 )
  );
  FDRE   \controldeusuario/cambiospos_2_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_2_not0001_813 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_2_1_798 )
  );
  FDRE   \controldeusuario/cambiospos_2_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_2_not0001_813 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_2_0_797 )
  );
  FDRE   \controldeusuario/cambiospos_1_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_1_7_786 )
  );
  FDRE   \controldeusuario/cambiospos_1_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_1_6_785 )
  );
  FDRE   \controldeusuario/cambiospos_1_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_1_5_784 )
  );
  FDRE   \controldeusuario/cambiospos_1_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_1_4_783 )
  );
  FDRE   \controldeusuario/cambiospos_1_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_1_3_782 )
  );
  FDRE   \controldeusuario/cambiospos_1_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_1_2_781 )
  );
  FDRE   \controldeusuario/cambiospos_1_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_1_1_780 )
  );
  FDRE   \controldeusuario/cambiospos_1_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_1_0_779 )
  );
  FDRE   \controldeusuario/cambiospos_0_7  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_0_not0001_684 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [7]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_0_7_675 )
  );
  FDRE   \controldeusuario/cambiospos_0_6  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_0_not0001_684 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [6]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_0_6_674 )
  );
  FDRE   \controldeusuario/cambiospos_0_5  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_0_not0001_684 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [5]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_0_5_673 )
  );
  FDRE   \controldeusuario/cambiospos_0_4  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_0_not0001_684 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [4]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_0_4_672 )
  );
  FDRE   \controldeusuario/cambiospos_0_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_0_not0001_684 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [3]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_0_3_671 )
  );
  FDRE   \controldeusuario/cambiospos_0_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_0_not0001_684 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_0_2_670 )
  );
  FDRE   \controldeusuario/cambiospos_0_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_0_not0001_684 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_0_1_669 )
  );
  FDRE   \controldeusuario/cambiospos_0_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/cambiospos_0_not0001_684 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/cambiospos_0_0_668 )
  );
  FDRE   \controldeusuario/puntero_3  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [0]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/puntero [3])
  );
  FDRE   \controldeusuario/puntero_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [1]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/puntero [2])
  );
  FDRE   \controldeusuario/puntero_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/puntero [1])
  );
  FDSE   \controldeusuario/puntero_0  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [3]),
    .S(reset_IBUF_1907),
    .Q(\controldeusuario/puntero [0])
  );
  FDRE   \controldeusuario/escritura  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(N1),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/escritura_936 )
  );
  FDR   \controldeusuario/Maquina_out  (
    .C(clk_BUFGP_236),
    .D(N1),
    .R(\controldeusuario/Maquina_out_or0000 ),
    .Q(\controldeusuario/Maquina_out_327 )
  );
  FDRE   \controldeusuario/final  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/final_not0001_941 ),
    .D(\controldeusuario/final_mux0000 ),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/final_937 )
  );
  FDR   \WT/state_FSM_FFd11  (
    .C(clk_BUFGP_236),
    .D(\WT/state_FSM_FFd11-In ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd11_222 )
  );
  FDS   \WT/state_FSM_FFd12  (
    .C(clk_BUFGP_236),
    .D(\WT/state_FSM_FFd12-In ),
    .S(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd12_224 )
  );
  FDR   \WT/state_FSM_FFd1  (
    .C(clk_BUFGP_236),
    .D(\WT/state_FSM_FFd1-In ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd1_219 )
  );
  FDR   \write/state_FSM_FFd2  (
    .C(clk_BUFGP_236),
    .D(\write/state_FSM_FFd2-In ),
    .R(\write/state_or0000 ),
    .Q(\write/state_FSM_FFd2_1956 )
  );
  FDR   \write/state_FSM_FFd1  (
    .C(clk_BUFGP_236),
    .D(\write/state_FSM_FFd1-In ),
    .R(\write/state_or0000 ),
    .Q(\write/state_FSM_FFd1_1954 )
  );
  FDR   \write/final  (
    .C(clk_BUFGP_236),
    .D(\write/state_cmp_eq0003 ),
    .R(\write/state_or0000 ),
    .Q(\write/final_1953 )
  );
  FDR   \write/activa  (
    .C(clk_BUFGP_236),
    .D(\write/state_FSM_FFd2_1956 ),
    .R(\write/state_or0000 ),
    .Q(\write/activa_1916 )
  );
  FDR   \write/data_out_7  (
    .C(clk_BUFGP_236),
    .D(\write/data_out_mux0000 [0]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [7])
  );
  FDR   \write/data_out_6  (
    .C(clk_BUFGP_236),
    .D(\write/data_out_mux0000 [1]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [6])
  );
  FDR   \write/data_out_5  (
    .C(clk_BUFGP_236),
    .D(\write/data_out_mux0000 [2]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [5])
  );
  FDR   \write/data_out_4  (
    .C(clk_BUFGP_236),
    .D(\write/data_out_mux0000 [3]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [4])
  );
  FDR   \write/data_out_3  (
    .C(clk_BUFGP_236),
    .D(\write/data_out_mux0000 [4]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [3])
  );
  FDR   \write/data_out_2  (
    .C(clk_BUFGP_236),
    .D(\write/data_out_mux0000 [5]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [2])
  );
  FDR   \write/data_out_1  (
    .C(clk_BUFGP_236),
    .D(\write/data_out_mux0000 [6]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [1])
  );
  FDR   \write/data_out_0  (
    .C(clk_BUFGP_236),
    .D(\write/data_out_mux0000 [7]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [0])
  );
  FDR   \write/dir_out_7  (
    .C(clk_BUFGP_236),
    .D(\write/dir_out_mux0000[0] ),
    .R(\write/state_or0000 ),
    .Q(\write/dir_out[7] )
  );
  FDR   \write/dir_out_6  (
    .C(clk_BUFGP_236),
    .D(\write/dir_out_mux0000[1] ),
    .R(\write/state_or0000 ),
    .Q(\write/dir_out[6] )
  );
  FDR   \write/dir_out_5  (
    .C(clk_BUFGP_236),
    .D(\write/dir_out_mux0000[2] ),
    .R(\write/state_or0000 ),
    .Q(\write/dir_out[5] )
  );
  FDR   \write/dir_out_4  (
    .C(clk_BUFGP_236),
    .D(\write/dir_out_mux0000[3] ),
    .R(\write/state_or0000 ),
    .Q(\write/dir_out[4] )
  );
  FDR   \write/dir_out_2  (
    .C(clk_BUFGP_236),
    .D(\write/dir_out_mux0000[5] ),
    .R(\write/state_or0000 ),
    .Q(\write/dir_out[2] )
  );
  FDR   \write/dir_out_1  (
    .C(clk_BUFGP_236),
    .D(\write/dir_out_mux0000[6] ),
    .R(\write/state_or0000 ),
    .Q(\write/dir_out[1] )
  );
  FDR   \write/dir_out_0  (
    .C(clk_BUFGP_236),
    .D(\write/dir_out_mux0000[7] ),
    .R(\write/state_or0000 ),
    .Q(\write/dir_out[0] )
  );
  FDR   \read/state_FSM_FFd2  (
    .C(clk_BUFGP_236),
    .D(\read/state_FSM_FFd2-In ),
    .R(\read/state_or0000 ),
    .Q(\read/state_FSM_FFd2_1901 )
  );
  FDR   \read/state_FSM_FFd1  (
    .C(clk_BUFGP_236),
    .D(\read/state_FSM_FFd1-In ),
    .R(\read/state_or0000 ),
    .Q(\read/state_FSM_FFd1_1899 )
  );
  FDR   \read/activa  (
    .C(clk_BUFGP_236),
    .D(\read/state_FSM_FFd2_1901 ),
    .R(\read/state_or0000 ),
    .Q(\read/activa_1877 )
  );
  FDR   \read/w  (
    .C(clk_BUFGP_236),
    .D(\read/w_mux0000 ),
    .R(\read/state_or0000 ),
    .Q(\read/w_1904 )
  );
  FDR   \read/final  (
    .C(clk_BUFGP_236),
    .D(\read/state_FSM_FFd1_1899 ),
    .R(\read/state_or0000 ),
    .Q(\read/final_1890 )
  );
  FDR   \read/dir_out_7  (
    .C(clk_BUFGP_236),
    .D(\read/dir_out_mux0000[3] ),
    .R(\read/state_or0000 ),
    .Q(\read/dir_out[7] )
  );
  FDR   \read/dir_out_6  (
    .C(clk_BUFGP_236),
    .D(\read/dir_out_mux0000[1] ),
    .R(\read/state_or0000 ),
    .Q(\read/dir_out[6] )
  );
  FDR   \read/dir_out_5  (
    .C(clk_BUFGP_236),
    .D(\read/dir_out_mux0000[2] ),
    .R(\read/state_or0000 ),
    .Q(\read/dir_out[5] )
  );
  FDR   \read/dir_out_2  (
    .C(clk_BUFGP_236),
    .D(\read/dir_out_mux0000[5] ),
    .R(\read/state_or0000 ),
    .Q(\read/dir_out[2] )
  );
  FDR   \read/dir_out_1  (
    .C(clk_BUFGP_236),
    .D(\read/dir_out_mux0000[6] ),
    .R(\read/state_or0000 ),
    .Q(\read/dir_out[1] )
  );
  FDR   \read/dir_out_0  (
    .C(clk_BUFGP_236),
    .D(\read/dir_out_mux0000[7] ),
    .R(\read/state_or0000 ),
    .Q(\read/dir_out[0] )
  );
  FDR   \read/reg_out_3  (
    .C(clk_BUFGP_236),
    .D(\read/reg_out_mux0000 [0]),
    .R(\read/state_or0000 ),
    .Q(\read/reg_out [3])
  );
  FDR   \read/reg_out_2  (
    .C(clk_BUFGP_236),
    .D(\read/reg_out_mux0000 [1]),
    .R(\read/state_or0000 ),
    .Q(\read/reg_out [2])
  );
  FDR   \read/reg_out_1  (
    .C(clk_BUFGP_236),
    .D(\read/reg_out_mux0000 [2]),
    .R(\read/state_or0000 ),
    .Q(\read/reg_out [1])
  );
  FDR   \read/reg_out_0  (
    .C(clk_BUFGP_236),
    .D(\read/reg_out_mux0000 [3]),
    .R(\read/state_or0000 ),
    .Q(\read/reg_out [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux15_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_7_1559 ),
    .I2(\memoria/memoria1_15_7_1568 ),
    .O(\memoria/mux15_5_1726 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux15_6  (
    .I0(\memoria/memoria1_13_7_1550 ),
    .I1(\controldeusuario/ADD [0]),
    .O(\memoria/mux15_6_1729 )
  );
  MUXF5   \memoria/mux15_4_f5  (
    .I0(\memoria/mux15_6_1729 ),
    .I1(\memoria/mux15_5_1726 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux15_4_f5_1724 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux15_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_7_1528 ),
    .I2(\memoria/memoria1_11_7_1537 ),
    .O(\memoria/mux15_61_1730 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux15_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_7_1641 ),
    .I2(\memoria/memoria1_9_7_1651 ),
    .O(\memoria/mux15_7_1733 )
  );
  MUXF5   \memoria/mux15_5_f5  (
    .I0(\memoria/mux15_7_1733 ),
    .I1(\memoria/mux15_61_1730 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux15_5_f5_1727 )
  );
  MUXF6   \memoria/mux15_3_f6  (
    .I0(\memoria/mux15_5_f5_1727 ),
    .I1(\memoria/mux15_4_f5_1724 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux15_3_f6_1723 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux15_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_7_1623 ),
    .I2(\memoria/memoria1_7_7_1632 ),
    .O(\memoria/mux15_62_1731 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux15_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_7_1604 ),
    .I2(\memoria/memoria1_5_7_1614 ),
    .O(\memoria/mux15_71_1734 )
  );
  MUXF5   \memoria/mux15_5_f5_0  (
    .I0(\memoria/mux15_71_1734 ),
    .I1(\memoria/mux15_62_1731 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux15_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux15_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_7_1586 ),
    .I2(\memoria/memoria1_3_7_1595 ),
    .O(\memoria/mux15_72_1735 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux15_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_7_1518 ),
    .I2(\memoria/memoria1_1_7_1577 ),
    .O(\memoria/mux15_8_1736 )
  );
  MUXF5   \memoria/mux15_6_f5  (
    .I0(\memoria/mux15_8_1736 ),
    .I1(\memoria/mux15_72_1735 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux15_6_f5_1732 )
  );
  MUXF6   \memoria/mux15_4_f6  (
    .I0(\memoria/mux15_6_f5_1732 ),
    .I1(\memoria/mux15_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux15_4_f6_1725 )
  );
  MUXF7   \memoria/mux15_2_f7  (
    .I0(\memoria/mux15_4_f6_1725 ),
    .I1(\memoria/mux15_3_f6_1723 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux14_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_6_1558 ),
    .I2(\memoria/memoria1_15_6_1567 ),
    .O(\memoria/mux14_5_1712 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux14_6  (
    .I0(\memoria/memoria1_13_6_1549 ),
    .I1(\controldeusuario/ADD [0]),
    .O(\memoria/mux14_6_1715 )
  );
  MUXF5   \memoria/mux14_4_f5  (
    .I0(\memoria/mux14_6_1715 ),
    .I1(\memoria/mux14_5_1712 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux14_4_f5_1710 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux14_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_6_1527 ),
    .I2(\memoria/memoria1_11_6_1536 ),
    .O(\memoria/mux14_61_1716 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux14_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_6_1640 ),
    .I2(\memoria/memoria1_9_6_1650 ),
    .O(\memoria/mux14_7_1719 )
  );
  MUXF5   \memoria/mux14_5_f5  (
    .I0(\memoria/mux14_7_1719 ),
    .I1(\memoria/mux14_61_1716 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux14_5_f5_1713 )
  );
  MUXF6   \memoria/mux14_3_f6  (
    .I0(\memoria/mux14_5_f5_1713 ),
    .I1(\memoria/mux14_4_f5_1710 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux14_3_f6_1709 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux14_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_6_1622 ),
    .I2(\memoria/memoria1_7_6_1631 ),
    .O(\memoria/mux14_62_1717 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux14_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_6_1603 ),
    .I2(\memoria/memoria1_5_6_1613 ),
    .O(\memoria/mux14_71_1720 )
  );
  MUXF5   \memoria/mux14_5_f5_0  (
    .I0(\memoria/mux14_71_1720 ),
    .I1(\memoria/mux14_62_1717 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux14_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux14_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_6_1585 ),
    .I2(\memoria/memoria1_3_6_1594 ),
    .O(\memoria/mux14_72_1721 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux14_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_6_1517 ),
    .I2(\memoria/memoria1_1_6_1576 ),
    .O(\memoria/mux14_8_1722 )
  );
  MUXF5   \memoria/mux14_6_f5  (
    .I0(\memoria/mux14_8_1722 ),
    .I1(\memoria/mux14_72_1721 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux14_6_f5_1718 )
  );
  MUXF6   \memoria/mux14_4_f6  (
    .I0(\memoria/mux14_6_f5_1718 ),
    .I1(\memoria/mux14_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux14_4_f6_1711 )
  );
  MUXF7   \memoria/mux14_2_f7  (
    .I0(\memoria/mux14_4_f6_1711 ),
    .I1(\memoria/mux14_3_f6_1709 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux13_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_5_1557 ),
    .I2(\memoria/memoria1_15_5_1566 ),
    .O(\memoria/mux13_5_1698 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux13_6  (
    .I0(\memoria/memoria1_13_5_1548 ),
    .I1(\controldeusuario/ADD [0]),
    .O(\memoria/mux13_6_1701 )
  );
  MUXF5   \memoria/mux13_4_f5  (
    .I0(\memoria/mux13_6_1701 ),
    .I1(\memoria/mux13_5_1698 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux13_4_f5_1696 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux13_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_5_1526 ),
    .I2(\memoria/memoria1_11_5_1535 ),
    .O(\memoria/mux13_61_1702 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux13_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_5_1639 ),
    .I2(\memoria/memoria1_9_5_1649 ),
    .O(\memoria/mux13_7_1705 )
  );
  MUXF5   \memoria/mux13_5_f5  (
    .I0(\memoria/mux13_7_1705 ),
    .I1(\memoria/mux13_61_1702 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux13_5_f5_1699 )
  );
  MUXF6   \memoria/mux13_3_f6  (
    .I0(\memoria/mux13_5_f5_1699 ),
    .I1(\memoria/mux13_4_f5_1696 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux13_3_f6_1695 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux13_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_5_1621 ),
    .I2(\memoria/memoria1_7_5_1630 ),
    .O(\memoria/mux13_62_1703 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux13_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_5_1602 ),
    .I2(\memoria/memoria1_5_5_1612 ),
    .O(\memoria/mux13_71_1706 )
  );
  MUXF5   \memoria/mux13_5_f5_0  (
    .I0(\memoria/mux13_71_1706 ),
    .I1(\memoria/mux13_62_1703 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux13_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux13_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_5_1584 ),
    .I2(\memoria/memoria1_3_5_1593 ),
    .O(\memoria/mux13_72_1707 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux13_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_5_1516 ),
    .I2(\memoria/memoria1_1_5_1575 ),
    .O(\memoria/mux13_8_1708 )
  );
  MUXF5   \memoria/mux13_6_f5  (
    .I0(\memoria/mux13_8_1708 ),
    .I1(\memoria/mux13_72_1707 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux13_6_f5_1704 )
  );
  MUXF6   \memoria/mux13_4_f6  (
    .I0(\memoria/mux13_6_f5_1704 ),
    .I1(\memoria/mux13_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux13_4_f6_1697 )
  );
  MUXF7   \memoria/mux13_2_f7  (
    .I0(\memoria/mux13_4_f6_1697 ),
    .I1(\memoria/mux13_3_f6_1695 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux12_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_4_1556 ),
    .I2(\memoria/memoria1_15_4_1565 ),
    .O(\memoria/mux12_5_1684 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux12_6  (
    .I0(\memoria/memoria1_13_4_1547 ),
    .I1(\controldeusuario/ADD [0]),
    .O(\memoria/mux12_6_1687 )
  );
  MUXF5   \memoria/mux12_4_f5  (
    .I0(\memoria/mux12_6_1687 ),
    .I1(\memoria/mux12_5_1684 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux12_4_f5_1682 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux12_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_4_1525 ),
    .I2(\memoria/memoria1_11_4_1534 ),
    .O(\memoria/mux12_61_1688 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux12_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_4_1638 ),
    .I2(\memoria/memoria1_9_4_1648 ),
    .O(\memoria/mux12_7_1691 )
  );
  MUXF5   \memoria/mux12_5_f5  (
    .I0(\memoria/mux12_7_1691 ),
    .I1(\memoria/mux12_61_1688 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux12_5_f5_1685 )
  );
  MUXF6   \memoria/mux12_3_f6  (
    .I0(\memoria/mux12_5_f5_1685 ),
    .I1(\memoria/mux12_4_f5_1682 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux12_3_f6_1681 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux12_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_4_1620 ),
    .I2(\memoria/memoria1_7_4_1629 ),
    .O(\memoria/mux12_62_1689 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux12_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_4_1601 ),
    .I2(\memoria/memoria1_5_4_1611 ),
    .O(\memoria/mux12_71_1692 )
  );
  MUXF5   \memoria/mux12_5_f5_0  (
    .I0(\memoria/mux12_71_1692 ),
    .I1(\memoria/mux12_62_1689 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux12_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux12_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_4_1583 ),
    .I2(\memoria/memoria1_3_4_1592 ),
    .O(\memoria/mux12_72_1693 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux12_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_4_1515 ),
    .I2(\memoria/memoria1_1_4_1574 ),
    .O(\memoria/mux12_8_1694 )
  );
  MUXF5   \memoria/mux12_6_f5  (
    .I0(\memoria/mux12_8_1694 ),
    .I1(\memoria/mux12_72_1693 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux12_6_f5_1690 )
  );
  MUXF6   \memoria/mux12_4_f6  (
    .I0(\memoria/mux12_6_f5_1690 ),
    .I1(\memoria/mux12_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux12_4_f6_1683 )
  );
  MUXF7   \memoria/mux12_2_f7  (
    .I0(\memoria/mux12_4_f6_1683 ),
    .I1(\memoria/mux12_3_f6_1681 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_3_1555 ),
    .I2(\memoria/memoria1_15_3_1564 ),
    .O(\memoria/mux11_5_1670 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_6  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_12_3_1542 ),
    .I2(\memoria/memoria1_13_3_1546 ),
    .O(\memoria/mux11_6_1673 )
  );
  MUXF5   \memoria/mux11_4_f5  (
    .I0(\memoria/mux11_6_1673 ),
    .I1(\memoria/mux11_5_1670 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux11_4_f5_1668 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_3_1524 ),
    .I2(\memoria/memoria1_11_3_1533 ),
    .O(\memoria/mux11_61_1674 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_3_1637 ),
    .I2(\memoria/memoria1_9_3_1647 ),
    .O(\memoria/mux11_7_1677 )
  );
  MUXF5   \memoria/mux11_5_f5  (
    .I0(\memoria/mux11_7_1677 ),
    .I1(\memoria/mux11_61_1674 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux11_5_f5_1671 )
  );
  MUXF6   \memoria/mux11_3_f6  (
    .I0(\memoria/mux11_5_f5_1671 ),
    .I1(\memoria/mux11_4_f5_1668 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux11_3_f6_1667 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_3_1619 ),
    .I2(\memoria/memoria1_7_3_1628 ),
    .O(\memoria/mux11_62_1675 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_3_1600 ),
    .I2(\memoria/memoria1_5_3_1610 ),
    .O(\memoria/mux11_71_1678 )
  );
  MUXF5   \memoria/mux11_5_f5_0  (
    .I0(\memoria/mux11_71_1678 ),
    .I1(\memoria/mux11_62_1675 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux11_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_3_1582 ),
    .I2(\memoria/memoria1_3_3_1591 ),
    .O(\memoria/mux11_72_1679 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_3_1514 ),
    .I2(\memoria/memoria1_1_3_1573 ),
    .O(\memoria/mux11_8_1680 )
  );
  MUXF5   \memoria/mux11_6_f5  (
    .I0(\memoria/mux11_8_1680 ),
    .I1(\memoria/mux11_72_1679 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux11_6_f5_1676 )
  );
  MUXF6   \memoria/mux11_4_f6  (
    .I0(\memoria/mux11_6_f5_1676 ),
    .I1(\memoria/mux11_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux11_4_f6_1669 )
  );
  MUXF7   \memoria/mux11_2_f7  (
    .I0(\memoria/mux11_4_f6_1669 ),
    .I1(\memoria/mux11_3_f6_1667 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_2_1554 ),
    .I2(\memoria/memoria1_15_2_1563 ),
    .O(\memoria/mux10_5_1656 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_6  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_12_2_1541 ),
    .I2(\memoria/memoria1_13_2_1545 ),
    .O(\memoria/mux10_6_1659 )
  );
  MUXF5   \memoria/mux10_4_f5  (
    .I0(\memoria/mux10_6_1659 ),
    .I1(\memoria/mux10_5_1656 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux10_4_f5_1654 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_2_1523 ),
    .I2(\memoria/memoria1_11_2_1532 ),
    .O(\memoria/mux10_61_1660 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_2_1636 ),
    .I2(\memoria/memoria1_9_2_1646 ),
    .O(\memoria/mux10_7_1663 )
  );
  MUXF5   \memoria/mux10_5_f5  (
    .I0(\memoria/mux10_7_1663 ),
    .I1(\memoria/mux10_61_1660 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux10_5_f5_1657 )
  );
  MUXF6   \memoria/mux10_3_f6  (
    .I0(\memoria/mux10_5_f5_1657 ),
    .I1(\memoria/mux10_4_f5_1654 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux10_3_f6_1653 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_2_1618 ),
    .I2(\memoria/memoria1_7_2_1627 ),
    .O(\memoria/mux10_62_1661 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_2_1599 ),
    .I2(\memoria/memoria1_5_2_1609 ),
    .O(\memoria/mux10_71_1664 )
  );
  MUXF5   \memoria/mux10_5_f5_0  (
    .I0(\memoria/mux10_71_1664 ),
    .I1(\memoria/mux10_62_1661 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux10_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_2_1581 ),
    .I2(\memoria/memoria1_3_2_1590 ),
    .O(\memoria/mux10_72_1665 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_2_1513 ),
    .I2(\memoria/memoria1_1_2_1572 ),
    .O(\memoria/mux10_8_1666 )
  );
  MUXF5   \memoria/mux10_6_f5  (
    .I0(\memoria/mux10_8_1666 ),
    .I1(\memoria/mux10_72_1665 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux10_6_f5_1662 )
  );
  MUXF6   \memoria/mux10_4_f6  (
    .I0(\memoria/mux10_6_f5_1662 ),
    .I1(\memoria/mux10_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux10_4_f6_1655 )
  );
  MUXF7   \memoria/mux10_2_f7  (
    .I0(\memoria/mux10_4_f6_1655 ),
    .I1(\memoria/mux10_3_f6_1653 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_1_1553 ),
    .I2(\memoria/memoria1_15_1_1562 ),
    .O(\memoria/mux9_5_1852 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_6  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_12_1_1540 ),
    .I2(\memoria/memoria1_13_1_1544 ),
    .O(\memoria/mux9_6_1855 )
  );
  MUXF5   \memoria/mux9_4_f5  (
    .I0(\memoria/mux9_6_1855 ),
    .I1(\memoria/mux9_5_1852 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux9_4_f5_1850 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_1_1522 ),
    .I2(\memoria/memoria1_11_1_1531 ),
    .O(\memoria/mux9_61_1856 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_1_1635 ),
    .I2(\memoria/memoria1_9_1_1645 ),
    .O(\memoria/mux9_7_1859 )
  );
  MUXF5   \memoria/mux9_5_f5  (
    .I0(\memoria/mux9_7_1859 ),
    .I1(\memoria/mux9_61_1856 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux9_5_f5_1853 )
  );
  MUXF6   \memoria/mux9_3_f6  (
    .I0(\memoria/mux9_5_f5_1853 ),
    .I1(\memoria/mux9_4_f5_1850 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux9_3_f6_1849 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_1_1617 ),
    .I2(\memoria/memoria1_7_1_1626 ),
    .O(\memoria/mux9_62_1857 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_1_1598 ),
    .I2(\memoria/memoria1_5_1_1608 ),
    .O(\memoria/mux9_71_1860 )
  );
  MUXF5   \memoria/mux9_5_f5_0  (
    .I0(\memoria/mux9_71_1860 ),
    .I1(\memoria/mux9_62_1857 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux9_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_1_1580 ),
    .I2(\memoria/memoria1_3_1_1589 ),
    .O(\memoria/mux9_72_1861 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_1_1512 ),
    .I2(\memoria/memoria1_1_1_1571 ),
    .O(\memoria/mux9_8_1862 )
  );
  MUXF5   \memoria/mux9_6_f5  (
    .I0(\memoria/mux9_8_1862 ),
    .I1(\memoria/mux9_72_1861 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux9_6_f5_1858 )
  );
  MUXF6   \memoria/mux9_4_f6  (
    .I0(\memoria/mux9_6_f5_1858 ),
    .I1(\memoria/mux9_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux9_4_f6_1851 )
  );
  MUXF7   \memoria/mux9_2_f7  (
    .I0(\memoria/mux9_4_f6_1851 ),
    .I1(\memoria/mux9_3_f6_1849 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_0_1552 ),
    .I2(\memoria/memoria1_15_0_1561 ),
    .O(\memoria/mux8_5_1838 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_6  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_12_0_1539 ),
    .I2(\memoria/memoria1_13_0_1543 ),
    .O(\memoria/mux8_6_1841 )
  );
  MUXF5   \memoria/mux8_4_f5  (
    .I0(\memoria/mux8_6_1841 ),
    .I1(\memoria/mux8_5_1838 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux8_4_f5_1836 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_0_1521 ),
    .I2(\memoria/memoria1_11_0_1530 ),
    .O(\memoria/mux8_61_1842 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_0_1634 ),
    .I2(\memoria/memoria1_9_0_1644 ),
    .O(\memoria/mux8_7_1845 )
  );
  MUXF5   \memoria/mux8_5_f5  (
    .I0(\memoria/mux8_7_1845 ),
    .I1(\memoria/mux8_61_1842 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux8_5_f5_1839 )
  );
  MUXF6   \memoria/mux8_3_f6  (
    .I0(\memoria/mux8_5_f5_1839 ),
    .I1(\memoria/mux8_4_f5_1836 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux8_3_f6_1835 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_0_1616 ),
    .I2(\memoria/memoria1_7_0_1625 ),
    .O(\memoria/mux8_62_1843 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_0_1597 ),
    .I2(\memoria/memoria1_5_0_1607 ),
    .O(\memoria/mux8_71_1846 )
  );
  MUXF5   \memoria/mux8_5_f5_0  (
    .I0(\memoria/mux8_71_1846 ),
    .I1(\memoria/mux8_62_1843 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux8_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_0_1579 ),
    .I2(\memoria/memoria1_3_0_1588 ),
    .O(\memoria/mux8_72_1847 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_0_1511 ),
    .I2(\memoria/memoria1_1_0_1570 ),
    .O(\memoria/mux8_8_1848 )
  );
  MUXF5   \memoria/mux8_6_f5  (
    .I0(\memoria/mux8_8_1848 ),
    .I1(\memoria/mux8_72_1847 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux8_6_f5_1844 )
  );
  MUXF6   \memoria/mux8_4_f6  (
    .I0(\memoria/mux8_6_f5_1844 ),
    .I1(\memoria/mux8_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux8_4_f6_1837 )
  );
  MUXF7   \memoria/mux8_2_f7  (
    .I0(\memoria/mux8_4_f6_1837 ),
    .I1(\memoria/mux8_3_f6_1835 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux7_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_7_1559 ),
    .I2(\memoria/memoria1_15_7_1568 ),
    .O(\memoria/mux7_5_1824 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux7_6  (
    .I0(\memoria/memoria1_13_7_1550 ),
    .I1(ADDreadreg_0_IBUF_5),
    .O(\memoria/mux7_6_1827 )
  );
  MUXF5   \memoria/mux7_4_f5  (
    .I0(\memoria/mux7_6_1827 ),
    .I1(\memoria/mux7_5_1824 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux7_4_f5_1822 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux7_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_7_1528 ),
    .I2(\memoria/memoria1_11_7_1537 ),
    .O(\memoria/mux7_61_1828 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux7_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_7_1641 ),
    .I2(\memoria/memoria1_9_7_1651 ),
    .O(\memoria/mux7_7_1831 )
  );
  MUXF5   \memoria/mux7_5_f5  (
    .I0(\memoria/mux7_7_1831 ),
    .I1(\memoria/mux7_61_1828 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux7_5_f5_1825 )
  );
  MUXF6   \memoria/mux7_3_f6  (
    .I0(\memoria/mux7_5_f5_1825 ),
    .I1(\memoria/mux7_4_f5_1822 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux7_3_f6_1821 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux7_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_7_1623 ),
    .I2(\memoria/memoria1_7_7_1632 ),
    .O(\memoria/mux7_62_1829 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux7_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_7_1604 ),
    .I2(\memoria/memoria1_5_7_1614 ),
    .O(\memoria/mux7_71_1832 )
  );
  MUXF5   \memoria/mux7_5_f5_0  (
    .I0(\memoria/mux7_71_1832 ),
    .I1(\memoria/mux7_62_1829 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux7_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux7_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_7_1586 ),
    .I2(\memoria/memoria1_3_7_1595 ),
    .O(\memoria/mux7_72_1833 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux7_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_7_1518 ),
    .I2(\memoria/memoria1_1_7_1577 ),
    .O(\memoria/mux7_8_1834 )
  );
  MUXF5   \memoria/mux7_6_f5  (
    .I0(\memoria/mux7_8_1834 ),
    .I1(\memoria/mux7_72_1833 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux7_6_f5_1830 )
  );
  MUXF6   \memoria/mux7_4_f6  (
    .I0(\memoria/mux7_6_f5_1830 ),
    .I1(\memoria/mux7_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux7_4_f6_1823 )
  );
  MUXF7   \memoria/mux7_2_f7  (
    .I0(\memoria/mux7_4_f6_1823 ),
    .I1(\memoria/mux7_3_f6_1821 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux6_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_6_1558 ),
    .I2(\memoria/memoria1_15_6_1567 ),
    .O(\memoria/mux6_5_1810 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux6_6  (
    .I0(\memoria/memoria1_13_6_1549 ),
    .I1(ADDreadreg_0_IBUF_5),
    .O(\memoria/mux6_6_1813 )
  );
  MUXF5   \memoria/mux6_4_f5  (
    .I0(\memoria/mux6_6_1813 ),
    .I1(\memoria/mux6_5_1810 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux6_4_f5_1808 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux6_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_6_1527 ),
    .I2(\memoria/memoria1_11_6_1536 ),
    .O(\memoria/mux6_61_1814 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux6_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_6_1640 ),
    .I2(\memoria/memoria1_9_6_1650 ),
    .O(\memoria/mux6_7_1817 )
  );
  MUXF5   \memoria/mux6_5_f5  (
    .I0(\memoria/mux6_7_1817 ),
    .I1(\memoria/mux6_61_1814 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux6_5_f5_1811 )
  );
  MUXF6   \memoria/mux6_3_f6  (
    .I0(\memoria/mux6_5_f5_1811 ),
    .I1(\memoria/mux6_4_f5_1808 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux6_3_f6_1807 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux6_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_6_1622 ),
    .I2(\memoria/memoria1_7_6_1631 ),
    .O(\memoria/mux6_62_1815 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux6_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_6_1603 ),
    .I2(\memoria/memoria1_5_6_1613 ),
    .O(\memoria/mux6_71_1818 )
  );
  MUXF5   \memoria/mux6_5_f5_0  (
    .I0(\memoria/mux6_71_1818 ),
    .I1(\memoria/mux6_62_1815 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux6_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux6_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_6_1585 ),
    .I2(\memoria/memoria1_3_6_1594 ),
    .O(\memoria/mux6_72_1819 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux6_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_6_1517 ),
    .I2(\memoria/memoria1_1_6_1576 ),
    .O(\memoria/mux6_8_1820 )
  );
  MUXF5   \memoria/mux6_6_f5  (
    .I0(\memoria/mux6_8_1820 ),
    .I1(\memoria/mux6_72_1819 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux6_6_f5_1816 )
  );
  MUXF6   \memoria/mux6_4_f6  (
    .I0(\memoria/mux6_6_f5_1816 ),
    .I1(\memoria/mux6_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux6_4_f6_1809 )
  );
  MUXF7   \memoria/mux6_2_f7  (
    .I0(\memoria/mux6_4_f6_1809 ),
    .I1(\memoria/mux6_3_f6_1807 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux5_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_5_1557 ),
    .I2(\memoria/memoria1_15_5_1566 ),
    .O(\memoria/mux5_5_1796 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux5_6  (
    .I0(\memoria/memoria1_13_5_1548 ),
    .I1(ADDreadreg_0_IBUF_5),
    .O(\memoria/mux5_6_1799 )
  );
  MUXF5   \memoria/mux5_4_f5  (
    .I0(\memoria/mux5_6_1799 ),
    .I1(\memoria/mux5_5_1796 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux5_4_f5_1794 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux5_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_5_1526 ),
    .I2(\memoria/memoria1_11_5_1535 ),
    .O(\memoria/mux5_61_1800 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux5_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_5_1639 ),
    .I2(\memoria/memoria1_9_5_1649 ),
    .O(\memoria/mux5_7_1803 )
  );
  MUXF5   \memoria/mux5_5_f5  (
    .I0(\memoria/mux5_7_1803 ),
    .I1(\memoria/mux5_61_1800 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux5_5_f5_1797 )
  );
  MUXF6   \memoria/mux5_3_f6  (
    .I0(\memoria/mux5_5_f5_1797 ),
    .I1(\memoria/mux5_4_f5_1794 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux5_3_f6_1793 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux5_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_5_1621 ),
    .I2(\memoria/memoria1_7_5_1630 ),
    .O(\memoria/mux5_62_1801 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux5_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_5_1602 ),
    .I2(\memoria/memoria1_5_5_1612 ),
    .O(\memoria/mux5_71_1804 )
  );
  MUXF5   \memoria/mux5_5_f5_0  (
    .I0(\memoria/mux5_71_1804 ),
    .I1(\memoria/mux5_62_1801 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux5_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux5_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_5_1584 ),
    .I2(\memoria/memoria1_3_5_1593 ),
    .O(\memoria/mux5_72_1805 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux5_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_5_1516 ),
    .I2(\memoria/memoria1_1_5_1575 ),
    .O(\memoria/mux5_8_1806 )
  );
  MUXF5   \memoria/mux5_6_f5  (
    .I0(\memoria/mux5_8_1806 ),
    .I1(\memoria/mux5_72_1805 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux5_6_f5_1802 )
  );
  MUXF6   \memoria/mux5_4_f6  (
    .I0(\memoria/mux5_6_f5_1802 ),
    .I1(\memoria/mux5_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux5_4_f6_1795 )
  );
  MUXF7   \memoria/mux5_2_f7  (
    .I0(\memoria/mux5_4_f6_1795 ),
    .I1(\memoria/mux5_3_f6_1793 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux4_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_4_1556 ),
    .I2(\memoria/memoria1_15_4_1565 ),
    .O(\memoria/mux4_5_1782 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux4_6  (
    .I0(\memoria/memoria1_13_4_1547 ),
    .I1(ADDreadreg_0_IBUF_5),
    .O(\memoria/mux4_6_1785 )
  );
  MUXF5   \memoria/mux4_4_f5  (
    .I0(\memoria/mux4_6_1785 ),
    .I1(\memoria/mux4_5_1782 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux4_4_f5_1780 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux4_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_4_1525 ),
    .I2(\memoria/memoria1_11_4_1534 ),
    .O(\memoria/mux4_61_1786 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux4_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_4_1638 ),
    .I2(\memoria/memoria1_9_4_1648 ),
    .O(\memoria/mux4_7_1789 )
  );
  MUXF5   \memoria/mux4_5_f5  (
    .I0(\memoria/mux4_7_1789 ),
    .I1(\memoria/mux4_61_1786 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux4_5_f5_1783 )
  );
  MUXF6   \memoria/mux4_3_f6  (
    .I0(\memoria/mux4_5_f5_1783 ),
    .I1(\memoria/mux4_4_f5_1780 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux4_3_f6_1779 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux4_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_4_1620 ),
    .I2(\memoria/memoria1_7_4_1629 ),
    .O(\memoria/mux4_62_1787 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux4_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_4_1601 ),
    .I2(\memoria/memoria1_5_4_1611 ),
    .O(\memoria/mux4_71_1790 )
  );
  MUXF5   \memoria/mux4_5_f5_0  (
    .I0(\memoria/mux4_71_1790 ),
    .I1(\memoria/mux4_62_1787 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux4_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux4_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_4_1583 ),
    .I2(\memoria/memoria1_3_4_1592 ),
    .O(\memoria/mux4_72_1791 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux4_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_4_1515 ),
    .I2(\memoria/memoria1_1_4_1574 ),
    .O(\memoria/mux4_8_1792 )
  );
  MUXF5   \memoria/mux4_6_f5  (
    .I0(\memoria/mux4_8_1792 ),
    .I1(\memoria/mux4_72_1791 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux4_6_f5_1788 )
  );
  MUXF6   \memoria/mux4_4_f6  (
    .I0(\memoria/mux4_6_f5_1788 ),
    .I1(\memoria/mux4_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux4_4_f6_1781 )
  );
  MUXF7   \memoria/mux4_2_f7  (
    .I0(\memoria/mux4_4_f6_1781 ),
    .I1(\memoria/mux4_3_f6_1779 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_3_1555 ),
    .I2(\memoria/memoria1_15_3_1564 ),
    .O(\memoria/mux3_5_1768 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_6  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_12_3_1542 ),
    .I2(\memoria/memoria1_13_3_1546 ),
    .O(\memoria/mux3_6_1771 )
  );
  MUXF5   \memoria/mux3_4_f5  (
    .I0(\memoria/mux3_6_1771 ),
    .I1(\memoria/mux3_5_1768 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux3_4_f5_1766 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_3_1524 ),
    .I2(\memoria/memoria1_11_3_1533 ),
    .O(\memoria/mux3_61_1772 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_3_1637 ),
    .I2(\memoria/memoria1_9_3_1647 ),
    .O(\memoria/mux3_7_1775 )
  );
  MUXF5   \memoria/mux3_5_f5  (
    .I0(\memoria/mux3_7_1775 ),
    .I1(\memoria/mux3_61_1772 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux3_5_f5_1769 )
  );
  MUXF6   \memoria/mux3_3_f6  (
    .I0(\memoria/mux3_5_f5_1769 ),
    .I1(\memoria/mux3_4_f5_1766 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux3_3_f6_1765 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_3_1619 ),
    .I2(\memoria/memoria1_7_3_1628 ),
    .O(\memoria/mux3_62_1773 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_3_1600 ),
    .I2(\memoria/memoria1_5_3_1610 ),
    .O(\memoria/mux3_71_1776 )
  );
  MUXF5   \memoria/mux3_5_f5_0  (
    .I0(\memoria/mux3_71_1776 ),
    .I1(\memoria/mux3_62_1773 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux3_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_3_1582 ),
    .I2(\memoria/memoria1_3_3_1591 ),
    .O(\memoria/mux3_72_1777 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_3_1514 ),
    .I2(\memoria/memoria1_1_3_1573 ),
    .O(\memoria/mux3_8_1778 )
  );
  MUXF5   \memoria/mux3_6_f5  (
    .I0(\memoria/mux3_8_1778 ),
    .I1(\memoria/mux3_72_1777 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux3_6_f5_1774 )
  );
  MUXF6   \memoria/mux3_4_f6  (
    .I0(\memoria/mux3_6_f5_1774 ),
    .I1(\memoria/mux3_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux3_4_f6_1767 )
  );
  MUXF7   \memoria/mux3_2_f7  (
    .I0(\memoria/mux3_4_f6_1767 ),
    .I1(\memoria/mux3_3_f6_1765 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_2_1554 ),
    .I2(\memoria/memoria1_15_2_1563 ),
    .O(\memoria/mux2_5_1754 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_6  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_12_2_1541 ),
    .I2(\memoria/memoria1_13_2_1545 ),
    .O(\memoria/mux2_6_1757 )
  );
  MUXF5   \memoria/mux2_4_f5  (
    .I0(\memoria/mux2_6_1757 ),
    .I1(\memoria/mux2_5_1754 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux2_4_f5_1752 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_2_1523 ),
    .I2(\memoria/memoria1_11_2_1532 ),
    .O(\memoria/mux2_61_1758 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_2_1636 ),
    .I2(\memoria/memoria1_9_2_1646 ),
    .O(\memoria/mux2_7_1761 )
  );
  MUXF5   \memoria/mux2_5_f5  (
    .I0(\memoria/mux2_7_1761 ),
    .I1(\memoria/mux2_61_1758 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux2_5_f5_1755 )
  );
  MUXF6   \memoria/mux2_3_f6  (
    .I0(\memoria/mux2_5_f5_1755 ),
    .I1(\memoria/mux2_4_f5_1752 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux2_3_f6_1751 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_2_1618 ),
    .I2(\memoria/memoria1_7_2_1627 ),
    .O(\memoria/mux2_62_1759 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_2_1599 ),
    .I2(\memoria/memoria1_5_2_1609 ),
    .O(\memoria/mux2_71_1762 )
  );
  MUXF5   \memoria/mux2_5_f5_0  (
    .I0(\memoria/mux2_71_1762 ),
    .I1(\memoria/mux2_62_1759 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux2_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_2_1581 ),
    .I2(\memoria/memoria1_3_2_1590 ),
    .O(\memoria/mux2_72_1763 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_2_1513 ),
    .I2(\memoria/memoria1_1_2_1572 ),
    .O(\memoria/mux2_8_1764 )
  );
  MUXF5   \memoria/mux2_6_f5  (
    .I0(\memoria/mux2_8_1764 ),
    .I1(\memoria/mux2_72_1763 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux2_6_f5_1760 )
  );
  MUXF6   \memoria/mux2_4_f6  (
    .I0(\memoria/mux2_6_f5_1760 ),
    .I1(\memoria/mux2_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux2_4_f6_1753 )
  );
  MUXF7   \memoria/mux2_2_f7  (
    .I0(\memoria/mux2_4_f6_1753 ),
    .I1(\memoria/mux2_3_f6_1751 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_1_1553 ),
    .I2(\memoria/memoria1_15_1_1562 ),
    .O(\memoria/mux1_5_1740 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_6  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_12_1_1540 ),
    .I2(\memoria/memoria1_13_1_1544 ),
    .O(\memoria/mux1_6_1743 )
  );
  MUXF5   \memoria/mux1_4_f5  (
    .I0(\memoria/mux1_6_1743 ),
    .I1(\memoria/mux1_5_1740 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux1_4_f5_1738 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_1_1522 ),
    .I2(\memoria/memoria1_11_1_1531 ),
    .O(\memoria/mux1_61_1744 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_1_1635 ),
    .I2(\memoria/memoria1_9_1_1645 ),
    .O(\memoria/mux1_7_1747 )
  );
  MUXF5   \memoria/mux1_5_f5  (
    .I0(\memoria/mux1_7_1747 ),
    .I1(\memoria/mux1_61_1744 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux1_5_f5_1741 )
  );
  MUXF6   \memoria/mux1_3_f6  (
    .I0(\memoria/mux1_5_f5_1741 ),
    .I1(\memoria/mux1_4_f5_1738 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux1_3_f6_1737 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_1_1617 ),
    .I2(\memoria/memoria1_7_1_1626 ),
    .O(\memoria/mux1_62_1745 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_1_1598 ),
    .I2(\memoria/memoria1_5_1_1608 ),
    .O(\memoria/mux1_71_1748 )
  );
  MUXF5   \memoria/mux1_5_f5_0  (
    .I0(\memoria/mux1_71_1748 ),
    .I1(\memoria/mux1_62_1745 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux1_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_1_1580 ),
    .I2(\memoria/memoria1_3_1_1589 ),
    .O(\memoria/mux1_72_1749 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_1_1512 ),
    .I2(\memoria/memoria1_1_1_1571 ),
    .O(\memoria/mux1_8_1750 )
  );
  MUXF5   \memoria/mux1_6_f5  (
    .I0(\memoria/mux1_8_1750 ),
    .I1(\memoria/mux1_72_1749 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux1_6_f5_1746 )
  );
  MUXF6   \memoria/mux1_4_f6  (
    .I0(\memoria/mux1_6_f5_1746 ),
    .I1(\memoria/mux1_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux1_4_f6_1739 )
  );
  MUXF7   \memoria/mux1_2_f7  (
    .I0(\memoria/mux1_4_f6_1739 ),
    .I1(\memoria/mux1_3_f6_1737 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_0_1552 ),
    .I2(\memoria/memoria1_15_0_1561 ),
    .O(\memoria/mux_5_1866 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_6  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_12_0_1539 ),
    .I2(\memoria/memoria1_13_0_1543 ),
    .O(\memoria/mux_6_1869 )
  );
  MUXF5   \memoria/mux_4_f5  (
    .I0(\memoria/mux_6_1869 ),
    .I1(\memoria/mux_5_1866 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux_4_f5_1864 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_0_1521 ),
    .I2(\memoria/memoria1_11_0_1530 ),
    .O(\memoria/mux_61_1870 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_0_1634 ),
    .I2(\memoria/memoria1_9_0_1644 ),
    .O(\memoria/mux_7_1873 )
  );
  MUXF5   \memoria/mux_5_f5  (
    .I0(\memoria/mux_7_1873 ),
    .I1(\memoria/mux_61_1870 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux_5_f5_1867 )
  );
  MUXF6   \memoria/mux_3_f6  (
    .I0(\memoria/mux_5_f5_1867 ),
    .I1(\memoria/mux_4_f5_1864 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux_3_f6_1863 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_0_1616 ),
    .I2(\memoria/memoria1_7_0_1625 ),
    .O(\memoria/mux_62_1871 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_0_1597 ),
    .I2(\memoria/memoria1_5_0_1607 ),
    .O(\memoria/mux_71_1874 )
  );
  MUXF5   \memoria/mux_5_f5_0  (
    .I0(\memoria/mux_71_1874 ),
    .I1(\memoria/mux_62_1871 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_0_1579 ),
    .I2(\memoria/memoria1_3_0_1588 ),
    .O(\memoria/mux_72_1875 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_0_1511 ),
    .I2(\memoria/memoria1_1_0_1570 ),
    .O(\memoria/mux_8_1876 )
  );
  MUXF5   \memoria/mux_6_f5  (
    .I0(\memoria/mux_8_1876 ),
    .I1(\memoria/mux_72_1875 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux_6_f5_1872 )
  );
  MUXF6   \memoria/mux_4_f6  (
    .I0(\memoria/mux_6_f5_1872 ),
    .I1(\memoria/mux_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux_4_f6_1865 )
  );
  MUXF7   \memoria/mux_2_f7  (
    .I0(\memoria/mux_4_f6_1865 ),
    .I1(\memoria/mux_3_f6_1863 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [0])
  );
  FDR   \memoria/Dato3_7  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_9 [7]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato3 [7])
  );
  FDR   \memoria/Dato3_6  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_9 [6]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato3 [6])
  );
  FDR   \memoria/Dato3_5  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_9 [5]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato3 [5])
  );
  FDR   \memoria/Dato3_4  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_9 [4]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato3 [4])
  );
  FDR   \memoria/Dato3_3  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_9 [3]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato3 [3])
  );
  FDR   \memoria/Dato3_2  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_9 [2]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato3 [2])
  );
  FDR   \memoria/Dato3_1  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_9 [1]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato3 [1])
  );
  FDR   \memoria/Dato3_0  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_9 [0]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato3 [0])
  );
  FDR   \memoria/Dato2_7  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_8 [7]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato2 [7])
  );
  FDR   \memoria/Dato2_6  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_8 [6]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato2 [6])
  );
  FDR   \memoria/Dato2_5  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_8 [5]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato2 [5])
  );
  FDR   \memoria/Dato2_4  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_8 [4]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato2 [4])
  );
  FDR   \memoria/Dato2_3  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_8 [3]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato2 [3])
  );
  FDR   \memoria/Dato2_2  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_8 [2]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato2 [2])
  );
  FDR   \memoria/Dato2_1  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_8 [1]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato2 [1])
  );
  FDR   \memoria/Dato2_0  (
    .C(clk_BUFGP_236),
    .D(\memoria/_COND_8 [0]),
    .R(reset_IBUF_1907),
    .Q(\memoria/Dato2 [0])
  );
  FD   \memoria/memoria1_12_3  (
    .C(clk_BUFGP_236),
    .D(\controldeusuario/punteroOut [3]),
    .Q(\memoria/memoria1_12_3_1542 )
  );
  FD   \memoria/memoria1_12_2  (
    .C(clk_BUFGP_236),
    .D(\controldeusuario/punteroOut [2]),
    .Q(\memoria/memoria1_12_2_1541 )
  );
  FD   \memoria/memoria1_12_1  (
    .C(clk_BUFGP_236),
    .D(\controldeusuario/punteroOut [1]),
    .Q(\memoria/memoria1_12_1_1540 )
  );
  FD   \memoria/memoria1_12_0  (
    .C(clk_BUFGP_236),
    .D(\controldeusuario/punteroOut [0]),
    .Q(\memoria/memoria1_12_0_1539 )
  );
  FDRE   \memoria/memoria1_15_7  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_7_IBUF_1977),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_15_7_1568 )
  );
  FDRE   \memoria/memoria1_15_6  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_6_IBUF_1976),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_15_6_1567 )
  );
  FDRE   \memoria/memoria1_15_5  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_5_IBUF_1975),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_15_5_1566 )
  );
  FDRE   \memoria/memoria1_15_4  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_4_IBUF_1974),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_15_4_1565 )
  );
  FDRE   \memoria/memoria1_15_3  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_3_IBUF_1973),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_15_3_1564 )
  );
  FDRE   \memoria/memoria1_15_2  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_2_IBUF_1972),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_15_2_1563 )
  );
  FDRE   \memoria/memoria1_15_1  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_1_IBUF_1971),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_15_1_1562 )
  );
  FDRE   \memoria/memoria1_15_0  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_0_IBUF_1970),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_15_0_1561 )
  );
  FDRE   \memoria/memoria1_14_7  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_7_IBUF_1977),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_14_7_1559 )
  );
  FDRE   \memoria/memoria1_14_6  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_6_IBUF_1976),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_14_6_1558 )
  );
  FDRE   \memoria/memoria1_14_5  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_5_IBUF_1975),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_14_5_1557 )
  );
  FDRE   \memoria/memoria1_14_4  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_4_IBUF_1974),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_14_4_1556 )
  );
  FDRE   \memoria/memoria1_14_3  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_3_IBUF_1973),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_14_3_1555 )
  );
  FDRE   \memoria/memoria1_14_2  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_2_IBUF_1972),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_14_2_1554 )
  );
  FDRE   \memoria/memoria1_14_1  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_1_IBUF_1971),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_14_1_1553 )
  );
  FDRE   \memoria/memoria1_14_0  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_0_IBUF_1970),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_14_0_1552 )
  );
  FDRE   \memoria/memoria1_13_7  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_7_IBUF_1977),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_13_7_1550 )
  );
  FDRE   \memoria/memoria1_13_6  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_6_IBUF_1976),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_13_6_1549 )
  );
  FDRE   \memoria/memoria1_13_5  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_5_IBUF_1975),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_13_5_1548 )
  );
  FDRE   \memoria/memoria1_13_4  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_4_IBUF_1974),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_13_4_1547 )
  );
  FDRE   \memoria/memoria1_13_3  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_3_IBUF_1973),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_13_3_1546 )
  );
  FDRE   \memoria/memoria1_13_2  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_2_IBUF_1972),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_13_2_1545 )
  );
  FDRE   \memoria/memoria1_13_1  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_1_IBUF_1971),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_13_1_1544 )
  );
  FDRE   \memoria/memoria1_13_0  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_0_IBUF_1970),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_13_0_1543 )
  );
  FDRE   \memoria/memoria1_11_7  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_7_IBUF_1977),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_11_7_1537 )
  );
  FDRE   \memoria/memoria1_11_6  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_6_IBUF_1976),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_11_6_1536 )
  );
  FDRE   \memoria/memoria1_11_5  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_5_IBUF_1975),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_11_5_1535 )
  );
  FDRE   \memoria/memoria1_11_4  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_4_IBUF_1974),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_11_4_1534 )
  );
  FDRE   \memoria/memoria1_11_3  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_3_IBUF_1973),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_11_3_1533 )
  );
  FDRE   \memoria/memoria1_11_2  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_2_IBUF_1972),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_11_2_1532 )
  );
  FDRE   \memoria/memoria1_11_1  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_1_IBUF_1971),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_11_1_1531 )
  );
  FDRE   \memoria/memoria1_11_0  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_0_IBUF_1970),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_11_0_1530 )
  );
  FDRE   \memoria/memoria1_9_7  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_7_IBUF_1977),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_9_7_1651 )
  );
  FDRE   \memoria/memoria1_9_6  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_6_IBUF_1976),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_9_6_1650 )
  );
  FDRE   \memoria/memoria1_9_5  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_5_IBUF_1975),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_9_5_1649 )
  );
  FDRE   \memoria/memoria1_9_4  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_4_IBUF_1974),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_9_4_1648 )
  );
  FDRE   \memoria/memoria1_9_3  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_3_IBUF_1973),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_9_3_1647 )
  );
  FDRE   \memoria/memoria1_9_2  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_2_IBUF_1972),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_9_2_1646 )
  );
  FDRE   \memoria/memoria1_9_1  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_1_IBUF_1971),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_9_1_1645 )
  );
  FDRE   \memoria/memoria1_9_0  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_0_IBUF_1970),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_9_0_1644 )
  );
  FDRE   \memoria/memoria1_8_7  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_7_IBUF_1977),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_8_7_1641 )
  );
  FDRE   \memoria/memoria1_8_6  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_6_IBUF_1976),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_8_6_1640 )
  );
  FDRE   \memoria/memoria1_8_5  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_5_IBUF_1975),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_8_5_1639 )
  );
  FDRE   \memoria/memoria1_8_4  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_4_IBUF_1974),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_8_4_1638 )
  );
  FDRE   \memoria/memoria1_8_3  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_3_IBUF_1973),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_8_3_1637 )
  );
  FDRE   \memoria/memoria1_8_2  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_2_IBUF_1972),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_8_2_1636 )
  );
  FDRE   \memoria/memoria1_8_1  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_1_IBUF_1971),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_8_1_1635 )
  );
  FDRE   \memoria/memoria1_8_0  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_0_IBUF_1970),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_8_0_1634 )
  );
  FDRE   \memoria/memoria1_10_7  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_7_IBUF_1977),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_10_7_1528 )
  );
  FDRE   \memoria/memoria1_10_6  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_6_IBUF_1976),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_10_6_1527 )
  );
  FDRE   \memoria/memoria1_10_5  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_5_IBUF_1975),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_10_5_1526 )
  );
  FDRE   \memoria/memoria1_10_4  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_4_IBUF_1974),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_10_4_1525 )
  );
  FDRE   \memoria/memoria1_10_3  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_3_IBUF_1973),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_10_3_1524 )
  );
  FDRE   \memoria/memoria1_10_2  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_2_IBUF_1972),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_10_2_1523 )
  );
  FDRE   \memoria/memoria1_10_1  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_1_IBUF_1971),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_10_1_1522 )
  );
  FDRE   \memoria/memoria1_10_0  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_0_IBUF_1970),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_10_0_1521 )
  );
  FDRE   \memoria/memoria1_7_7  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_7_IBUF_1977),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_7_7_1632 )
  );
  FDRE   \memoria/memoria1_7_6  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_6_IBUF_1976),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_7_6_1631 )
  );
  FDRE   \memoria/memoria1_7_5  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_5_IBUF_1975),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_7_5_1630 )
  );
  FDRE   \memoria/memoria1_7_4  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_4_IBUF_1974),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_7_4_1629 )
  );
  FDRE   \memoria/memoria1_7_3  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_3_IBUF_1973),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_7_3_1628 )
  );
  FDRE   \memoria/memoria1_7_2  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_2_IBUF_1972),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_7_2_1627 )
  );
  FDRE   \memoria/memoria1_7_1  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_1_IBUF_1971),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_7_1_1626 )
  );
  FDRE   \memoria/memoria1_7_0  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_0_IBUF_1970),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_7_0_1625 )
  );
  FDRE   \memoria/memoria1_6_7  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_7_IBUF_1977),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_6_7_1623 )
  );
  FDRE   \memoria/memoria1_6_6  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_6_IBUF_1976),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_6_6_1622 )
  );
  FDRE   \memoria/memoria1_6_5  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_5_IBUF_1975),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_6_5_1621 )
  );
  FDRE   \memoria/memoria1_6_4  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_4_IBUF_1974),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_6_4_1620 )
  );
  FDRE   \memoria/memoria1_6_3  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_3_IBUF_1973),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_6_3_1619 )
  );
  FDRE   \memoria/memoria1_6_2  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_2_IBUF_1972),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_6_2_1618 )
  );
  FDRE   \memoria/memoria1_6_1  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_1_IBUF_1971),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_6_1_1617 )
  );
  FDRE   \memoria/memoria1_6_0  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_0_IBUF_1970),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_6_0_1616 )
  );
  FDRE   \memoria/memoria1_4_7  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_7_IBUF_1977),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_4_7_1604 )
  );
  FDRE   \memoria/memoria1_4_6  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_6_IBUF_1976),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_4_6_1603 )
  );
  FDRE   \memoria/memoria1_4_5  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_5_IBUF_1975),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_4_5_1602 )
  );
  FDRE   \memoria/memoria1_4_4  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_4_IBUF_1974),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_4_4_1601 )
  );
  FDRE   \memoria/memoria1_4_3  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_3_IBUF_1973),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_4_3_1600 )
  );
  FDRE   \memoria/memoria1_4_2  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_2_IBUF_1972),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_4_2_1599 )
  );
  FDRE   \memoria/memoria1_4_1  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_1_IBUF_1971),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_4_1_1598 )
  );
  FDRE   \memoria/memoria1_4_0  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_0_IBUF_1970),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_4_0_1597 )
  );
  FDRE   \memoria/memoria1_3_7  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_7_IBUF_1977),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_3_7_1595 )
  );
  FDRE   \memoria/memoria1_3_6  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_6_IBUF_1976),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_3_6_1594 )
  );
  FDRE   \memoria/memoria1_3_5  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_5_IBUF_1975),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_3_5_1593 )
  );
  FDRE   \memoria/memoria1_3_4  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_4_IBUF_1974),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_3_4_1592 )
  );
  FDRE   \memoria/memoria1_3_3  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_3_IBUF_1973),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_3_3_1591 )
  );
  FDRE   \memoria/memoria1_3_2  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_2_IBUF_1972),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_3_2_1590 )
  );
  FDRE   \memoria/memoria1_3_1  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_1_IBUF_1971),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_3_1_1589 )
  );
  FDRE   \memoria/memoria1_3_0  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_0_IBUF_1970),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_3_0_1588 )
  );
  FDRE   \memoria/memoria1_5_7  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_7_IBUF_1977),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_5_7_1614 )
  );
  FDRE   \memoria/memoria1_5_6  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_6_IBUF_1976),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_5_6_1613 )
  );
  FDRE   \memoria/memoria1_5_5  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_5_IBUF_1975),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_5_5_1612 )
  );
  FDRE   \memoria/memoria1_5_4  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_4_IBUF_1974),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_5_4_1611 )
  );
  FDRE   \memoria/memoria1_5_3  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_3_IBUF_1973),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_5_3_1610 )
  );
  FDRE   \memoria/memoria1_5_2  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_2_IBUF_1972),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_5_2_1609 )
  );
  FDRE   \memoria/memoria1_5_1  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_1_IBUF_1971),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_5_1_1608 )
  );
  FDRE   \memoria/memoria1_5_0  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_0_IBUF_1970),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_5_0_1607 )
  );
  FDRE   \memoria/memoria1_2_7  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_7_IBUF_1977),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_2_7_1586 )
  );
  FDRE   \memoria/memoria1_2_6  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_6_IBUF_1976),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_2_6_1585 )
  );
  FDRE   \memoria/memoria1_2_5  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_5_IBUF_1975),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_2_5_1584 )
  );
  FDRE   \memoria/memoria1_2_4  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_4_IBUF_1974),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_2_4_1583 )
  );
  FDRE   \memoria/memoria1_2_3  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_3_IBUF_1973),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_2_3_1582 )
  );
  FDRE   \memoria/memoria1_2_2  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_2_IBUF_1972),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_2_2_1581 )
  );
  FDRE   \memoria/memoria1_2_1  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_1_IBUF_1971),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_2_1_1580 )
  );
  FDRE   \memoria/memoria1_2_0  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_0_IBUF_1970),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_2_0_1579 )
  );
  FDRE   \memoria/memoria1_1_7  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_7_IBUF_1977),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_1_7_1577 )
  );
  FDRE   \memoria/memoria1_1_6  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_6_IBUF_1976),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_1_6_1576 )
  );
  FDRE   \memoria/memoria1_1_5  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_5_IBUF_1975),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_1_5_1575 )
  );
  FDRE   \memoria/memoria1_1_4  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_4_IBUF_1974),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_1_4_1574 )
  );
  FDRE   \memoria/memoria1_1_3  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_3_IBUF_1973),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_1_3_1573 )
  );
  FDRE   \memoria/memoria1_1_2  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_2_IBUF_1972),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_1_2_1572 )
  );
  FDRE   \memoria/memoria1_1_1  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_1_IBUF_1971),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_1_1_1571 )
  );
  FDRE   \memoria/memoria1_1_0  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_0_IBUF_1970),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_1_0_1570 )
  );
  FDRE   \memoria/memoria1_0_7  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_7_IBUF_1977),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_0_7_1518 )
  );
  FDRE   \memoria/memoria1_0_6  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_6_IBUF_1976),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_0_6_1517 )
  );
  FDRE   \memoria/memoria1_0_5  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_5_IBUF_1975),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_0_5_1516 )
  );
  FDRE   \memoria/memoria1_0_4  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_4_IBUF_1974),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_0_4_1515 )
  );
  FDRE   \memoria/memoria1_0_3  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_3_IBUF_1973),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_0_3_1514 )
  );
  FDRE   \memoria/memoria1_0_2  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_2_IBUF_1972),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_0_2_1513 )
  );
  FDRE   \memoria/memoria1_0_1  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_1_IBUF_1971),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_0_1_1512 )
  );
  FDRE   \memoria/memoria1_0_0  (
    .C(clk_BUFGP_236),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_0_IBUF_1970),
    .R(reset_IBUF_1907),
    .Q(\memoria/memoria1_0_0_1511 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \write/state_FSM_Out31  (
    .I0(\write/state_FSM_FFd1_1954 ),
    .I1(\write/state_FSM_FFd2_1956 ),
    .O(\write/state_cmp_eq0003 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/w_mux00001  (
    .I0(\read/state_FSM_FFd2_1901 ),
    .I1(\WT/lectura_211 ),
    .O(\read/w_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/state_FSM_FFd1-In1  (
    .I0(\Cront_out/final_63 ),
    .I1(\read/state_FSM_FFd2_1901 ),
    .O(\read/state_FSM_FFd1-In )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/reg_out_mux0000<3>1  (
    .I0(\read/state_FSM_FFd2_1901 ),
    .I1(\WT/dir_reg [0]),
    .O(\read/reg_out_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/reg_out_mux0000<2>1  (
    .I0(\read/state_FSM_FFd2_1901 ),
    .I1(\WT/dir_reg [1]),
    .O(\read/reg_out_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/reg_out_mux0000<1>1  (
    .I0(\read/state_FSM_FFd2_1901 ),
    .I1(\WT/dir_reg [2]),
    .O(\read/reg_out_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/reg_out_mux0000<0>1  (
    .I0(\read/state_FSM_FFd2_1901 ),
    .I1(\WT/dir_reg [3]),
    .O(\read/reg_out_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/dir_out_mux0000<7>1  (
    .I0(\read/state_FSM_FFd2_1901 ),
    .I1(\WT/dir[0] ),
    .O(\read/dir_out_mux0000[7] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/dir_out_mux0000<6>1  (
    .I0(\read/state_FSM_FFd2_1901 ),
    .I1(\WT/dir[1] ),
    .O(\read/dir_out_mux0000[6] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/dir_out_mux0000<5>1  (
    .I0(\read/state_FSM_FFd2_1901 ),
    .I1(\WT/dir[2] ),
    .O(\read/dir_out_mux0000[5] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/dir_out_mux0000<3>1  (
    .I0(\read/state_FSM_FFd2_1901 ),
    .I1(\WT/escritura_209 ),
    .O(\read/dir_out_mux0000[3] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/dir_out_mux0000<2>1  (
    .I0(\read/state_FSM_FFd2_1901 ),
    .I1(\WT/dir[5] ),
    .O(\read/dir_out_mux0000[2] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/dir_out_mux0000<1>1  (
    .I0(\read/state_FSM_FFd2_1901 ),
    .I1(\WT/dir[6] ),
    .O(\read/dir_out_mux0000[1] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \maquinaprincipal/NextState<4>1  (
    .I0(\maquinaprincipal/State [3]),
    .I1(\controldeusuario/Maquina_out_327 ),
    .O(\maquinaprincipal/NextState[4] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \maquinaprincipal/NextState<2>1  (
    .I0(\maquinaprincipal/State [1]),
    .I1(\WT/final_210 ),
    .O(\maquinaprincipal/NextState[2] )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \controldeusuario/Mcount_puntero2_xor<1>11  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Cront_out/Mcount_contador_xor<1>11  (
    .I0(\Cront_out/contador [1]),
    .I1(\Cront_out/contador [0]),
    .O(\Cront_out/Result [1])
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \write/state_FSM_FFd1-In1  (
    .I0(\Cront_out/final_63 ),
    .I1(\write/state_FSM_FFd2_1956 ),
    .I2(\write/state_FSM_FFd1_1954 ),
    .O(\write/state_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \maquinaprincipal/NextState<5>1  (
    .I0(\controldeusuario/final_937 ),
    .I1(\maquinaprincipal/State [5]),
    .I2(\maquinaprincipal/State [4]),
    .O(\maquinaprincipal/NextState[5] )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/state_FSM_FFd12-In1  (
    .I0(\maquinaprincipal/whileT_1474 ),
    .I1(\WT/state_FSM_FFd12_224 ),
    .I2(\WT/state_FSM_FFd1_219 ),
    .O(\WT/state_FSM_FFd12-In )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \controldeusuario/Mcount_puntero2_xor<2>11  (
    .I0(\controldeusuario/puntero2 [2]),
    .I1(\controldeusuario/puntero2 [1]),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/Result [2])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Cront_out/Mcount_contador_xor<2>11  (
    .I0(\Cront_out/contador [2]),
    .I1(\Cront_out/contador [1]),
    .I2(\Cront_out/contador [0]),
    .O(\Cront_out/Result [2])
  );
  LUT4 #(
    .INIT ( 16'hF080 ))
  \write/dir_out_mux0000<0>1  (
    .I0(\WT/escritura_209 ),
    .I1(\maquinaprincipal/whileT_1474 ),
    .I2(\write/state_FSM_FFd2_1956 ),
    .I3(\write/state_FSM_FFd1_1954 ),
    .O(\write/dir_out_mux0000[0] )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \write/data_out_mux0000<7>1  (
    .I0(\write/state_FSM_FFd1_1954 ),
    .I1(\controldeusuario/Dato_out [0]),
    .I2(\maquinaprincipal/whileT_1474 ),
    .I3(\write/state_FSM_FFd2_1956 ),
    .O(\write/data_out_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \write/data_out_mux0000<6>1  (
    .I0(\write/state_FSM_FFd1_1954 ),
    .I1(\controldeusuario/Dato_out [1]),
    .I2(\maquinaprincipal/whileT_1474 ),
    .I3(\write/state_FSM_FFd2_1956 ),
    .O(\write/data_out_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \write/data_out_mux0000<5>1  (
    .I0(\write/state_FSM_FFd1_1954 ),
    .I1(\controldeusuario/Dato_out [2]),
    .I2(\maquinaprincipal/whileT_1474 ),
    .I3(\write/state_FSM_FFd2_1956 ),
    .O(\write/data_out_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \write/data_out_mux0000<4>1  (
    .I0(\write/state_FSM_FFd1_1954 ),
    .I1(\controldeusuario/Dato_out [3]),
    .I2(\maquinaprincipal/whileT_1474 ),
    .I3(\write/state_FSM_FFd2_1956 ),
    .O(\write/data_out_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hF020 ))
  \write/data_out_mux0000<3>1  (
    .I0(\controldeusuario/Dato_out [4]),
    .I1(\maquinaprincipal/whileT_1474 ),
    .I2(\write/state_FSM_FFd2_1956 ),
    .I3(\write/state_FSM_FFd1_1954 ),
    .O(\write/data_out_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hF020 ))
  \write/data_out_mux0000<2>1  (
    .I0(\controldeusuario/Dato_out [5]),
    .I1(\maquinaprincipal/whileT_1474 ),
    .I2(\write/state_FSM_FFd2_1956 ),
    .I3(\write/state_FSM_FFd1_1954 ),
    .O(\write/data_out_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hF020 ))
  \write/data_out_mux0000<1>1  (
    .I0(\controldeusuario/Dato_out [6]),
    .I1(\maquinaprincipal/whileT_1474 ),
    .I2(\write/state_FSM_FFd2_1956 ),
    .I3(\write/state_FSM_FFd1_1954 ),
    .O(\write/data_out_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hF020 ))
  \write/data_out_mux0000<0>1  (
    .I0(\controldeusuario/Dato_out [7]),
    .I1(\maquinaprincipal/whileT_1474 ),
    .I2(\write/state_FSM_FFd2_1956 ),
    .I3(\write/state_FSM_FFd1_1954 ),
    .O(\write/data_out_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \Cront_out/Result<3>1  (
    .I0(\Cront_out/contador [3]),
    .I1(\Cront_out/contador [2]),
    .I2(\Cront_out/contador [1]),
    .I3(\Cront_out/contador [0]),
    .O(\Cront_out/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h10BA ))
  \read/state_FSM_FFd2-In1  (
    .I0(\read/state_FSM_FFd2_1901 ),
    .I1(\read/state_FSM_FFd1_1899 ),
    .I2(\WT/lectura_211 ),
    .I3(\Cront_out/final_63 ),
    .O(\read/state_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'h373E ))
  \controldeusuario/Mrom__COND_552  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/puntero2 [2]),
    .I3(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/Mrom__COND_55 )
  );
  LUT4 #(
    .INIT ( 16'h1430 ))
  \controldeusuario/Mrom__COND_522  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/puntero2 [2]),
    .I3(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/Mrom__COND_52 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \controldeusuario/Mcount_puntero2_xor<3>11  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/puntero2 [1]),
    .I2(\controldeusuario/puntero2 [0]),
    .I3(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h1081 ))
  \controldeusuario/Mrom__COND_561  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/puntero2 [3]),
    .I3(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/Mrom__COND_56 )
  );
  LUT4 #(
    .INIT ( 16'h240D ))
  \controldeusuario/Mrom__COND_541  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/puntero2 [2]),
    .I3(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/Mrom__COND_54 )
  );
  LUT4 #(
    .INIT ( 16'h8466 ))
  \controldeusuario/Mrom__COND_5111  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/puntero2 [1]),
    .I2(\controldeusuario/puntero2 [0]),
    .I3(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/Mrom__COND_51 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \write/dir_out_mux0000<7>_SW0  (
    .I0(\write/state_FSM_FFd2_1956 ),
    .I1(\write/state_FSM_FFd1_1954 ),
    .O(N02)
  );
  LUT4 #(
    .INIT ( 16'h0D08 ))
  \write/dir_out_mux0000<7>  (
    .I0(\maquinaprincipal/whileT_1474 ),
    .I1(\WT/dir[0] ),
    .I2(N02),
    .I3(\controldeusuario/ADD2[0] ),
    .O(\write/dir_out_mux0000[7] )
  );
  LUT4 #(
    .INIT ( 16'h0D08 ))
  \write/dir_out_mux0000<6>  (
    .I0(\maquinaprincipal/whileT_1474 ),
    .I1(\WT/dir[1] ),
    .I2(N02),
    .I3(\controldeusuario/ADD2[1] ),
    .O(\write/dir_out_mux0000[6] )
  );
  LUT4 #(
    .INIT ( 16'h0D08 ))
  \write/dir_out_mux0000<5>  (
    .I0(\maquinaprincipal/whileT_1474 ),
    .I1(\WT/dir[2] ),
    .I2(N02),
    .I3(\controldeusuario/ADD2[2] ),
    .O(\write/dir_out_mux0000[5] )
  );
  LUT4 #(
    .INIT ( 16'h44F4 ))
  \maquinaprincipal/NextState<1>_SW0  (
    .I0(\controldeusuario/Maquina_out_327 ),
    .I1(\maquinaprincipal/State [3]),
    .I2(\maquinaprincipal/State [1]),
    .I3(\WT/final_210 ),
    .O(N6)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \maquinaprincipal/NextState<1>  (
    .I0(\maquinaprincipal/State [5]),
    .I1(\controldeusuario/final_937 ),
    .I2(N6),
    .O(\maquinaprincipal/NextState[1] )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \read/state_or00001  (
    .I0(\WT/lectura_211 ),
    .I1(reset_IBUF_1907),
    .O(\read/state_or0000 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \WT/state_or00001  (
    .I0(\maquinaprincipal/whileT_1474 ),
    .I1(reset_IBUF_1907),
    .O(\WT/state_or0000 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Compor2/salida1  (
    .I0(\write/final_1953 ),
    .I1(\read/final_1890 ),
    .O(fininwt)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \WT/state_FSM_FFd11-In1  (
    .I0(\WT/state_FSM_FFd11_222 ),
    .I1(fininwt),
    .I2(\maquinaprincipal/whileT_1474 ),
    .I3(\WT/state_FSM_FFd12_224 ),
    .O(\WT/state_FSM_FFd11-In )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \memoria/memoria1_13_not000121  (
    .I0(\read/reg_out [0]),
    .I1(\read/reg_out [1]),
    .O(\memoria/N6 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/memoria1_11_not000111  (
    .I0(\read/reg_out [1]),
    .I1(\read/reg_out [0]),
    .O(\memoria/N4 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \memoria/memoria1_10_not000121  (
    .I0(\read/reg_out [1]),
    .I1(\read/reg_out [0]),
    .O(\memoria/N5 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \memoria/memoria1_9_not00011  (
    .I0(\Cront_out/escreg_59 ),
    .I1(\memoria/N6 ),
    .I2(\read/reg_out [3]),
    .I3(\read/reg_out [2]),
    .O(\memoria/memoria1_9_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \memoria/memoria1_7_not00011  (
    .I0(\Cront_out/escreg_59 ),
    .I1(\memoria/N4 ),
    .I2(\read/reg_out [2]),
    .I3(\read/reg_out [3]),
    .O(\memoria/memoria1_7_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \memoria/memoria1_6_not00011  (
    .I0(\Cront_out/escreg_59 ),
    .I1(\memoria/N5 ),
    .I2(\read/reg_out [2]),
    .I3(\read/reg_out [3]),
    .O(\memoria/memoria1_6_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \memoria/memoria1_5_not00011  (
    .I0(\Cront_out/escreg_59 ),
    .I1(\memoria/N6 ),
    .I2(\read/reg_out [2]),
    .I3(\read/reg_out [3]),
    .O(\memoria/memoria1_5_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \memoria/memoria1_3_not00011  (
    .I0(\read/reg_out [3]),
    .I1(\memoria/N4 ),
    .I2(\read/reg_out [2]),
    .I3(\Cront_out/escreg_59 ),
    .O(\memoria/memoria1_3_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \memoria/memoria1_2_not00011  (
    .I0(\read/reg_out [3]),
    .I1(\memoria/N5 ),
    .I2(\read/reg_out [2]),
    .I3(\Cront_out/escreg_59 ),
    .O(\memoria/memoria1_2_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \memoria/memoria1_1_not00011  (
    .I0(\read/reg_out [3]),
    .I1(\memoria/N6 ),
    .I2(\read/reg_out [2]),
    .I3(\Cront_out/escreg_59 ),
    .O(\memoria/memoria1_1_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \memoria/memoria1_15_not00011  (
    .I0(\Cront_out/escreg_59 ),
    .I1(\memoria/N4 ),
    .I2(\read/reg_out [2]),
    .I3(\read/reg_out [3]),
    .O(\memoria/memoria1_15_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \memoria/memoria1_14_not00011  (
    .I0(\Cront_out/escreg_59 ),
    .I1(\memoria/N5 ),
    .I2(\read/reg_out [2]),
    .I3(\read/reg_out [3]),
    .O(\memoria/memoria1_14_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \memoria/memoria1_13_not00011  (
    .I0(\Cront_out/escreg_59 ),
    .I1(\memoria/N6 ),
    .I2(\read/reg_out [2]),
    .I3(\read/reg_out [3]),
    .O(\memoria/memoria1_13_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \memoria/memoria1_11_not00011  (
    .I0(\Cront_out/escreg_59 ),
    .I1(\memoria/N4 ),
    .I2(\read/reg_out [3]),
    .I3(\read/reg_out [2]),
    .O(\memoria/memoria1_11_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \memoria/memoria1_10_not00011  (
    .I0(\Cront_out/escreg_59 ),
    .I1(\memoria/N5 ),
    .I2(\read/reg_out [3]),
    .I3(\read/reg_out [2]),
    .O(\memoria/memoria1_10_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \controldeusuario/cambiosneg_12_not00011  (
    .I0(\controldeusuario/puntero [3]),
    .I1(selectores_0_IBUF_1912),
    .I2(\controldeusuario/N331 ),
    .I3(\controldeusuario/final_cmp_eq0000 ),
    .O(\controldeusuario/cambiosneg_12_not0001 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Cront_out/escreg_mux000011  (
    .I0(\write/activa_1916 ),
    .I1(\read/activa_1877 ),
    .O(N01)
  );
  LUT4 #(
    .INIT ( 16'hFF8F ))
  \Cront_out/contador_or00001  (
    .I0(N221),
    .I1(\Cront_out/contador [3]),
    .I2(N01),
    .I3(reset_IBUF_1907),
    .O(\Cront_out/contador_or0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \controldeusuario/puntero_mux0000<2>121  (
    .I0(interruptores_2_IBUF_1462),
    .I1(interruptores_1_IBUF_1461),
    .I2(interruptores_0_IBUF_1460),
    .O(\controldeusuario/N341 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \WT/dir_mux0000<5>_SW0  (
    .I0(\WT/state_FSM_FFd6_230 ),
    .I1(\WT/state_FSM_FFd7_231 ),
    .O(N24)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Cront_out/WR_mux00001  (
    .I0(\Cront_out/contador [4]),
    .I1(\Cront_out/contador [3]),
    .I2(\Cront_out/contador [2]),
    .I3(N26),
    .O(\Cront_out/CS_cmp_eq0005 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \WT/dir_reg_mux0000<2>_SW0  (
    .I0(\WT/state_FSM_FFd5_229 ),
    .I1(\WT/state_FSM_FFd8_232 ),
    .I2(\WT/state_FSM_FFd9_233 ),
    .O(N30)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \WT/dir_reg_mux0000<1>_SW0  (
    .I0(\WT/state_FSM_FFd5_229 ),
    .I1(\WT/state_FSM_FFd6_230 ),
    .I2(\WT/state_FSM_FFd7_231 ),
    .O(N32)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \WT/dir_mux0000<1>_SW0  (
    .I0(\WT/state_FSM_FFd4_228 ),
    .I1(\WT/state_FSM_FFd2_226 ),
    .I2(\WT/state_FSM_FFd11_222 ),
    .O(N34)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \WT/dir_reg_mux0000<3>_SW0  (
    .I0(\WT/state_FSM_FFd6_230 ),
    .I1(\WT/state_FSM_FFd8_232 ),
    .I2(\WT/state_FSM_FFd10_221 ),
    .I3(\WT/state_FSM_FFd2_226 ),
    .O(N57)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \WT/dir_mux0000<6>_SW0  (
    .I0(\WT/state_FSM_FFd5_229 ),
    .I1(\WT/state_FSM_FFd8_232 ),
    .I2(\WT/state_FSM_FFd9_233 ),
    .I3(\WT/state_FSM_FFd2_226 ),
    .O(N61)
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  \Cront_out/escreg_mux0000_SW0  (
    .I0(\write/activa_1916 ),
    .I1(\read/w_1904 ),
    .I2(\Cront_out/AD_mux000035 ),
    .I3(\Cront_out/contador [3]),
    .O(N63)
  );
  LUT4 #(
    .INIT ( 16'hA222 ))
  \Cront_out/escreg_mux0000  (
    .I0(N01),
    .I1(N63),
    .I2(N4),
    .I3(\Cront_out/escreg_59 ),
    .O(\Cront_out/escreg_mux0000_60 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \WT/dir_mux0000<2>2  (
    .I0(\WT/state_FSM_FFd10_221 ),
    .I1(\WT/state_FSM_FFd8_232 ),
    .I2(\WT/state_FSM_FFd9_233 ),
    .O(\WT/dir_mux0000<2>2_195 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \WT/dir_mux0000<2>7  (
    .I0(\WT/state_FSM_FFd11_222 ),
    .I1(\WT/state_FSM_FFd5_229 ),
    .I2(\WT/state_FSM_FFd6_230 ),
    .I3(\WT/state_FSM_FFd7_231 ),
    .O(\WT/dir_mux0000<2>7_197 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \WT/lectura_mux00004  (
    .I0(\WT/state_FSM_FFd3_227 ),
    .I1(\WT/state_FSM_FFd4_228 ),
    .I2(\WT/state_FSM_FFd5_229 ),
    .I3(\WT/state_FSM_FFd6_230 ),
    .O(\WT/lectura_mux00004_215 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \WT/next_state_or000014  (
    .I0(\WT/state_FSM_FFd7_231 ),
    .I1(\WT/state_FSM_FFd8_232 ),
    .I2(\WT/state_FSM_FFd9_233 ),
    .I3(\WT/state_FSM_FFd10_221 ),
    .O(\WT/next_state_or000014_217 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \WT/next_state_or000023  (
    .I0(\WT/next_state_or00004_218 ),
    .I1(\WT/lectura_mux00004_215 ),
    .I2(\WT/next_state_or000014_217 ),
    .O(\WT/next_state_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \controldeusuario/cambiosneg_13_not00011  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/puntero2 [1]),
    .I3(N222),
    .O(\controldeusuario/N29 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_5_not0001_SW0  (
    .I0(\controldeusuario/puntero [3]),
    .I1(selectores_2_IBUF_1914),
    .I2(selectores_0_IBUF_1912),
    .I3(N227),
    .O(N87)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiospos_5_not0001  (
    .I0(N87),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/N29 ),
    .I3(\controldeusuario/N37 ),
    .O(\controldeusuario/cambiospos_5_not0001_864 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiospos_4_not0001  (
    .I0(N89),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/N31 ),
    .I3(\controldeusuario/N37 ),
    .O(\controldeusuario/cambiospos_4_not0001_847 )
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiospos_3_not0001_SW0  (
    .I0(selectores_0_IBUF_1912),
    .I1(selectores_2_IBUF_1914),
    .I2(N215),
    .I3(\controldeusuario/puntero [3]),
    .O(N91)
  );
  LUT4 #(
    .INIT ( 16'hF111 ))
  \controldeusuario/cambiospos_3_not0001  (
    .I0(\controldeusuario/final_cmp_eq0000 ),
    .I1(N91),
    .I2(\controldeusuario/N35 ),
    .I3(\controldeusuario/N271 ),
    .O(\controldeusuario/cambiospos_3_not0001_830 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_2_not0001_SW0  (
    .I0(\controldeusuario/puntero [3]),
    .I1(selectores_2_IBUF_1914),
    .I2(selectores_0_IBUF_1912),
    .I3(N216),
    .O(N93)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiospos_2_not0001  (
    .I0(N93),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/N30 ),
    .I3(\controldeusuario/N35 ),
    .O(\controldeusuario/cambiospos_2_not0001_813 )
  );
  LUT4 #(
    .INIT ( 16'h44F4 ))
  \controldeusuario/cambiospos_14_not0001  (
    .I0(\controldeusuario/final_cmp_eq0000 ),
    .I1(N95),
    .I2(\controldeusuario/N30 ),
    .I3(\controldeusuario/N36 ),
    .O(\controldeusuario/cambiospos_14_not0001_761 )
  );
  LUT4 #(
    .INIT ( 16'h44F4 ))
  \controldeusuario/cambiospos_13_not0001  (
    .I0(\controldeusuario/final_cmp_eq0000 ),
    .I1(N97),
    .I2(\controldeusuario/N29 ),
    .I3(\controldeusuario/N36 ),
    .O(\controldeusuario/cambiospos_13_not0001_744 )
  );
  LUT4 #(
    .INIT ( 16'hF111 ))
  \controldeusuario/cambiospos_11_not0001  (
    .I0(\controldeusuario/final_cmp_eq0000 ),
    .I1(N99),
    .I2(\controldeusuario/N391 ),
    .I3(\controldeusuario/N271 ),
    .O(\controldeusuario/cambiospos_11_not0001_718 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiospos_10_not0001  (
    .I0(N101),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/N30 ),
    .I3(\controldeusuario/N391 ),
    .O(\controldeusuario/cambiospos_10_not0001_701 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_9_not0001  (
    .I0(N103),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/N29 ),
    .I3(\controldeusuario/N391 ),
    .O(\controldeusuario/cambiosneg_9_not0001_667 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_1_not0001  (
    .I0(N105),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/N29 ),
    .I3(\controldeusuario/N35 ),
    .O(\controldeusuario/cambiosneg_1_not0001_529 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_6_not000128  (
    .I0(\controldeusuario/cambiosneg_6_not000113 ),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(N217),
    .I3(\controldeusuario/N30 ),
    .O(\controldeusuario/cambiosneg_6_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \controldeusuario/ADD_not00011  (
    .I0(\maquinaprincipal/CrontUs_1463 ),
    .I1(\write/final_1953 ),
    .I2(\controldeusuario/final_cmp_eq0001 ),
    .I3(\controldeusuario/final_cmp_eq0000 ),
    .O(\controldeusuario/ADD_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \controldeusuario/cambiosneg_8_not0001  (
    .I0(N223),
    .I1(\controldeusuario/N391 ),
    .I2(N107),
    .I3(\controldeusuario/N411 ),
    .O(\controldeusuario/cambiosneg_8_not0001_650 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \controldeusuario/cambiosneg_0_not0001  (
    .I0(\controldeusuario/N31 ),
    .I1(N218),
    .I2(N109),
    .I3(\controldeusuario/N411 ),
    .O(\controldeusuario/cambiosneg_0_not0001_418 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_8_not0001_SW0  (
    .I0(\controldeusuario/final_cmp_eq0000 ),
    .I1(selectores_2_IBUF_1914),
    .I2(selectores_0_IBUF_1912),
    .I3(\controldeusuario/puntero [3]),
    .O(N111)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \controldeusuario/cambiospos_8_not0001  (
    .I0(\controldeusuario/N31 ),
    .I1(N219),
    .I2(N111),
    .I3(\controldeusuario/N411 ),
    .O(\controldeusuario/cambiospos_8_not0001_917 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \controldeusuario/cambiospos_0_not0001_SW0  (
    .I0(selectores_2_IBUF_1914),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/puntero [3]),
    .I3(selectores_0_IBUF_1912),
    .O(N113)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \controldeusuario/cambiospos_0_not0001  (
    .I0(\controldeusuario/N31 ),
    .I1(\controldeusuario/N35 ),
    .I2(N113),
    .I3(\controldeusuario/N411 ),
    .O(\controldeusuario/cambiospos_0_not0001_684 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \Cront_out/final_mux00001  (
    .I0(\Cront_out/CS_or0003_20 ),
    .I1(\Cront_out/final_63 ),
    .I2(\Cront_out/contador [3]),
    .I3(\Cront_out/AD_mux000035 ),
    .O(\Cront_out/final_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \Cront_out/CS_mux00001  (
    .I0(\Cront_out/CS_or0003_20 ),
    .I1(\Cront_out/CS_16 ),
    .I2(\Cront_out/CS_cmp_eq0005 ),
    .I3(N2),
    .O(\Cront_out/CS_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFFAE ))
  \Cront_out/WR_mux0000  (
    .I0(N121),
    .I1(\Cront_out/AD_mux000035 ),
    .I2(\write/activa_1916 ),
    .I3(N2),
    .O(\Cront_out/WR_mux0000_52 )
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \Cront_out/AD_mux000053  (
    .I0(\Cront_out/AD_10 ),
    .I1(\Cront_out/CS_or0003_20 ),
    .I2(\Cront_out/AD_mux000024 ),
    .I3(\Cront_out/AD_mux000035 ),
    .O(\Cront_out/AD_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h1810 ))
  \Cront_out/RD_mux000024  (
    .I0(\Cront_out/contador [4]),
    .I1(\Cront_out/contador [2]),
    .I2(\Cront_out/contador [1]),
    .I3(\write/activa_1916 ),
    .O(\Cront_out/RD_mux000024_42 )
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \Cront_out/RD_mux000065  (
    .I0(\Cront_out/CS_or0003_20 ),
    .I1(\Cront_out/RD_40 ),
    .I2(N2),
    .I3(\Cront_out/RD_mux000039_43 ),
    .O(\Cront_out/RD_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF45 ))
  \controldeusuario/puntero2_or00001  (
    .I0(\controldeusuario/final_cmp_eq0000 ),
    .I1(\controldeusuario/final_cmp_eq0001 ),
    .I2(\maquinaprincipal/CrontUs_1463 ),
    .I3(reset_IBUF_1907),
    .O(\controldeusuario/puntero2_or0000 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \controldeusuario/puntero_mux0000<0>31  (
    .I0(interruptores_1_IBUF_1461),
    .I1(interruptores_0_IBUF_1460),
    .O(\controldeusuario/N40 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_15_not000111  (
    .I0(\controldeusuario/puntero2 [2]),
    .I1(N225),
    .O(\controldeusuario/N34 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_7_not0001  (
    .I0(\controldeusuario/N34 ),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(N109),
    .I3(\controldeusuario/N27 ),
    .O(\controldeusuario/cambiosneg_7_not0001_633 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \controldeusuario/cambiosneg_15_not0001  (
    .I0(\controldeusuario/N34 ),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(N107),
    .I3(\controldeusuario/N27 ),
    .O(\controldeusuario/cambiosneg_15_not0001_512 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiospos_7_not0001  (
    .I0(\controldeusuario/N34 ),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(N113),
    .I3(\controldeusuario/N27 ),
    .O(\controldeusuario/cambiospos_7_not0001_900 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \controldeusuario/cambiospos_15_not0001  (
    .I0(\controldeusuario/N34 ),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(N111),
    .I3(\controldeusuario/N27 ),
    .O(\controldeusuario/cambiospos_15_not0001_778 )
  );
  LUT4 #(
    .INIT ( 16'hFF32 ))
  \controldeusuario/final_not0001_SW0  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\maquinaprincipal/CrontUs_1463 ),
    .I2(N220),
    .I3(\controldeusuario/final_cmp_eq0000 ),
    .O(N133)
  );
  LUT4 #(
    .INIT ( 16'h2373 ))
  \controldeusuario/final_not0001  (
    .I0(\controldeusuario/final_cmp_eq0001 ),
    .I1(N133),
    .I2(\write/final_1953 ),
    .I3(N134),
    .O(\controldeusuario/final_not0001_941 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \controldeusuario/puntero_mux0000<3>8_SW0  (
    .I0(interruptores_0_IBUF_1460),
    .I1(interruptores_2_IBUF_1462),
    .I2(interruptores_1_IBUF_1461),
    .O(N136)
  );
  LUT4 #(
    .INIT ( 16'h5540 ))
  \controldeusuario/puntero_mux0000<3>8  (
    .I0(N136),
    .I1(\controldeusuario/puntero [3]),
    .I2(\controldeusuario/N121 ),
    .I3(N244),
    .O(\controldeusuario/N131 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \controldeusuario/Madd_COND_4_addsub0000_xor<1>11  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .O(\controldeusuario/COND_4_addsub0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \controldeusuario/Madd_COND_2_addsub0000_xor<1>11  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .O(\controldeusuario/COND_2_addsub0000 [1])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \controldeusuario/Madd_COND_4_addsub0000_xor<2>11  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .O(\controldeusuario/COND_4_addsub0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \controldeusuario/Madd_COND_2_addsub0000_xor<2>11  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .O(\controldeusuario/COND_2_addsub0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \controldeusuario/Madd_COND_4_addsub0000_xor<3>11  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [3]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .O(\controldeusuario/COND_4_addsub0000 [3])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \controldeusuario/Madd_COND_2_addsub0000_xor<3>11  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [3]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .O(\controldeusuario/COND_2_addsub0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_9_mux0000<3>1  (
    .I0(\controldeusuario/COND_4_addsub0000 [3]),
    .I1(\controldeusuario/N10 ),
    .O(\controldeusuario/cambiospos_9_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiospos_9_mux0000<0>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I1(\controldeusuario/N10 ),
    .O(\controldeusuario/cambiospos_9_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_7_mux0000<3>1  (
    .I0(\controldeusuario/COND_4_addsub0000 [3]),
    .I1(\controldeusuario/N8 ),
    .O(\controldeusuario/cambiospos_7_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiospos_7_mux0000<0>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I1(\controldeusuario/N8 ),
    .O(\controldeusuario/cambiospos_7_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_6_mux0000<3>1  (
    .I0(\controldeusuario/COND_4_addsub0000 [3]),
    .I1(\controldeusuario/N7 ),
    .O(\controldeusuario/cambiospos_6_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiospos_6_mux0000<0>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I1(\controldeusuario/N7 ),
    .O(\controldeusuario/cambiospos_6_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_5_mux0000<3>1  (
    .I0(\controldeusuario/COND_4_addsub0000 [3]),
    .I1(\controldeusuario/N6 ),
    .O(\controldeusuario/cambiospos_5_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiospos_5_mux0000<0>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I1(\controldeusuario/N6 ),
    .O(\controldeusuario/cambiospos_5_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_4_mux0000<3>1  (
    .I0(\controldeusuario/COND_4_addsub0000 [3]),
    .I1(\controldeusuario/N5 ),
    .O(\controldeusuario/cambiospos_4_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiospos_4_mux0000<0>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I1(\controldeusuario/N5 ),
    .O(\controldeusuario/cambiospos_4_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_3_mux0000<3>1  (
    .I0(\controldeusuario/COND_4_addsub0000 [3]),
    .I1(\controldeusuario/N4 ),
    .O(\controldeusuario/cambiospos_3_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiospos_3_mux0000<0>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I1(\controldeusuario/N4 ),
    .O(\controldeusuario/cambiospos_3_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_2_mux0000<3>1  (
    .I0(\controldeusuario/COND_4_addsub0000 [3]),
    .I1(\controldeusuario/N3 ),
    .O(\controldeusuario/cambiospos_2_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiospos_2_mux0000<0>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I1(\controldeusuario/N3 ),
    .O(\controldeusuario/cambiospos_2_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_1_mux0000<3>1  (
    .I0(\controldeusuario/COND_4_addsub0000 [3]),
    .I1(\controldeusuario/N2 ),
    .O(\controldeusuario/cambiospos_1_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiospos_1_mux0000<0>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I1(\controldeusuario/N2 ),
    .O(\controldeusuario/cambiospos_1_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_15_mux0000<3>1  (
    .I0(\controldeusuario/COND_4_addsub0000 [3]),
    .I1(\controldeusuario/N15 ),
    .O(\controldeusuario/cambiospos_15_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiospos_15_mux0000<0>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I1(\controldeusuario/N15 ),
    .O(\controldeusuario/cambiospos_15_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_14_mux0000<3>1  (
    .I0(\controldeusuario/COND_4_addsub0000 [3]),
    .I1(\controldeusuario/N14 ),
    .O(\controldeusuario/cambiospos_14_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiospos_14_mux0000<0>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I1(\controldeusuario/N14 ),
    .O(\controldeusuario/cambiospos_14_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_13_mux0000<3>1  (
    .I0(\controldeusuario/COND_4_addsub0000 [3]),
    .I1(\controldeusuario/N13 ),
    .O(\controldeusuario/cambiospos_13_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiospos_13_mux0000<0>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I1(\controldeusuario/N13 ),
    .O(\controldeusuario/cambiospos_13_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_11_mux0000<3>1  (
    .I0(\controldeusuario/COND_4_addsub0000 [3]),
    .I1(\controldeusuario/N12 ),
    .O(\controldeusuario/cambiospos_11_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiospos_11_mux0000<0>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I1(\controldeusuario/N12 ),
    .O(\controldeusuario/cambiospos_11_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_10_mux0000<3>1  (
    .I0(\controldeusuario/COND_4_addsub0000 [3]),
    .I1(\controldeusuario/N111 ),
    .O(\controldeusuario/cambiospos_10_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiospos_10_mux0000<0>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I1(\controldeusuario/N111 ),
    .O(\controldeusuario/cambiospos_10_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_9_mux0000<3>1  (
    .I0(\controldeusuario/COND_2_addsub0000 [3]),
    .I1(\controldeusuario/N10 ),
    .O(\controldeusuario/cambiosneg_9_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiosneg_9_mux0000<0>2  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I1(\controldeusuario/N10 ),
    .O(\controldeusuario/cambiosneg_9_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_7_mux0000<3>1  (
    .I0(\controldeusuario/COND_2_addsub0000 [3]),
    .I1(\controldeusuario/N8 ),
    .O(\controldeusuario/cambiosneg_7_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiosneg_7_mux0000<0>2  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I1(\controldeusuario/N8 ),
    .O(\controldeusuario/cambiosneg_7_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_6_mux0000<3>1  (
    .I0(\controldeusuario/COND_2_addsub0000 [3]),
    .I1(\controldeusuario/N7 ),
    .O(\controldeusuario/cambiosneg_6_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiosneg_6_mux0000<0>2  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I1(\controldeusuario/N7 ),
    .O(\controldeusuario/cambiosneg_6_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_5_mux0000<3>1  (
    .I0(\controldeusuario/COND_2_addsub0000 [3]),
    .I1(\controldeusuario/N6 ),
    .O(\controldeusuario/cambiosneg_5_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiosneg_5_mux0000<0>2  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I1(\controldeusuario/N6 ),
    .O(\controldeusuario/cambiosneg_5_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_4_mux0000<3>1  (
    .I0(\controldeusuario/COND_2_addsub0000 [3]),
    .I1(\controldeusuario/N5 ),
    .O(\controldeusuario/cambiosneg_4_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiosneg_4_mux0000<0>2  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I1(\controldeusuario/N5 ),
    .O(\controldeusuario/cambiosneg_4_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_3_mux0000<3>1  (
    .I0(\controldeusuario/COND_2_addsub0000 [3]),
    .I1(\controldeusuario/N4 ),
    .O(\controldeusuario/cambiosneg_3_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiosneg_3_mux0000<0>2  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I1(\controldeusuario/N4 ),
    .O(\controldeusuario/cambiosneg_3_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_2_mux0000<3>1  (
    .I0(\controldeusuario/COND_2_addsub0000 [3]),
    .I1(\controldeusuario/N3 ),
    .O(\controldeusuario/cambiosneg_2_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiosneg_2_mux0000<0>2  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I1(\controldeusuario/N3 ),
    .O(\controldeusuario/cambiosneg_2_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_1_mux0000<3>1  (
    .I0(\controldeusuario/COND_2_addsub0000 [3]),
    .I1(\controldeusuario/N2 ),
    .O(\controldeusuario/cambiosneg_1_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiosneg_1_mux0000<0>2  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I1(\controldeusuario/N2 ),
    .O(\controldeusuario/cambiosneg_1_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_15_mux0000<3>1  (
    .I0(\controldeusuario/COND_2_addsub0000 [3]),
    .I1(\controldeusuario/N15 ),
    .O(\controldeusuario/cambiosneg_15_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiosneg_15_mux0000<0>2  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I1(\controldeusuario/N15 ),
    .O(\controldeusuario/cambiosneg_15_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_14_mux0000<3>1  (
    .I0(\controldeusuario/COND_2_addsub0000 [3]),
    .I1(\controldeusuario/N14 ),
    .O(\controldeusuario/cambiosneg_14_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiosneg_14_mux0000<0>2  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I1(\controldeusuario/N14 ),
    .O(\controldeusuario/cambiosneg_14_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_13_mux0000<3>1  (
    .I0(\controldeusuario/COND_2_addsub0000 [3]),
    .I1(\controldeusuario/N13 ),
    .O(\controldeusuario/cambiosneg_13_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiosneg_13_mux0000<0>2  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I1(\controldeusuario/N13 ),
    .O(\controldeusuario/cambiosneg_13_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_11_mux0000<3>1  (
    .I0(\controldeusuario/COND_2_addsub0000 [3]),
    .I1(\controldeusuario/N12 ),
    .O(\controldeusuario/cambiosneg_11_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiosneg_11_mux0000<0>2  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I1(\controldeusuario/N12 ),
    .O(\controldeusuario/cambiosneg_11_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_10_mux0000<3>1  (
    .I0(\controldeusuario/COND_2_addsub0000 [3]),
    .I1(\controldeusuario/N111 ),
    .O(\controldeusuario/cambiosneg_10_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controldeusuario/cambiosneg_10_mux0000<0>2  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I1(\controldeusuario/N111 ),
    .O(\controldeusuario/cambiosneg_10_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \controldeusuario/puntero_mux0000<3>61  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/puntero [1]),
    .I2(\controldeusuario/puntero [2]),
    .O(\controldeusuario/N27 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \controldeusuario/cambiosneg_0_mux0000<0>111  (
    .I0(\maquinaprincipal/CrontUs_1463 ),
    .I1(\write/final_1953 ),
    .I2(N254),
    .O(\controldeusuario/N20 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \controldeusuario/Madd_COND_4_addsub0000_xor<4>11  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I1(N248),
    .O(\controldeusuario/COND_4_addsub0000 [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \controldeusuario/Madd_COND_2_addsub0000_xor<4>11  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I1(N249),
    .O(\controldeusuario/COND_2_addsub0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \controldeusuario/Madd_COND_4_addsub0000_xor<5>11  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/COND_4_addsub0000 [5])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \controldeusuario/Madd_COND_2_addsub0000_xor<5>11  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/COND_2_addsub0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hFF2A ))
  \controldeusuario/puntero_mux0000<3>11  (
    .I0(selectores_1_IBUF_1913),
    .I1(\controldeusuario/N311 ),
    .I2(\controldeusuario/puntero [3]),
    .I3(N251),
    .O(\controldeusuario/N0 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_9_mux0000<6>1  (
    .I0(N231),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_9_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_7_mux0000<6>1  (
    .I0(N232),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_7_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_6_mux0000<6>1  (
    .I0(N233),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_6_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_5_mux0000<6>1  (
    .I0(N234),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_5_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_4_mux0000<6>1  (
    .I0(N235),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_4_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_3_mux0000<6>1  (
    .I0(N236),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_3_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_2_mux0000<6>1  (
    .I0(N237),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_2_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_1_mux0000<6>1  (
    .I0(N238),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_1_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_15_mux0000<6>1  (
    .I0(N239),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_15_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_14_mux0000<6>1  (
    .I0(N240),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_14_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_13_mux0000<6>1  (
    .I0(N241),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_13_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_11_mux0000<6>1  (
    .I0(N242),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_11_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_10_mux0000<6>1  (
    .I0(N243),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_10_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_9_mux0000<6>1  (
    .I0(\controldeusuario/N10 ),
    .I1(\controldeusuario/COND_2_addsub0000 [6]),
    .O(\controldeusuario/cambiosneg_9_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_7_mux0000<6>1  (
    .I0(\controldeusuario/N8 ),
    .I1(\controldeusuario/COND_2_addsub0000 [6]),
    .O(\controldeusuario/cambiosneg_7_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_6_mux0000<6>1  (
    .I0(\controldeusuario/N7 ),
    .I1(\controldeusuario/COND_2_addsub0000 [6]),
    .O(\controldeusuario/cambiosneg_6_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_5_mux0000<6>1  (
    .I0(\controldeusuario/N6 ),
    .I1(\controldeusuario/COND_2_addsub0000 [6]),
    .O(\controldeusuario/cambiosneg_5_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_4_mux0000<6>1  (
    .I0(\controldeusuario/N5 ),
    .I1(\controldeusuario/COND_2_addsub0000 [6]),
    .O(\controldeusuario/cambiosneg_4_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_3_mux0000<6>1  (
    .I0(\controldeusuario/N4 ),
    .I1(\controldeusuario/COND_2_addsub0000 [6]),
    .O(\controldeusuario/cambiosneg_3_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_2_mux0000<6>1  (
    .I0(\controldeusuario/N3 ),
    .I1(\controldeusuario/COND_2_addsub0000 [6]),
    .O(\controldeusuario/cambiosneg_2_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_1_mux0000<6>1  (
    .I0(\controldeusuario/N2 ),
    .I1(\controldeusuario/COND_2_addsub0000 [6]),
    .O(\controldeusuario/cambiosneg_1_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_15_mux0000<6>1  (
    .I0(\controldeusuario/N15 ),
    .I1(\controldeusuario/COND_2_addsub0000 [6]),
    .O(\controldeusuario/cambiosneg_15_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_14_mux0000<6>1  (
    .I0(\controldeusuario/N14 ),
    .I1(\controldeusuario/COND_2_addsub0000 [6]),
    .O(\controldeusuario/cambiosneg_14_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_13_mux0000<6>1  (
    .I0(\controldeusuario/N13 ),
    .I1(\controldeusuario/COND_2_addsub0000 [6]),
    .O(\controldeusuario/cambiosneg_13_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_11_mux0000<6>1  (
    .I0(\controldeusuario/N12 ),
    .I1(\controldeusuario/COND_2_addsub0000 [6]),
    .O(\controldeusuario/cambiosneg_11_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_10_mux0000<6>1  (
    .I0(\controldeusuario/N111 ),
    .I1(\controldeusuario/COND_2_addsub0000 [6]),
    .O(\controldeusuario/cambiosneg_10_mux0000 [6])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \controldeusuario/Madd_COND_4_addsub0000_xor<7>11  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(N246),
    .O(\controldeusuario/COND_4_addsub0000 [7])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \controldeusuario/Madd_COND_2_addsub0000_xor<7>11  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(N247),
    .O(\controldeusuario/COND_2_addsub0000 [7])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \controldeusuario/puntero_mux0000<3>15  (
    .I0(interruptores_1_IBUF_1461),
    .I1(interruptores_2_IBUF_1462),
    .I2(interruptores_0_IBUF_1460),
    .O(\controldeusuario/puntero_mux0000<1>4 )
  );
  LUT4 #(
    .INIT ( 16'h040C ))
  \controldeusuario/puntero_mux0000<3>26  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero_mux0000<1>4 ),
    .I2(\controldeusuario/puntero [3]),
    .I3(\controldeusuario/puntero [1]),
    .O(\controldeusuario/puntero_mux0000<3>26_1442 )
  );
  LUT4 #(
    .INIT ( 16'hFF8F ))
  \controldeusuario/puntero_mux0000<3>62  (
    .I0(\controldeusuario/puntero [3]),
    .I1(N250),
    .I2(interruptores_2_IBUF_1462),
    .I3(interruptores_1_IBUF_1461),
    .O(\controldeusuario/puntero_mux0000<3>62_1444 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \controldeusuario/puntero_mux0000<3>90  (
    .I0(interruptores_2_IBUF_1462),
    .I1(interruptores_1_IBUF_1461),
    .O(\controldeusuario/puntero_mux0000<3>90_1446 )
  );
  LUT4 #(
    .INIT ( 16'hB233 ))
  \controldeusuario/puntero_mux0000<3>149  (
    .I0(\controldeusuario/puntero [2]),
    .I1(interruptores_2_IBUF_1462),
    .I2(\controldeusuario/puntero [1]),
    .I3(interruptores_1_IBUF_1461),
    .O(\controldeusuario/puntero_mux0000<3>149_1439 )
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \controldeusuario/puntero_mux0000<3>255  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/puntero_mux0000<3>104_1438 ),
    .I2(\controldeusuario/puntero_mux0000<3>76_1445 ),
    .I3(\controldeusuario/puntero_mux0000<3>241_1441 ),
    .O(\controldeusuario/puntero_mux0000 [3])
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \controldeusuario/puntero_mux0000<1>10  (
    .I0(\controldeusuario/puntero_cmp_lt0000 ),
    .I1(\controldeusuario/puntero_mux0000<1>4 ),
    .I2(\controldeusuario/N131 ),
    .O(\controldeusuario/puntero_mux0000<1>10_1427 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \controldeusuario/puntero_mux0000<1>37  (
    .I0(N245),
    .I1(\controldeusuario/N341 ),
    .I2(\controldeusuario/puntero_mux0000<1>31_1429 ),
    .O(\controldeusuario/puntero_mux0000<1>37_1430 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \controldeusuario/Maddsub_puntero_share0000_cy<1>11  (
    .I0(\controldeusuario/puntero [1]),
    .I1(\controldeusuario/puntero [0]),
    .I2(N252),
    .O(\controldeusuario/Maddsub_puntero_share0000_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0015 ))
  \controldeusuario/puntero_mux0000<0>23  (
    .I0(interruptores_0_IBUF_1460),
    .I1(\controldeusuario/puntero [3]),
    .I2(N226),
    .I3(\controldeusuario/puntero_cmp_lt0000 ),
    .O(\controldeusuario/puntero_mux0000<0>23_1418 )
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1907)
  );
  IBUF   writedata_7_IBUF (
    .I(writedata[7]),
    .O(writedata_7_IBUF_1977)
  );
  IBUF   writedata_6_IBUF (
    .I(writedata[6]),
    .O(writedata_6_IBUF_1976)
  );
  IBUF   writedata_5_IBUF (
    .I(writedata[5]),
    .O(writedata_5_IBUF_1975)
  );
  IBUF   writedata_4_IBUF (
    .I(writedata[4]),
    .O(writedata_4_IBUF_1974)
  );
  IBUF   writedata_3_IBUF (
    .I(writedata[3]),
    .O(writedata_3_IBUF_1973)
  );
  IBUF   writedata_2_IBUF (
    .I(writedata[2]),
    .O(writedata_2_IBUF_1972)
  );
  IBUF   writedata_1_IBUF (
    .I(writedata[1]),
    .O(writedata_1_IBUF_1971)
  );
  IBUF   writedata_0_IBUF (
    .I(writedata[0]),
    .O(writedata_0_IBUF_1970)
  );
  IBUF   selectores_3_IBUF (
    .I(selectores[3]),
    .O(selectores_3_IBUF_1915)
  );
  IBUF   selectores_2_IBUF (
    .I(selectores[2]),
    .O(selectores_2_IBUF_1914)
  );
  IBUF   selectores_1_IBUF (
    .I(selectores[1]),
    .O(selectores_1_IBUF_1913)
  );
  IBUF   selectores_0_IBUF (
    .I(selectores[0]),
    .O(selectores_0_IBUF_1912)
  );
  IBUF   ADDreadreg_3_IBUF (
    .I(ADDreadreg[3]),
    .O(ADDreadreg_3_IBUF_8)
  );
  IBUF   ADDreadreg_2_IBUF (
    .I(ADDreadreg[2]),
    .O(ADDreadreg_2_IBUF_7)
  );
  IBUF   ADDreadreg_1_IBUF (
    .I(ADDreadreg[1]),
    .O(ADDreadreg_1_IBUF_6)
  );
  IBUF   ADDreadreg_0_IBUF (
    .I(ADDreadreg[0]),
    .O(ADDreadreg_0_IBUF_5)
  );
  IBUF   interruptores_2_IBUF (
    .I(interruptores[2]),
    .O(interruptores_2_IBUF_1462)
  );
  IBUF   interruptores_1_IBUF (
    .I(interruptores[1]),
    .O(interruptores_1_IBUF_1461)
  );
  IBUF   interruptores_0_IBUF (
    .I(interruptores[0]),
    .O(interruptores_0_IBUF_1460)
  );
  OBUF   AD_OBUF (
    .I(\Cront_out/AD_10 ),
    .O(AD)
  );
  OBUF   CS_OBUF (
    .I(\Cront_out/CS_16 ),
    .O(CS)
  );
  OBUF   RD_OBUF (
    .I(\Cront_out/RD_40 ),
    .O(RD)
  );
  OBUF   WR_OBUF (
    .I(\Cront_out/WR_51 ),
    .O(WR)
  );
  OBUF   datamemoria_7_OBUF (
    .I(\memoria/Dato2 [7]),
    .O(datamemoria[7])
  );
  OBUF   datamemoria_6_OBUF (
    .I(\memoria/Dato2 [6]),
    .O(datamemoria[6])
  );
  OBUF   datamemoria_5_OBUF (
    .I(\memoria/Dato2 [5]),
    .O(datamemoria[5])
  );
  OBUF   datamemoria_4_OBUF (
    .I(\memoria/Dato2 [4]),
    .O(datamemoria[4])
  );
  OBUF   datamemoria_3_OBUF (
    .I(\memoria/Dato2 [3]),
    .O(datamemoria[3])
  );
  OBUF   datamemoria_2_OBUF (
    .I(\memoria/Dato2 [2]),
    .O(datamemoria[2])
  );
  OBUF   datamemoria_1_OBUF (
    .I(\memoria/Dato2 [1]),
    .O(datamemoria[1])
  );
  OBUF   datamemoria_0_OBUF (
    .I(\memoria/Dato2 [0]),
    .O(datamemoria[0])
  );
  OBUFT   DatAdd_7_OBUFT (
    .I(\Cront_out/Mtridata_data_out [7]),
    .T(\Cront_out/Mtrien_data_out_38 ),
    .O(DatAdd[7])
  );
  OBUFT   DatAdd_6_OBUFT (
    .I(\Cront_out/Mtridata_data_out [6]),
    .T(\Cront_out/Mtrien_data_out_38 ),
    .O(DatAdd[6])
  );
  OBUFT   DatAdd_5_OBUFT (
    .I(\Cront_out/Mtridata_data_out [5]),
    .T(\Cront_out/Mtrien_data_out_38 ),
    .O(DatAdd[5])
  );
  OBUFT   DatAdd_4_OBUFT (
    .I(\Cront_out/Mtridata_data_out [4]),
    .T(\Cront_out/Mtrien_data_out_38 ),
    .O(DatAdd[4])
  );
  OBUFT   DatAdd_3_OBUFT (
    .I(\Cront_out/Mtridata_data_out [3]),
    .T(\Cront_out/Mtrien_data_out_38 ),
    .O(DatAdd[3])
  );
  OBUFT   DatAdd_2_OBUFT (
    .I(\Cront_out/Mtridata_data_out [2]),
    .T(\Cront_out/Mtrien_data_out_38 ),
    .O(DatAdd[2])
  );
  OBUFT   DatAdd_1_OBUFT (
    .I(\Cront_out/Mtridata_data_out [1]),
    .T(\Cront_out/Mtrien_data_out_38 ),
    .O(DatAdd[1])
  );
  OBUFT   DatAdd_0_OBUFT (
    .I(\Cront_out/Mtridata_data_out [0]),
    .T(\Cront_out/Mtrien_data_out_38 ),
    .O(DatAdd[0])
  );
  FDRS   \maquinaprincipal/CrontUs  (
    .C(clk_BUFGP_236),
    .D(\maquinaprincipal/CrontUs_mux00001 ),
    .R(reset_IBUF_1907),
    .S(\maquinaprincipal/State [5]),
    .Q(\maquinaprincipal/CrontUs_1463 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \maquinaprincipal/CrontUs_mux000011  (
    .I0(\maquinaprincipal/State [2]),
    .I1(\maquinaprincipal/CrontUs_1463 ),
    .O(\maquinaprincipal/CrontUs_mux00001 )
  );
  FDRS   \maquinaprincipal/whileT  (
    .C(clk_BUFGP_236),
    .D(\maquinaprincipal/whileT_mux00001 ),
    .R(reset_IBUF_1907),
    .S(\maquinaprincipal/State [1]),
    .Q(\maquinaprincipal/whileT_1474 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \maquinaprincipal/whileT_mux000011  (
    .I0(\maquinaprincipal/State [5]),
    .I1(\maquinaprincipal/whileT_1474 ),
    .O(\maquinaprincipal/whileT_mux00001 )
  );
  FDRS   \WT/lectura  (
    .C(clk_BUFGP_236),
    .D(\WT/lectura_mux000027 ),
    .R(\WT/state_or0000 ),
    .S(\WT/lectura_mux00004_215 ),
    .Q(\WT/lectura_211 )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/lectura_mux0000271  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/lectura_211 ),
    .I2(\WT/lectura_mux000011 ),
    .O(\WT/lectura_mux000027 )
  );
  FDRS   \WT/dir_6  (
    .C(clk_BUFGP_236),
    .D(\WT/dir_mux0000<1>1_194 ),
    .R(\WT/state_or0000 ),
    .S(N34),
    .Q(\WT/dir[6] )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_mux0000<1>1  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir[6] ),
    .I2(\WT/state_FSM_FFd3_227 ),
    .O(\WT/dir_mux0000<1>1_194 )
  );
  FDRS   \WT/dir_5  (
    .C(clk_BUFGP_236),
    .D(\WT/dir_mux0000<2>20 ),
    .R(\WT/state_or0000 ),
    .S(\WT/dir_mux0000<2>2_195 ),
    .Q(\WT/dir[5] )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_mux0000<2>201  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir[5] ),
    .I2(\WT/dir_mux0000<2>7_197 ),
    .O(\WT/dir_mux0000<2>20 )
  );
  FDRS   \WT/dir_2  (
    .C(clk_BUFGP_236),
    .D(\WT/dir_mux0000<5>1_198 ),
    .R(\WT/state_or0000 ),
    .S(N24),
    .Q(\WT/dir[2] )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_mux0000<5>1  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir[2] ),
    .I2(\WT/state_FSM_FFd5_229 ),
    .O(\WT/dir_mux0000<5>1_198 )
  );
  FDRS   \WT/dir_1  (
    .C(clk_BUFGP_236),
    .D(\WT/dir_mux0000<6>1_199 ),
    .R(\WT/state_or0000 ),
    .S(N61),
    .Q(\WT/dir[1] )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_mux0000<6>1  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir[1] ),
    .I2(\WT/state_FSM_FFd3_227 ),
    .O(\WT/dir_mux0000<6>1_199 )
  );
  FDRS   \WT/dir_0  (
    .C(clk_BUFGP_236),
    .D(\WT/dir_mux0000<7>1_200 ),
    .R(\WT/state_or0000 ),
    .S(N57),
    .Q(\WT/dir[0] )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_mux0000<7>1  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir[0] ),
    .I2(\WT/state_FSM_FFd4_228 ),
    .O(\WT/dir_mux0000<7>1_200 )
  );
  FDRS   \WT/dir_reg_3  (
    .C(clk_BUFGP_236),
    .D(\WT/dir_reg_mux0000<0>1 ),
    .R(\WT/state_or0000 ),
    .S(\WT/state_FSM_FFd2_226 ),
    .Q(\WT/dir_reg [3])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_reg_mux0000<0>11  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir_reg [3]),
    .I2(\WT/state_FSM_FFd3_227 ),
    .O(\WT/dir_reg_mux0000<0>1 )
  );
  FDRS   \WT/dir_reg_2  (
    .C(clk_BUFGP_236),
    .D(\WT/dir_reg_mux0000<1>1_206 ),
    .R(\WT/state_or0000 ),
    .S(N32),
    .Q(\WT/dir_reg [2])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_reg_mux0000<1>1  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir_reg [2]),
    .I2(\WT/state_FSM_FFd4_228 ),
    .O(\WT/dir_reg_mux0000<1>1_206 )
  );
  FDRS   \WT/dir_reg_1  (
    .C(clk_BUFGP_236),
    .D(\WT/dir_reg_mux0000<2>1_207 ),
    .R(\WT/state_or0000 ),
    .S(N30),
    .Q(\WT/dir_reg [1])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_reg_mux0000<2>1  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir_reg [1]),
    .I2(\WT/state_FSM_FFd4_228 ),
    .O(\WT/dir_reg_mux0000<2>1_207 )
  );
  FDRS   \WT/dir_reg_0  (
    .C(clk_BUFGP_236),
    .D(\WT/dir_reg_mux0000<3>1_208 ),
    .R(\WT/state_or0000 ),
    .S(N57),
    .Q(\WT/dir_reg [0])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_reg_mux0000<3>1  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir_reg [0]),
    .I2(\WT/state_FSM_FFd4_228 ),
    .O(\WT/dir_reg_mux0000<3>1_208 )
  );
  FDRE   \WT/state_FSM_FFd10  (
    .C(clk_BUFGP_236),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd11_222 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd10_221 )
  );
  FDRE   \WT/state_FSM_FFd8  (
    .C(clk_BUFGP_236),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd9_233 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd8_232 )
  );
  FDRE   \WT/state_FSM_FFd7  (
    .C(clk_BUFGP_236),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd8_232 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd7_231 )
  );
  FDRE   \WT/state_FSM_FFd9  (
    .C(clk_BUFGP_236),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd10_221 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd9_233 )
  );
  FDRE   \WT/state_FSM_FFd5  (
    .C(clk_BUFGP_236),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd6_230 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd5_229 )
  );
  FDRE   \WT/state_FSM_FFd4  (
    .C(clk_BUFGP_236),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd5_229 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd4_228 )
  );
  FDRE   \WT/state_FSM_FFd6  (
    .C(clk_BUFGP_236),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd7_231 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd6_230 )
  );
  FDRE   \WT/state_FSM_FFd2  (
    .C(clk_BUFGP_236),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd3_227 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd2_226 )
  );
  FDRE   \WT/state_FSM_FFd3  (
    .C(clk_BUFGP_236),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd4_228 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd3_227 )
  );
  FDRSE   \WT/escritura  (
    .C(clk_BUFGP_236),
    .CE(\WT/next_state_or0000 ),
    .D(N0),
    .R(\WT/state_or0000 ),
    .S(\WT/state_FSM_FFd11_222 ),
    .Q(\WT/escritura_209 )
  );
  FDRSE   \WT/final  (
    .C(clk_BUFGP_236),
    .CE(\WT/next_state_or0000 ),
    .D(N0),
    .R(\WT/state_or0000 ),
    .S(\WT/state_FSM_FFd1_219 ),
    .Q(\WT/final_210 )
  );
  LUT4 #(
    .INIT ( 16'hFEEE ))
  \controldeusuario/puntero_mux0000<1>86  (
    .I0(\controldeusuario/puntero_mux0000<1>16_1428 ),
    .I1(\controldeusuario/puntero_mux0000<1>10_1427 ),
    .I2(\controldeusuario/puntero_mux0000<1>37_1430 ),
    .I3(\controldeusuario/puntero_mux0000<1>69_1432 ),
    .O(\controldeusuario/puntero_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hDCEC ))
  \controldeusuario/puntero_mux0000<0>140  (
    .I0(\controldeusuario/puntero [3]),
    .I1(\controldeusuario/puntero_mux0000<0>8_1425 ),
    .I2(\controldeusuario/puntero_mux0000<0>71 ),
    .I3(N148),
    .O(\controldeusuario/puntero_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h596A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<1>  (
    .I0(\memoria/Dato3 [1]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux17_3_f6_1040 ),
    .I3(\controldeusuario/mux17_4_f6_1042 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [1])
  );
  LUT4 #(
    .INIT ( 16'h596A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<2>  (
    .I0(\memoria/Dato3 [2]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux18_3_f6_1054 ),
    .I3(\controldeusuario/mux18_4_f6_1056 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h596A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<3>  (
    .I0(\memoria/Dato3 [3]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux19_3_f6_1068 ),
    .I3(\controldeusuario/mux19_4_f6_1070 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h596A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<4>  (
    .I0(\memoria/Dato3 [4]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux20_3_f6_1096 ),
    .I3(\controldeusuario/mux20_4_f6_1098 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [4])
  );
  LUT4 #(
    .INIT ( 16'h596A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<5>  (
    .I0(\memoria/Dato3 [5]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux21_3_f6_1110 ),
    .I3(\controldeusuario/mux21_4_f6_1112 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [5])
  );
  LUT4 #(
    .INIT ( 16'h596A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<0>  (
    .I0(\memoria/Dato3 [0]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux16_3_f6_1026 ),
    .I3(\controldeusuario/mux16_4_f6_1028 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [0])
  );
  LUT4 #(
    .INIT ( 16'h569A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<6>  (
    .I0(\memoria/Dato3 [6]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux22_4_f6_1126 ),
    .I3(\controldeusuario/mux22_3_f6_1124 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [6])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \controldeusuario/Madd_COND_4_addsub0000_xor<6>11  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I3(N256),
    .O(\controldeusuario/COND_4_addsub0000 [6])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \controldeusuario/Madd_COND_2_addsub0000_xor<6>11  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I3(N257),
    .O(\controldeusuario/COND_2_addsub0000 [6])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_9_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(\controldeusuario/N10 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiospos_9_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_8_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(\controldeusuario/N9 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiospos_8_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_7_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(\controldeusuario/N8 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiospos_7_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_6_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(\controldeusuario/N7 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiospos_6_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_5_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(\controldeusuario/N6 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiospos_5_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_4_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(\controldeusuario/N5 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiospos_4_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_3_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(\controldeusuario/N4 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiospos_3_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_2_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(\controldeusuario/N3 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiospos_2_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_1_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(\controldeusuario/N2 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiospos_1_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_15_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(\controldeusuario/N15 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiospos_15_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_14_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(\controldeusuario/N14 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiospos_14_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_13_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(\controldeusuario/N13 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiospos_13_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_11_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(\controldeusuario/N12 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiospos_11_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_10_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(\controldeusuario/N111 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiospos_10_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_0_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I2(\controldeusuario/N11 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiospos_0_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_9_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(\controldeusuario/N10 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiosneg_9_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_8_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(\controldeusuario/N9 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiosneg_8_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_7_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(\controldeusuario/N8 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiosneg_7_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_6_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(\controldeusuario/N7 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiosneg_6_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_5_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(\controldeusuario/N6 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiosneg_5_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_4_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(\controldeusuario/N5 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiosneg_4_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_3_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(\controldeusuario/N4 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiosneg_3_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_2_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(\controldeusuario/N3 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiosneg_2_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_1_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(\controldeusuario/N2 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiosneg_1_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_15_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(\controldeusuario/N15 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiosneg_15_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_14_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(\controldeusuario/N14 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiosneg_14_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_13_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(\controldeusuario/N13 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiosneg_13_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_11_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(\controldeusuario/N12 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiosneg_11_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_10_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(\controldeusuario/N111 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiosneg_10_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_0_mux0000<7>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(\controldeusuario/N11 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[5] ),
    .O(\controldeusuario/cambiosneg_0_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'hFEF0 ))
  \controldeusuario/puntero_mux0000<2>93  (
    .I0(\controldeusuario/puntero_mux0000<2>40_1435 ),
    .I1(\controldeusuario/N23 ),
    .I2(\controldeusuario/puntero_mux0000<2>20_1434 ),
    .I3(\controldeusuario/puntero_mux0000<2>76_1436 ),
    .O(\controldeusuario/puntero_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h596A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<7>  (
    .I0(\memoria/Dato3 [7]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux23_3_f6_1138 ),
    .I3(\controldeusuario/mux23_4_f6_1140 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [7])
  );
  LUT4 #(
    .INIT ( 16'hF080 ))
  \controldeusuario/puntero_mux0000<3>164  (
    .I0(\controldeusuario/puntero [1]),
    .I1(\controldeusuario/puntero [2]),
    .I2(interruptores_2_IBUF_1462),
    .I3(\controldeusuario/puntero [3]),
    .O(\controldeusuario/puntero_mux0000<0>35 )
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_9_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/N10 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_9_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_8_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/N9 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_8_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_7_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/N8 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_7_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_6_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/N7 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_6_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_5_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/N6 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_5_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_4_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/N5 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_4_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_3_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/N4 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_3_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_2_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/N3 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_2_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_1_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/N2 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_1_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_15_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/N15 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_15_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_14_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/N14 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_14_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_13_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/N13 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_13_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_11_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/N12 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_11_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_10_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/N111 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_10_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiospos_0_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/N11 ),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_0_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_9_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/N10 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_9_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_8_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/N9 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_8_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_7_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/N8 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_7_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_6_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/N7 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_6_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_5_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/N6 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_5_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_4_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/N5 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_4_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_3_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/N4 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_3_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_2_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/N3 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_2_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_1_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/N2 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_1_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_15_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/N15 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_15_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_14_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/N14 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_14_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_13_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/N13 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_13_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_11_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/N12 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_11_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_10_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/N111 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_10_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \controldeusuario/cambiosneg_0_mux0000<5>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/N11 ),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_0_mux0000 [5])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiospos_9_mux0000<4>1  (
    .I0(\controldeusuario/N10 ),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_9_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiospos_8_mux0000<4>1  (
    .I0(N229),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_8_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiospos_7_mux0000<4>1  (
    .I0(\controldeusuario/N8 ),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_7_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiospos_6_mux0000<4>1  (
    .I0(\controldeusuario/N7 ),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_6_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiospos_5_mux0000<4>1  (
    .I0(\controldeusuario/N6 ),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_5_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiospos_4_mux0000<4>1  (
    .I0(\controldeusuario/N5 ),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_4_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiospos_3_mux0000<4>1  (
    .I0(\controldeusuario/N4 ),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_3_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiospos_2_mux0000<4>1  (
    .I0(\controldeusuario/N3 ),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_2_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiospos_1_mux0000<4>1  (
    .I0(\controldeusuario/N2 ),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_1_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiospos_15_mux0000<4>1  (
    .I0(\controldeusuario/N15 ),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_15_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiospos_14_mux0000<4>1  (
    .I0(\controldeusuario/N14 ),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_14_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiospos_13_mux0000<4>1  (
    .I0(\controldeusuario/N13 ),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_13_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiospos_11_mux0000<4>1  (
    .I0(\controldeusuario/N12 ),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_11_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiospos_10_mux0000<4>1  (
    .I0(\controldeusuario/N111 ),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_10_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiospos_0_mux0000<4>1  (
    .I0(N230),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiospos_0_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiosneg_9_mux0000<4>1  (
    .I0(\controldeusuario/N10 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_9_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiosneg_8_mux0000<4>1  (
    .I0(\controldeusuario/N9 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_8_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiosneg_7_mux0000<4>1  (
    .I0(\controldeusuario/N8 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_7_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiosneg_6_mux0000<4>1  (
    .I0(\controldeusuario/N7 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_6_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiosneg_5_mux0000<4>1  (
    .I0(\controldeusuario/N6 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_5_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiosneg_4_mux0000<4>1  (
    .I0(\controldeusuario/N5 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_4_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiosneg_3_mux0000<4>1  (
    .I0(\controldeusuario/N4 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_3_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiosneg_2_mux0000<4>1  (
    .I0(\controldeusuario/N3 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_2_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiosneg_1_mux0000<4>1  (
    .I0(\controldeusuario/N2 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_1_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiosneg_15_mux0000<4>1  (
    .I0(\controldeusuario/N15 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_15_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiosneg_14_mux0000<4>1  (
    .I0(\controldeusuario/N14 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_14_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiosneg_13_mux0000<4>1  (
    .I0(\controldeusuario/N13 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_13_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiosneg_11_mux0000<4>1  (
    .I0(\controldeusuario/N12 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_11_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiosneg_10_mux0000<4>1  (
    .I0(\controldeusuario/N111 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_10_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \controldeusuario/cambiosneg_0_mux0000<4>1  (
    .I0(\controldeusuario/N11 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[3] ),
    .O(\controldeusuario/cambiosneg_0_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hA2A8 ))
  \controldeusuario/puntero_mux0000<3>241  (
    .I0(interruptores_0_IBUF_1460),
    .I1(\controldeusuario/puntero [0]),
    .I2(N154),
    .I3(\controldeusuario/N0 ),
    .O(\controldeusuario/puntero_mux0000<3>241_1441 )
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \controldeusuario/puntero_mux0000<2>20  (
    .I0(\controldeusuario/N131 ),
    .I1(N156),
    .I2(interruptores_2_IBUF_1462),
    .I3(interruptores_0_IBUF_1460),
    .O(\controldeusuario/puntero_mux0000<2>20_1434 )
  );
  LUT4 #(
    .INIT ( 16'h3323 ))
  \controldeusuario/cambiospos_8_mux0000<0>1  (
    .I0(\controldeusuario/N151 ),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I2(\controldeusuario/puntero2 [3]),
    .I3(\controldeusuario/N20 ),
    .O(\controldeusuario/cambiospos_8_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h3332 ))
  \controldeusuario/cambiospos_0_mux0000<0>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I2(\controldeusuario/N151 ),
    .I3(\controldeusuario/N20 ),
    .O(\controldeusuario/cambiospos_0_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h3323 ))
  \controldeusuario/cambiosneg_8_mux0000<0>2  (
    .I0(\controldeusuario/N151 ),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I2(\controldeusuario/puntero2 [3]),
    .I3(\controldeusuario/N20 ),
    .O(\controldeusuario/cambiosneg_8_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h3332 ))
  \controldeusuario/cambiosneg_0_mux0000<0>2  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I2(\controldeusuario/N151 ),
    .I3(\controldeusuario/N20 ),
    .O(\controldeusuario/cambiosneg_0_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h08AA ))
  \controldeusuario/puntero_mux0000<1>31  (
    .I0(\controldeusuario/N40 ),
    .I1(\controldeusuario/puntero [3]),
    .I2(N253),
    .I3(interruptores_2_IBUF_1462),
    .O(\controldeusuario/puntero_mux0000<1>31_1429 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \controldeusuario/final_mux00001  (
    .I0(\maquinaprincipal/CrontUs_1463 ),
    .I1(\controldeusuario/N36 ),
    .I2(\controldeusuario/puntero2 [0]),
    .I3(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/final_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hAB ))
  \write/state_or00001  (
    .I0(reset_IBUF_1907),
    .I1(\controldeusuario/escritura_936 ),
    .I2(\WT/escritura_209 ),
    .O(\write/state_or0000 )
  );
  LUT3 #(
    .INIT ( 8'hAB ))
  \Cront_out/CS_or00001  (
    .I0(reset_IBUF_1907),
    .I1(\write/activa_1916 ),
    .I2(\read/activa_1877 ),
    .O(\Cront_out/CS_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \controldeusuario/puntero_mux0000<0>8_SW0  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero [1]),
    .I2(\controldeusuario/N341 ),
    .I3(\controldeusuario/final_cmp_eq0000 ),
    .O(N158)
  );
  LUT4 #(
    .INIT ( 16'hF8D8 ))
  \controldeusuario/puntero_mux0000<0>8  (
    .I0(\controldeusuario/puntero [3]),
    .I1(N158),
    .I2(\controldeusuario/puntero_mux0000<0>3_1419 ),
    .I3(\controldeusuario/N411 ),
    .O(\controldeusuario/puntero_mux0000<0>8_1425 )
  );
  LUT4 #(
    .INIT ( 16'hFCF8 ))
  \controldeusuario/puntero_mux0000<1>11_SW0  (
    .I0(\controldeusuario/puntero [1]),
    .I1(\controldeusuario/puntero [3]),
    .I2(interruptores_2_IBUF_1462),
    .I3(\controldeusuario/puntero [2]),
    .O(N138)
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \WT/state_FSM_FFd1-In1  (
    .I0(\write/final_1953 ),
    .I1(\WT/state_FSM_FFd2_226 ),
    .I2(\read/final_1890 ),
    .O(\WT/state_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \controldeusuario/Mrom__COND_511  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/puntero2 [2]),
    .I2(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/Mrom__COND_5 )
  );
  LUT4 #(
    .INIT ( 16'hFD00 ))
  \controldeusuario/cambiospos_8_mux0000<3>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_4_addsub0000 [3]),
    .O(\controldeusuario/cambiospos_8_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hFD00 ))
  \controldeusuario/cambiospos_8_mux0000<2>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_4_addsub0000 [2]),
    .O(\controldeusuario/cambiospos_8_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hFD00 ))
  \controldeusuario/cambiospos_8_mux0000<1>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_4_addsub0000 [1]),
    .O(\controldeusuario/cambiospos_8_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hFE00 ))
  \controldeusuario/cambiospos_0_mux0000<3>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_4_addsub0000 [3]),
    .O(\controldeusuario/cambiospos_0_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hFE00 ))
  \controldeusuario/cambiospos_0_mux0000<2>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_4_addsub0000 [2]),
    .O(\controldeusuario/cambiospos_0_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hFE00 ))
  \controldeusuario/cambiospos_0_mux0000<1>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_4_addsub0000 [1]),
    .O(\controldeusuario/cambiospos_0_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hFD00 ))
  \controldeusuario/cambiosneg_8_mux0000<3>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_2_addsub0000 [3]),
    .O(\controldeusuario/cambiosneg_8_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hFD00 ))
  \controldeusuario/cambiosneg_8_mux0000<2>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_2_addsub0000 [2]),
    .O(\controldeusuario/cambiosneg_8_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hFD00 ))
  \controldeusuario/cambiosneg_8_mux0000<1>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_2_addsub0000 [1]),
    .O(\controldeusuario/cambiosneg_8_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hFE00 ))
  \controldeusuario/cambiosneg_0_mux0000<3>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_2_addsub0000 [3]),
    .O(\controldeusuario/cambiosneg_0_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hFE00 ))
  \controldeusuario/cambiosneg_0_mux0000<2>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_2_addsub0000 [2]),
    .O(\controldeusuario/cambiosneg_0_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hFE00 ))
  \controldeusuario/cambiosneg_0_mux0000<1>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_2_addsub0000 [1]),
    .O(\controldeusuario/cambiosneg_0_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h0155 ))
  \Cront_out/Mtridata_data_out_not00011  (
    .I0(reset_IBUF_1907),
    .I1(\read/activa_1877 ),
    .I2(\write/activa_1916 ),
    .I3(N4),
    .O(\Cront_out/Mtridata_data_out_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \Cront_out/Mtridata_data_out_mux0000<4>1  (
    .I0(\write/data_out [3]),
    .I1(\write/activa_1916 ),
    .I2(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_6_not000128  (
    .I0(\controldeusuario/puntero [3]),
    .I1(\controldeusuario/cambiospos_6_not000113_882 ),
    .I2(\controldeusuario/final_cmp_eq0000 ),
    .I3(\controldeusuario/puntero [1]),
    .O(\controldeusuario/cambiospos_6_not000128_883 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \Cront_out/Mtrien_data_out_mux00001  (
    .I0(\write/activa_1916 ),
    .I1(\Cront_out/CS_cmp_eq0005 ),
    .I2(\read/activa_1877 ),
    .O(\Cront_out/Mtrien_data_out_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \controldeusuario/cambiosneg_8_not0001_SW0  (
    .I0(selectores_0_IBUF_1912),
    .I1(\controldeusuario/puntero [3]),
    .I2(interruptores_2_IBUF_1462),
    .I3(\controldeusuario/N40 ),
    .O(N107)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \controldeusuario/cambiospos_9_not000122  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/puntero [1]),
    .I3(N160),
    .O(\controldeusuario/cambiospos_9_not000122_935 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \controldeusuario/cambiospos_1_not000125  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/puntero [1]),
    .I3(N162),
    .O(\controldeusuario/cambiospos_1_not000125_796 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \controldeusuario/puntero_mux0000<3>44_SW0  (
    .I0(interruptores_1_IBUF_1461),
    .I1(\controldeusuario/puntero [2]),
    .I2(interruptores_2_IBUF_1462),
    .I3(\controldeusuario/puntero [3]),
    .O(N166)
  );
  LUT4 #(
    .INIT ( 16'hFF2F ))
  \controldeusuario/cambiosneg_5_not0001_SW1  (
    .I0(\controldeusuario/N40 ),
    .I1(interruptores_2_IBUF_1462),
    .I2(selectores_0_IBUF_1912),
    .I3(\controldeusuario/puntero [3]),
    .O(N168)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_5_not0001  (
    .I0(\controldeusuario/N311 ),
    .I1(N168),
    .I2(\controldeusuario/N37 ),
    .I3(\controldeusuario/N29 ),
    .O(\controldeusuario/cambiosneg_5_not0001_597 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_4_not0001  (
    .I0(N214),
    .I1(N168),
    .I2(\controldeusuario/N37 ),
    .I3(\controldeusuario/N31 ),
    .O(\controldeusuario/cambiosneg_4_not0001_580 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_3_not0001  (
    .I0(\controldeusuario/N301 ),
    .I1(N168),
    .I2(\controldeusuario/N35 ),
    .I3(\controldeusuario/N271 ),
    .O(\controldeusuario/cambiosneg_3_not0001_563 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_2_not0001  (
    .I0(\controldeusuario/N321 ),
    .I1(N168),
    .I2(\controldeusuario/N35 ),
    .I3(\controldeusuario/N30 ),
    .O(\controldeusuario/cambiosneg_2_not0001_546 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_13_not0001  (
    .I0(\controldeusuario/N29 ),
    .I1(N228),
    .I2(\controldeusuario/N311 ),
    .I3(N107),
    .O(\controldeusuario/cambiosneg_13_not0001_478 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \controldeusuario/cambiosneg_11_not0001  (
    .I0(\controldeusuario/N271 ),
    .I1(\controldeusuario/N391 ),
    .I2(\controldeusuario/N301 ),
    .I3(N107),
    .O(\controldeusuario/cambiosneg_11_not0001_452 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \controldeusuario/cambiosneg_10_not0001  (
    .I0(N255),
    .I1(\controldeusuario/N391 ),
    .I2(\controldeusuario/N321 ),
    .I3(N107),
    .O(\controldeusuario/cambiosneg_10_not0001_435 )
  );
  LUT4 #(
    .INIT ( 16'h5DFF ))
  \controldeusuario/cambiosneg_14_not0001_SW1  (
    .I0(N224),
    .I1(\controldeusuario/N40 ),
    .I2(interruptores_2_IBUF_1462),
    .I3(selectores_0_IBUF_1912),
    .O(N182)
  );
  LUT4 #(
    .INIT ( 16'h222F ))
  \controldeusuario/cambiosneg_14_not0001  (
    .I0(\controldeusuario/N30 ),
    .I1(\controldeusuario/N36 ),
    .I2(\controldeusuario/puntero [0]),
    .I3(N182),
    .O(\controldeusuario/cambiosneg_14_not0001_495 )
  );
  LUT4 #(
    .INIT ( 16'hFD00 ))
  \controldeusuario/cambiospos_8_mux0000<6>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_8_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hFE00 ))
  \controldeusuario/cambiospos_0_mux0000<6>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_0_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hFD00 ))
  \controldeusuario/cambiosneg_8_mux0000<6>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_2_addsub0000 [6]),
    .O(\controldeusuario/cambiosneg_8_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hFE00 ))
  \controldeusuario/cambiosneg_0_mux0000<6>1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .I3(\controldeusuario/COND_2_addsub0000 [6]),
    .O(\controldeusuario/cambiosneg_0_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiospos_9_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I3(\controldeusuario/N10 ),
    .O(\controldeusuario/cambiospos_9_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiospos_9_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I2(\controldeusuario/N10 ),
    .O(\controldeusuario/cambiospos_9_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiospos_7_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I3(\controldeusuario/N8 ),
    .O(\controldeusuario/cambiospos_7_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiospos_7_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I2(\controldeusuario/N8 ),
    .O(\controldeusuario/cambiospos_7_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiospos_6_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I3(\controldeusuario/N7 ),
    .O(\controldeusuario/cambiospos_6_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiospos_6_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I2(\controldeusuario/N7 ),
    .O(\controldeusuario/cambiospos_6_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiospos_5_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I3(\controldeusuario/N6 ),
    .O(\controldeusuario/cambiospos_5_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiospos_5_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I2(\controldeusuario/N6 ),
    .O(\controldeusuario/cambiospos_5_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiospos_4_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I3(\controldeusuario/N5 ),
    .O(\controldeusuario/cambiospos_4_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiospos_4_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I2(\controldeusuario/N5 ),
    .O(\controldeusuario/cambiospos_4_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiospos_3_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I3(\controldeusuario/N4 ),
    .O(\controldeusuario/cambiospos_3_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiospos_3_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I2(\controldeusuario/N4 ),
    .O(\controldeusuario/cambiospos_3_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiospos_2_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I3(\controldeusuario/N3 ),
    .O(\controldeusuario/cambiospos_2_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiospos_2_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I2(\controldeusuario/N3 ),
    .O(\controldeusuario/cambiospos_2_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiospos_1_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I3(\controldeusuario/N2 ),
    .O(\controldeusuario/cambiospos_1_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiospos_1_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I2(\controldeusuario/N2 ),
    .O(\controldeusuario/cambiospos_1_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiospos_15_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I3(\controldeusuario/N15 ),
    .O(\controldeusuario/cambiospos_15_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiospos_15_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I2(\controldeusuario/N15 ),
    .O(\controldeusuario/cambiospos_15_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiospos_14_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I3(\controldeusuario/N14 ),
    .O(\controldeusuario/cambiospos_14_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiospos_14_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I2(\controldeusuario/N14 ),
    .O(\controldeusuario/cambiospos_14_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiospos_13_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I3(\controldeusuario/N13 ),
    .O(\controldeusuario/cambiospos_13_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiospos_13_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I2(\controldeusuario/N13 ),
    .O(\controldeusuario/cambiospos_13_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiospos_11_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I3(\controldeusuario/N12 ),
    .O(\controldeusuario/cambiospos_11_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiospos_11_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I2(\controldeusuario/N12 ),
    .O(\controldeusuario/cambiospos_11_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiospos_10_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I3(\controldeusuario/N111 ),
    .O(\controldeusuario/cambiospos_10_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiospos_10_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .I2(\controldeusuario/N111 ),
    .O(\controldeusuario/cambiospos_10_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiosneg_9_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I3(\controldeusuario/N10 ),
    .O(\controldeusuario/cambiosneg_9_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiosneg_9_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I2(\controldeusuario/N10 ),
    .O(\controldeusuario/cambiosneg_9_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiosneg_7_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I3(\controldeusuario/N8 ),
    .O(\controldeusuario/cambiosneg_7_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiosneg_7_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I2(\controldeusuario/N8 ),
    .O(\controldeusuario/cambiosneg_7_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiosneg_6_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I3(\controldeusuario/N7 ),
    .O(\controldeusuario/cambiosneg_6_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiosneg_6_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I2(\controldeusuario/N7 ),
    .O(\controldeusuario/cambiosneg_6_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiosneg_5_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I3(\controldeusuario/N6 ),
    .O(\controldeusuario/cambiosneg_5_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiosneg_5_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I2(\controldeusuario/N6 ),
    .O(\controldeusuario/cambiosneg_5_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiosneg_4_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I3(\controldeusuario/N5 ),
    .O(\controldeusuario/cambiosneg_4_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiosneg_4_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I2(\controldeusuario/N5 ),
    .O(\controldeusuario/cambiosneg_4_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiosneg_3_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I3(\controldeusuario/N4 ),
    .O(\controldeusuario/cambiosneg_3_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiosneg_3_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I2(\controldeusuario/N4 ),
    .O(\controldeusuario/cambiosneg_3_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiosneg_2_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I3(\controldeusuario/N3 ),
    .O(\controldeusuario/cambiosneg_2_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiosneg_2_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I2(\controldeusuario/N3 ),
    .O(\controldeusuario/cambiosneg_2_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiosneg_1_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I3(\controldeusuario/N2 ),
    .O(\controldeusuario/cambiosneg_1_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiosneg_1_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I2(\controldeusuario/N2 ),
    .O(\controldeusuario/cambiosneg_1_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiosneg_15_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I3(\controldeusuario/N15 ),
    .O(\controldeusuario/cambiosneg_15_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiosneg_15_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I2(\controldeusuario/N15 ),
    .O(\controldeusuario/cambiosneg_15_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiosneg_14_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I3(\controldeusuario/N14 ),
    .O(\controldeusuario/cambiosneg_14_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiosneg_14_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I2(\controldeusuario/N14 ),
    .O(\controldeusuario/cambiosneg_14_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiosneg_13_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I3(\controldeusuario/N13 ),
    .O(\controldeusuario/cambiosneg_13_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiosneg_13_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I2(\controldeusuario/N13 ),
    .O(\controldeusuario/cambiosneg_13_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiosneg_11_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I3(\controldeusuario/N12 ),
    .O(\controldeusuario/cambiosneg_11_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiosneg_11_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I2(\controldeusuario/N12 ),
    .O(\controldeusuario/cambiosneg_11_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \controldeusuario/cambiosneg_10_mux0000<2>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I3(\controldeusuario/N111 ),
    .O(\controldeusuario/cambiosneg_10_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \controldeusuario/cambiosneg_10_mux0000<1>1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .I2(\controldeusuario/N111 ),
    .O(\controldeusuario/cambiosneg_10_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hF4F0 ))
  \controldeusuario/puntero_mux0000<3>76  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/puntero_mux0000<3>62_1444 ),
    .I2(\controldeusuario/puntero_mux0000<3>44_1443 ),
    .I3(\controldeusuario/N0 ),
    .O(\controldeusuario/puntero_mux0000<3>76_1445 )
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \controldeusuario/cambiospos_9_not000128  (
    .I0(\controldeusuario/cambiospos_9_not000122_935 ),
    .I1(\controldeusuario/N29 ),
    .I2(\controldeusuario/puntero2 [3]),
    .I3(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/cambiospos_9_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \controldeusuario/cambiospos_1_not000132  (
    .I0(\controldeusuario/N29 ),
    .I1(\controldeusuario/puntero2 [2]),
    .I2(\controldeusuario/puntero2 [3]),
    .I3(\controldeusuario/cambiospos_1_not000125_796 ),
    .O(\controldeusuario/cambiospos_1_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \controldeusuario/cambiospos_6_not000137  (
    .I0(\controldeusuario/cambiospos_6_not000128_883 ),
    .I1(\controldeusuario/N30 ),
    .I2(\controldeusuario/puntero2 [2]),
    .I3(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/cambiospos_6_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h1091 ))
  \controldeusuario/puntero_mux0000<2>40  (
    .I0(interruptores_0_IBUF_1460),
    .I1(interruptores_1_IBUF_1461),
    .I2(interruptores_2_IBUF_1462),
    .I3(\controldeusuario/puntero_cmp_gt0003 ),
    .O(\controldeusuario/puntero_mux0000<2>40_1435 )
  );
  LUT4 #(
    .INIT ( 16'h4050 ))
  \controldeusuario/cambiosneg_0_not0001_SW0  (
    .I0(\controldeusuario/puntero [3]),
    .I1(interruptores_2_IBUF_1462),
    .I2(selectores_0_IBUF_1912),
    .I3(\controldeusuario/N40 ),
    .O(N109)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \controldeusuario/puntero_mux0000<0>3  (
    .I0(interruptores_1_IBUF_1461),
    .I1(interruptores_0_IBUF_1460),
    .I2(interruptores_2_IBUF_1462),
    .O(\controldeusuario/puntero_mux0000<0>3_1419 )
  );
  LUT4 #(
    .INIT ( 16'h01FF ))
  \controldeusuario/cambiosneg_11_not00011_SW0  (
    .I0(interruptores_1_IBUF_1461),
    .I1(interruptores_0_IBUF_1460),
    .I2(interruptores_2_IBUF_1462),
    .I3(\write/final_1953 ),
    .O(N123)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \controldeusuario/cambiosneg_10_not00011_SW0  (
    .I0(\write/final_1953 ),
    .I1(interruptores_0_IBUF_1460),
    .I2(interruptores_1_IBUF_1461),
    .I3(interruptores_2_IBUF_1462),
    .O(\controldeusuario/puntero2_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h01FF ))
  \controldeusuario/cambiospos_12_not0001_SW0  (
    .I0(interruptores_2_IBUF_1462),
    .I1(interruptores_0_IBUF_1460),
    .I2(interruptores_1_IBUF_1461),
    .I3(selectores_2_IBUF_1914),
    .O(N190)
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_12_not0001  (
    .I0(selectores_0_IBUF_1912),
    .I1(\controldeusuario/N331 ),
    .I2(N190),
    .I3(\controldeusuario/puntero [3]),
    .O(\controldeusuario/cambiospos_12_not0001_727 )
  );
  LUT4 #(
    .INIT ( 16'h8002 ))
  \controldeusuario/puntero_mux0000<1>16  (
    .I0(\controldeusuario/puntero_cmp_gt0003 ),
    .I1(interruptores_0_IBUF_1460),
    .I2(interruptores_1_IBUF_1461),
    .I3(interruptores_2_IBUF_1462),
    .O(\controldeusuario/puntero_mux0000<1>16_1428 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \controldeusuario/punteroOut_mux0000<3>1  (
    .I0(\controldeusuario/puntero [3]),
    .I1(interruptores_1_IBUF_1461),
    .I2(interruptores_0_IBUF_1460),
    .I3(interruptores_2_IBUF_1462),
    .O(\controldeusuario/punteroOut_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \controldeusuario/punteroOut_mux0000<2>1  (
    .I0(\controldeusuario/puntero [2]),
    .I1(interruptores_1_IBUF_1461),
    .I2(interruptores_0_IBUF_1460),
    .I3(interruptores_2_IBUF_1462),
    .O(\controldeusuario/punteroOut_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \controldeusuario/punteroOut_mux0000<1>1  (
    .I0(\controldeusuario/puntero [1]),
    .I1(interruptores_1_IBUF_1461),
    .I2(interruptores_0_IBUF_1460),
    .I3(interruptores_2_IBUF_1462),
    .O(\controldeusuario/punteroOut_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \controldeusuario/punteroOut_mux0000<0>1  (
    .I0(\controldeusuario/puntero [0]),
    .I1(interruptores_1_IBUF_1461),
    .I2(interruptores_0_IBUF_1460),
    .I3(interruptores_2_IBUF_1462),
    .O(\controldeusuario/punteroOut_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \controldeusuario/puntero_mux0000<1>211  (
    .I0(interruptores_1_IBUF_1461),
    .I1(interruptores_0_IBUF_1460),
    .I2(interruptores_2_IBUF_1462),
    .O(\controldeusuario/final_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \controldeusuario/puntero_not00001  (
    .I0(interruptores_1_IBUF_1461),
    .I1(interruptores_0_IBUF_1460),
    .I2(interruptores_2_IBUF_1462),
    .O(\controldeusuario/puntero_not0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \controldeusuario/Maquina_out_or00001  (
    .I0(interruptores_2_IBUF_1462),
    .I1(interruptores_1_IBUF_1461),
    .I2(interruptores_0_IBUF_1460),
    .I3(reset_IBUF_1907),
    .O(\controldeusuario/Maquina_out_or0000 )
  );
  FDRE   \controldeusuario/puntero_1_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/puntero_1_1_1410 )
  );
  FDRE   \controldeusuario/puntero_1_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [2]),
    .R(reset_IBUF_1907),
    .Q(\controldeusuario/puntero_1_2_1411 )
  );
  FDRE   \controldeusuario/puntero2_0_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/puntero2_not0001 ),
    .D(\controldeusuario/Result [0]),
    .R(\controldeusuario/puntero2_or0000 ),
    .Q(\controldeusuario/puntero2_0_1_1391 )
  );
  FDRE   \controldeusuario/puntero2_0_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/puntero2_not0001 ),
    .D(\controldeusuario/Result [0]),
    .R(\controldeusuario/puntero2_or0000 ),
    .Q(\controldeusuario/puntero2_0_2_1392 )
  );
  FDSE   \controldeusuario/puntero_0_1  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [3]),
    .S(reset_IBUF_1907),
    .Q(\controldeusuario/puntero_0_1_1407 )
  );
  FDSE   \controldeusuario/puntero_0_2  (
    .C(clk_BUFGP_236),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [3]),
    .S(reset_IBUF_1907),
    .Q(\controldeusuario/puntero_0_2_1408 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_236)
  );
  INV   \maquinaprincipal/reset_inv1_INV_0  (
    .I(reset_IBUF_1907),
    .O(\Cront_out/reset_inv )
  );
  INV   \controldeusuario/Mcount_puntero2_xor<0>11_INV_0  (
    .I(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/Result [0])
  );
  INV   \Cront_out/Mcount_contador_xor<0>11_INV_0  (
    .I(\Cront_out/contador [0]),
    .O(\Cront_out/Result [0])
  );
  INV   \controldeusuario/Madd_COND_4_addsub0000_xor<0>11_INV_0  (
    .I(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .O(\controldeusuario/COND_4_addsub0000 [0])
  );
  INV   \controldeusuario/Madd_COND_2_addsub0000_xor<0>11_INV_0  (
    .I(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .O(\controldeusuario/COND_2_addsub0000 [0])
  );
  MUXF5   \Cront_out/CS_or0003  (
    .I0(N192),
    .I1(N193),
    .S(\Cront_out/contador [0]),
    .O(\Cront_out/CS_or0003_20 )
  );
  LUT4 #(
    .INIT ( 16'hC6E7 ))
  \Cront_out/CS_or0003_F  (
    .I0(\Cront_out/contador [4]),
    .I1(\Cront_out/contador [2]),
    .I2(\Cront_out/contador [1]),
    .I3(\Cront_out/contador [3]),
    .O(N192)
  );
  LUT4 #(
    .INIT ( 16'hFFF6 ))
  \Cront_out/CS_or0003_G  (
    .I0(\Cront_out/contador [4]),
    .I1(\Cront_out/contador [1]),
    .I2(\Cront_out/contador [3]),
    .I3(\Cront_out/contador [2]),
    .O(N193)
  );
  MUXF5   \Cront_out/RD_mux00002  (
    .I0(N194),
    .I1(N195),
    .S(\Cront_out/contador [0]),
    .O(N2)
  );
  LUT4 #(
    .INIT ( 16'h6050 ))
  \Cront_out/RD_mux00002_F  (
    .I0(\Cront_out/contador [2]),
    .I1(\Cront_out/contador [1]),
    .I2(\Cront_out/contador [3]),
    .I3(\Cront_out/contador [4]),
    .O(N194)
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \Cront_out/RD_mux00002_G  (
    .I0(\Cront_out/contador [2]),
    .I1(\Cront_out/contador [1]),
    .I2(\Cront_out/contador [3]),
    .I3(\Cront_out/contador [4]),
    .O(N195)
  );
  MUXF5   \controldeusuario/puntero_mux0000<3>182  (
    .I0(N196),
    .I1(N197),
    .S(interruptores_2_IBUF_1462),
    .O(\controldeusuario/puntero_mux0000<3>182_1440 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \controldeusuario/puntero_mux0000<3>182_F  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/puntero [1]),
    .I2(\controldeusuario/puntero [2]),
    .I3(interruptores_1_IBUF_1461),
    .O(N196)
  );
  LUT4 #(
    .INIT ( 16'h0018 ))
  \controldeusuario/puntero_mux0000<3>182_G  (
    .I0(\controldeusuario/puntero [1]),
    .I1(\controldeusuario/puntero [2]),
    .I2(\controldeusuario/puntero [3]),
    .I3(interruptores_1_IBUF_1461),
    .O(N197)
  );
  MUXF5   \controldeusuario/puntero_mux0000<1>111  (
    .I0(N198),
    .I1(N199),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/N51 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \controldeusuario/puntero_mux0000<1>111_F  (
    .I0(\controldeusuario/puntero [3]),
    .I1(interruptores_2_IBUF_1462),
    .I2(\controldeusuario/puntero [1]),
    .O(N198)
  );
  LUT4 #(
    .INIT ( 16'h89DD ))
  \controldeusuario/puntero_mux0000<1>111_G  (
    .I0(\controldeusuario/puntero [3]),
    .I1(interruptores_2_IBUF_1462),
    .I2(\controldeusuario/puntero [0]),
    .I3(\controldeusuario/puntero [1]),
    .O(N199)
  );
  MUXF5   \Cront_out/Mtridata_data_out_mux0000<7>  (
    .I0(N200),
    .I1(N201),
    .S(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Cront_out/Mtridata_data_out_mux0000<7>_F  (
    .I0(\write/activa_1916 ),
    .I1(\write/data_out [0]),
    .O(N200)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \Cront_out/Mtridata_data_out_mux0000<7>_G  (
    .I0(\write/activa_1916 ),
    .I1(\read/activa_1877 ),
    .I2(\read/dir_out[0] ),
    .I3(\write/dir_out[0] ),
    .O(N201)
  );
  MUXF5   \Cront_out/Mtridata_data_out_mux0000<6>  (
    .I0(N202),
    .I1(N203),
    .S(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Cront_out/Mtridata_data_out_mux0000<6>_F  (
    .I0(\write/activa_1916 ),
    .I1(\write/data_out [1]),
    .O(N202)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \Cront_out/Mtridata_data_out_mux0000<6>_G  (
    .I0(\write/activa_1916 ),
    .I1(\read/activa_1877 ),
    .I2(\read/dir_out[1] ),
    .I3(\write/dir_out[1] ),
    .O(N203)
  );
  MUXF5   \Cront_out/Mtridata_data_out_mux0000<5>  (
    .I0(N204),
    .I1(N205),
    .S(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Cront_out/Mtridata_data_out_mux0000<5>_F  (
    .I0(\write/activa_1916 ),
    .I1(\write/data_out [2]),
    .O(N204)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \Cront_out/Mtridata_data_out_mux0000<5>_G  (
    .I0(\write/activa_1916 ),
    .I1(\read/activa_1877 ),
    .I2(\read/dir_out[2] ),
    .I3(\write/dir_out[2] ),
    .O(N205)
  );
  MUXF5   \Cront_out/Mtridata_data_out_mux0000<3>  (
    .I0(N206),
    .I1(N207),
    .S(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Cront_out/Mtridata_data_out_mux0000<3>_F  (
    .I0(\write/activa_1916 ),
    .I1(\write/data_out [4]),
    .O(N206)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \Cront_out/Mtridata_data_out_mux0000<3>_G  (
    .I0(\write/activa_1916 ),
    .I1(\read/activa_1877 ),
    .I2(\read/dir_out[7] ),
    .I3(\write/dir_out[4] ),
    .O(N207)
  );
  MUXF5   \Cront_out/Mtridata_data_out_mux0000<2>  (
    .I0(N208),
    .I1(N209),
    .S(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Cront_out/Mtridata_data_out_mux0000<2>_F  (
    .I0(\write/activa_1916 ),
    .I1(\write/data_out [5]),
    .O(N208)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \Cront_out/Mtridata_data_out_mux0000<2>_G  (
    .I0(\write/activa_1916 ),
    .I1(\read/activa_1877 ),
    .I2(\read/dir_out[5] ),
    .I3(\write/dir_out[5] ),
    .O(N209)
  );
  MUXF5   \Cront_out/Mtridata_data_out_mux0000<1>  (
    .I0(N210),
    .I1(N211),
    .S(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Cront_out/Mtridata_data_out_mux0000<1>_F  (
    .I0(\write/activa_1916 ),
    .I1(\write/data_out [6]),
    .O(N210)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \Cront_out/Mtridata_data_out_mux0000<1>_G  (
    .I0(\write/activa_1916 ),
    .I1(\read/activa_1877 ),
    .I2(\read/dir_out[6] ),
    .I3(\write/dir_out[6] ),
    .O(N211)
  );
  MUXF5   \Cront_out/Mtridata_data_out_mux0000<0>  (
    .I0(N212),
    .I1(N213),
    .S(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Cront_out/Mtridata_data_out_mux0000<0>_F  (
    .I0(\write/activa_1916 ),
    .I1(\write/data_out [7]),
    .O(N212)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \Cront_out/Mtridata_data_out_mux0000<0>_G  (
    .I0(\write/activa_1916 ),
    .I1(\read/activa_1877 ),
    .I2(\read/dir_out[7] ),
    .I3(\write/dir_out[7] ),
    .O(N213)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \memoria/memoria1_8_not00011  (
    .I0(\Cront_out/escreg_59 ),
    .I1(\read/reg_out [1]),
    .I2(\read/reg_out [0]),
    .I3(\read/reg_out [2]),
    .O(\memoria/memoria1_8_not00011_1643 )
  );
  MUXF5   \memoria/memoria1_8_not0001_f5  (
    .I0(N0),
    .I1(\memoria/memoria1_8_not00011_1643 ),
    .S(\read/reg_out [3]),
    .O(\memoria/memoria1_8_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \memoria/memoria1_4_not00011  (
    .I0(\read/reg_out [1]),
    .I1(\Cront_out/escreg_59 ),
    .I2(\read/reg_out [0]),
    .I3(\read/reg_out [2]),
    .O(\memoria/memoria1_4_not00011_1606 )
  );
  MUXF5   \memoria/memoria1_4_not0001_f5  (
    .I0(\memoria/memoria1_4_not00011_1606 ),
    .I1(N0),
    .S(\read/reg_out [3]),
    .O(\memoria/memoria1_4_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \memoria/memoria1_0_not00011  (
    .I0(\Cront_out/escreg_59 ),
    .I1(\read/reg_out [1]),
    .I2(\read/reg_out [0]),
    .I3(\read/reg_out [2]),
    .O(\memoria/memoria1_0_not00011_1520 )
  );
  MUXF5   \memoria/memoria1_0_not0001_f5  (
    .I0(\memoria/memoria1_0_not00011_1520 ),
    .I1(N0),
    .S(\read/reg_out [3]),
    .O(\memoria/memoria1_0_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h2F ))
  \write/state_FSM_FFd2-In11  (
    .I0(\write/state_FSM_FFd2_1956 ),
    .I1(\Cront_out/final_63 ),
    .I2(\write/state_FSM_FFd1_1954 ),
    .O(\write/state_FSM_FFd2-In1 )
  );
  LUT4 #(
    .INIT ( 16'h2F2A ))
  \write/state_FSM_FFd2-In12  (
    .I0(\write/state_FSM_FFd2_1956 ),
    .I1(\Cront_out/final_63 ),
    .I2(\write/state_FSM_FFd1_1954 ),
    .I3(\controldeusuario/escritura_936 ),
    .O(\write/state_FSM_FFd2-In11_1959 )
  );
  MUXF5   \write/state_FSM_FFd2-In1_f5  (
    .I0(\write/state_FSM_FFd2-In11_1959 ),
    .I1(\write/state_FSM_FFd2-In1 ),
    .S(\WT/escritura_209 ),
    .O(\write/state_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \write/dir_out_mux0000<3>1  (
    .I0(\write/state_FSM_FFd2_1956 ),
    .I1(\write/state_FSM_FFd1_1954 ),
    .I2(\maquinaprincipal/whileT_1474 ),
    .I3(\controldeusuario/ADD2[4] ),
    .O(\write/dir_out_mux0000<3>1_1948 )
  );
  LUT4 #(
    .INIT ( 16'hF020 ))
  \write/dir_out_mux0000<3>2  (
    .I0(\controldeusuario/ADD2[4] ),
    .I1(\maquinaprincipal/whileT_1474 ),
    .I2(\write/state_FSM_FFd2_1956 ),
    .I3(\write/state_FSM_FFd1_1954 ),
    .O(\write/dir_out_mux0000<3>2_1949 )
  );
  MUXF5   \write/dir_out_mux0000<3>_f5  (
    .I0(\write/dir_out_mux0000<3>2_1949 ),
    .I1(\write/dir_out_mux0000<3>1_1948 ),
    .S(\WT/escritura_209 ),
    .O(\write/dir_out_mux0000[3] )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \write/dir_out_mux0000<2>1  (
    .I0(\write/state_FSM_FFd2_1956 ),
    .I1(\write/state_FSM_FFd1_1954 ),
    .I2(\maquinaprincipal/whileT_1474 ),
    .I3(\controldeusuario/ADD2[5] ),
    .O(\write/dir_out_mux0000<2>1_1945 )
  );
  LUT4 #(
    .INIT ( 16'hF020 ))
  \write/dir_out_mux0000<2>2  (
    .I0(\controldeusuario/ADD2[5] ),
    .I1(\maquinaprincipal/whileT_1474 ),
    .I2(\write/state_FSM_FFd2_1956 ),
    .I3(\write/state_FSM_FFd1_1954 ),
    .O(\write/dir_out_mux0000<2>2_1946 )
  );
  MUXF5   \write/dir_out_mux0000<2>_f5  (
    .I0(\write/dir_out_mux0000<2>2_1946 ),
    .I1(\write/dir_out_mux0000<2>1_1945 ),
    .S(\WT/dir[5] ),
    .O(\write/dir_out_mux0000[2] )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \write/dir_out_mux0000<1>1  (
    .I0(\write/state_FSM_FFd2_1956 ),
    .I1(\write/state_FSM_FFd1_1954 ),
    .I2(\maquinaprincipal/whileT_1474 ),
    .I3(\controldeusuario/ADD2[6] ),
    .O(\write/dir_out_mux0000<1>1_1942 )
  );
  LUT4 #(
    .INIT ( 16'hF020 ))
  \write/dir_out_mux0000<1>2  (
    .I0(\controldeusuario/ADD2[6] ),
    .I1(\maquinaprincipal/whileT_1474 ),
    .I2(\write/state_FSM_FFd2_1956 ),
    .I3(\write/state_FSM_FFd1_1954 ),
    .O(\write/dir_out_mux0000<1>2_1943 )
  );
  MUXF5   \write/dir_out_mux0000<1>_f5  (
    .I0(\write/dir_out_mux0000<1>2_1943 ),
    .I1(\write/dir_out_mux0000<1>1_1942 ),
    .S(\WT/dir[6] ),
    .O(\write/dir_out_mux0000[1] )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \Cront_out/Result<4>1  (
    .I0(\Cront_out/contador [3]),
    .I1(\Cront_out/contador [2]),
    .I2(\Cront_out/contador [1]),
    .I3(\Cront_out/contador [0]),
    .O(\Cront_out/Result<4>1_49 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \Cront_out/Result<4>2  (
    .I0(\Cront_out/contador [1]),
    .I1(\Cront_out/contador [0]),
    .I2(\Cront_out/contador [3]),
    .I3(\Cront_out/contador [2]),
    .O(\Cront_out/Result<4>2_50 )
  );
  MUXF5   \Cront_out/Result<4>_f5  (
    .I0(\Cront_out/Result<4>2_50 ),
    .I1(\Cront_out/Result<4>1_49 ),
    .S(\Cront_out/contador [4]),
    .O(\Cront_out/Result [4])
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  \Cront_out/escreg_mux000021  (
    .I0(\Cront_out/contador [0]),
    .I1(\Cront_out/contador [3]),
    .I2(\Cront_out/contador [1]),
    .I3(\Cront_out/contador [2]),
    .O(\Cront_out/escreg_mux00002 )
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  \Cront_out/escreg_mux000022  (
    .I0(\Cront_out/contador [3]),
    .I1(\Cront_out/contador [1]),
    .I2(\Cront_out/contador [2]),
    .I3(\Cront_out/contador [0]),
    .O(\Cront_out/escreg_mux000021_62 )
  );
  MUXF5   \Cront_out/escreg_mux00002_f5  (
    .I0(\Cront_out/escreg_mux000021_62 ),
    .I1(\Cront_out/escreg_mux00002 ),
    .S(\Cront_out/contador [4]),
    .O(N4)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \WT/lectura_mux0000111  (
    .I0(\WT/state_FSM_FFd10_221 ),
    .I1(\WT/state_FSM_FFd2_226 ),
    .I2(\WT/state_FSM_FFd7_231 ),
    .I3(\WT/state_FSM_FFd8_232 ),
    .O(\WT/lectura_mux0000111_213 )
  );
  MUXF5   \WT/lectura_mux000011_f5  (
    .I0(\WT/lectura_mux0000111_213 ),
    .I1(N1),
    .S(\WT/state_FSM_FFd9_233 ),
    .O(\WT/lectura_mux000011 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiosneg_6_not0001131  (
    .I0(\controldeusuario/puntero [3]),
    .I1(\controldeusuario/puntero [2]),
    .I2(\controldeusuario/puntero [0]),
    .I3(\controldeusuario/puntero [1]),
    .O(\controldeusuario/cambiosneg_6_not0001131_616 )
  );
  MUXF5   \controldeusuario/cambiosneg_6_not000113_f5  (
    .I0(N0),
    .I1(\controldeusuario/cambiosneg_6_not0001131_616 ),
    .S(selectores_0_IBUF_1912),
    .O(\controldeusuario/cambiosneg_6_not000113 )
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \Cront_out/AD_mux0000241  (
    .I0(\Cront_out/contador [3]),
    .I1(\Cront_out/contador [0]),
    .I2(\Cront_out/contador [1]),
    .I3(\Cront_out/contador [2]),
    .O(\Cront_out/AD_mux0000241_13 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \Cront_out/AD_mux0000242  (
    .I0(\Cront_out/contador [0]),
    .I1(\Cront_out/contador [1]),
    .I2(\Cront_out/contador [2]),
    .I3(\Cront_out/contador [3]),
    .O(\Cront_out/AD_mux0000242_14 )
  );
  MUXF5   \Cront_out/AD_mux000024_f5  (
    .I0(\Cront_out/AD_mux0000242_14 ),
    .I1(\Cront_out/AD_mux0000241_13 ),
    .S(\Cront_out/contador [4]),
    .O(\Cront_out/AD_mux000024 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \controldeusuario/puntero_mux0000<0>711  (
    .I0(\controldeusuario/puntero_mux0000<0>35 ),
    .I1(\controldeusuario/puntero_mux0000<0>23_1418 ),
    .I2(N164),
    .O(\controldeusuario/puntero_mux0000<0>711_1423 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \controldeusuario/puntero_mux0000<0>712  (
    .I0(\controldeusuario/puntero_mux0000<0>23_1418 ),
    .I1(\controldeusuario/N51 ),
    .I2(interruptores_0_IBUF_1460),
    .O(\controldeusuario/puntero_mux0000<0>712_1424 )
  );
  MUXF5   \controldeusuario/puntero_mux0000<0>71_f5  (
    .I0(\controldeusuario/puntero_mux0000<0>712_1424 ),
    .I1(\controldeusuario/puntero_mux0000<0>711_1423 ),
    .S(interruptores_1_IBUF_1461),
    .O(\controldeusuario/puntero_mux0000<0>71 )
  );
  LUT4 #(
    .INIT ( 16'h02AA ))
  \controldeusuario/puntero_mux0000<0>62_SW0_SW01  (
    .I0(interruptores_0_IBUF_1460),
    .I1(\controldeusuario/puntero [2]),
    .I2(\controldeusuario/puntero [1]),
    .I3(\controldeusuario/puntero [3]),
    .O(\controldeusuario/puntero_mux0000<0>62_SW0_SW0 )
  );
  MUXF5   \controldeusuario/puntero_mux0000<0>62_SW0_SW0_f5  (
    .I0(\controldeusuario/puntero_mux0000<0>62_SW0_SW0 ),
    .I1(interruptores_0_IBUF_1460),
    .S(interruptores_2_IBUF_1462),
    .O(N164)
  );
  LUT3_D #(
    .INIT ( 8'h10 ))
  \controldeusuario/cambiospos_12_and000611  (
    .I0(\controldeusuario/puntero [1]),
    .I1(\controldeusuario/puntero [0]),
    .I2(\controldeusuario/puntero [2]),
    .LO(N214),
    .O(\controldeusuario/N331 )
  );
  LUT3_D #(
    .INIT ( 8'h08 ))
  \controldeusuario/cambiospos_11_and000611  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/puntero [1]),
    .I2(\controldeusuario/puntero [2]),
    .LO(N215),
    .O(\controldeusuario/N301 )
  );
  LUT3_D #(
    .INIT ( 8'h10 ))
  \controldeusuario/cambiospos_10_and000611  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero [0]),
    .I2(\controldeusuario/puntero [1]),
    .LO(N216),
    .O(\controldeusuario/N321 )
  );
  LUT2_D #(
    .INIT ( 4'h2 ))
  \controldeusuario/cambiosneg_4_not000111  (
    .I0(\controldeusuario/puntero2 [2]),
    .I1(\controldeusuario/puntero2 [3]),
    .LO(N217),
    .O(\controldeusuario/N37 )
  );
  LUT2_D #(
    .INIT ( 4'h1 ))
  \controldeusuario/cambiosneg_3_not000111  (
    .I0(\controldeusuario/puntero2 [2]),
    .I1(\controldeusuario/puntero2 [3]),
    .LO(N218),
    .O(\controldeusuario/N35 )
  );
  LUT2_D #(
    .INIT ( 4'h2 ))
  \controldeusuario/Mrom__COND_5211  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/puntero2 [2]),
    .LO(N219),
    .O(\controldeusuario/N391 )
  );
  LUT3_D #(
    .INIT ( 8'hFE ))
  \controldeusuario/Mrom__COND_5511  (
    .I0(\controldeusuario/puntero2 [2]),
    .I1(\controldeusuario/puntero2 [1]),
    .I2(\controldeusuario/puntero2 [0]),
    .LO(N220),
    .O(\controldeusuario/N151 )
  );
  LUT4_D #(
    .INIT ( 16'h0400 ))
  \Cront_out/AD_mux000011  (
    .I0(\Cront_out/contador [0]),
    .I1(\Cront_out/contador [4]),
    .I2(\Cront_out/contador [1]),
    .I3(\Cront_out/contador [2]),
    .LO(N221),
    .O(\Cront_out/AD_mux000035 )
  );
  LUT2_L #(
    .INIT ( 4'hD ))
  \Cront_out/WR_mux00001_SW0  (
    .I0(\Cront_out/contador [0]),
    .I1(\Cront_out/contador [1]),
    .LO(N26)
  );
  LUT4_L #(
    .INIT ( 16'hFFFE ))
  \WT/next_state_or00004  (
    .I0(\WT/state_FSM_FFd11_222 ),
    .I1(\WT/state_FSM_FFd12_224 ),
    .I2(\WT/state_FSM_FFd1_219 ),
    .I3(\WT/state_FSM_FFd2_226 ),
    .LO(\WT/next_state_or00004_218 )
  );
  LUT2_D #(
    .INIT ( 4'h7 ))
  \controldeusuario/cambiosneg_13_not00011_SW0  (
    .I0(\maquinaprincipal/CrontUs_1463 ),
    .I1(\write/final_1953 ),
    .LO(N222),
    .O(N65)
  );
  LUT4_D #(
    .INIT ( 16'h0001 ))
  \controldeusuario/cambiosneg_0_not00012  (
    .I0(\controldeusuario/final_cmp_eq0000 ),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/puntero2 [1]),
    .I3(N65),
    .LO(N223),
    .O(\controldeusuario/N31 )
  );
  LUT4_L #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_4_not0001_SW0  (
    .I0(\controldeusuario/puntero [3]),
    .I1(selectores_2_IBUF_1914),
    .I2(selectores_0_IBUF_1912),
    .I3(\controldeusuario/N331 ),
    .LO(N89)
  );
  LUT4_L #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_14_not0001_SW0  (
    .I0(\controldeusuario/puntero [0]),
    .I1(selectores_2_IBUF_1914),
    .I2(selectores_0_IBUF_1912),
    .I3(\controldeusuario/puntero_cmp_gt0003 ),
    .LO(N95)
  );
  LUT4_L #(
    .INIT ( 16'h0080 ))
  \controldeusuario/cambiospos_13_not0001_SW0  (
    .I0(\controldeusuario/N311 ),
    .I1(\controldeusuario/puntero [3]),
    .I2(selectores_2_IBUF_1914),
    .I3(selectores_0_IBUF_1912),
    .LO(N97)
  );
  LUT4_L #(
    .INIT ( 16'hDFFF ))
  \controldeusuario/cambiospos_11_not0001_SW0  (
    .I0(\controldeusuario/puntero [3]),
    .I1(selectores_0_IBUF_1912),
    .I2(selectores_2_IBUF_1914),
    .I3(\controldeusuario/N301 ),
    .LO(N99)
  );
  LUT4_L #(
    .INIT ( 16'h0080 ))
  \controldeusuario/cambiospos_10_not0001_SW0  (
    .I0(\controldeusuario/N321 ),
    .I1(selectores_2_IBUF_1914),
    .I2(\controldeusuario/puntero [3]),
    .I3(selectores_0_IBUF_1912),
    .LO(N101)
  );
  LUT4_L #(
    .INIT ( 16'h0080 ))
  \controldeusuario/cambiosneg_9_not0001_SW0  (
    .I0(selectores_0_IBUF_1912),
    .I1(\controldeusuario/puntero [0]),
    .I2(\controldeusuario/puntero [3]),
    .I3(\controldeusuario/N32 ),
    .LO(N103)
  );
  LUT4_L #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiosneg_1_not0001_SW0  (
    .I0(\controldeusuario/N32 ),
    .I1(\controldeusuario/puntero [0]),
    .I2(\controldeusuario/puntero [3]),
    .I3(selectores_0_IBUF_1912),
    .LO(N105)
  );
  LUT4_L #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_6_not000113  (
    .I0(selectores_0_IBUF_1912),
    .I1(\controldeusuario/puntero [2]),
    .I2(\controldeusuario/puntero [0]),
    .I3(selectores_2_IBUF_1914),
    .LO(\controldeusuario/cambiospos_6_not000113_882 )
  );
  LUT3_L #(
    .INIT ( 8'hF8 ))
  \Cront_out/WR_mux0000_SW0  (
    .I0(\Cront_out/WR_51 ),
    .I1(\Cront_out/CS_or0003_20 ),
    .I2(\Cront_out/CS_cmp_eq0005 ),
    .LO(N121)
  );
  LUT3_L #(
    .INIT ( 8'hF4 ))
  \Cront_out/RD_mux000039  (
    .I0(\Cront_out/contador [0]),
    .I1(\Cront_out/RD_mux000024_42 ),
    .I2(\Cront_out/CS_cmp_eq0005 ),
    .LO(\Cront_out/RD_mux000039_43 )
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \controldeusuario/puntero_mux0000<3>101  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero [1]),
    .I2(\controldeusuario/puntero [3]),
    .LO(N224),
    .O(\controldeusuario/puntero_cmp_gt0003 )
  );
  LUT4_D #(
    .INIT ( 16'h0080 ))
  \controldeusuario/cambiosneg_11_not00011  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/puntero2 [1]),
    .I2(\maquinaprincipal/CrontUs_1463 ),
    .I3(N123),
    .LO(N225),
    .O(\controldeusuario/N271 )
  );
  LUT3_D #(
    .INIT ( 8'hEA ))
  \controldeusuario/puntero_cmp_gt000111  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero [1]),
    .I2(\controldeusuario/puntero [0]),
    .LO(N226),
    .O(\controldeusuario/N121 )
  );
  LUT3_D #(
    .INIT ( 8'h08 ))
  \controldeusuario/cambiospos_5_and000611  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero [0]),
    .I2(\controldeusuario/puntero [1]),
    .LO(N227),
    .O(\controldeusuario/N311 )
  );
  LUT2_D #(
    .INIT ( 4'h7 ))
  \controldeusuario/Mrom__COND_5121  (
    .I0(\controldeusuario/puntero2 [2]),
    .I1(\controldeusuario/puntero2 [3]),
    .LO(N228),
    .O(\controldeusuario/N36 )
  );
  LUT3_D #(
    .INIT ( 8'hFD ))
  \controldeusuario/cambiosneg_8_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .LO(N229),
    .O(\controldeusuario/N9 )
  );
  LUT3_D #(
    .INIT ( 8'hFE ))
  \controldeusuario/cambiosneg_0_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .LO(N230),
    .O(\controldeusuario/N11 )
  );
  LUT4_D #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiosneg_9_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/N391 ),
    .I2(\controldeusuario/puntero2 [0]),
    .I3(\controldeusuario/N20 ),
    .LO(N231),
    .O(\controldeusuario/N10 )
  );
  LUT4_D #(
    .INIT ( 16'hFF7F ))
  \controldeusuario/cambiosneg_7_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/N37 ),
    .I3(\controldeusuario/N20 ),
    .LO(N232),
    .O(\controldeusuario/N8 )
  );
  LUT4_D #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiosneg_6_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/N37 ),
    .I2(\controldeusuario/puntero2 [1]),
    .I3(\controldeusuario/N20 ),
    .LO(N233),
    .O(\controldeusuario/N7 )
  );
  LUT4_D #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiosneg_5_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/N37 ),
    .I2(\controldeusuario/puntero2 [0]),
    .I3(\controldeusuario/N20 ),
    .LO(N234),
    .O(\controldeusuario/N6 )
  );
  LUT4_D #(
    .INIT ( 16'hFFEF ))
  \controldeusuario/cambiosneg_4_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/N37 ),
    .I3(\controldeusuario/N20 ),
    .LO(N235),
    .O(\controldeusuario/N5 )
  );
  LUT4_D #(
    .INIT ( 16'hFF7F ))
  \controldeusuario/cambiosneg_3_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/N35 ),
    .I3(\controldeusuario/N20 ),
    .LO(N236),
    .O(\controldeusuario/N4 )
  );
  LUT4_D #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiosneg_2_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/N35 ),
    .I2(\controldeusuario/puntero2 [1]),
    .I3(\controldeusuario/N20 ),
    .LO(N237),
    .O(\controldeusuario/N3 )
  );
  LUT4_D #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiosneg_1_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/N35 ),
    .I2(\controldeusuario/puntero2 [0]),
    .I3(\controldeusuario/N20 ),
    .LO(N238),
    .O(\controldeusuario/N2 )
  );
  LUT4_D #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiosneg_15_mux0000<0>11  (
    .I0(\controldeusuario/N36 ),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/puntero2 [1]),
    .I3(\controldeusuario/N20 ),
    .LO(N239),
    .O(\controldeusuario/N15 )
  );
  LUT4_D #(
    .INIT ( 16'hFFFD ))
  \controldeusuario/cambiosneg_14_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/N36 ),
    .I3(\controldeusuario/N20 ),
    .LO(N240),
    .O(\controldeusuario/N14 )
  );
  LUT4_D #(
    .INIT ( 16'hFFFB ))
  \controldeusuario/cambiosneg_13_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/N36 ),
    .I3(\controldeusuario/N20 ),
    .LO(N241),
    .O(\controldeusuario/N13 )
  );
  LUT4_D #(
    .INIT ( 16'hFF7F ))
  \controldeusuario/cambiosneg_11_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/N391 ),
    .I3(\controldeusuario/N20 ),
    .LO(N242),
    .O(\controldeusuario/N12 )
  );
  LUT4_D #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiosneg_10_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/N391 ),
    .I2(\controldeusuario/puntero2 [1]),
    .I3(\controldeusuario/N20 ),
    .LO(N243),
    .O(\controldeusuario/N111 )
  );
  LUT3_D #(
    .INIT ( 8'h15 ))
  \controldeusuario/puntero_cmp_lt00001  (
    .I0(\controldeusuario/puntero [3]),
    .I1(\controldeusuario/puntero [1]),
    .I2(\controldeusuario/puntero [2]),
    .LO(N244),
    .O(\controldeusuario/puntero_cmp_lt0000 )
  );
  LUT4_D #(
    .INIT ( 16'h62EA ))
  \controldeusuario/puntero_mux0000<1>11  (
    .I0(interruptores_1_IBUF_1461),
    .I1(interruptores_0_IBUF_1460),
    .I2(\controldeusuario/N51 ),
    .I3(N138),
    .LO(N245),
    .O(\controldeusuario/N23 )
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \controldeusuario/Madd_COND_4_addsub0000_cy<5>11  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy<3>11_301 ),
    .LO(N246),
    .O(\controldeusuario/Madd_COND_4_addsub0000_cy[5] )
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \controldeusuario/Madd_COND_2_addsub0000_cy<5>11  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy<3>11_290 ),
    .LO(N247),
    .O(\controldeusuario/Madd_COND_2_addsub0000_cy[5] )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \controldeusuario/Madd_COND_4_addsub0000_cy<3>11  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [3]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .LO(N248),
    .O(\controldeusuario/Madd_COND_4_addsub0000_cy[3] )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \controldeusuario/Madd_COND_2_addsub0000_cy<3>11  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [3]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .LO(N249),
    .O(\controldeusuario/Madd_COND_2_addsub0000_cy[3] )
  );
  LUT4_L #(
    .INIT ( 16'h3CAA ))
  \controldeusuario/puntero_mux0000<2>76  (
    .I0(\controldeusuario/puntero [1]),
    .I1(\controldeusuario/puntero [0]),
    .I2(\controldeusuario/Maddsub_puntero_share0000_lut [1]),
    .I3(\controldeusuario/N0 ),
    .LO(\controldeusuario/puntero_mux0000<2>76_1436 )
  );
  LUT2_D #(
    .INIT ( 4'hE ))
  \controldeusuario/puntero_mux0000<3>312  (
    .I0(\controldeusuario/puntero [1]),
    .I1(\controldeusuario/puntero [2]),
    .LO(N250),
    .O(\controldeusuario/N32 )
  );
  LUT3_D #(
    .INIT ( 8'h8A ))
  \controldeusuario/puntero_and00001  (
    .I0(selectores_3_IBUF_1915),
    .I1(\controldeusuario/puntero [3]),
    .I2(\controldeusuario/N411 ),
    .LO(N251),
    .O(\controldeusuario/puntero_and00001_1414 )
  );
  LUT4_D #(
    .INIT ( 16'h785A ))
  \controldeusuario/Maddsub_puntero_share0000_lut<1>1  (
    .I0(selectores_3_IBUF_1915),
    .I1(\controldeusuario/puntero [3]),
    .I2(\controldeusuario/puntero [1]),
    .I3(\controldeusuario/N411 ),
    .LO(N252),
    .O(\controldeusuario/Maddsub_puntero_share0000_lut [1])
  );
  LUT3_D #(
    .INIT ( 8'h01 ))
  \controldeusuario/cambiospos_8_and000611  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero [1]),
    .I2(\controldeusuario/puntero [0]),
    .LO(N253),
    .O(\controldeusuario/N411 )
  );
  LUT4_L #(
    .INIT ( 16'h96AA ))
  \controldeusuario/puntero_mux0000<1>69  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero_and00001_1414 ),
    .I2(\controldeusuario/Maddsub_puntero_share0000_cy [1]),
    .I3(\controldeusuario/N0 ),
    .LO(\controldeusuario/puntero_mux0000<1>69_1432 )
  );
  LUT4_L #(
    .INIT ( 16'h2400 ))
  \controldeusuario/puntero_mux0000<0>140_SW0  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero_and00001_1414 ),
    .I2(\controldeusuario/Maddsub_puntero_share0000_cy [1]),
    .I3(\controldeusuario/N0 ),
    .LO(N148)
  );
  LUT3_L #(
    .INIT ( 8'hF8 ))
  \controldeusuario/puntero_mux0000<3>209_SW0  (
    .I0(\controldeusuario/puntero [3]),
    .I1(\controldeusuario/puntero_mux0000<3>149_1439 ),
    .I2(\controldeusuario/puntero_mux0000<3>182_1440 ),
    .LO(N154)
  );
  LUT4_L #(
    .INIT ( 16'hFFAE ))
  \controldeusuario/final_not0001_SW1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N40 ),
    .I2(interruptores_2_IBUF_1462),
    .I3(\controldeusuario/N151 ),
    .LO(N134)
  );
  LUT4_L #(
    .INIT ( 16'h0CEE ))
  \controldeusuario/puntero_mux0000<3>104  (
    .I0(\controldeusuario/puntero_mux0000<3>90_1446 ),
    .I1(\controldeusuario/puntero [3]),
    .I2(\controldeusuario/puntero [0]),
    .I3(\controldeusuario/N0 ),
    .LO(\controldeusuario/puntero_mux0000<3>104_1438 )
  );
  LUT4_L #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiospos_9_not000122_SW0  (
    .I0(selectores_0_IBUF_1912),
    .I1(\controldeusuario/puntero [3]),
    .I2(selectores_2_IBUF_1914),
    .I3(\controldeusuario/puntero [2]),
    .LO(N160)
  );
  LUT4_L #(
    .INIT ( 16'hFEFF ))
  \controldeusuario/cambiospos_1_not000125_SW0  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero [3]),
    .I2(selectores_0_IBUF_1912),
    .I3(selectores_2_IBUF_1914),
    .LO(N162)
  );
  LUT4_L #(
    .INIT ( 16'hFFF8 ))
  \controldeusuario/puntero_mux0000<3>44  (
    .I0(\controldeusuario/puntero [1]),
    .I1(N166),
    .I2(\controldeusuario/puntero_mux0000<3>26_1442 ),
    .I3(\controldeusuario/N131 ),
    .LO(\controldeusuario/puntero_mux0000<3>44_1443 )
  );
  LUT4_L #(
    .INIT ( 16'hE4F5 ))
  \controldeusuario/puntero_mux0000<2>20_SW0  (
    .I0(interruptores_1_IBUF_1461),
    .I1(\controldeusuario/N411 ),
    .I2(\controldeusuario/puntero_cmp_lt0000 ),
    .I3(\controldeusuario/puntero [3]),
    .LO(N156)
  );
  LUT4_D #(
    .INIT ( 16'h0008 ))
  \controldeusuario/final_cmp_eq00011  (
    .I0(\controldeusuario/puntero2 [2]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/puntero2 [1]),
    .I3(\controldeusuario/puntero2 [0]),
    .LO(N254),
    .O(\controldeusuario/final_cmp_eq0001 )
  );
  LUT4_D #(
    .INIT ( 16'h0080 ))
  \controldeusuario/cambiosneg_10_not00011  (
    .I0(\controldeusuario/puntero2_not0001 ),
    .I1(\controldeusuario/puntero2 [1]),
    .I2(\maquinaprincipal/CrontUs_1463 ),
    .I3(\controldeusuario/puntero2 [0]),
    .LO(N255),
    .O(\controldeusuario/N30 )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \controldeusuario/Madd_COND_4_addsub0000_cy<3>11_1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [3]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .LO(N256),
    .O(\controldeusuario/Madd_COND_4_addsub0000_cy<3>11_301 )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \controldeusuario/Madd_COND_2_addsub0000_cy<3>11_1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [3]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .LO(N257),
    .O(\controldeusuario/Madd_COND_2_addsub0000_cy<3>11_290 )
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

