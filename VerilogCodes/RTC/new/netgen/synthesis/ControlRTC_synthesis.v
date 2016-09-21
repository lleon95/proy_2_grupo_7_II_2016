////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: ControlRTC_synthesis.v
// /___/   /\     Timestamp: Wed Sep 21 10:55:13 2016
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
  wire N1;
  wire N112;
  wire N114;
  wire N116;
  wire N118;
  wire N120;
  wire N122;
  wire N124;
  wire N126;
  wire N128;
  wire N130;
  wire N132;
  wire N134;
  wire N136;
  wire N138;
  wire N146;
  wire N148;
  wire N158;
  wire N159;
  wire N161;
  wire N163;
  wire N173;
  wire N179;
  wire N181;
  wire N183;
  wire N185;
  wire N187;
  wire N189;
  wire N191;
  wire N193;
  wire N2;
  wire N207;
  wire N215;
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
  wire N258;
  wire N259;
  wire N260;
  wire N261;
  wire N262;
  wire N263;
  wire N264;
  wire N265;
  wire N266;
  wire N267;
  wire N268;
  wire N269;
  wire N270;
  wire N271;
  wire N272;
  wire N273;
  wire N274;
  wire N275;
  wire N276;
  wire N277;
  wire N278;
  wire N279;
  wire N28;
  wire N280;
  wire N281;
  wire N282;
  wire N36;
  wire N38;
  wire N4;
  wire N40;
  wire N411;
  wire N43;
  wire N44;
  wire N46;
  wire N47;
  wire N49;
  wire N51;
  wire N55;
  wire N57;
  wire N59;
  wire N6;
  wire N82;
  wire N86;
  wire N88;
  wire N90;
  wire \WT/dir[0] ;
  wire \WT/dir[1] ;
  wire \WT/dir[2] ;
  wire \WT/dir[5] ;
  wire \WT/dir[6] ;
  wire \WT/dir_mux0000<1>1_202 ;
  wire \WT/dir_mux0000<2>2_203 ;
  wire \WT/dir_mux0000<2>20 ;
  wire \WT/dir_mux0000<2>7_205 ;
  wire \WT/dir_mux0000<5>1_206 ;
  wire \WT/dir_mux0000<6>1_207 ;
  wire \WT/dir_mux0000<7>1_208 ;
  wire \WT/dir_reg_mux0000<0>1 ;
  wire \WT/dir_reg_mux0000<1>1_214 ;
  wire \WT/dir_reg_mux0000<2>1_215 ;
  wire \WT/dir_reg_mux0000<3>1_216 ;
  wire \WT/escritura_217 ;
  wire \WT/final_218 ;
  wire \WT/lectura_219 ;
  wire \WT/lectura_mux000011 ;
  wire \WT/lectura_mux0000111_221 ;
  wire \WT/lectura_mux000027 ;
  wire \WT/lectura_mux00004_223 ;
  wire \WT/next_state_or0000 ;
  wire \WT/next_state_or000014_225 ;
  wire \WT/next_state_or00004_226 ;
  wire \WT/state_FSM_FFd1_227 ;
  wire \WT/state_FSM_FFd1-In ;
  wire \WT/state_FSM_FFd10_229 ;
  wire \WT/state_FSM_FFd11_230 ;
  wire \WT/state_FSM_FFd11-In ;
  wire \WT/state_FSM_FFd12_232 ;
  wire \WT/state_FSM_FFd12-In ;
  wire \WT/state_FSM_FFd2_234 ;
  wire \WT/state_FSM_FFd3_235 ;
  wire \WT/state_FSM_FFd4_236 ;
  wire \WT/state_FSM_FFd5_237 ;
  wire \WT/state_FSM_FFd6_238 ;
  wire \WT/state_FSM_FFd7_239 ;
  wire \WT/state_FSM_FFd8_240 ;
  wire \WT/state_FSM_FFd9_241 ;
  wire \WT/state_or0000 ;
  wire clk_BUFGP_244;
  wire \controldeusuario/ADD2[0] ;
  wire \controldeusuario/ADD2[1] ;
  wire \controldeusuario/ADD2[2] ;
  wire \controldeusuario/ADD2[4] ;
  wire \controldeusuario/ADD2[5] ;
  wire \controldeusuario/ADD2[6] ;
  wire \controldeusuario/ADD_not0001 ;
  wire \controldeusuario/Madd_COND_2_addsub0000_cy[0] ;
  wire \controldeusuario/Madd_COND_2_addsub0000_cy[3] ;
  wire \controldeusuario/Madd_COND_2_addsub0000_cy<3>11_298 ;
  wire \controldeusuario/Madd_COND_2_addsub0000_cy[5] ;
  wire \controldeusuario/Madd_COND_4_addsub0000_cy[0] ;
  wire \controldeusuario/Madd_COND_4_addsub0000_cy[3] ;
  wire \controldeusuario/Madd_COND_4_addsub0000_cy<3>11_309 ;
  wire \controldeusuario/Madd_COND_4_addsub0000_cy[5] ;
  wire \controldeusuario/Maquina_out_335 ;
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
  wire \controldeusuario/cambiosneg_0_0_410 ;
  wire \controldeusuario/cambiosneg_0_1_411 ;
  wire \controldeusuario/cambiosneg_0_2_412 ;
  wire \controldeusuario/cambiosneg_0_3_413 ;
  wire \controldeusuario/cambiosneg_0_4_414 ;
  wire \controldeusuario/cambiosneg_0_5_415 ;
  wire \controldeusuario/cambiosneg_0_6_416 ;
  wire \controldeusuario/cambiosneg_0_7_417 ;
  wire \controldeusuario/cambiosneg_0_not0001_426 ;
  wire \controldeusuario/cambiosneg_10_0_427 ;
  wire \controldeusuario/cambiosneg_10_1_428 ;
  wire \controldeusuario/cambiosneg_10_2_429 ;
  wire \controldeusuario/cambiosneg_10_3_430 ;
  wire \controldeusuario/cambiosneg_10_4_431 ;
  wire \controldeusuario/cambiosneg_10_5_432 ;
  wire \controldeusuario/cambiosneg_10_6_433 ;
  wire \controldeusuario/cambiosneg_10_7_434 ;
  wire \controldeusuario/cambiosneg_10_not0001_443 ;
  wire \controldeusuario/cambiosneg_11_0_444 ;
  wire \controldeusuario/cambiosneg_11_1_445 ;
  wire \controldeusuario/cambiosneg_11_2_446 ;
  wire \controldeusuario/cambiosneg_11_3_447 ;
  wire \controldeusuario/cambiosneg_11_4_448 ;
  wire \controldeusuario/cambiosneg_11_5_449 ;
  wire \controldeusuario/cambiosneg_11_6_450 ;
  wire \controldeusuario/cambiosneg_11_7_451 ;
  wire \controldeusuario/cambiosneg_11_not0001_460 ;
  wire \controldeusuario/cambiosneg_12_0_461 ;
  wire \controldeusuario/cambiosneg_12_1_462 ;
  wire \controldeusuario/cambiosneg_12_2_463 ;
  wire \controldeusuario/cambiosneg_12_3_464 ;
  wire \controldeusuario/cambiosneg_12_4_465 ;
  wire \controldeusuario/cambiosneg_12_5_466 ;
  wire \controldeusuario/cambiosneg_12_6_467 ;
  wire \controldeusuario/cambiosneg_12_7_468 ;
  wire \controldeusuario/cambiosneg_12_not0001 ;
  wire \controldeusuario/cambiosneg_13_0_470 ;
  wire \controldeusuario/cambiosneg_13_1_471 ;
  wire \controldeusuario/cambiosneg_13_2_472 ;
  wire \controldeusuario/cambiosneg_13_3_473 ;
  wire \controldeusuario/cambiosneg_13_4_474 ;
  wire \controldeusuario/cambiosneg_13_5_475 ;
  wire \controldeusuario/cambiosneg_13_6_476 ;
  wire \controldeusuario/cambiosneg_13_7_477 ;
  wire \controldeusuario/cambiosneg_13_not0001_486 ;
  wire \controldeusuario/cambiosneg_14_0_487 ;
  wire \controldeusuario/cambiosneg_14_1_488 ;
  wire \controldeusuario/cambiosneg_14_2_489 ;
  wire \controldeusuario/cambiosneg_14_3_490 ;
  wire \controldeusuario/cambiosneg_14_4_491 ;
  wire \controldeusuario/cambiosneg_14_5_492 ;
  wire \controldeusuario/cambiosneg_14_6_493 ;
  wire \controldeusuario/cambiosneg_14_7_494 ;
  wire \controldeusuario/cambiosneg_14_not0001_503 ;
  wire \controldeusuario/cambiosneg_15_0_504 ;
  wire \controldeusuario/cambiosneg_15_1_505 ;
  wire \controldeusuario/cambiosneg_15_2_506 ;
  wire \controldeusuario/cambiosneg_15_3_507 ;
  wire \controldeusuario/cambiosneg_15_4_508 ;
  wire \controldeusuario/cambiosneg_15_5_509 ;
  wire \controldeusuario/cambiosneg_15_6_510 ;
  wire \controldeusuario/cambiosneg_15_7_511 ;
  wire \controldeusuario/cambiosneg_15_not0001_520 ;
  wire \controldeusuario/cambiosneg_1_0_521 ;
  wire \controldeusuario/cambiosneg_1_1_522 ;
  wire \controldeusuario/cambiosneg_1_2_523 ;
  wire \controldeusuario/cambiosneg_1_3_524 ;
  wire \controldeusuario/cambiosneg_1_4_525 ;
  wire \controldeusuario/cambiosneg_1_5_526 ;
  wire \controldeusuario/cambiosneg_1_6_527 ;
  wire \controldeusuario/cambiosneg_1_7_528 ;
  wire \controldeusuario/cambiosneg_1_not0001_537 ;
  wire \controldeusuario/cambiosneg_2_0_538 ;
  wire \controldeusuario/cambiosneg_2_1_539 ;
  wire \controldeusuario/cambiosneg_2_2_540 ;
  wire \controldeusuario/cambiosneg_2_3_541 ;
  wire \controldeusuario/cambiosneg_2_4_542 ;
  wire \controldeusuario/cambiosneg_2_5_543 ;
  wire \controldeusuario/cambiosneg_2_6_544 ;
  wire \controldeusuario/cambiosneg_2_7_545 ;
  wire \controldeusuario/cambiosneg_2_not0001_554 ;
  wire \controldeusuario/cambiosneg_3_0_555 ;
  wire \controldeusuario/cambiosneg_3_1_556 ;
  wire \controldeusuario/cambiosneg_3_2_557 ;
  wire \controldeusuario/cambiosneg_3_3_558 ;
  wire \controldeusuario/cambiosneg_3_4_559 ;
  wire \controldeusuario/cambiosneg_3_5_560 ;
  wire \controldeusuario/cambiosneg_3_6_561 ;
  wire \controldeusuario/cambiosneg_3_7_562 ;
  wire \controldeusuario/cambiosneg_3_not0001_571 ;
  wire \controldeusuario/cambiosneg_4_0_572 ;
  wire \controldeusuario/cambiosneg_4_1_573 ;
  wire \controldeusuario/cambiosneg_4_2_574 ;
  wire \controldeusuario/cambiosneg_4_3_575 ;
  wire \controldeusuario/cambiosneg_4_4_576 ;
  wire \controldeusuario/cambiosneg_4_5_577 ;
  wire \controldeusuario/cambiosneg_4_6_578 ;
  wire \controldeusuario/cambiosneg_4_7_579 ;
  wire \controldeusuario/cambiosneg_4_not0001_588 ;
  wire \controldeusuario/cambiosneg_5_0_589 ;
  wire \controldeusuario/cambiosneg_5_1_590 ;
  wire \controldeusuario/cambiosneg_5_2_591 ;
  wire \controldeusuario/cambiosneg_5_3_592 ;
  wire \controldeusuario/cambiosneg_5_4_593 ;
  wire \controldeusuario/cambiosneg_5_5_594 ;
  wire \controldeusuario/cambiosneg_5_6_595 ;
  wire \controldeusuario/cambiosneg_5_7_596 ;
  wire \controldeusuario/cambiosneg_5_not0001_605 ;
  wire \controldeusuario/cambiosneg_6_0_606 ;
  wire \controldeusuario/cambiosneg_6_1_607 ;
  wire \controldeusuario/cambiosneg_6_2_608 ;
  wire \controldeusuario/cambiosneg_6_3_609 ;
  wire \controldeusuario/cambiosneg_6_4_610 ;
  wire \controldeusuario/cambiosneg_6_5_611 ;
  wire \controldeusuario/cambiosneg_6_6_612 ;
  wire \controldeusuario/cambiosneg_6_7_613 ;
  wire \controldeusuario/cambiosneg_6_not0001 ;
  wire \controldeusuario/cambiosneg_6_not000113 ;
  wire \controldeusuario/cambiosneg_6_not0001131_624 ;
  wire \controldeusuario/cambiosneg_7_0_625 ;
  wire \controldeusuario/cambiosneg_7_1_626 ;
  wire \controldeusuario/cambiosneg_7_2_627 ;
  wire \controldeusuario/cambiosneg_7_3_628 ;
  wire \controldeusuario/cambiosneg_7_4_629 ;
  wire \controldeusuario/cambiosneg_7_5_630 ;
  wire \controldeusuario/cambiosneg_7_6_631 ;
  wire \controldeusuario/cambiosneg_7_7_632 ;
  wire \controldeusuario/cambiosneg_7_not0001_641 ;
  wire \controldeusuario/cambiosneg_8_0_642 ;
  wire \controldeusuario/cambiosneg_8_1_643 ;
  wire \controldeusuario/cambiosneg_8_2_644 ;
  wire \controldeusuario/cambiosneg_8_3_645 ;
  wire \controldeusuario/cambiosneg_8_4_646 ;
  wire \controldeusuario/cambiosneg_8_5_647 ;
  wire \controldeusuario/cambiosneg_8_6_648 ;
  wire \controldeusuario/cambiosneg_8_7_649 ;
  wire \controldeusuario/cambiosneg_8_not0001_658 ;
  wire \controldeusuario/cambiosneg_9_0_659 ;
  wire \controldeusuario/cambiosneg_9_1_660 ;
  wire \controldeusuario/cambiosneg_9_2_661 ;
  wire \controldeusuario/cambiosneg_9_3_662 ;
  wire \controldeusuario/cambiosneg_9_4_663 ;
  wire \controldeusuario/cambiosneg_9_5_664 ;
  wire \controldeusuario/cambiosneg_9_6_665 ;
  wire \controldeusuario/cambiosneg_9_7_666 ;
  wire \controldeusuario/cambiosneg_9_not0001_675 ;
  wire \controldeusuario/cambiospos_0_0_676 ;
  wire \controldeusuario/cambiospos_0_1_677 ;
  wire \controldeusuario/cambiospos_0_2_678 ;
  wire \controldeusuario/cambiospos_0_3_679 ;
  wire \controldeusuario/cambiospos_0_4_680 ;
  wire \controldeusuario/cambiospos_0_5_681 ;
  wire \controldeusuario/cambiospos_0_6_682 ;
  wire \controldeusuario/cambiospos_0_7_683 ;
  wire \controldeusuario/cambiospos_0_not0001_692 ;
  wire \controldeusuario/cambiospos_10_0_693 ;
  wire \controldeusuario/cambiospos_10_1_694 ;
  wire \controldeusuario/cambiospos_10_2_695 ;
  wire \controldeusuario/cambiospos_10_3_696 ;
  wire \controldeusuario/cambiospos_10_4_697 ;
  wire \controldeusuario/cambiospos_10_5_698 ;
  wire \controldeusuario/cambiospos_10_6_699 ;
  wire \controldeusuario/cambiospos_10_7_700 ;
  wire \controldeusuario/cambiospos_10_not0001_709 ;
  wire \controldeusuario/cambiospos_11_0_710 ;
  wire \controldeusuario/cambiospos_11_1_711 ;
  wire \controldeusuario/cambiospos_11_2_712 ;
  wire \controldeusuario/cambiospos_11_3_713 ;
  wire \controldeusuario/cambiospos_11_4_714 ;
  wire \controldeusuario/cambiospos_11_5_715 ;
  wire \controldeusuario/cambiospos_11_6_716 ;
  wire \controldeusuario/cambiospos_11_7_717 ;
  wire \controldeusuario/cambiospos_11_not0001_726 ;
  wire \controldeusuario/cambiospos_12_0_727 ;
  wire \controldeusuario/cambiospos_12_1_728 ;
  wire \controldeusuario/cambiospos_12_2_729 ;
  wire \controldeusuario/cambiospos_12_3_730 ;
  wire \controldeusuario/cambiospos_12_4_731 ;
  wire \controldeusuario/cambiospos_12_5_732 ;
  wire \controldeusuario/cambiospos_12_6_733 ;
  wire \controldeusuario/cambiospos_12_7_734 ;
  wire \controldeusuario/cambiospos_12_not0001_735 ;
  wire \controldeusuario/cambiospos_13_0_736 ;
  wire \controldeusuario/cambiospos_13_1_737 ;
  wire \controldeusuario/cambiospos_13_2_738 ;
  wire \controldeusuario/cambiospos_13_3_739 ;
  wire \controldeusuario/cambiospos_13_4_740 ;
  wire \controldeusuario/cambiospos_13_5_741 ;
  wire \controldeusuario/cambiospos_13_6_742 ;
  wire \controldeusuario/cambiospos_13_7_743 ;
  wire \controldeusuario/cambiospos_13_not0001_752 ;
  wire \controldeusuario/cambiospos_14_0_753 ;
  wire \controldeusuario/cambiospos_14_1_754 ;
  wire \controldeusuario/cambiospos_14_2_755 ;
  wire \controldeusuario/cambiospos_14_3_756 ;
  wire \controldeusuario/cambiospos_14_4_757 ;
  wire \controldeusuario/cambiospos_14_5_758 ;
  wire \controldeusuario/cambiospos_14_6_759 ;
  wire \controldeusuario/cambiospos_14_7_760 ;
  wire \controldeusuario/cambiospos_14_not0001_769 ;
  wire \controldeusuario/cambiospos_15_0_770 ;
  wire \controldeusuario/cambiospos_15_1_771 ;
  wire \controldeusuario/cambiospos_15_2_772 ;
  wire \controldeusuario/cambiospos_15_3_773 ;
  wire \controldeusuario/cambiospos_15_4_774 ;
  wire \controldeusuario/cambiospos_15_5_775 ;
  wire \controldeusuario/cambiospos_15_6_776 ;
  wire \controldeusuario/cambiospos_15_7_777 ;
  wire \controldeusuario/cambiospos_15_not0001_786 ;
  wire \controldeusuario/cambiospos_1_0_787 ;
  wire \controldeusuario/cambiospos_1_1_788 ;
  wire \controldeusuario/cambiospos_1_2_789 ;
  wire \controldeusuario/cambiospos_1_3_790 ;
  wire \controldeusuario/cambiospos_1_4_791 ;
  wire \controldeusuario/cambiospos_1_5_792 ;
  wire \controldeusuario/cambiospos_1_6_793 ;
  wire \controldeusuario/cambiospos_1_7_794 ;
  wire \controldeusuario/cambiospos_1_not0001 ;
  wire \controldeusuario/cambiospos_1_not000125_804 ;
  wire \controldeusuario/cambiospos_2_0_805 ;
  wire \controldeusuario/cambiospos_2_1_806 ;
  wire \controldeusuario/cambiospos_2_2_807 ;
  wire \controldeusuario/cambiospos_2_3_808 ;
  wire \controldeusuario/cambiospos_2_4_809 ;
  wire \controldeusuario/cambiospos_2_5_810 ;
  wire \controldeusuario/cambiospos_2_6_811 ;
  wire \controldeusuario/cambiospos_2_7_812 ;
  wire \controldeusuario/cambiospos_2_not0001_821 ;
  wire \controldeusuario/cambiospos_3_0_822 ;
  wire \controldeusuario/cambiospos_3_1_823 ;
  wire \controldeusuario/cambiospos_3_2_824 ;
  wire \controldeusuario/cambiospos_3_3_825 ;
  wire \controldeusuario/cambiospos_3_4_826 ;
  wire \controldeusuario/cambiospos_3_5_827 ;
  wire \controldeusuario/cambiospos_3_6_828 ;
  wire \controldeusuario/cambiospos_3_7_829 ;
  wire \controldeusuario/cambiospos_3_not0001_838 ;
  wire \controldeusuario/cambiospos_4_0_839 ;
  wire \controldeusuario/cambiospos_4_1_840 ;
  wire \controldeusuario/cambiospos_4_2_841 ;
  wire \controldeusuario/cambiospos_4_3_842 ;
  wire \controldeusuario/cambiospos_4_4_843 ;
  wire \controldeusuario/cambiospos_4_5_844 ;
  wire \controldeusuario/cambiospos_4_6_845 ;
  wire \controldeusuario/cambiospos_4_7_846 ;
  wire \controldeusuario/cambiospos_4_not0001_855 ;
  wire \controldeusuario/cambiospos_5_0_856 ;
  wire \controldeusuario/cambiospos_5_1_857 ;
  wire \controldeusuario/cambiospos_5_2_858 ;
  wire \controldeusuario/cambiospos_5_3_859 ;
  wire \controldeusuario/cambiospos_5_4_860 ;
  wire \controldeusuario/cambiospos_5_5_861 ;
  wire \controldeusuario/cambiospos_5_6_862 ;
  wire \controldeusuario/cambiospos_5_7_863 ;
  wire \controldeusuario/cambiospos_5_not0001_872 ;
  wire \controldeusuario/cambiospos_6_0_873 ;
  wire \controldeusuario/cambiospos_6_1_874 ;
  wire \controldeusuario/cambiospos_6_2_875 ;
  wire \controldeusuario/cambiospos_6_3_876 ;
  wire \controldeusuario/cambiospos_6_4_877 ;
  wire \controldeusuario/cambiospos_6_5_878 ;
  wire \controldeusuario/cambiospos_6_6_879 ;
  wire \controldeusuario/cambiospos_6_7_880 ;
  wire \controldeusuario/cambiospos_6_not0001 ;
  wire \controldeusuario/cambiospos_6_not000113_890 ;
  wire \controldeusuario/cambiospos_6_not000128_891 ;
  wire \controldeusuario/cambiospos_7_0_892 ;
  wire \controldeusuario/cambiospos_7_1_893 ;
  wire \controldeusuario/cambiospos_7_2_894 ;
  wire \controldeusuario/cambiospos_7_3_895 ;
  wire \controldeusuario/cambiospos_7_4_896 ;
  wire \controldeusuario/cambiospos_7_5_897 ;
  wire \controldeusuario/cambiospos_7_6_898 ;
  wire \controldeusuario/cambiospos_7_7_899 ;
  wire \controldeusuario/cambiospos_7_not0001_908 ;
  wire \controldeusuario/cambiospos_8_0_909 ;
  wire \controldeusuario/cambiospos_8_1_910 ;
  wire \controldeusuario/cambiospos_8_2_911 ;
  wire \controldeusuario/cambiospos_8_3_912 ;
  wire \controldeusuario/cambiospos_8_4_913 ;
  wire \controldeusuario/cambiospos_8_5_914 ;
  wire \controldeusuario/cambiospos_8_6_915 ;
  wire \controldeusuario/cambiospos_8_7_916 ;
  wire \controldeusuario/cambiospos_8_not0001_925 ;
  wire \controldeusuario/cambiospos_9_0_926 ;
  wire \controldeusuario/cambiospos_9_1_927 ;
  wire \controldeusuario/cambiospos_9_2_928 ;
  wire \controldeusuario/cambiospos_9_3_929 ;
  wire \controldeusuario/cambiospos_9_4_930 ;
  wire \controldeusuario/cambiospos_9_5_931 ;
  wire \controldeusuario/cambiospos_9_6_932 ;
  wire \controldeusuario/cambiospos_9_7_933 ;
  wire \controldeusuario/cambiospos_9_not0001 ;
  wire \controldeusuario/cambiospos_9_not000122_943 ;
  wire \controldeusuario/escritura_944 ;
  wire \controldeusuario/final_945 ;
  wire \controldeusuario/final_cmp_eq0000 ;
  wire \controldeusuario/final_cmp_eq0001 ;
  wire \controldeusuario/final_mux0000 ;
  wire \controldeusuario/final_not0001_949 ;
  wire \controldeusuario/mux10_3_f6_950 ;
  wire \controldeusuario/mux10_4_f5_951 ;
  wire \controldeusuario/mux10_4_f6_952 ;
  wire \controldeusuario/mux10_5_953 ;
  wire \controldeusuario/mux10_5_f5_954 ;
  wire \controldeusuario/mux10_5_f51 ;
  wire \controldeusuario/mux10_6_956 ;
  wire \controldeusuario/mux10_61_957 ;
  wire \controldeusuario/mux10_62_958 ;
  wire \controldeusuario/mux10_6_f5_959 ;
  wire \controldeusuario/mux10_7_960 ;
  wire \controldeusuario/mux10_71_961 ;
  wire \controldeusuario/mux10_72_962 ;
  wire \controldeusuario/mux10_8_963 ;
  wire \controldeusuario/mux11_3_f6_964 ;
  wire \controldeusuario/mux11_4_f5_965 ;
  wire \controldeusuario/mux11_4_f6_966 ;
  wire \controldeusuario/mux11_5_967 ;
  wire \controldeusuario/mux11_5_f5_968 ;
  wire \controldeusuario/mux11_5_f51 ;
  wire \controldeusuario/mux11_6_970 ;
  wire \controldeusuario/mux11_61_971 ;
  wire \controldeusuario/mux11_62_972 ;
  wire \controldeusuario/mux11_6_f5_973 ;
  wire \controldeusuario/mux11_7_974 ;
  wire \controldeusuario/mux11_71_975 ;
  wire \controldeusuario/mux11_72_976 ;
  wire \controldeusuario/mux11_8_977 ;
  wire \controldeusuario/mux12_3_f6_978 ;
  wire \controldeusuario/mux12_4_f5_979 ;
  wire \controldeusuario/mux12_4_f6_980 ;
  wire \controldeusuario/mux12_5_981 ;
  wire \controldeusuario/mux12_5_f5_982 ;
  wire \controldeusuario/mux12_5_f51 ;
  wire \controldeusuario/mux12_6_984 ;
  wire \controldeusuario/mux12_61_985 ;
  wire \controldeusuario/mux12_62_986 ;
  wire \controldeusuario/mux12_6_f5_987 ;
  wire \controldeusuario/mux12_7_988 ;
  wire \controldeusuario/mux12_71_989 ;
  wire \controldeusuario/mux12_72_990 ;
  wire \controldeusuario/mux12_8_991 ;
  wire \controldeusuario/mux13_3_f6_992 ;
  wire \controldeusuario/mux13_4_f5_993 ;
  wire \controldeusuario/mux13_4_f6_994 ;
  wire \controldeusuario/mux13_5_995 ;
  wire \controldeusuario/mux13_5_f5_996 ;
  wire \controldeusuario/mux13_5_f51 ;
  wire \controldeusuario/mux13_6_998 ;
  wire \controldeusuario/mux13_61_999 ;
  wire \controldeusuario/mux13_62_1000 ;
  wire \controldeusuario/mux13_6_f5_1001 ;
  wire \controldeusuario/mux13_7_1002 ;
  wire \controldeusuario/mux13_71_1003 ;
  wire \controldeusuario/mux13_72_1004 ;
  wire \controldeusuario/mux13_8_1005 ;
  wire \controldeusuario/mux14_3_f6_1006 ;
  wire \controldeusuario/mux14_4_f5_1007 ;
  wire \controldeusuario/mux14_4_f6_1008 ;
  wire \controldeusuario/mux14_5_1009 ;
  wire \controldeusuario/mux14_5_f5_1010 ;
  wire \controldeusuario/mux14_5_f51 ;
  wire \controldeusuario/mux14_6_1012 ;
  wire \controldeusuario/mux14_61_1013 ;
  wire \controldeusuario/mux14_62_1014 ;
  wire \controldeusuario/mux14_6_f5_1015 ;
  wire \controldeusuario/mux14_7_1016 ;
  wire \controldeusuario/mux14_71_1017 ;
  wire \controldeusuario/mux14_72_1018 ;
  wire \controldeusuario/mux14_8_1019 ;
  wire \controldeusuario/mux15_3_f6_1020 ;
  wire \controldeusuario/mux15_4_f5_1021 ;
  wire \controldeusuario/mux15_4_f6_1022 ;
  wire \controldeusuario/mux15_5_1023 ;
  wire \controldeusuario/mux15_5_f5_1024 ;
  wire \controldeusuario/mux15_5_f51 ;
  wire \controldeusuario/mux15_6_1026 ;
  wire \controldeusuario/mux15_61_1027 ;
  wire \controldeusuario/mux15_62_1028 ;
  wire \controldeusuario/mux15_6_f5_1029 ;
  wire \controldeusuario/mux15_7_1030 ;
  wire \controldeusuario/mux15_71_1031 ;
  wire \controldeusuario/mux15_72_1032 ;
  wire \controldeusuario/mux15_8_1033 ;
  wire \controldeusuario/mux16_3_f6_1034 ;
  wire \controldeusuario/mux16_4_f5_1035 ;
  wire \controldeusuario/mux16_4_f6_1036 ;
  wire \controldeusuario/mux16_5_1037 ;
  wire \controldeusuario/mux16_5_f5_1038 ;
  wire \controldeusuario/mux16_5_f51 ;
  wire \controldeusuario/mux16_6_1040 ;
  wire \controldeusuario/mux16_61_1041 ;
  wire \controldeusuario/mux16_62_1042 ;
  wire \controldeusuario/mux16_6_f5_1043 ;
  wire \controldeusuario/mux16_7_1044 ;
  wire \controldeusuario/mux16_71_1045 ;
  wire \controldeusuario/mux16_72_1046 ;
  wire \controldeusuario/mux16_8_1047 ;
  wire \controldeusuario/mux17_3_f6_1048 ;
  wire \controldeusuario/mux17_4_f5_1049 ;
  wire \controldeusuario/mux17_4_f6_1050 ;
  wire \controldeusuario/mux17_5_1051 ;
  wire \controldeusuario/mux17_5_f5_1052 ;
  wire \controldeusuario/mux17_5_f51 ;
  wire \controldeusuario/mux17_6_1054 ;
  wire \controldeusuario/mux17_61_1055 ;
  wire \controldeusuario/mux17_62_1056 ;
  wire \controldeusuario/mux17_6_f5_1057 ;
  wire \controldeusuario/mux17_7_1058 ;
  wire \controldeusuario/mux17_71_1059 ;
  wire \controldeusuario/mux17_72_1060 ;
  wire \controldeusuario/mux17_8_1061 ;
  wire \controldeusuario/mux18_3_f6_1062 ;
  wire \controldeusuario/mux18_4_f5_1063 ;
  wire \controldeusuario/mux18_4_f6_1064 ;
  wire \controldeusuario/mux18_5_1065 ;
  wire \controldeusuario/mux18_5_f5_1066 ;
  wire \controldeusuario/mux18_5_f51 ;
  wire \controldeusuario/mux18_6_1068 ;
  wire \controldeusuario/mux18_61_1069 ;
  wire \controldeusuario/mux18_62_1070 ;
  wire \controldeusuario/mux18_6_f5_1071 ;
  wire \controldeusuario/mux18_7_1072 ;
  wire \controldeusuario/mux18_71_1073 ;
  wire \controldeusuario/mux18_72_1074 ;
  wire \controldeusuario/mux18_8_1075 ;
  wire \controldeusuario/mux19_3_f6_1076 ;
  wire \controldeusuario/mux19_4_f5_1077 ;
  wire \controldeusuario/mux19_4_f6_1078 ;
  wire \controldeusuario/mux19_5_1079 ;
  wire \controldeusuario/mux19_5_f5_1080 ;
  wire \controldeusuario/mux19_5_f51 ;
  wire \controldeusuario/mux19_6_1082 ;
  wire \controldeusuario/mux19_61_1083 ;
  wire \controldeusuario/mux19_62_1084 ;
  wire \controldeusuario/mux19_6_f5_1085 ;
  wire \controldeusuario/mux19_7_1086 ;
  wire \controldeusuario/mux19_71_1087 ;
  wire \controldeusuario/mux19_72_1088 ;
  wire \controldeusuario/mux19_8_1089 ;
  wire \controldeusuario/mux1_3_f6_1090 ;
  wire \controldeusuario/mux1_4_f5_1091 ;
  wire \controldeusuario/mux1_4_f6_1092 ;
  wire \controldeusuario/mux1_5_1093 ;
  wire \controldeusuario/mux1_5_f5_1094 ;
  wire \controldeusuario/mux1_5_f51 ;
  wire \controldeusuario/mux1_6_1096 ;
  wire \controldeusuario/mux1_61_1097 ;
  wire \controldeusuario/mux1_62_1098 ;
  wire \controldeusuario/mux1_6_f5_1099 ;
  wire \controldeusuario/mux1_7_1100 ;
  wire \controldeusuario/mux1_71_1101 ;
  wire \controldeusuario/mux1_72_1102 ;
  wire \controldeusuario/mux1_8_1103 ;
  wire \controldeusuario/mux20_3_f6_1104 ;
  wire \controldeusuario/mux20_4_f5_1105 ;
  wire \controldeusuario/mux20_4_f6_1106 ;
  wire \controldeusuario/mux20_5_1107 ;
  wire \controldeusuario/mux20_5_f5_1108 ;
  wire \controldeusuario/mux20_5_f51 ;
  wire \controldeusuario/mux20_6_1110 ;
  wire \controldeusuario/mux20_61_1111 ;
  wire \controldeusuario/mux20_62_1112 ;
  wire \controldeusuario/mux20_6_f5_1113 ;
  wire \controldeusuario/mux20_7_1114 ;
  wire \controldeusuario/mux20_71_1115 ;
  wire \controldeusuario/mux20_72_1116 ;
  wire \controldeusuario/mux20_8_1117 ;
  wire \controldeusuario/mux21_3_f6_1118 ;
  wire \controldeusuario/mux21_4_f5_1119 ;
  wire \controldeusuario/mux21_4_f6_1120 ;
  wire \controldeusuario/mux21_5_1121 ;
  wire \controldeusuario/mux21_5_f5_1122 ;
  wire \controldeusuario/mux21_5_f51 ;
  wire \controldeusuario/mux21_6_1124 ;
  wire \controldeusuario/mux21_61_1125 ;
  wire \controldeusuario/mux21_62_1126 ;
  wire \controldeusuario/mux21_6_f5_1127 ;
  wire \controldeusuario/mux21_7_1128 ;
  wire \controldeusuario/mux21_71_1129 ;
  wire \controldeusuario/mux21_72_1130 ;
  wire \controldeusuario/mux21_8_1131 ;
  wire \controldeusuario/mux22_3_f6_1132 ;
  wire \controldeusuario/mux22_4_f5_1133 ;
  wire \controldeusuario/mux22_4_f6_1134 ;
  wire \controldeusuario/mux22_5_1135 ;
  wire \controldeusuario/mux22_5_f5_1136 ;
  wire \controldeusuario/mux22_5_f51 ;
  wire \controldeusuario/mux22_6_1138 ;
  wire \controldeusuario/mux22_61_1139 ;
  wire \controldeusuario/mux22_62_1140 ;
  wire \controldeusuario/mux22_6_f5_1141 ;
  wire \controldeusuario/mux22_7_1142 ;
  wire \controldeusuario/mux22_71_1143 ;
  wire \controldeusuario/mux22_72_1144 ;
  wire \controldeusuario/mux22_8_1145 ;
  wire \controldeusuario/mux23_3_f6_1146 ;
  wire \controldeusuario/mux23_4_f5_1147 ;
  wire \controldeusuario/mux23_4_f6_1148 ;
  wire \controldeusuario/mux23_5_1149 ;
  wire \controldeusuario/mux23_5_f5_1150 ;
  wire \controldeusuario/mux23_5_f51 ;
  wire \controldeusuario/mux23_6_1152 ;
  wire \controldeusuario/mux23_61_1153 ;
  wire \controldeusuario/mux23_62_1154 ;
  wire \controldeusuario/mux23_6_f5_1155 ;
  wire \controldeusuario/mux23_7_1156 ;
  wire \controldeusuario/mux23_71_1157 ;
  wire \controldeusuario/mux23_72_1158 ;
  wire \controldeusuario/mux23_8_1159 ;
  wire \controldeusuario/mux24_3_f6_1160 ;
  wire \controldeusuario/mux24_4_f5_1161 ;
  wire \controldeusuario/mux24_4_f6_1162 ;
  wire \controldeusuario/mux24_5_1163 ;
  wire \controldeusuario/mux24_5_f5_1164 ;
  wire \controldeusuario/mux24_5_f51 ;
  wire \controldeusuario/mux24_6_1166 ;
  wire \controldeusuario/mux24_61_1167 ;
  wire \controldeusuario/mux24_62_1168 ;
  wire \controldeusuario/mux24_6_f5_1169 ;
  wire \controldeusuario/mux24_7_1170 ;
  wire \controldeusuario/mux24_71_1171 ;
  wire \controldeusuario/mux24_72_1172 ;
  wire \controldeusuario/mux24_8_1173 ;
  wire \controldeusuario/mux25_3_f6_1174 ;
  wire \controldeusuario/mux25_4_f5_1175 ;
  wire \controldeusuario/mux25_4_f6_1176 ;
  wire \controldeusuario/mux25_5_1177 ;
  wire \controldeusuario/mux25_5_f5_1178 ;
  wire \controldeusuario/mux25_5_f51 ;
  wire \controldeusuario/mux25_6_1180 ;
  wire \controldeusuario/mux25_61_1181 ;
  wire \controldeusuario/mux25_62_1182 ;
  wire \controldeusuario/mux25_6_f5_1183 ;
  wire \controldeusuario/mux25_7_1184 ;
  wire \controldeusuario/mux25_71_1185 ;
  wire \controldeusuario/mux25_72_1186 ;
  wire \controldeusuario/mux25_8_1187 ;
  wire \controldeusuario/mux26_3_f6_1188 ;
  wire \controldeusuario/mux26_4_f5_1189 ;
  wire \controldeusuario/mux26_4_f6_1190 ;
  wire \controldeusuario/mux26_5_1191 ;
  wire \controldeusuario/mux26_5_f5_1192 ;
  wire \controldeusuario/mux26_5_f51 ;
  wire \controldeusuario/mux26_6_1194 ;
  wire \controldeusuario/mux26_61_1195 ;
  wire \controldeusuario/mux26_62_1196 ;
  wire \controldeusuario/mux26_6_f5_1197 ;
  wire \controldeusuario/mux26_7_1198 ;
  wire \controldeusuario/mux26_71_1199 ;
  wire \controldeusuario/mux26_72_1200 ;
  wire \controldeusuario/mux26_8_1201 ;
  wire \controldeusuario/mux27_3_f6_1202 ;
  wire \controldeusuario/mux27_4_f5_1203 ;
  wire \controldeusuario/mux27_4_f6_1204 ;
  wire \controldeusuario/mux27_5_1205 ;
  wire \controldeusuario/mux27_5_f5_1206 ;
  wire \controldeusuario/mux27_5_f51 ;
  wire \controldeusuario/mux27_6_1208 ;
  wire \controldeusuario/mux27_61_1209 ;
  wire \controldeusuario/mux27_62_1210 ;
  wire \controldeusuario/mux27_6_f5_1211 ;
  wire \controldeusuario/mux27_7_1212 ;
  wire \controldeusuario/mux27_71_1213 ;
  wire \controldeusuario/mux27_72_1214 ;
  wire \controldeusuario/mux27_8_1215 ;
  wire \controldeusuario/mux28_3_f6_1216 ;
  wire \controldeusuario/mux28_4_f5_1217 ;
  wire \controldeusuario/mux28_4_f6_1218 ;
  wire \controldeusuario/mux28_5_1219 ;
  wire \controldeusuario/mux28_5_f5_1220 ;
  wire \controldeusuario/mux28_5_f51 ;
  wire \controldeusuario/mux28_6_1222 ;
  wire \controldeusuario/mux28_61_1223 ;
  wire \controldeusuario/mux28_62_1224 ;
  wire \controldeusuario/mux28_6_f5_1225 ;
  wire \controldeusuario/mux28_7_1226 ;
  wire \controldeusuario/mux28_71_1227 ;
  wire \controldeusuario/mux28_72_1228 ;
  wire \controldeusuario/mux28_8_1229 ;
  wire \controldeusuario/mux29_3_f6_1230 ;
  wire \controldeusuario/mux29_4_f5_1231 ;
  wire \controldeusuario/mux29_4_f6_1232 ;
  wire \controldeusuario/mux29_5_1233 ;
  wire \controldeusuario/mux29_5_f5_1234 ;
  wire \controldeusuario/mux29_5_f51 ;
  wire \controldeusuario/mux29_6_1236 ;
  wire \controldeusuario/mux29_61_1237 ;
  wire \controldeusuario/mux29_62_1238 ;
  wire \controldeusuario/mux29_6_f5_1239 ;
  wire \controldeusuario/mux29_7_1240 ;
  wire \controldeusuario/mux29_71_1241 ;
  wire \controldeusuario/mux29_72_1242 ;
  wire \controldeusuario/mux29_8_1243 ;
  wire \controldeusuario/mux2_3_f6_1244 ;
  wire \controldeusuario/mux2_4_f5_1245 ;
  wire \controldeusuario/mux2_4_f6_1246 ;
  wire \controldeusuario/mux2_5_1247 ;
  wire \controldeusuario/mux2_5_f5_1248 ;
  wire \controldeusuario/mux2_5_f51 ;
  wire \controldeusuario/mux2_6_1250 ;
  wire \controldeusuario/mux2_61_1251 ;
  wire \controldeusuario/mux2_62_1252 ;
  wire \controldeusuario/mux2_6_f5_1253 ;
  wire \controldeusuario/mux2_7_1254 ;
  wire \controldeusuario/mux2_71_1255 ;
  wire \controldeusuario/mux2_72_1256 ;
  wire \controldeusuario/mux2_8_1257 ;
  wire \controldeusuario/mux30_3_f6_1258 ;
  wire \controldeusuario/mux30_4_f5_1259 ;
  wire \controldeusuario/mux30_4_f6_1260 ;
  wire \controldeusuario/mux30_5_1261 ;
  wire \controldeusuario/mux30_5_f5_1262 ;
  wire \controldeusuario/mux30_5_f51 ;
  wire \controldeusuario/mux30_6_1264 ;
  wire \controldeusuario/mux30_61_1265 ;
  wire \controldeusuario/mux30_62_1266 ;
  wire \controldeusuario/mux30_6_f5_1267 ;
  wire \controldeusuario/mux30_7_1268 ;
  wire \controldeusuario/mux30_71_1269 ;
  wire \controldeusuario/mux30_72_1270 ;
  wire \controldeusuario/mux30_8_1271 ;
  wire \controldeusuario/mux31_3_f6_1272 ;
  wire \controldeusuario/mux31_4_f5_1273 ;
  wire \controldeusuario/mux31_4_f6_1274 ;
  wire \controldeusuario/mux31_5_1275 ;
  wire \controldeusuario/mux31_5_f5_1276 ;
  wire \controldeusuario/mux31_5_f51 ;
  wire \controldeusuario/mux31_6_1278 ;
  wire \controldeusuario/mux31_61_1279 ;
  wire \controldeusuario/mux31_62_1280 ;
  wire \controldeusuario/mux31_6_f5_1281 ;
  wire \controldeusuario/mux31_7_1282 ;
  wire \controldeusuario/mux31_71_1283 ;
  wire \controldeusuario/mux31_72_1284 ;
  wire \controldeusuario/mux31_8_1285 ;
  wire \controldeusuario/mux3_3_f6_1286 ;
  wire \controldeusuario/mux3_4_f5_1287 ;
  wire \controldeusuario/mux3_4_f6_1288 ;
  wire \controldeusuario/mux3_5_1289 ;
  wire \controldeusuario/mux3_5_f5_1290 ;
  wire \controldeusuario/mux3_5_f51 ;
  wire \controldeusuario/mux3_6_1292 ;
  wire \controldeusuario/mux3_61_1293 ;
  wire \controldeusuario/mux3_62_1294 ;
  wire \controldeusuario/mux3_6_f5_1295 ;
  wire \controldeusuario/mux3_7_1296 ;
  wire \controldeusuario/mux3_71_1297 ;
  wire \controldeusuario/mux3_72_1298 ;
  wire \controldeusuario/mux3_8_1299 ;
  wire \controldeusuario/mux4_3_f6_1300 ;
  wire \controldeusuario/mux4_4_f5_1301 ;
  wire \controldeusuario/mux4_4_f6_1302 ;
  wire \controldeusuario/mux4_5_1303 ;
  wire \controldeusuario/mux4_5_f5_1304 ;
  wire \controldeusuario/mux4_5_f51 ;
  wire \controldeusuario/mux4_6_1306 ;
  wire \controldeusuario/mux4_61_1307 ;
  wire \controldeusuario/mux4_62_1308 ;
  wire \controldeusuario/mux4_6_f5_1309 ;
  wire \controldeusuario/mux4_7_1310 ;
  wire \controldeusuario/mux4_71_1311 ;
  wire \controldeusuario/mux4_72_1312 ;
  wire \controldeusuario/mux4_8_1313 ;
  wire \controldeusuario/mux5_3_f6_1314 ;
  wire \controldeusuario/mux5_4_f5_1315 ;
  wire \controldeusuario/mux5_4_f6_1316 ;
  wire \controldeusuario/mux5_5_1317 ;
  wire \controldeusuario/mux5_5_f5_1318 ;
  wire \controldeusuario/mux5_5_f51 ;
  wire \controldeusuario/mux5_6_1320 ;
  wire \controldeusuario/mux5_61_1321 ;
  wire \controldeusuario/mux5_62_1322 ;
  wire \controldeusuario/mux5_6_f5_1323 ;
  wire \controldeusuario/mux5_7_1324 ;
  wire \controldeusuario/mux5_71_1325 ;
  wire \controldeusuario/mux5_72_1326 ;
  wire \controldeusuario/mux5_8_1327 ;
  wire \controldeusuario/mux6_3_f6_1328 ;
  wire \controldeusuario/mux6_4_f5_1329 ;
  wire \controldeusuario/mux6_4_f6_1330 ;
  wire \controldeusuario/mux6_5_1331 ;
  wire \controldeusuario/mux6_5_f5_1332 ;
  wire \controldeusuario/mux6_5_f51 ;
  wire \controldeusuario/mux6_6_1334 ;
  wire \controldeusuario/mux6_61_1335 ;
  wire \controldeusuario/mux6_62_1336 ;
  wire \controldeusuario/mux6_6_f5_1337 ;
  wire \controldeusuario/mux6_7_1338 ;
  wire \controldeusuario/mux6_71_1339 ;
  wire \controldeusuario/mux6_72_1340 ;
  wire \controldeusuario/mux6_8_1341 ;
  wire \controldeusuario/mux7_3_f6_1342 ;
  wire \controldeusuario/mux7_4_f5_1343 ;
  wire \controldeusuario/mux7_4_f6_1344 ;
  wire \controldeusuario/mux7_5_1345 ;
  wire \controldeusuario/mux7_5_f5_1346 ;
  wire \controldeusuario/mux7_5_f51 ;
  wire \controldeusuario/mux7_6_1348 ;
  wire \controldeusuario/mux7_61_1349 ;
  wire \controldeusuario/mux7_62_1350 ;
  wire \controldeusuario/mux7_6_f5_1351 ;
  wire \controldeusuario/mux7_7_1352 ;
  wire \controldeusuario/mux7_71_1353 ;
  wire \controldeusuario/mux7_72_1354 ;
  wire \controldeusuario/mux7_8_1355 ;
  wire \controldeusuario/mux8_3_f6_1356 ;
  wire \controldeusuario/mux8_4_f5_1357 ;
  wire \controldeusuario/mux8_4_f6_1358 ;
  wire \controldeusuario/mux8_5_1359 ;
  wire \controldeusuario/mux8_5_f5_1360 ;
  wire \controldeusuario/mux8_5_f51 ;
  wire \controldeusuario/mux8_6_1362 ;
  wire \controldeusuario/mux8_61_1363 ;
  wire \controldeusuario/mux8_62_1364 ;
  wire \controldeusuario/mux8_6_f5_1365 ;
  wire \controldeusuario/mux8_7_1366 ;
  wire \controldeusuario/mux8_71_1367 ;
  wire \controldeusuario/mux8_72_1368 ;
  wire \controldeusuario/mux8_8_1369 ;
  wire \controldeusuario/mux9_3_f6_1370 ;
  wire \controldeusuario/mux9_4_f5_1371 ;
  wire \controldeusuario/mux9_4_f6_1372 ;
  wire \controldeusuario/mux9_5_1373 ;
  wire \controldeusuario/mux9_5_f5_1374 ;
  wire \controldeusuario/mux9_5_f51 ;
  wire \controldeusuario/mux9_6_1376 ;
  wire \controldeusuario/mux9_61_1377 ;
  wire \controldeusuario/mux9_62_1378 ;
  wire \controldeusuario/mux9_6_f5_1379 ;
  wire \controldeusuario/mux9_7_1380 ;
  wire \controldeusuario/mux9_71_1381 ;
  wire \controldeusuario/mux9_72_1382 ;
  wire \controldeusuario/mux9_8_1383 ;
  wire \controldeusuario/mux_3_f6_1384 ;
  wire \controldeusuario/mux_4_f5_1385 ;
  wire \controldeusuario/mux_4_f6_1386 ;
  wire \controldeusuario/mux_5_1387 ;
  wire \controldeusuario/mux_5_f5_1388 ;
  wire \controldeusuario/mux_5_f51 ;
  wire \controldeusuario/mux_6_1390 ;
  wire \controldeusuario/mux_61_1391 ;
  wire \controldeusuario/mux_62_1392 ;
  wire \controldeusuario/mux_6_f5_1393 ;
  wire \controldeusuario/mux_7_1394 ;
  wire \controldeusuario/mux_71_1395 ;
  wire \controldeusuario/mux_72_1396 ;
  wire \controldeusuario/mux_8_1397 ;
  wire \controldeusuario/puntero2_0_1_1399 ;
  wire \controldeusuario/puntero2_0_2_1400 ;
  wire \controldeusuario/puntero2_not0001 ;
  wire \controldeusuario/puntero2_or0000 ;
  wire \controldeusuario/puntero_0_1_1415 ;
  wire \controldeusuario/puntero_0_2_1416 ;
  wire \controldeusuario/puntero_1_1_1418 ;
  wire \controldeusuario/puntero_1_2_1419 ;
  wire \controldeusuario/puntero_and00001_1422 ;
  wire \controldeusuario/puntero_cmp_gt0003 ;
  wire \controldeusuario/puntero_cmp_lt0000 ;
  wire \controldeusuario/puntero_mux0000<0>23_1426 ;
  wire \controldeusuario/puntero_mux0000<0>3_1427 ;
  wire \controldeusuario/puntero_mux0000<0>35 ;
  wire \controldeusuario/puntero_mux0000<0>62_SW0_SW0 ;
  wire \controldeusuario/puntero_mux0000<0>71 ;
  wire \controldeusuario/puntero_mux0000<0>711_1431 ;
  wire \controldeusuario/puntero_mux0000<0>712_1432 ;
  wire \controldeusuario/puntero_mux0000<0>8_1433 ;
  wire \controldeusuario/puntero_mux0000<1>10_1435 ;
  wire \controldeusuario/puntero_mux0000<1>16_1436 ;
  wire \controldeusuario/puntero_mux0000<1>31_1437 ;
  wire \controldeusuario/puntero_mux0000<1>37_1438 ;
  wire \controldeusuario/puntero_mux0000<1>4 ;
  wire \controldeusuario/puntero_mux0000<1>69_1440 ;
  wire \controldeusuario/puntero_mux0000<2>20_1442 ;
  wire \controldeusuario/puntero_mux0000<2>40_1443 ;
  wire \controldeusuario/puntero_mux0000<2>76_1444 ;
  wire \controldeusuario/puntero_mux0000<3>104_1446 ;
  wire \controldeusuario/puntero_mux0000<3>149_1447 ;
  wire \controldeusuario/puntero_mux0000<3>182_1448 ;
  wire \controldeusuario/puntero_mux0000<3>241_1449 ;
  wire \controldeusuario/puntero_mux0000<3>26_1450 ;
  wire \controldeusuario/puntero_mux0000<3>44_1451 ;
  wire \controldeusuario/puntero_mux0000<3>62_1452 ;
  wire \controldeusuario/puntero_mux0000<3>76_1453 ;
  wire \controldeusuario/puntero_mux0000<3>90_1454 ;
  wire \controldeusuario/puntero_not0000 ;
  wire fininwt;
  wire \inicia/dato_mux0000<2>1 ;
  wire \inicia/dato_mux0000<3>1 ;
  wire \inicia/dir_mux0000<1>1_1474 ;
  wire \inicia/dir_mux0000<2>1 ;
  wire \inicia/escritura_1476 ;
  wire \inicia/escritura_mux00001_1477 ;
  wire \inicia/next_state_or0000_1478 ;
  wire \inicia/state_FSM_FFd1_1479 ;
  wire \inicia/state_FSM_FFd1-In ;
  wire \inicia/state_FSM_FFd2_1481 ;
  wire \inicia/state_FSM_FFd3_1482 ;
  wire \inicia/state_FSM_FFd4_1483 ;
  wire \inicia/state_FSM_FFd5_1484 ;
  wire \inicia/state_FSM_FFd6_1485 ;
  wire \inicia/state_FSM_FFd6-In ;
  wire \inicia/state_FSM_FFd7_1487 ;
  wire \inicia/state_FSM_FFd7-In ;
  wire \inicia/state_or0000 ;
  wire \inicia/true_1490 ;
  wire \inicia/true_mux00001 ;
  wire interruptores_0_IBUF_1495;
  wire interruptores_1_IBUF_1496;
  wire interruptores_2_IBUF_1497;
  wire \maquinaprincipal/CrontUs_1498 ;
  wire \maquinaprincipal/State_mux0001<0>1_1504 ;
  wire \maquinaprincipal/State_mux0001<0>2_1505 ;
  wire \maquinaprincipal/State_mux0001<1>15_1507 ;
  wire \maquinaprincipal/State_mux0001<1>4_1508 ;
  wire \maquinaprincipal/iniciar_1511 ;
  wire \maquinaprincipal/whileT_1512 ;
  wire \memoria/N4 ;
  wire \memoria/N5 ;
  wire \memoria/N6 ;
  wire \memoria/memoria1_0_0_1548 ;
  wire \memoria/memoria1_0_1_1549 ;
  wire \memoria/memoria1_0_2_1550 ;
  wire \memoria/memoria1_0_3_1551 ;
  wire \memoria/memoria1_0_4_1552 ;
  wire \memoria/memoria1_0_5_1553 ;
  wire \memoria/memoria1_0_6_1554 ;
  wire \memoria/memoria1_0_7_1555 ;
  wire \memoria/memoria1_0_not0001 ;
  wire \memoria/memoria1_0_not00011_1557 ;
  wire \memoria/memoria1_10_0_1558 ;
  wire \memoria/memoria1_10_1_1559 ;
  wire \memoria/memoria1_10_2_1560 ;
  wire \memoria/memoria1_10_3_1561 ;
  wire \memoria/memoria1_10_4_1562 ;
  wire \memoria/memoria1_10_5_1563 ;
  wire \memoria/memoria1_10_6_1564 ;
  wire \memoria/memoria1_10_7_1565 ;
  wire \memoria/memoria1_10_not0001 ;
  wire \memoria/memoria1_11_0_1567 ;
  wire \memoria/memoria1_11_1_1568 ;
  wire \memoria/memoria1_11_2_1569 ;
  wire \memoria/memoria1_11_3_1570 ;
  wire \memoria/memoria1_11_4_1571 ;
  wire \memoria/memoria1_11_5_1572 ;
  wire \memoria/memoria1_11_6_1573 ;
  wire \memoria/memoria1_11_7_1574 ;
  wire \memoria/memoria1_11_not0001 ;
  wire \memoria/memoria1_12_0_1576 ;
  wire \memoria/memoria1_12_1_1577 ;
  wire \memoria/memoria1_12_2_1578 ;
  wire \memoria/memoria1_12_3_1579 ;
  wire \memoria/memoria1_13_0_1580 ;
  wire \memoria/memoria1_13_1_1581 ;
  wire \memoria/memoria1_13_2_1582 ;
  wire \memoria/memoria1_13_3_1583 ;
  wire \memoria/memoria1_13_4_1584 ;
  wire \memoria/memoria1_13_5_1585 ;
  wire \memoria/memoria1_13_6_1586 ;
  wire \memoria/memoria1_13_7_1587 ;
  wire \memoria/memoria1_13_not0001 ;
  wire \memoria/memoria1_14_0_1589 ;
  wire \memoria/memoria1_14_1_1590 ;
  wire \memoria/memoria1_14_2_1591 ;
  wire \memoria/memoria1_14_3_1592 ;
  wire \memoria/memoria1_14_4_1593 ;
  wire \memoria/memoria1_14_5_1594 ;
  wire \memoria/memoria1_14_6_1595 ;
  wire \memoria/memoria1_14_7_1596 ;
  wire \memoria/memoria1_14_not0001 ;
  wire \memoria/memoria1_15_0_1598 ;
  wire \memoria/memoria1_15_1_1599 ;
  wire \memoria/memoria1_15_2_1600 ;
  wire \memoria/memoria1_15_3_1601 ;
  wire \memoria/memoria1_15_4_1602 ;
  wire \memoria/memoria1_15_5_1603 ;
  wire \memoria/memoria1_15_6_1604 ;
  wire \memoria/memoria1_15_7_1605 ;
  wire \memoria/memoria1_15_not0001 ;
  wire \memoria/memoria1_1_0_1607 ;
  wire \memoria/memoria1_1_1_1608 ;
  wire \memoria/memoria1_1_2_1609 ;
  wire \memoria/memoria1_1_3_1610 ;
  wire \memoria/memoria1_1_4_1611 ;
  wire \memoria/memoria1_1_5_1612 ;
  wire \memoria/memoria1_1_6_1613 ;
  wire \memoria/memoria1_1_7_1614 ;
  wire \memoria/memoria1_1_not0001 ;
  wire \memoria/memoria1_2_0_1616 ;
  wire \memoria/memoria1_2_1_1617 ;
  wire \memoria/memoria1_2_2_1618 ;
  wire \memoria/memoria1_2_3_1619 ;
  wire \memoria/memoria1_2_4_1620 ;
  wire \memoria/memoria1_2_5_1621 ;
  wire \memoria/memoria1_2_6_1622 ;
  wire \memoria/memoria1_2_7_1623 ;
  wire \memoria/memoria1_2_not0001 ;
  wire \memoria/memoria1_3_0_1625 ;
  wire \memoria/memoria1_3_1_1626 ;
  wire \memoria/memoria1_3_2_1627 ;
  wire \memoria/memoria1_3_3_1628 ;
  wire \memoria/memoria1_3_4_1629 ;
  wire \memoria/memoria1_3_5_1630 ;
  wire \memoria/memoria1_3_6_1631 ;
  wire \memoria/memoria1_3_7_1632 ;
  wire \memoria/memoria1_3_not0001 ;
  wire \memoria/memoria1_4_0_1634 ;
  wire \memoria/memoria1_4_1_1635 ;
  wire \memoria/memoria1_4_2_1636 ;
  wire \memoria/memoria1_4_3_1637 ;
  wire \memoria/memoria1_4_4_1638 ;
  wire \memoria/memoria1_4_5_1639 ;
  wire \memoria/memoria1_4_6_1640 ;
  wire \memoria/memoria1_4_7_1641 ;
  wire \memoria/memoria1_4_not0001 ;
  wire \memoria/memoria1_4_not00011_1643 ;
  wire \memoria/memoria1_5_0_1644 ;
  wire \memoria/memoria1_5_1_1645 ;
  wire \memoria/memoria1_5_2_1646 ;
  wire \memoria/memoria1_5_3_1647 ;
  wire \memoria/memoria1_5_4_1648 ;
  wire \memoria/memoria1_5_5_1649 ;
  wire \memoria/memoria1_5_6_1650 ;
  wire \memoria/memoria1_5_7_1651 ;
  wire \memoria/memoria1_5_not0001 ;
  wire \memoria/memoria1_6_0_1653 ;
  wire \memoria/memoria1_6_1_1654 ;
  wire \memoria/memoria1_6_2_1655 ;
  wire \memoria/memoria1_6_3_1656 ;
  wire \memoria/memoria1_6_4_1657 ;
  wire \memoria/memoria1_6_5_1658 ;
  wire \memoria/memoria1_6_6_1659 ;
  wire \memoria/memoria1_6_7_1660 ;
  wire \memoria/memoria1_6_not0001 ;
  wire \memoria/memoria1_7_0_1662 ;
  wire \memoria/memoria1_7_1_1663 ;
  wire \memoria/memoria1_7_2_1664 ;
  wire \memoria/memoria1_7_3_1665 ;
  wire \memoria/memoria1_7_4_1666 ;
  wire \memoria/memoria1_7_5_1667 ;
  wire \memoria/memoria1_7_6_1668 ;
  wire \memoria/memoria1_7_7_1669 ;
  wire \memoria/memoria1_7_not0001 ;
  wire \memoria/memoria1_8_0_1671 ;
  wire \memoria/memoria1_8_1_1672 ;
  wire \memoria/memoria1_8_2_1673 ;
  wire \memoria/memoria1_8_3_1674 ;
  wire \memoria/memoria1_8_4_1675 ;
  wire \memoria/memoria1_8_5_1676 ;
  wire \memoria/memoria1_8_6_1677 ;
  wire \memoria/memoria1_8_7_1678 ;
  wire \memoria/memoria1_8_not0001 ;
  wire \memoria/memoria1_8_not00011_1680 ;
  wire \memoria/memoria1_9_0_1681 ;
  wire \memoria/memoria1_9_1_1682 ;
  wire \memoria/memoria1_9_2_1683 ;
  wire \memoria/memoria1_9_3_1684 ;
  wire \memoria/memoria1_9_4_1685 ;
  wire \memoria/memoria1_9_5_1686 ;
  wire \memoria/memoria1_9_6_1687 ;
  wire \memoria/memoria1_9_7_1688 ;
  wire \memoria/memoria1_9_not0001 ;
  wire \memoria/mux10_3_f6_1690 ;
  wire \memoria/mux10_4_f5_1691 ;
  wire \memoria/mux10_4_f6_1692 ;
  wire \memoria/mux10_5_1693 ;
  wire \memoria/mux10_5_f5_1694 ;
  wire \memoria/mux10_5_f51 ;
  wire \memoria/mux10_6_1696 ;
  wire \memoria/mux10_61_1697 ;
  wire \memoria/mux10_62_1698 ;
  wire \memoria/mux10_6_f5_1699 ;
  wire \memoria/mux10_7_1700 ;
  wire \memoria/mux10_71_1701 ;
  wire \memoria/mux10_72_1702 ;
  wire \memoria/mux10_8_1703 ;
  wire \memoria/mux11_3_f6_1704 ;
  wire \memoria/mux11_4_f5_1705 ;
  wire \memoria/mux11_4_f6_1706 ;
  wire \memoria/mux11_5_1707 ;
  wire \memoria/mux11_5_f5_1708 ;
  wire \memoria/mux11_5_f51 ;
  wire \memoria/mux11_6_1710 ;
  wire \memoria/mux11_61_1711 ;
  wire \memoria/mux11_62_1712 ;
  wire \memoria/mux11_6_f5_1713 ;
  wire \memoria/mux11_7_1714 ;
  wire \memoria/mux11_71_1715 ;
  wire \memoria/mux11_72_1716 ;
  wire \memoria/mux11_8_1717 ;
  wire \memoria/mux12_3_f6_1718 ;
  wire \memoria/mux12_4_f5_1719 ;
  wire \memoria/mux12_4_f6_1720 ;
  wire \memoria/mux12_5_1721 ;
  wire \memoria/mux12_5_f5_1722 ;
  wire \memoria/mux12_5_f51 ;
  wire \memoria/mux12_6_1724 ;
  wire \memoria/mux12_61_1725 ;
  wire \memoria/mux12_62_1726 ;
  wire \memoria/mux12_6_f5_1727 ;
  wire \memoria/mux12_7_1728 ;
  wire \memoria/mux12_71_1729 ;
  wire \memoria/mux12_72_1730 ;
  wire \memoria/mux12_8_1731 ;
  wire \memoria/mux13_3_f6_1732 ;
  wire \memoria/mux13_4_f5_1733 ;
  wire \memoria/mux13_4_f6_1734 ;
  wire \memoria/mux13_5_1735 ;
  wire \memoria/mux13_5_f5_1736 ;
  wire \memoria/mux13_5_f51 ;
  wire \memoria/mux13_6_1738 ;
  wire \memoria/mux13_61_1739 ;
  wire \memoria/mux13_62_1740 ;
  wire \memoria/mux13_6_f5_1741 ;
  wire \memoria/mux13_7_1742 ;
  wire \memoria/mux13_71_1743 ;
  wire \memoria/mux13_72_1744 ;
  wire \memoria/mux13_8_1745 ;
  wire \memoria/mux14_3_f6_1746 ;
  wire \memoria/mux14_4_f5_1747 ;
  wire \memoria/mux14_4_f6_1748 ;
  wire \memoria/mux14_5_1749 ;
  wire \memoria/mux14_5_f5_1750 ;
  wire \memoria/mux14_5_f51 ;
  wire \memoria/mux14_6_1752 ;
  wire \memoria/mux14_61_1753 ;
  wire \memoria/mux14_62_1754 ;
  wire \memoria/mux14_6_f5_1755 ;
  wire \memoria/mux14_7_1756 ;
  wire \memoria/mux14_71_1757 ;
  wire \memoria/mux14_72_1758 ;
  wire \memoria/mux14_8_1759 ;
  wire \memoria/mux15_3_f6_1760 ;
  wire \memoria/mux15_4_f5_1761 ;
  wire \memoria/mux15_4_f6_1762 ;
  wire \memoria/mux15_5_1763 ;
  wire \memoria/mux15_5_f5_1764 ;
  wire \memoria/mux15_5_f51 ;
  wire \memoria/mux15_6_1766 ;
  wire \memoria/mux15_61_1767 ;
  wire \memoria/mux15_62_1768 ;
  wire \memoria/mux15_6_f5_1769 ;
  wire \memoria/mux15_7_1770 ;
  wire \memoria/mux15_71_1771 ;
  wire \memoria/mux15_72_1772 ;
  wire \memoria/mux15_8_1773 ;
  wire \memoria/mux1_3_f6_1774 ;
  wire \memoria/mux1_4_f5_1775 ;
  wire \memoria/mux1_4_f6_1776 ;
  wire \memoria/mux1_5_1777 ;
  wire \memoria/mux1_5_f5_1778 ;
  wire \memoria/mux1_5_f51 ;
  wire \memoria/mux1_6_1780 ;
  wire \memoria/mux1_61_1781 ;
  wire \memoria/mux1_62_1782 ;
  wire \memoria/mux1_6_f5_1783 ;
  wire \memoria/mux1_7_1784 ;
  wire \memoria/mux1_71_1785 ;
  wire \memoria/mux1_72_1786 ;
  wire \memoria/mux1_8_1787 ;
  wire \memoria/mux2_3_f6_1788 ;
  wire \memoria/mux2_4_f5_1789 ;
  wire \memoria/mux2_4_f6_1790 ;
  wire \memoria/mux2_5_1791 ;
  wire \memoria/mux2_5_f5_1792 ;
  wire \memoria/mux2_5_f51 ;
  wire \memoria/mux2_6_1794 ;
  wire \memoria/mux2_61_1795 ;
  wire \memoria/mux2_62_1796 ;
  wire \memoria/mux2_6_f5_1797 ;
  wire \memoria/mux2_7_1798 ;
  wire \memoria/mux2_71_1799 ;
  wire \memoria/mux2_72_1800 ;
  wire \memoria/mux2_8_1801 ;
  wire \memoria/mux3_3_f6_1802 ;
  wire \memoria/mux3_4_f5_1803 ;
  wire \memoria/mux3_4_f6_1804 ;
  wire \memoria/mux3_5_1805 ;
  wire \memoria/mux3_5_f5_1806 ;
  wire \memoria/mux3_5_f51 ;
  wire \memoria/mux3_6_1808 ;
  wire \memoria/mux3_61_1809 ;
  wire \memoria/mux3_62_1810 ;
  wire \memoria/mux3_6_f5_1811 ;
  wire \memoria/mux3_7_1812 ;
  wire \memoria/mux3_71_1813 ;
  wire \memoria/mux3_72_1814 ;
  wire \memoria/mux3_8_1815 ;
  wire \memoria/mux4_3_f6_1816 ;
  wire \memoria/mux4_4_f5_1817 ;
  wire \memoria/mux4_4_f6_1818 ;
  wire \memoria/mux4_5_1819 ;
  wire \memoria/mux4_5_f5_1820 ;
  wire \memoria/mux4_5_f51 ;
  wire \memoria/mux4_6_1822 ;
  wire \memoria/mux4_61_1823 ;
  wire \memoria/mux4_62_1824 ;
  wire \memoria/mux4_6_f5_1825 ;
  wire \memoria/mux4_7_1826 ;
  wire \memoria/mux4_71_1827 ;
  wire \memoria/mux4_72_1828 ;
  wire \memoria/mux4_8_1829 ;
  wire \memoria/mux5_3_f6_1830 ;
  wire \memoria/mux5_4_f5_1831 ;
  wire \memoria/mux5_4_f6_1832 ;
  wire \memoria/mux5_5_1833 ;
  wire \memoria/mux5_5_f5_1834 ;
  wire \memoria/mux5_5_f51 ;
  wire \memoria/mux5_6_1836 ;
  wire \memoria/mux5_61_1837 ;
  wire \memoria/mux5_62_1838 ;
  wire \memoria/mux5_6_f5_1839 ;
  wire \memoria/mux5_7_1840 ;
  wire \memoria/mux5_71_1841 ;
  wire \memoria/mux5_72_1842 ;
  wire \memoria/mux5_8_1843 ;
  wire \memoria/mux6_3_f6_1844 ;
  wire \memoria/mux6_4_f5_1845 ;
  wire \memoria/mux6_4_f6_1846 ;
  wire \memoria/mux6_5_1847 ;
  wire \memoria/mux6_5_f5_1848 ;
  wire \memoria/mux6_5_f51 ;
  wire \memoria/mux6_6_1850 ;
  wire \memoria/mux6_61_1851 ;
  wire \memoria/mux6_62_1852 ;
  wire \memoria/mux6_6_f5_1853 ;
  wire \memoria/mux6_7_1854 ;
  wire \memoria/mux6_71_1855 ;
  wire \memoria/mux6_72_1856 ;
  wire \memoria/mux6_8_1857 ;
  wire \memoria/mux7_3_f6_1858 ;
  wire \memoria/mux7_4_f5_1859 ;
  wire \memoria/mux7_4_f6_1860 ;
  wire \memoria/mux7_5_1861 ;
  wire \memoria/mux7_5_f5_1862 ;
  wire \memoria/mux7_5_f51 ;
  wire \memoria/mux7_6_1864 ;
  wire \memoria/mux7_61_1865 ;
  wire \memoria/mux7_62_1866 ;
  wire \memoria/mux7_6_f5_1867 ;
  wire \memoria/mux7_7_1868 ;
  wire \memoria/mux7_71_1869 ;
  wire \memoria/mux7_72_1870 ;
  wire \memoria/mux7_8_1871 ;
  wire \memoria/mux8_3_f6_1872 ;
  wire \memoria/mux8_4_f5_1873 ;
  wire \memoria/mux8_4_f6_1874 ;
  wire \memoria/mux8_5_1875 ;
  wire \memoria/mux8_5_f5_1876 ;
  wire \memoria/mux8_5_f51 ;
  wire \memoria/mux8_6_1878 ;
  wire \memoria/mux8_61_1879 ;
  wire \memoria/mux8_62_1880 ;
  wire \memoria/mux8_6_f5_1881 ;
  wire \memoria/mux8_7_1882 ;
  wire \memoria/mux8_71_1883 ;
  wire \memoria/mux8_72_1884 ;
  wire \memoria/mux8_8_1885 ;
  wire \memoria/mux9_3_f6_1886 ;
  wire \memoria/mux9_4_f5_1887 ;
  wire \memoria/mux9_4_f6_1888 ;
  wire \memoria/mux9_5_1889 ;
  wire \memoria/mux9_5_f5_1890 ;
  wire \memoria/mux9_5_f51 ;
  wire \memoria/mux9_6_1892 ;
  wire \memoria/mux9_61_1893 ;
  wire \memoria/mux9_62_1894 ;
  wire \memoria/mux9_6_f5_1895 ;
  wire \memoria/mux9_7_1896 ;
  wire \memoria/mux9_71_1897 ;
  wire \memoria/mux9_72_1898 ;
  wire \memoria/mux9_8_1899 ;
  wire \memoria/mux_3_f6_1900 ;
  wire \memoria/mux_4_f5_1901 ;
  wire \memoria/mux_4_f6_1902 ;
  wire \memoria/mux_5_1903 ;
  wire \memoria/mux_5_f5_1904 ;
  wire \memoria/mux_5_f51 ;
  wire \memoria/mux_6_1906 ;
  wire \memoria/mux_61_1907 ;
  wire \memoria/mux_62_1908 ;
  wire \memoria/mux_6_f5_1909 ;
  wire \memoria/mux_7_1910 ;
  wire \memoria/mux_71_1911 ;
  wire \memoria/mux_72_1912 ;
  wire \memoria/mux_8_1913 ;
  wire \read/activa_1914 ;
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
  wire \read/final_1927 ;
  wire \read/state_FSM_FFd1_1936 ;
  wire \read/state_FSM_FFd1-In ;
  wire \read/state_FSM_FFd2_1938 ;
  wire \read/state_FSM_FFd2-In ;
  wire \read/state_or0000 ;
  wire \read/w_1941 ;
  wire \read/w_mux0000 ;
  wire reset_IBUF_1944;
  wire selectores_0_IBUF_1949;
  wire selectores_1_IBUF_1950;
  wire selectores_2_IBUF_1951;
  wire selectores_3_IBUF_1952;
  wire \write/activa_1953 ;
  wire \write/data_out_mux0000<0>1_1963 ;
  wire \write/data_out_mux0000<1>1_1965 ;
  wire \write/data_out_mux0000<1>2_1966 ;
  wire \write/data_out_mux0000<2>1_1968 ;
  wire \write/data_out_mux0000<3>1_1970 ;
  wire \write/data_out_mux0000<3>2_1971 ;
  wire \write/data_out_mux0000<6>1_1975 ;
  wire \write/data_out_mux0000<7>1_1977 ;
  wire \write/dir_out[0] ;
  wire \write/dir_out[1] ;
  wire \write/dir_out[2] ;
  wire \write/dir_out[4] ;
  wire \write/dir_out[5] ;
  wire \write/dir_out[6] ;
  wire \write/dir_out[7] ;
  wire \write/dir_out_mux0000[0] ;
  wire \write/dir_out_mux0000[1] ;
  wire \write/dir_out_mux0000<1>1_1987 ;
  wire \write/dir_out_mux0000<1>2_1988 ;
  wire \write/dir_out_mux0000[2] ;
  wire \write/dir_out_mux0000[3] ;
  wire \write/dir_out_mux0000<3>1_1991 ;
  wire \write/dir_out_mux0000<3>2_1992 ;
  wire \write/dir_out_mux0000[5] ;
  wire \write/dir_out_mux0000<5>1_1994 ;
  wire \write/dir_out_mux0000<5>2_1995 ;
  wire \write/dir_out_mux0000[6] ;
  wire \write/dir_out_mux0000[7] ;
  wire \write/final_1998 ;
  wire \write/state_FSM_FFd1_1999 ;
  wire \write/state_FSM_FFd1-In ;
  wire \write/state_FSM_FFd2_2001 ;
  wire \write/state_FSM_FFd2-In ;
  wire \write/state_FSM_FFd2-In1 ;
  wire \write/state_FSM_FFd2-In11_2004 ;
  wire \write/state_cmp_eq0003 ;
  wire \write/state_or0000 ;
  wire writedata_0_IBUF_2015;
  wire writedata_1_IBUF_2016;
  wire writedata_2_IBUF_2017;
  wire writedata_3_IBUF_2018;
  wire writedata_4_IBUF_2019;
  wire writedata_5_IBUF_2020;
  wire writedata_6_IBUF_2021;
  wire writedata_7_IBUF_2022;
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
  wire [3 : 0] \inicia/dato ;
  wire [2 : 0] \inicia/dir ;
  wire [3 : 0] \maquinaprincipal/State ;
  wire [3 : 0] \maquinaprincipal/State_mux0001 ;
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
    .C(clk_BUFGP_244),
    .D(\Cront_out/Result [4]),
    .R(\Cront_out/contador_or0000 ),
    .Q(\Cront_out/contador [4])
  );
  FDR   \Cront_out/contador_3  (
    .C(clk_BUFGP_244),
    .D(\Cront_out/Result [3]),
    .R(\Cront_out/contador_or0000 ),
    .Q(\Cront_out/contador [3])
  );
  FDR   \Cront_out/contador_2  (
    .C(clk_BUFGP_244),
    .D(\Cront_out/Result [2]),
    .R(\Cront_out/contador_or0000 ),
    .Q(\Cront_out/contador [2])
  );
  FDR   \Cront_out/contador_1  (
    .C(clk_BUFGP_244),
    .D(\Cront_out/Result [1]),
    .R(\Cront_out/contador_or0000 ),
    .Q(\Cront_out/contador [1])
  );
  FDR   \Cront_out/contador_0  (
    .C(clk_BUFGP_244),
    .D(\Cront_out/Result [0]),
    .R(\Cront_out/contador_or0000 ),
    .Q(\Cront_out/contador [0])
  );
  FDE   \Cront_out/Mtrien_data_out  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtrien_data_out_mux0000 ),
    .Q(\Cront_out/Mtrien_data_out_38 )
  );
  FDE   \Cront_out/escreg  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/reset_inv ),
    .D(\Cront_out/escreg_mux0000_60 ),
    .Q(\Cront_out/escreg_59 )
  );
  FDE   \Cront_out/Mtridata_data_out_7  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [0]),
    .Q(\Cront_out/Mtridata_data_out [7])
  );
  FDE   \Cront_out/Mtridata_data_out_6  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [1]),
    .Q(\Cront_out/Mtridata_data_out [6])
  );
  FDE   \Cront_out/Mtridata_data_out_5  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [2]),
    .Q(\Cront_out/Mtridata_data_out [5])
  );
  FDE   \Cront_out/Mtridata_data_out_4  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [3]),
    .Q(\Cront_out/Mtridata_data_out [4])
  );
  FDE   \Cront_out/Mtridata_data_out_3  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [4]),
    .Q(\Cront_out/Mtridata_data_out [3])
  );
  FDE   \Cront_out/Mtridata_data_out_2  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [5]),
    .Q(\Cront_out/Mtridata_data_out [2])
  );
  FDE   \Cront_out/Mtridata_data_out_1  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [6]),
    .Q(\Cront_out/Mtridata_data_out [1])
  );
  FDE   \Cront_out/Mtridata_data_out_0  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/Mtridata_data_out_not0001 ),
    .D(\Cront_out/Mtridata_data_out_mux0000 [7]),
    .Q(\Cront_out/Mtridata_data_out [0])
  );
  FDR   \Cront_out/final  (
    .C(clk_BUFGP_244),
    .D(\Cront_out/final_mux0000 ),
    .R(\Cront_out/CS_or0000 ),
    .Q(\Cront_out/final_63 )
  );
  FDS   \Cront_out/WR  (
    .C(clk_BUFGP_244),
    .D(\Cront_out/WR_mux0000_52 ),
    .S(\Cront_out/CS_or0000 ),
    .Q(\Cront_out/WR_51 )
  );
  FDS   \Cront_out/AD  (
    .C(clk_BUFGP_244),
    .D(\Cront_out/AD_mux0000 ),
    .S(\Cront_out/CS_or0000 ),
    .Q(\Cront_out/AD_10 )
  );
  FDS   \Cront_out/CS  (
    .C(clk_BUFGP_244),
    .D(\Cront_out/CS_mux0000 ),
    .S(\Cront_out/CS_or0000 ),
    .Q(\Cront_out/CS_16 )
  );
  FDS   \Cront_out/RD  (
    .C(clk_BUFGP_244),
    .D(\Cront_out/RD_mux0000 ),
    .S(\Cront_out/CS_or0000 ),
    .Q(\Cront_out/RD_40 )
  );
  FDR   \maquinaprincipal/CrontUs  (
    .C(clk_BUFGP_244),
    .D(\maquinaprincipal/State [3]),
    .R(reset_IBUF_1944),
    .Q(\maquinaprincipal/CrontUs_1498 )
  );
  FDR   \maquinaprincipal/whileT  (
    .C(clk_BUFGP_244),
    .D(\maquinaprincipal/State [1]),
    .R(reset_IBUF_1944),
    .Q(\maquinaprincipal/whileT_1512 )
  );
  FDR   \maquinaprincipal/iniciar  (
    .C(clk_BUFGP_244),
    .D(\maquinaprincipal/State [0]),
    .R(reset_IBUF_1944),
    .Q(\maquinaprincipal/iniciar_1511 )
  );
  FDE   \maquinaprincipal/State_3  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/reset_inv ),
    .D(\maquinaprincipal/State_mux0001 [3]),
    .Q(\maquinaprincipal/State [3])
  );
  FDE   \maquinaprincipal/State_2  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/reset_inv ),
    .D(\maquinaprincipal/State_mux0001 [2]),
    .Q(\maquinaprincipal/State [2])
  );
  FDE   \maquinaprincipal/State_1  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/reset_inv ),
    .D(\maquinaprincipal/State_mux0001 [1]),
    .Q(\maquinaprincipal/State [1])
  );
  FDE   \maquinaprincipal/State_0  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/reset_inv ),
    .D(\maquinaprincipal/State_mux0001 [0]),
    .Q(\maquinaprincipal/State [0])
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
    .I1(\controldeusuario/cambiosneg_14_7_494 ),
    .I2(\controldeusuario/cambiosneg_15_7_511 ),
    .O(\controldeusuario/mux31_5_1275 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux31_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_7_468 ),
    .I2(\controldeusuario/cambiosneg_13_7_477 ),
    .O(\controldeusuario/mux31_6_1278 )
  );
  MUXF5   \controldeusuario/mux31_4_f5  (
    .I0(\controldeusuario/mux31_6_1278 ),
    .I1(\controldeusuario/mux31_5_1275 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux31_4_f5_1273 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux31_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_7_434 ),
    .I2(\controldeusuario/cambiosneg_11_7_451 ),
    .O(\controldeusuario/mux31_61_1279 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux31_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_7_649 ),
    .I2(\controldeusuario/cambiosneg_9_7_666 ),
    .O(\controldeusuario/mux31_7_1282 )
  );
  MUXF5   \controldeusuario/mux31_5_f5  (
    .I0(\controldeusuario/mux31_7_1282 ),
    .I1(\controldeusuario/mux31_61_1279 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux31_5_f5_1276 )
  );
  MUXF6   \controldeusuario/mux31_3_f6  (
    .I0(\controldeusuario/mux31_5_f5_1276 ),
    .I1(\controldeusuario/mux31_4_f5_1273 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux31_3_f6_1272 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux31_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_7_613 ),
    .I2(\controldeusuario/cambiosneg_7_7_632 ),
    .O(\controldeusuario/mux31_62_1280 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux31_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_7_579 ),
    .I2(\controldeusuario/cambiosneg_5_7_596 ),
    .O(\controldeusuario/mux31_71_1283 )
  );
  MUXF5   \controldeusuario/mux31_5_f5_0  (
    .I0(\controldeusuario/mux31_71_1283 ),
    .I1(\controldeusuario/mux31_62_1280 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux31_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux31_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_7_545 ),
    .I2(\controldeusuario/cambiosneg_3_7_562 ),
    .O(\controldeusuario/mux31_72_1284 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux31_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_7_417 ),
    .I2(\controldeusuario/cambiosneg_1_7_528 ),
    .O(\controldeusuario/mux31_8_1285 )
  );
  MUXF5   \controldeusuario/mux31_6_f5  (
    .I0(\controldeusuario/mux31_8_1285 ),
    .I1(\controldeusuario/mux31_72_1284 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux31_6_f5_1281 )
  );
  MUXF6   \controldeusuario/mux31_4_f6  (
    .I0(\controldeusuario/mux31_6_f5_1281 ),
    .I1(\controldeusuario/mux31_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux31_4_f6_1274 )
  );
  MUXF7   \controldeusuario/mux31_2_f7  (
    .I0(\controldeusuario/mux31_4_f6_1274 ),
    .I1(\controldeusuario/mux31_3_f6_1272 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_14_5_492 ),
    .I2(\controldeusuario/cambiosneg_15_5_509 ),
    .O(\controldeusuario/mux29_5_1233 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_5_466 ),
    .I2(\controldeusuario/cambiosneg_13_5_475 ),
    .O(\controldeusuario/mux29_6_1236 )
  );
  MUXF5   \controldeusuario/mux29_4_f5  (
    .I0(\controldeusuario/mux29_6_1236 ),
    .I1(\controldeusuario/mux29_5_1233 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux29_4_f5_1231 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_5_432 ),
    .I2(\controldeusuario/cambiosneg_11_5_449 ),
    .O(\controldeusuario/mux29_61_1237 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_5_647 ),
    .I2(\controldeusuario/cambiosneg_9_5_664 ),
    .O(\controldeusuario/mux29_7_1240 )
  );
  MUXF5   \controldeusuario/mux29_5_f5  (
    .I0(\controldeusuario/mux29_7_1240 ),
    .I1(\controldeusuario/mux29_61_1237 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux29_5_f5_1234 )
  );
  MUXF6   \controldeusuario/mux29_3_f6  (
    .I0(\controldeusuario/mux29_5_f5_1234 ),
    .I1(\controldeusuario/mux29_4_f5_1231 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux29_3_f6_1230 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_5_611 ),
    .I2(\controldeusuario/cambiosneg_7_5_630 ),
    .O(\controldeusuario/mux29_62_1238 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_5_577 ),
    .I2(\controldeusuario/cambiosneg_5_5_594 ),
    .O(\controldeusuario/mux29_71_1241 )
  );
  MUXF5   \controldeusuario/mux29_5_f5_0  (
    .I0(\controldeusuario/mux29_71_1241 ),
    .I1(\controldeusuario/mux29_62_1238 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux29_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_5_543 ),
    .I2(\controldeusuario/cambiosneg_3_5_560 ),
    .O(\controldeusuario/mux29_72_1242 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux29_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_5_415 ),
    .I2(\controldeusuario/cambiosneg_1_5_526 ),
    .O(\controldeusuario/mux29_8_1243 )
  );
  MUXF5   \controldeusuario/mux29_6_f5  (
    .I0(\controldeusuario/mux29_8_1243 ),
    .I1(\controldeusuario/mux29_72_1242 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux29_6_f5_1239 )
  );
  MUXF6   \controldeusuario/mux29_4_f6  (
    .I0(\controldeusuario/mux29_6_f5_1239 ),
    .I1(\controldeusuario/mux29_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux29_4_f6_1232 )
  );
  MUXF7   \controldeusuario/mux29_2_f7  (
    .I0(\controldeusuario/mux29_4_f6_1232 ),
    .I1(\controldeusuario/mux29_3_f6_1230 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_14_4_491 ),
    .I2(\controldeusuario/cambiosneg_15_4_508 ),
    .O(\controldeusuario/mux28_5_1219 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_4_465 ),
    .I2(\controldeusuario/cambiosneg_13_4_474 ),
    .O(\controldeusuario/mux28_6_1222 )
  );
  MUXF5   \controldeusuario/mux28_4_f5  (
    .I0(\controldeusuario/mux28_6_1222 ),
    .I1(\controldeusuario/mux28_5_1219 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux28_4_f5_1217 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_4_431 ),
    .I2(\controldeusuario/cambiosneg_11_4_448 ),
    .O(\controldeusuario/mux28_61_1223 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_4_646 ),
    .I2(\controldeusuario/cambiosneg_9_4_663 ),
    .O(\controldeusuario/mux28_7_1226 )
  );
  MUXF5   \controldeusuario/mux28_5_f5  (
    .I0(\controldeusuario/mux28_7_1226 ),
    .I1(\controldeusuario/mux28_61_1223 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux28_5_f5_1220 )
  );
  MUXF6   \controldeusuario/mux28_3_f6  (
    .I0(\controldeusuario/mux28_5_f5_1220 ),
    .I1(\controldeusuario/mux28_4_f5_1217 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux28_3_f6_1216 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_4_610 ),
    .I2(\controldeusuario/cambiosneg_7_4_629 ),
    .O(\controldeusuario/mux28_62_1224 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_4_576 ),
    .I2(\controldeusuario/cambiosneg_5_4_593 ),
    .O(\controldeusuario/mux28_71_1227 )
  );
  MUXF5   \controldeusuario/mux28_5_f5_0  (
    .I0(\controldeusuario/mux28_71_1227 ),
    .I1(\controldeusuario/mux28_62_1224 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux28_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_4_542 ),
    .I2(\controldeusuario/cambiosneg_3_4_559 ),
    .O(\controldeusuario/mux28_72_1228 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux28_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_4_414 ),
    .I2(\controldeusuario/cambiosneg_1_4_525 ),
    .O(\controldeusuario/mux28_8_1229 )
  );
  MUXF5   \controldeusuario/mux28_6_f5  (
    .I0(\controldeusuario/mux28_8_1229 ),
    .I1(\controldeusuario/mux28_72_1228 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux28_6_f5_1225 )
  );
  MUXF6   \controldeusuario/mux28_4_f6  (
    .I0(\controldeusuario/mux28_6_f5_1225 ),
    .I1(\controldeusuario/mux28_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux28_4_f6_1218 )
  );
  MUXF7   \controldeusuario/mux28_2_f7  (
    .I0(\controldeusuario/mux28_4_f6_1218 ),
    .I1(\controldeusuario/mux28_3_f6_1216 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_14_6_493 ),
    .I2(\controldeusuario/cambiosneg_15_6_510 ),
    .O(\controldeusuario/mux30_5_1261 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_6_467 ),
    .I2(\controldeusuario/cambiosneg_13_6_476 ),
    .O(\controldeusuario/mux30_6_1264 )
  );
  MUXF5   \controldeusuario/mux30_4_f5  (
    .I0(\controldeusuario/mux30_6_1264 ),
    .I1(\controldeusuario/mux30_5_1261 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux30_4_f5_1259 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_6_433 ),
    .I2(\controldeusuario/cambiosneg_11_6_450 ),
    .O(\controldeusuario/mux30_61_1265 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_6_648 ),
    .I2(\controldeusuario/cambiosneg_9_6_665 ),
    .O(\controldeusuario/mux30_7_1268 )
  );
  MUXF5   \controldeusuario/mux30_5_f5  (
    .I0(\controldeusuario/mux30_7_1268 ),
    .I1(\controldeusuario/mux30_61_1265 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux30_5_f5_1262 )
  );
  MUXF6   \controldeusuario/mux30_3_f6  (
    .I0(\controldeusuario/mux30_5_f5_1262 ),
    .I1(\controldeusuario/mux30_4_f5_1259 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux30_3_f6_1258 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_6_612 ),
    .I2(\controldeusuario/cambiosneg_7_6_631 ),
    .O(\controldeusuario/mux30_62_1266 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_6_578 ),
    .I2(\controldeusuario/cambiosneg_5_6_595 ),
    .O(\controldeusuario/mux30_71_1269 )
  );
  MUXF5   \controldeusuario/mux30_5_f5_0  (
    .I0(\controldeusuario/mux30_71_1269 ),
    .I1(\controldeusuario/mux30_62_1266 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux30_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_6_544 ),
    .I2(\controldeusuario/cambiosneg_3_6_561 ),
    .O(\controldeusuario/mux30_72_1270 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux30_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_6_416 ),
    .I2(\controldeusuario/cambiosneg_1_6_527 ),
    .O(\controldeusuario/mux30_8_1271 )
  );
  MUXF5   \controldeusuario/mux30_6_f5  (
    .I0(\controldeusuario/mux30_8_1271 ),
    .I1(\controldeusuario/mux30_72_1270 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux30_6_f5_1267 )
  );
  MUXF6   \controldeusuario/mux30_4_f6  (
    .I0(\controldeusuario/mux30_6_f5_1267 ),
    .I1(\controldeusuario/mux30_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux30_4_f6_1260 )
  );
  MUXF7   \controldeusuario/mux30_2_f7  (
    .I0(\controldeusuario/mux30_4_f6_1260 ),
    .I1(\controldeusuario/mux30_3_f6_1258 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_14_2_489 ),
    .I2(\controldeusuario/cambiosneg_15_2_506 ),
    .O(\controldeusuario/mux26_5_1191 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_2_463 ),
    .I2(\controldeusuario/cambiosneg_13_2_472 ),
    .O(\controldeusuario/mux26_6_1194 )
  );
  MUXF5   \controldeusuario/mux26_4_f5  (
    .I0(\controldeusuario/mux26_6_1194 ),
    .I1(\controldeusuario/mux26_5_1191 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux26_4_f5_1189 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_2_429 ),
    .I2(\controldeusuario/cambiosneg_11_2_446 ),
    .O(\controldeusuario/mux26_61_1195 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_2_644 ),
    .I2(\controldeusuario/cambiosneg_9_2_661 ),
    .O(\controldeusuario/mux26_7_1198 )
  );
  MUXF5   \controldeusuario/mux26_5_f5  (
    .I0(\controldeusuario/mux26_7_1198 ),
    .I1(\controldeusuario/mux26_61_1195 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux26_5_f5_1192 )
  );
  MUXF6   \controldeusuario/mux26_3_f6  (
    .I0(\controldeusuario/mux26_5_f5_1192 ),
    .I1(\controldeusuario/mux26_4_f5_1189 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux26_3_f6_1188 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_2_608 ),
    .I2(\controldeusuario/cambiosneg_7_2_627 ),
    .O(\controldeusuario/mux26_62_1196 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_2_574 ),
    .I2(\controldeusuario/cambiosneg_5_2_591 ),
    .O(\controldeusuario/mux26_71_1199 )
  );
  MUXF5   \controldeusuario/mux26_5_f5_0  (
    .I0(\controldeusuario/mux26_71_1199 ),
    .I1(\controldeusuario/mux26_62_1196 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux26_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_2_540 ),
    .I2(\controldeusuario/cambiosneg_3_2_557 ),
    .O(\controldeusuario/mux26_72_1200 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux26_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_2_412 ),
    .I2(\controldeusuario/cambiosneg_1_2_523 ),
    .O(\controldeusuario/mux26_8_1201 )
  );
  MUXF5   \controldeusuario/mux26_6_f5  (
    .I0(\controldeusuario/mux26_8_1201 ),
    .I1(\controldeusuario/mux26_72_1200 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux26_6_f5_1197 )
  );
  MUXF6   \controldeusuario/mux26_4_f6  (
    .I0(\controldeusuario/mux26_6_f5_1197 ),
    .I1(\controldeusuario/mux26_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux26_4_f6_1190 )
  );
  MUXF7   \controldeusuario/mux26_2_f7  (
    .I0(\controldeusuario/mux26_4_f6_1190 ),
    .I1(\controldeusuario/mux26_3_f6_1188 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_14_1_488 ),
    .I2(\controldeusuario/cambiosneg_15_1_505 ),
    .O(\controldeusuario/mux25_5_1177 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_1_462 ),
    .I2(\controldeusuario/cambiosneg_13_1_471 ),
    .O(\controldeusuario/mux25_6_1180 )
  );
  MUXF5   \controldeusuario/mux25_4_f5  (
    .I0(\controldeusuario/mux25_6_1180 ),
    .I1(\controldeusuario/mux25_5_1177 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux25_4_f5_1175 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_1_428 ),
    .I2(\controldeusuario/cambiosneg_11_1_445 ),
    .O(\controldeusuario/mux25_61_1181 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_1_643 ),
    .I2(\controldeusuario/cambiosneg_9_1_660 ),
    .O(\controldeusuario/mux25_7_1184 )
  );
  MUXF5   \controldeusuario/mux25_5_f5  (
    .I0(\controldeusuario/mux25_7_1184 ),
    .I1(\controldeusuario/mux25_61_1181 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux25_5_f5_1178 )
  );
  MUXF6   \controldeusuario/mux25_3_f6  (
    .I0(\controldeusuario/mux25_5_f5_1178 ),
    .I1(\controldeusuario/mux25_4_f5_1175 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux25_3_f6_1174 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_1_607 ),
    .I2(\controldeusuario/cambiosneg_7_1_626 ),
    .O(\controldeusuario/mux25_62_1182 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_1_573 ),
    .I2(\controldeusuario/cambiosneg_5_1_590 ),
    .O(\controldeusuario/mux25_71_1185 )
  );
  MUXF5   \controldeusuario/mux25_5_f5_0  (
    .I0(\controldeusuario/mux25_71_1185 ),
    .I1(\controldeusuario/mux25_62_1182 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux25_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_1_539 ),
    .I2(\controldeusuario/cambiosneg_3_1_556 ),
    .O(\controldeusuario/mux25_72_1186 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux25_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_1_411 ),
    .I2(\controldeusuario/cambiosneg_1_1_522 ),
    .O(\controldeusuario/mux25_8_1187 )
  );
  MUXF5   \controldeusuario/mux25_6_f5  (
    .I0(\controldeusuario/mux25_8_1187 ),
    .I1(\controldeusuario/mux25_72_1186 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux25_6_f5_1183 )
  );
  MUXF6   \controldeusuario/mux25_4_f6  (
    .I0(\controldeusuario/mux25_6_f5_1183 ),
    .I1(\controldeusuario/mux25_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux25_4_f6_1176 )
  );
  MUXF7   \controldeusuario/mux25_2_f7  (
    .I0(\controldeusuario/mux25_4_f6_1176 ),
    .I1(\controldeusuario/mux25_3_f6_1174 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_14_3_490 ),
    .I2(\controldeusuario/cambiosneg_15_3_507 ),
    .O(\controldeusuario/mux27_5_1205 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_3_464 ),
    .I2(\controldeusuario/cambiosneg_13_3_473 ),
    .O(\controldeusuario/mux27_6_1208 )
  );
  MUXF5   \controldeusuario/mux27_4_f5  (
    .I0(\controldeusuario/mux27_6_1208 ),
    .I1(\controldeusuario/mux27_5_1205 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux27_4_f5_1203 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_3_430 ),
    .I2(\controldeusuario/cambiosneg_11_3_447 ),
    .O(\controldeusuario/mux27_61_1209 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_3_645 ),
    .I2(\controldeusuario/cambiosneg_9_3_662 ),
    .O(\controldeusuario/mux27_7_1212 )
  );
  MUXF5   \controldeusuario/mux27_5_f5  (
    .I0(\controldeusuario/mux27_7_1212 ),
    .I1(\controldeusuario/mux27_61_1209 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux27_5_f5_1206 )
  );
  MUXF6   \controldeusuario/mux27_3_f6  (
    .I0(\controldeusuario/mux27_5_f5_1206 ),
    .I1(\controldeusuario/mux27_4_f5_1203 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux27_3_f6_1202 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_3_609 ),
    .I2(\controldeusuario/cambiosneg_7_3_628 ),
    .O(\controldeusuario/mux27_62_1210 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_3_575 ),
    .I2(\controldeusuario/cambiosneg_5_3_592 ),
    .O(\controldeusuario/mux27_71_1213 )
  );
  MUXF5   \controldeusuario/mux27_5_f5_0  (
    .I0(\controldeusuario/mux27_71_1213 ),
    .I1(\controldeusuario/mux27_62_1210 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux27_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_3_541 ),
    .I2(\controldeusuario/cambiosneg_3_3_558 ),
    .O(\controldeusuario/mux27_72_1214 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux27_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_3_413 ),
    .I2(\controldeusuario/cambiosneg_1_3_524 ),
    .O(\controldeusuario/mux27_8_1215 )
  );
  MUXF5   \controldeusuario/mux27_6_f5  (
    .I0(\controldeusuario/mux27_8_1215 ),
    .I1(\controldeusuario/mux27_72_1214 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux27_6_f5_1211 )
  );
  MUXF6   \controldeusuario/mux27_4_f6  (
    .I0(\controldeusuario/mux27_6_f5_1211 ),
    .I1(\controldeusuario/mux27_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux27_4_f6_1204 )
  );
  MUXF7   \controldeusuario/mux27_2_f7  (
    .I0(\controldeusuario/mux27_4_f6_1204 ),
    .I1(\controldeusuario/mux27_3_f6_1202 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux23_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiospos_14_7_760 ),
    .I2(\controldeusuario/cambiospos_15_7_777 ),
    .O(\controldeusuario/mux23_5_1149 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux23_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiospos_12_7_734 ),
    .I2(\controldeusuario/cambiospos_13_7_743 ),
    .O(\controldeusuario/mux23_6_1152 )
  );
  MUXF5   \controldeusuario/mux23_4_f5  (
    .I0(\controldeusuario/mux23_6_1152 ),
    .I1(\controldeusuario/mux23_5_1149 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux23_4_f5_1147 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux23_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiospos_10_7_700 ),
    .I2(\controldeusuario/cambiospos_11_7_717 ),
    .O(\controldeusuario/mux23_61_1153 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux23_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiospos_8_7_916 ),
    .I2(\controldeusuario/cambiospos_9_7_933 ),
    .O(\controldeusuario/mux23_7_1156 )
  );
  MUXF5   \controldeusuario/mux23_5_f5  (
    .I0(\controldeusuario/mux23_7_1156 ),
    .I1(\controldeusuario/mux23_61_1153 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux23_5_f5_1150 )
  );
  MUXF6   \controldeusuario/mux23_3_f6  (
    .I0(\controldeusuario/mux23_5_f5_1150 ),
    .I1(\controldeusuario/mux23_4_f5_1147 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux23_3_f6_1146 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux23_62  (
    .I0(\controldeusuario/cambiospos_7_7_899 ),
    .I1(\controldeusuario/cambiospos_6_7_880 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux23_62_1154 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux23_71  (
    .I0(\controldeusuario/cambiospos_5_7_863 ),
    .I1(\controldeusuario/cambiospos_4_7_846 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux23_71_1157 )
  );
  MUXF5   \controldeusuario/mux23_5_f5_0  (
    .I0(\controldeusuario/mux23_71_1157 ),
    .I1(\controldeusuario/mux23_62_1154 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux23_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux23_72  (
    .I0(\controldeusuario/cambiospos_3_7_829 ),
    .I1(\controldeusuario/cambiospos_2_7_812 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux23_72_1158 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux23_8  (
    .I0(\controldeusuario/cambiospos_1_7_794 ),
    .I1(\controldeusuario/cambiospos_0_7_683 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux23_8_1159 )
  );
  MUXF5   \controldeusuario/mux23_6_f5  (
    .I0(\controldeusuario/mux23_8_1159 ),
    .I1(\controldeusuario/mux23_72_1158 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux23_6_f5_1155 )
  );
  MUXF6   \controldeusuario/mux23_4_f6  (
    .I0(\controldeusuario/mux23_6_f5_1155 ),
    .I1(\controldeusuario/mux23_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux23_4_f6_1148 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_5  (
    .I0(\controldeusuario/cambiospos_15_6_776 ),
    .I1(\controldeusuario/cambiospos_14_6_759 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_5_1135 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_6  (
    .I0(\controldeusuario/cambiospos_13_6_742 ),
    .I1(\controldeusuario/cambiospos_12_6_733 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_6_1138 )
  );
  MUXF5   \controldeusuario/mux22_4_f5  (
    .I0(\controldeusuario/mux22_6_1138 ),
    .I1(\controldeusuario/mux22_5_1135 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux22_4_f5_1133 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_61  (
    .I0(\controldeusuario/cambiospos_11_6_716 ),
    .I1(\controldeusuario/cambiospos_10_6_699 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_61_1139 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_7  (
    .I0(\controldeusuario/cambiospos_9_6_932 ),
    .I1(\controldeusuario/cambiospos_8_6_915 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_7_1142 )
  );
  MUXF5   \controldeusuario/mux22_5_f5  (
    .I0(\controldeusuario/mux22_7_1142 ),
    .I1(\controldeusuario/mux22_61_1139 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux22_5_f5_1136 )
  );
  MUXF6   \controldeusuario/mux22_3_f6  (
    .I0(\controldeusuario/mux22_5_f5_1136 ),
    .I1(\controldeusuario/mux22_4_f5_1133 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux22_3_f6_1132 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_62  (
    .I0(\controldeusuario/cambiospos_7_6_898 ),
    .I1(\controldeusuario/cambiospos_6_6_879 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_62_1140 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_71  (
    .I0(\controldeusuario/cambiospos_5_6_862 ),
    .I1(\controldeusuario/cambiospos_4_6_845 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_71_1143 )
  );
  MUXF5   \controldeusuario/mux22_5_f5_0  (
    .I0(\controldeusuario/mux22_71_1143 ),
    .I1(\controldeusuario/mux22_62_1140 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux22_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_72  (
    .I0(\controldeusuario/cambiospos_3_6_828 ),
    .I1(\controldeusuario/cambiospos_2_6_811 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_72_1144 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux22_8  (
    .I0(\controldeusuario/cambiospos_1_6_793 ),
    .I1(\controldeusuario/cambiospos_0_6_682 ),
    .I2(\controldeusuario/puntero2 [0]),
    .O(\controldeusuario/mux22_8_1145 )
  );
  MUXF5   \controldeusuario/mux22_6_f5  (
    .I0(\controldeusuario/mux22_8_1145 ),
    .I1(\controldeusuario/mux22_72_1144 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux22_6_f5_1141 )
  );
  MUXF6   \controldeusuario/mux22_4_f6  (
    .I0(\controldeusuario/mux22_6_f5_1141 ),
    .I1(\controldeusuario/mux22_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux22_4_f6_1134 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_5  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_14_0_487 ),
    .I2(\controldeusuario/cambiosneg_15_0_504 ),
    .O(\controldeusuario/mux24_5_1163 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_6  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_12_0_461 ),
    .I2(\controldeusuario/cambiosneg_13_0_470 ),
    .O(\controldeusuario/mux24_6_1166 )
  );
  MUXF5   \controldeusuario/mux24_4_f5  (
    .I0(\controldeusuario/mux24_6_1166 ),
    .I1(\controldeusuario/mux24_5_1163 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux24_4_f5_1161 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_61  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_10_0_427 ),
    .I2(\controldeusuario/cambiosneg_11_0_444 ),
    .O(\controldeusuario/mux24_61_1167 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_7  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_8_0_642 ),
    .I2(\controldeusuario/cambiosneg_9_0_659 ),
    .O(\controldeusuario/mux24_7_1170 )
  );
  MUXF5   \controldeusuario/mux24_5_f5  (
    .I0(\controldeusuario/mux24_7_1170 ),
    .I1(\controldeusuario/mux24_61_1167 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux24_5_f5_1164 )
  );
  MUXF6   \controldeusuario/mux24_3_f6  (
    .I0(\controldeusuario/mux24_5_f5_1164 ),
    .I1(\controldeusuario/mux24_4_f5_1161 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux24_3_f6_1160 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_62  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_6_0_606 ),
    .I2(\controldeusuario/cambiosneg_7_0_625 ),
    .O(\controldeusuario/mux24_62_1168 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_71  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_4_0_572 ),
    .I2(\controldeusuario/cambiosneg_5_0_589 ),
    .O(\controldeusuario/mux24_71_1171 )
  );
  MUXF5   \controldeusuario/mux24_5_f5_0  (
    .I0(\controldeusuario/mux24_71_1171 ),
    .I1(\controldeusuario/mux24_62_1168 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux24_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_72  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_2_0_538 ),
    .I2(\controldeusuario/cambiosneg_3_0_555 ),
    .O(\controldeusuario/mux24_72_1172 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux24_8  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/cambiosneg_0_0_410 ),
    .I2(\controldeusuario/cambiosneg_1_0_521 ),
    .O(\controldeusuario/mux24_8_1173 )
  );
  MUXF5   \controldeusuario/mux24_6_f5  (
    .I0(\controldeusuario/mux24_8_1173 ),
    .I1(\controldeusuario/mux24_72_1172 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux24_6_f5_1169 )
  );
  MUXF6   \controldeusuario/mux24_4_f6  (
    .I0(\controldeusuario/mux24_6_f5_1169 ),
    .I1(\controldeusuario/mux24_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux24_4_f6_1162 )
  );
  MUXF7   \controldeusuario/mux24_2_f7  (
    .I0(\controldeusuario/mux24_4_f6_1162 ),
    .I1(\controldeusuario/mux24_3_f6_1160 ),
    .S(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/_COND_7 [0])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_5  (
    .I0(\controldeusuario/cambiospos_15_5_775 ),
    .I1(\controldeusuario/cambiospos_14_5_758 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux21_5_1121 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_6  (
    .I0(\controldeusuario/cambiospos_13_5_741 ),
    .I1(\controldeusuario/cambiospos_12_5_732 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux21_6_1124 )
  );
  MUXF5   \controldeusuario/mux21_4_f5  (
    .I0(\controldeusuario/mux21_6_1124 ),
    .I1(\controldeusuario/mux21_5_1121 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux21_4_f5_1119 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_61  (
    .I0(\controldeusuario/cambiospos_11_5_715 ),
    .I1(\controldeusuario/cambiospos_10_5_698 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux21_61_1125 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_7  (
    .I0(\controldeusuario/cambiospos_9_5_931 ),
    .I1(\controldeusuario/cambiospos_8_5_914 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux21_7_1128 )
  );
  MUXF5   \controldeusuario/mux21_5_f5  (
    .I0(\controldeusuario/mux21_7_1128 ),
    .I1(\controldeusuario/mux21_61_1125 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux21_5_f5_1122 )
  );
  MUXF6   \controldeusuario/mux21_3_f6  (
    .I0(\controldeusuario/mux21_5_f5_1122 ),
    .I1(\controldeusuario/mux21_4_f5_1119 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux21_3_f6_1118 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_62  (
    .I0(\controldeusuario/cambiospos_7_5_897 ),
    .I1(\controldeusuario/cambiospos_6_5_878 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux21_62_1126 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_71  (
    .I0(\controldeusuario/cambiospos_5_5_861 ),
    .I1(\controldeusuario/cambiospos_4_5_844 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux21_71_1129 )
  );
  MUXF5   \controldeusuario/mux21_5_f5_0  (
    .I0(\controldeusuario/mux21_71_1129 ),
    .I1(\controldeusuario/mux21_62_1126 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux21_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_72  (
    .I0(\controldeusuario/cambiospos_3_5_827 ),
    .I1(\controldeusuario/cambiospos_2_5_810 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux21_72_1130 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux21_8  (
    .I0(\controldeusuario/cambiospos_1_5_792 ),
    .I1(\controldeusuario/cambiospos_0_5_681 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux21_8_1131 )
  );
  MUXF5   \controldeusuario/mux21_6_f5  (
    .I0(\controldeusuario/mux21_8_1131 ),
    .I1(\controldeusuario/mux21_72_1130 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux21_6_f5_1127 )
  );
  MUXF6   \controldeusuario/mux21_4_f6  (
    .I0(\controldeusuario/mux21_6_f5_1127 ),
    .I1(\controldeusuario/mux21_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux21_4_f6_1120 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_5  (
    .I0(\controldeusuario/cambiospos_15_4_774 ),
    .I1(\controldeusuario/cambiospos_14_4_757 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux20_5_1107 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_6  (
    .I0(\controldeusuario/cambiospos_13_4_740 ),
    .I1(\controldeusuario/cambiospos_12_4_731 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux20_6_1110 )
  );
  MUXF5   \controldeusuario/mux20_4_f5  (
    .I0(\controldeusuario/mux20_6_1110 ),
    .I1(\controldeusuario/mux20_5_1107 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux20_4_f5_1105 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_61  (
    .I0(\controldeusuario/cambiospos_11_4_714 ),
    .I1(\controldeusuario/cambiospos_10_4_697 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux20_61_1111 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_7  (
    .I0(\controldeusuario/cambiospos_9_4_930 ),
    .I1(\controldeusuario/cambiospos_8_4_913 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux20_7_1114 )
  );
  MUXF5   \controldeusuario/mux20_5_f5  (
    .I0(\controldeusuario/mux20_7_1114 ),
    .I1(\controldeusuario/mux20_61_1111 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux20_5_f5_1108 )
  );
  MUXF6   \controldeusuario/mux20_3_f6  (
    .I0(\controldeusuario/mux20_5_f5_1108 ),
    .I1(\controldeusuario/mux20_4_f5_1105 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux20_3_f6_1104 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_62  (
    .I0(\controldeusuario/cambiospos_7_4_896 ),
    .I1(\controldeusuario/cambiospos_6_4_877 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux20_62_1112 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_71  (
    .I0(\controldeusuario/cambiospos_5_4_860 ),
    .I1(\controldeusuario/cambiospos_4_4_843 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux20_71_1115 )
  );
  MUXF5   \controldeusuario/mux20_5_f5_0  (
    .I0(\controldeusuario/mux20_71_1115 ),
    .I1(\controldeusuario/mux20_62_1112 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux20_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_72  (
    .I0(\controldeusuario/cambiospos_3_4_826 ),
    .I1(\controldeusuario/cambiospos_2_4_809 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux20_72_1116 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux20_8  (
    .I0(\controldeusuario/cambiospos_1_4_791 ),
    .I1(\controldeusuario/cambiospos_0_4_680 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux20_8_1117 )
  );
  MUXF5   \controldeusuario/mux20_6_f5  (
    .I0(\controldeusuario/mux20_8_1117 ),
    .I1(\controldeusuario/mux20_72_1116 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux20_6_f5_1113 )
  );
  MUXF6   \controldeusuario/mux20_4_f6  (
    .I0(\controldeusuario/mux20_6_f5_1113 ),
    .I1(\controldeusuario/mux20_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux20_4_f6_1106 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_5  (
    .I0(\controldeusuario/cambiospos_15_2_772 ),
    .I1(\controldeusuario/cambiospos_14_2_755 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux18_5_1065 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_6  (
    .I0(\controldeusuario/cambiospos_13_2_738 ),
    .I1(\controldeusuario/cambiospos_12_2_729 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux18_6_1068 )
  );
  MUXF5   \controldeusuario/mux18_4_f5  (
    .I0(\controldeusuario/mux18_6_1068 ),
    .I1(\controldeusuario/mux18_5_1065 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux18_4_f5_1063 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_61  (
    .I0(\controldeusuario/cambiospos_11_2_712 ),
    .I1(\controldeusuario/cambiospos_10_2_695 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux18_61_1069 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_7  (
    .I0(\controldeusuario/cambiospos_9_2_928 ),
    .I1(\controldeusuario/cambiospos_8_2_911 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux18_7_1072 )
  );
  MUXF5   \controldeusuario/mux18_5_f5  (
    .I0(\controldeusuario/mux18_7_1072 ),
    .I1(\controldeusuario/mux18_61_1069 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux18_5_f5_1066 )
  );
  MUXF6   \controldeusuario/mux18_3_f6  (
    .I0(\controldeusuario/mux18_5_f5_1066 ),
    .I1(\controldeusuario/mux18_4_f5_1063 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux18_3_f6_1062 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_62  (
    .I0(\controldeusuario/cambiospos_7_2_894 ),
    .I1(\controldeusuario/cambiospos_6_2_875 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux18_62_1070 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_71  (
    .I0(\controldeusuario/cambiospos_5_2_858 ),
    .I1(\controldeusuario/cambiospos_4_2_841 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux18_71_1073 )
  );
  MUXF5   \controldeusuario/mux18_5_f5_0  (
    .I0(\controldeusuario/mux18_71_1073 ),
    .I1(\controldeusuario/mux18_62_1070 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux18_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_72  (
    .I0(\controldeusuario/cambiospos_3_2_824 ),
    .I1(\controldeusuario/cambiospos_2_2_807 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux18_72_1074 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux18_8  (
    .I0(\controldeusuario/cambiospos_1_2_789 ),
    .I1(\controldeusuario/cambiospos_0_2_678 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux18_8_1075 )
  );
  MUXF5   \controldeusuario/mux18_6_f5  (
    .I0(\controldeusuario/mux18_8_1075 ),
    .I1(\controldeusuario/mux18_72_1074 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux18_6_f5_1071 )
  );
  MUXF6   \controldeusuario/mux18_4_f6  (
    .I0(\controldeusuario/mux18_6_f5_1071 ),
    .I1(\controldeusuario/mux18_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux18_4_f6_1064 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_5  (
    .I0(\controldeusuario/cambiospos_15_1_771 ),
    .I1(\controldeusuario/cambiospos_14_1_754 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux17_5_1051 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_6  (
    .I0(\controldeusuario/cambiospos_13_1_737 ),
    .I1(\controldeusuario/cambiospos_12_1_728 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux17_6_1054 )
  );
  MUXF5   \controldeusuario/mux17_4_f5  (
    .I0(\controldeusuario/mux17_6_1054 ),
    .I1(\controldeusuario/mux17_5_1051 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux17_4_f5_1049 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_61  (
    .I0(\controldeusuario/cambiospos_11_1_711 ),
    .I1(\controldeusuario/cambiospos_10_1_694 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux17_61_1055 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_7  (
    .I0(\controldeusuario/cambiospos_9_1_927 ),
    .I1(\controldeusuario/cambiospos_8_1_910 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux17_7_1058 )
  );
  MUXF5   \controldeusuario/mux17_5_f5  (
    .I0(\controldeusuario/mux17_7_1058 ),
    .I1(\controldeusuario/mux17_61_1055 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux17_5_f5_1052 )
  );
  MUXF6   \controldeusuario/mux17_3_f6  (
    .I0(\controldeusuario/mux17_5_f5_1052 ),
    .I1(\controldeusuario/mux17_4_f5_1049 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux17_3_f6_1048 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_62  (
    .I0(\controldeusuario/cambiospos_7_1_893 ),
    .I1(\controldeusuario/cambiospos_6_1_874 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux17_62_1056 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_71  (
    .I0(\controldeusuario/cambiospos_5_1_857 ),
    .I1(\controldeusuario/cambiospos_4_1_840 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux17_71_1059 )
  );
  MUXF5   \controldeusuario/mux17_5_f5_0  (
    .I0(\controldeusuario/mux17_71_1059 ),
    .I1(\controldeusuario/mux17_62_1056 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux17_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_72  (
    .I0(\controldeusuario/cambiospos_3_1_823 ),
    .I1(\controldeusuario/cambiospos_2_1_806 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux17_72_1060 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux17_8  (
    .I0(\controldeusuario/cambiospos_1_1_788 ),
    .I1(\controldeusuario/cambiospos_0_1_677 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux17_8_1061 )
  );
  MUXF5   \controldeusuario/mux17_6_f5  (
    .I0(\controldeusuario/mux17_8_1061 ),
    .I1(\controldeusuario/mux17_72_1060 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux17_6_f5_1057 )
  );
  MUXF6   \controldeusuario/mux17_4_f6  (
    .I0(\controldeusuario/mux17_6_f5_1057 ),
    .I1(\controldeusuario/mux17_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux17_4_f6_1050 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_5  (
    .I0(\controldeusuario/cambiospos_15_3_773 ),
    .I1(\controldeusuario/cambiospos_14_3_756 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux19_5_1079 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_6  (
    .I0(\controldeusuario/cambiospos_13_3_739 ),
    .I1(\controldeusuario/cambiospos_12_3_730 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux19_6_1082 )
  );
  MUXF5   \controldeusuario/mux19_4_f5  (
    .I0(\controldeusuario/mux19_6_1082 ),
    .I1(\controldeusuario/mux19_5_1079 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux19_4_f5_1077 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_61  (
    .I0(\controldeusuario/cambiospos_11_3_713 ),
    .I1(\controldeusuario/cambiospos_10_3_696 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux19_61_1083 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_7  (
    .I0(\controldeusuario/cambiospos_9_3_929 ),
    .I1(\controldeusuario/cambiospos_8_3_912 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux19_7_1086 )
  );
  MUXF5   \controldeusuario/mux19_5_f5  (
    .I0(\controldeusuario/mux19_7_1086 ),
    .I1(\controldeusuario/mux19_61_1083 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux19_5_f5_1080 )
  );
  MUXF6   \controldeusuario/mux19_3_f6  (
    .I0(\controldeusuario/mux19_5_f5_1080 ),
    .I1(\controldeusuario/mux19_4_f5_1077 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux19_3_f6_1076 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_62  (
    .I0(\controldeusuario/cambiospos_7_3_895 ),
    .I1(\controldeusuario/cambiospos_6_3_876 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux19_62_1084 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_71  (
    .I0(\controldeusuario/cambiospos_5_3_859 ),
    .I1(\controldeusuario/cambiospos_4_3_842 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux19_71_1087 )
  );
  MUXF5   \controldeusuario/mux19_5_f5_0  (
    .I0(\controldeusuario/mux19_71_1087 ),
    .I1(\controldeusuario/mux19_62_1084 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux19_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_72  (
    .I0(\controldeusuario/cambiospos_3_3_825 ),
    .I1(\controldeusuario/cambiospos_2_3_808 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux19_72_1088 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux19_8  (
    .I0(\controldeusuario/cambiospos_1_3_790 ),
    .I1(\controldeusuario/cambiospos_0_3_679 ),
    .I2(\controldeusuario/puntero2_0_2_1400 ),
    .O(\controldeusuario/mux19_8_1089 )
  );
  MUXF5   \controldeusuario/mux19_6_f5  (
    .I0(\controldeusuario/mux19_8_1089 ),
    .I1(\controldeusuario/mux19_72_1088 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux19_6_f5_1085 )
  );
  MUXF6   \controldeusuario/mux19_4_f6  (
    .I0(\controldeusuario/mux19_6_f5_1085 ),
    .I1(\controldeusuario/mux19_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux19_4_f6_1078 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_5  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_14_7_760 ),
    .I2(\controldeusuario/cambiospos_15_7_777 ),
    .O(\controldeusuario/mux15_5_1023 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_6  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_12_7_734 ),
    .I2(\controldeusuario/cambiospos_13_7_743 ),
    .O(\controldeusuario/mux15_6_1026 )
  );
  MUXF5   \controldeusuario/mux15_4_f5  (
    .I0(\controldeusuario/mux15_6_1026 ),
    .I1(\controldeusuario/mux15_5_1023 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux15_4_f5_1021 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_61  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_10_7_700 ),
    .I2(\controldeusuario/cambiospos_11_7_717 ),
    .O(\controldeusuario/mux15_61_1027 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_7  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_8_7_916 ),
    .I2(\controldeusuario/cambiospos_9_7_933 ),
    .O(\controldeusuario/mux15_7_1030 )
  );
  MUXF5   \controldeusuario/mux15_5_f5  (
    .I0(\controldeusuario/mux15_7_1030 ),
    .I1(\controldeusuario/mux15_61_1027 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux15_5_f5_1024 )
  );
  MUXF6   \controldeusuario/mux15_3_f6  (
    .I0(\controldeusuario/mux15_5_f5_1024 ),
    .I1(\controldeusuario/mux15_4_f5_1021 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux15_3_f6_1020 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_62  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_6_7_880 ),
    .I2(\controldeusuario/cambiospos_7_7_899 ),
    .O(\controldeusuario/mux15_62_1028 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_71  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_4_7_846 ),
    .I2(\controldeusuario/cambiospos_5_7_863 ),
    .O(\controldeusuario/mux15_71_1031 )
  );
  MUXF5   \controldeusuario/mux15_5_f5_0  (
    .I0(\controldeusuario/mux15_71_1031 ),
    .I1(\controldeusuario/mux15_62_1028 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux15_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_72  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_2_7_812 ),
    .I2(\controldeusuario/cambiospos_3_7_829 ),
    .O(\controldeusuario/mux15_72_1032 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux15_8  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiospos_0_7_683 ),
    .I2(\controldeusuario/cambiospos_1_7_794 ),
    .O(\controldeusuario/mux15_8_1033 )
  );
  MUXF5   \controldeusuario/mux15_6_f5  (
    .I0(\controldeusuario/mux15_8_1033 ),
    .I1(\controldeusuario/mux15_72_1032 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux15_6_f5_1029 )
  );
  MUXF6   \controldeusuario/mux15_4_f6  (
    .I0(\controldeusuario/mux15_6_f5_1029 ),
    .I1(\controldeusuario/mux15_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux15_4_f6_1022 )
  );
  MUXF7   \controldeusuario/mux15_2_f7  (
    .I0(\controldeusuario/mux15_4_f6_1022 ),
    .I1(\controldeusuario/mux15_3_f6_1020 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_lut [7])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_5  (
    .I0(\controldeusuario/cambiospos_15_6_776 ),
    .I1(\controldeusuario/cambiospos_14_6_759 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_5_1009 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_6  (
    .I0(\controldeusuario/cambiospos_13_6_742 ),
    .I1(\controldeusuario/cambiospos_12_6_733 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_6_1012 )
  );
  MUXF5   \controldeusuario/mux14_4_f5  (
    .I0(\controldeusuario/mux14_6_1012 ),
    .I1(\controldeusuario/mux14_5_1009 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux14_4_f5_1007 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_61  (
    .I0(\controldeusuario/cambiospos_11_6_716 ),
    .I1(\controldeusuario/cambiospos_10_6_699 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_61_1013 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_7  (
    .I0(\controldeusuario/cambiospos_9_6_932 ),
    .I1(\controldeusuario/cambiospos_8_6_915 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_7_1016 )
  );
  MUXF5   \controldeusuario/mux14_5_f5  (
    .I0(\controldeusuario/mux14_7_1016 ),
    .I1(\controldeusuario/mux14_61_1013 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux14_5_f5_1010 )
  );
  MUXF6   \controldeusuario/mux14_3_f6  (
    .I0(\controldeusuario/mux14_5_f5_1010 ),
    .I1(\controldeusuario/mux14_4_f5_1007 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux14_3_f6_1006 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_62  (
    .I0(\controldeusuario/cambiospos_7_6_898 ),
    .I1(\controldeusuario/cambiospos_6_6_879 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_62_1014 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_71  (
    .I0(\controldeusuario/cambiospos_5_6_862 ),
    .I1(\controldeusuario/cambiospos_4_6_845 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_71_1017 )
  );
  MUXF5   \controldeusuario/mux14_5_f5_0  (
    .I0(\controldeusuario/mux14_71_1017 ),
    .I1(\controldeusuario/mux14_62_1014 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux14_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_72  (
    .I0(\controldeusuario/cambiospos_3_6_828 ),
    .I1(\controldeusuario/cambiospos_2_6_811 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_72_1018 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux14_8  (
    .I0(\controldeusuario/cambiospos_1_6_793 ),
    .I1(\controldeusuario/cambiospos_0_6_682 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux14_8_1019 )
  );
  MUXF5   \controldeusuario/mux14_6_f5  (
    .I0(\controldeusuario/mux14_8_1019 ),
    .I1(\controldeusuario/mux14_72_1018 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux14_6_f5_1015 )
  );
  MUXF6   \controldeusuario/mux14_4_f6  (
    .I0(\controldeusuario/mux14_6_f5_1015 ),
    .I1(\controldeusuario/mux14_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux14_4_f6_1008 )
  );
  MUXF7   \controldeusuario/mux14_2_f7  (
    .I0(\controldeusuario/mux14_4_f6_1008 ),
    .I1(\controldeusuario/mux14_3_f6_1006 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_lut [6])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_5  (
    .I0(\controldeusuario/cambiospos_15_0_770 ),
    .I1(\controldeusuario/cambiospos_14_0_753 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux16_5_1037 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_6  (
    .I0(\controldeusuario/cambiospos_13_0_736 ),
    .I1(\controldeusuario/cambiospos_12_0_727 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux16_6_1040 )
  );
  MUXF5   \controldeusuario/mux16_4_f5  (
    .I0(\controldeusuario/mux16_6_1040 ),
    .I1(\controldeusuario/mux16_5_1037 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux16_4_f5_1035 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_61  (
    .I0(\controldeusuario/cambiospos_11_0_710 ),
    .I1(\controldeusuario/cambiospos_10_0_693 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux16_61_1041 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_7  (
    .I0(\controldeusuario/cambiospos_9_0_926 ),
    .I1(\controldeusuario/cambiospos_8_0_909 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux16_7_1044 )
  );
  MUXF5   \controldeusuario/mux16_5_f5  (
    .I0(\controldeusuario/mux16_7_1044 ),
    .I1(\controldeusuario/mux16_61_1041 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux16_5_f5_1038 )
  );
  MUXF6   \controldeusuario/mux16_3_f6  (
    .I0(\controldeusuario/mux16_5_f5_1038 ),
    .I1(\controldeusuario/mux16_4_f5_1035 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux16_3_f6_1034 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_62  (
    .I0(\controldeusuario/cambiospos_7_0_892 ),
    .I1(\controldeusuario/cambiospos_6_0_873 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux16_62_1042 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_71  (
    .I0(\controldeusuario/cambiospos_5_0_856 ),
    .I1(\controldeusuario/cambiospos_4_0_839 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux16_71_1045 )
  );
  MUXF5   \controldeusuario/mux16_5_f5_0  (
    .I0(\controldeusuario/mux16_71_1045 ),
    .I1(\controldeusuario/mux16_62_1042 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux16_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_72  (
    .I0(\controldeusuario/cambiospos_3_0_822 ),
    .I1(\controldeusuario/cambiospos_2_0_805 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux16_72_1046 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux16_8  (
    .I0(\controldeusuario/cambiospos_1_0_787 ),
    .I1(\controldeusuario/cambiospos_0_0_676 ),
    .I2(\controldeusuario/puntero2_0_1_1399 ),
    .O(\controldeusuario/mux16_8_1047 )
  );
  MUXF5   \controldeusuario/mux16_6_f5  (
    .I0(\controldeusuario/mux16_8_1047 ),
    .I1(\controldeusuario/mux16_72_1046 ),
    .S(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/mux16_6_f5_1043 )
  );
  MUXF6   \controldeusuario/mux16_4_f6  (
    .I0(\controldeusuario/mux16_6_f5_1043 ),
    .I1(\controldeusuario/mux16_5_f51 ),
    .S(\controldeusuario/puntero2 [2]),
    .O(\controldeusuario/mux16_4_f6_1036 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_5  (
    .I0(\controldeusuario/cambiospos_15_4_774 ),
    .I1(\controldeusuario/cambiospos_14_4_757 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_5_981 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_6  (
    .I0(\controldeusuario/cambiospos_13_4_740 ),
    .I1(\controldeusuario/cambiospos_12_4_731 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_6_984 )
  );
  MUXF5   \controldeusuario/mux12_4_f5  (
    .I0(\controldeusuario/mux12_6_984 ),
    .I1(\controldeusuario/mux12_5_981 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux12_4_f5_979 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_61  (
    .I0(\controldeusuario/cambiospos_11_4_714 ),
    .I1(\controldeusuario/cambiospos_10_4_697 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_61_985 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_7  (
    .I0(\controldeusuario/cambiospos_9_4_930 ),
    .I1(\controldeusuario/cambiospos_8_4_913 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_7_988 )
  );
  MUXF5   \controldeusuario/mux12_5_f5  (
    .I0(\controldeusuario/mux12_7_988 ),
    .I1(\controldeusuario/mux12_61_985 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux12_5_f5_982 )
  );
  MUXF6   \controldeusuario/mux12_3_f6  (
    .I0(\controldeusuario/mux12_5_f5_982 ),
    .I1(\controldeusuario/mux12_4_f5_979 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux12_3_f6_978 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_62  (
    .I0(\controldeusuario/cambiospos_7_4_896 ),
    .I1(\controldeusuario/cambiospos_6_4_877 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_62_986 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_71  (
    .I0(\controldeusuario/cambiospos_5_4_860 ),
    .I1(\controldeusuario/cambiospos_4_4_843 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_71_989 )
  );
  MUXF5   \controldeusuario/mux12_5_f5_0  (
    .I0(\controldeusuario/mux12_71_989 ),
    .I1(\controldeusuario/mux12_62_986 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux12_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_72  (
    .I0(\controldeusuario/cambiospos_3_4_826 ),
    .I1(\controldeusuario/cambiospos_2_4_809 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_72_990 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux12_8  (
    .I0(\controldeusuario/cambiospos_1_4_791 ),
    .I1(\controldeusuario/cambiospos_0_4_680 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux12_8_991 )
  );
  MUXF5   \controldeusuario/mux12_6_f5  (
    .I0(\controldeusuario/mux12_8_991 ),
    .I1(\controldeusuario/mux12_72_990 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux12_6_f5_987 )
  );
  MUXF6   \controldeusuario/mux12_4_f6  (
    .I0(\controldeusuario/mux12_6_f5_987 ),
    .I1(\controldeusuario/mux12_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux12_4_f6_980 )
  );
  MUXF7   \controldeusuario/mux12_2_f7  (
    .I0(\controldeusuario/mux12_4_f6_980 ),
    .I1(\controldeusuario/mux12_3_f6_978 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_lut [4])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_5  (
    .I0(\controldeusuario/cambiospos_15_3_773 ),
    .I1(\controldeusuario/cambiospos_14_3_756 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_5_967 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_6  (
    .I0(\controldeusuario/cambiospos_13_3_739 ),
    .I1(\controldeusuario/cambiospos_12_3_730 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_6_970 )
  );
  MUXF5   \controldeusuario/mux11_4_f5  (
    .I0(\controldeusuario/mux11_6_970 ),
    .I1(\controldeusuario/mux11_5_967 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux11_4_f5_965 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_61  (
    .I0(\controldeusuario/cambiospos_11_3_713 ),
    .I1(\controldeusuario/cambiospos_10_3_696 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_61_971 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_7  (
    .I0(\controldeusuario/cambiospos_9_3_929 ),
    .I1(\controldeusuario/cambiospos_8_3_912 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_7_974 )
  );
  MUXF5   \controldeusuario/mux11_5_f5  (
    .I0(\controldeusuario/mux11_7_974 ),
    .I1(\controldeusuario/mux11_61_971 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux11_5_f5_968 )
  );
  MUXF6   \controldeusuario/mux11_3_f6  (
    .I0(\controldeusuario/mux11_5_f5_968 ),
    .I1(\controldeusuario/mux11_4_f5_965 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux11_3_f6_964 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_62  (
    .I0(\controldeusuario/cambiospos_7_3_895 ),
    .I1(\controldeusuario/cambiospos_6_3_876 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_62_972 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_71  (
    .I0(\controldeusuario/cambiospos_5_3_859 ),
    .I1(\controldeusuario/cambiospos_4_3_842 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_71_975 )
  );
  MUXF5   \controldeusuario/mux11_5_f5_0  (
    .I0(\controldeusuario/mux11_71_975 ),
    .I1(\controldeusuario/mux11_62_972 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux11_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_72  (
    .I0(\controldeusuario/cambiospos_3_3_825 ),
    .I1(\controldeusuario/cambiospos_2_3_808 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_72_976 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux11_8  (
    .I0(\controldeusuario/cambiospos_1_3_790 ),
    .I1(\controldeusuario/cambiospos_0_3_679 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux11_8_977 )
  );
  MUXF5   \controldeusuario/mux11_6_f5  (
    .I0(\controldeusuario/mux11_8_977 ),
    .I1(\controldeusuario/mux11_72_976 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux11_6_f5_973 )
  );
  MUXF6   \controldeusuario/mux11_4_f6  (
    .I0(\controldeusuario/mux11_6_f5_973 ),
    .I1(\controldeusuario/mux11_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux11_4_f6_966 )
  );
  MUXF7   \controldeusuario/mux11_2_f7  (
    .I0(\controldeusuario/mux11_4_f6_966 ),
    .I1(\controldeusuario/mux11_3_f6_964 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_lut [3])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_5  (
    .I0(\controldeusuario/cambiospos_15_5_775 ),
    .I1(\controldeusuario/cambiospos_14_5_758 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_5_995 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_6  (
    .I0(\controldeusuario/cambiospos_13_5_741 ),
    .I1(\controldeusuario/cambiospos_12_5_732 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_6_998 )
  );
  MUXF5   \controldeusuario/mux13_4_f5  (
    .I0(\controldeusuario/mux13_6_998 ),
    .I1(\controldeusuario/mux13_5_995 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux13_4_f5_993 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_61  (
    .I0(\controldeusuario/cambiospos_11_5_715 ),
    .I1(\controldeusuario/cambiospos_10_5_698 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_61_999 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_7  (
    .I0(\controldeusuario/cambiospos_9_5_931 ),
    .I1(\controldeusuario/cambiospos_8_5_914 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_7_1002 )
  );
  MUXF5   \controldeusuario/mux13_5_f5  (
    .I0(\controldeusuario/mux13_7_1002 ),
    .I1(\controldeusuario/mux13_61_999 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux13_5_f5_996 )
  );
  MUXF6   \controldeusuario/mux13_3_f6  (
    .I0(\controldeusuario/mux13_5_f5_996 ),
    .I1(\controldeusuario/mux13_4_f5_993 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux13_3_f6_992 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_62  (
    .I0(\controldeusuario/cambiospos_7_5_897 ),
    .I1(\controldeusuario/cambiospos_6_5_878 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_62_1000 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_71  (
    .I0(\controldeusuario/cambiospos_5_5_861 ),
    .I1(\controldeusuario/cambiospos_4_5_844 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_71_1003 )
  );
  MUXF5   \controldeusuario/mux13_5_f5_0  (
    .I0(\controldeusuario/mux13_71_1003 ),
    .I1(\controldeusuario/mux13_62_1000 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux13_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_72  (
    .I0(\controldeusuario/cambiospos_3_5_827 ),
    .I1(\controldeusuario/cambiospos_2_5_810 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_72_1004 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux13_8  (
    .I0(\controldeusuario/cambiospos_1_5_792 ),
    .I1(\controldeusuario/cambiospos_0_5_681 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux13_8_1005 )
  );
  MUXF5   \controldeusuario/mux13_6_f5  (
    .I0(\controldeusuario/mux13_8_1005 ),
    .I1(\controldeusuario/mux13_72_1004 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux13_6_f5_1001 )
  );
  MUXF6   \controldeusuario/mux13_4_f6  (
    .I0(\controldeusuario/mux13_6_f5_1001 ),
    .I1(\controldeusuario/mux13_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux13_4_f6_994 )
  );
  MUXF7   \controldeusuario/mux13_2_f7  (
    .I0(\controldeusuario/mux13_4_f6_994 ),
    .I1(\controldeusuario/mux13_3_f6_992 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_lut [5])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_5  (
    .I0(\controldeusuario/cambiospos_15_2_772 ),
    .I1(\controldeusuario/cambiospos_14_2_755 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux10_5_953 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_6  (
    .I0(\controldeusuario/cambiospos_13_2_738 ),
    .I1(\controldeusuario/cambiospos_12_2_729 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux10_6_956 )
  );
  MUXF5   \controldeusuario/mux10_4_f5  (
    .I0(\controldeusuario/mux10_6_956 ),
    .I1(\controldeusuario/mux10_5_953 ),
    .S(\controldeusuario/puntero_1_2_1419 ),
    .O(\controldeusuario/mux10_4_f5_951 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_61  (
    .I0(\controldeusuario/cambiospos_11_2_712 ),
    .I1(\controldeusuario/cambiospos_10_2_695 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux10_61_957 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_7  (
    .I0(\controldeusuario/cambiospos_9_2_928 ),
    .I1(\controldeusuario/cambiospos_8_2_911 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux10_7_960 )
  );
  MUXF5   \controldeusuario/mux10_5_f5  (
    .I0(\controldeusuario/mux10_7_960 ),
    .I1(\controldeusuario/mux10_61_957 ),
    .S(\controldeusuario/puntero_1_2_1419 ),
    .O(\controldeusuario/mux10_5_f5_954 )
  );
  MUXF6   \controldeusuario/mux10_3_f6  (
    .I0(\controldeusuario/mux10_5_f5_954 ),
    .I1(\controldeusuario/mux10_4_f5_951 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux10_3_f6_950 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_62  (
    .I0(\controldeusuario/cambiospos_7_2_894 ),
    .I1(\controldeusuario/cambiospos_6_2_875 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux10_62_958 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_71  (
    .I0(\controldeusuario/cambiospos_5_2_858 ),
    .I1(\controldeusuario/cambiospos_4_2_841 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux10_71_961 )
  );
  MUXF5   \controldeusuario/mux10_5_f5_0  (
    .I0(\controldeusuario/mux10_71_961 ),
    .I1(\controldeusuario/mux10_62_958 ),
    .S(\controldeusuario/puntero_1_2_1419 ),
    .O(\controldeusuario/mux10_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_72  (
    .I0(\controldeusuario/cambiospos_3_2_824 ),
    .I1(\controldeusuario/cambiospos_2_2_807 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux10_72_962 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux10_8  (
    .I0(\controldeusuario/cambiospos_1_2_789 ),
    .I1(\controldeusuario/cambiospos_0_2_678 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux10_8_963 )
  );
  MUXF5   \controldeusuario/mux10_6_f5  (
    .I0(\controldeusuario/mux10_8_963 ),
    .I1(\controldeusuario/mux10_72_962 ),
    .S(\controldeusuario/puntero_1_2_1419 ),
    .O(\controldeusuario/mux10_6_f5_959 )
  );
  MUXF6   \controldeusuario/mux10_4_f6  (
    .I0(\controldeusuario/mux10_6_f5_959 ),
    .I1(\controldeusuario/mux10_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux10_4_f6_952 )
  );
  MUXF7   \controldeusuario/mux10_2_f7  (
    .I0(\controldeusuario/mux10_4_f6_952 ),
    .I1(\controldeusuario/mux10_3_f6_950 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_lut [2])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_5  (
    .I0(\controldeusuario/cambiospos_15_1_771 ),
    .I1(\controldeusuario/cambiospos_14_1_754 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux9_5_1373 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_6  (
    .I0(\controldeusuario/cambiospos_13_1_737 ),
    .I1(\controldeusuario/cambiospos_12_1_728 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux9_6_1376 )
  );
  MUXF5   \controldeusuario/mux9_4_f5  (
    .I0(\controldeusuario/mux9_6_1376 ),
    .I1(\controldeusuario/mux9_5_1373 ),
    .S(\controldeusuario/puntero_1_1_1418 ),
    .O(\controldeusuario/mux9_4_f5_1371 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_61  (
    .I0(\controldeusuario/cambiospos_11_1_711 ),
    .I1(\controldeusuario/cambiospos_10_1_694 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux9_61_1377 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_7  (
    .I0(\controldeusuario/cambiospos_9_1_927 ),
    .I1(\controldeusuario/cambiospos_8_1_910 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux9_7_1380 )
  );
  MUXF5   \controldeusuario/mux9_5_f5  (
    .I0(\controldeusuario/mux9_7_1380 ),
    .I1(\controldeusuario/mux9_61_1377 ),
    .S(\controldeusuario/puntero_1_1_1418 ),
    .O(\controldeusuario/mux9_5_f5_1374 )
  );
  MUXF6   \controldeusuario/mux9_3_f6  (
    .I0(\controldeusuario/mux9_5_f5_1374 ),
    .I1(\controldeusuario/mux9_4_f5_1371 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux9_3_f6_1370 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_62  (
    .I0(\controldeusuario/cambiospos_7_1_893 ),
    .I1(\controldeusuario/cambiospos_6_1_874 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux9_62_1378 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_71  (
    .I0(\controldeusuario/cambiospos_5_1_857 ),
    .I1(\controldeusuario/cambiospos_4_1_840 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux9_71_1381 )
  );
  MUXF5   \controldeusuario/mux9_5_f5_0  (
    .I0(\controldeusuario/mux9_71_1381 ),
    .I1(\controldeusuario/mux9_62_1378 ),
    .S(\controldeusuario/puntero_1_1_1418 ),
    .O(\controldeusuario/mux9_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_72  (
    .I0(\controldeusuario/cambiospos_3_1_823 ),
    .I1(\controldeusuario/cambiospos_2_1_806 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux9_72_1382 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux9_8  (
    .I0(\controldeusuario/cambiospos_1_1_788 ),
    .I1(\controldeusuario/cambiospos_0_1_677 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux9_8_1383 )
  );
  MUXF5   \controldeusuario/mux9_6_f5  (
    .I0(\controldeusuario/mux9_8_1383 ),
    .I1(\controldeusuario/mux9_72_1382 ),
    .S(\controldeusuario/puntero_1_1_1418 ),
    .O(\controldeusuario/mux9_6_f5_1379 )
  );
  MUXF6   \controldeusuario/mux9_4_f6  (
    .I0(\controldeusuario/mux9_6_f5_1379 ),
    .I1(\controldeusuario/mux9_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux9_4_f6_1372 )
  );
  MUXF7   \controldeusuario/mux9_2_f7  (
    .I0(\controldeusuario/mux9_4_f6_1372 ),
    .I1(\controldeusuario/mux9_3_f6_1370 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_lut [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_5  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_14_7_494 ),
    .I2(\controldeusuario/cambiosneg_15_7_511 ),
    .O(\controldeusuario/mux7_5_1345 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_6  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_12_7_468 ),
    .I2(\controldeusuario/cambiosneg_13_7_477 ),
    .O(\controldeusuario/mux7_6_1348 )
  );
  MUXF5   \controldeusuario/mux7_4_f5  (
    .I0(\controldeusuario/mux7_6_1348 ),
    .I1(\controldeusuario/mux7_5_1345 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux7_4_f5_1343 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_61  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_10_7_434 ),
    .I2(\controldeusuario/cambiosneg_11_7_451 ),
    .O(\controldeusuario/mux7_61_1349 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_7  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_8_7_649 ),
    .I2(\controldeusuario/cambiosneg_9_7_666 ),
    .O(\controldeusuario/mux7_7_1352 )
  );
  MUXF5   \controldeusuario/mux7_5_f5  (
    .I0(\controldeusuario/mux7_7_1352 ),
    .I1(\controldeusuario/mux7_61_1349 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux7_5_f5_1346 )
  );
  MUXF6   \controldeusuario/mux7_3_f6  (
    .I0(\controldeusuario/mux7_5_f5_1346 ),
    .I1(\controldeusuario/mux7_4_f5_1343 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux7_3_f6_1342 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_62  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_6_7_613 ),
    .I2(\controldeusuario/cambiosneg_7_7_632 ),
    .O(\controldeusuario/mux7_62_1350 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_71  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_4_7_579 ),
    .I2(\controldeusuario/cambiosneg_5_7_596 ),
    .O(\controldeusuario/mux7_71_1353 )
  );
  MUXF5   \controldeusuario/mux7_5_f5_0  (
    .I0(\controldeusuario/mux7_71_1353 ),
    .I1(\controldeusuario/mux7_62_1350 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux7_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_72  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_2_7_545 ),
    .I2(\controldeusuario/cambiosneg_3_7_562 ),
    .O(\controldeusuario/mux7_72_1354 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \controldeusuario/mux7_8  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/cambiosneg_0_7_417 ),
    .I2(\controldeusuario/cambiosneg_1_7_528 ),
    .O(\controldeusuario/mux7_8_1355 )
  );
  MUXF5   \controldeusuario/mux7_6_f5  (
    .I0(\controldeusuario/mux7_8_1355 ),
    .I1(\controldeusuario/mux7_72_1354 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux7_6_f5_1351 )
  );
  MUXF6   \controldeusuario/mux7_4_f6  (
    .I0(\controldeusuario/mux7_6_f5_1351 ),
    .I1(\controldeusuario/mux7_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux7_4_f6_1344 )
  );
  MUXF7   \controldeusuario/mux7_2_f7  (
    .I0(\controldeusuario/mux7_4_f6_1344 ),
    .I1(\controldeusuario/mux7_3_f6_1342 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_lut [7])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_5  (
    .I0(\controldeusuario/cambiosneg_15_6_510 ),
    .I1(\controldeusuario/cambiosneg_14_6_493 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_5_1331 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_6  (
    .I0(\controldeusuario/cambiosneg_13_6_476 ),
    .I1(\controldeusuario/cambiosneg_12_6_467 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_6_1334 )
  );
  MUXF5   \controldeusuario/mux6_4_f5  (
    .I0(\controldeusuario/mux6_6_1334 ),
    .I1(\controldeusuario/mux6_5_1331 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux6_4_f5_1329 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_61  (
    .I0(\controldeusuario/cambiosneg_11_6_450 ),
    .I1(\controldeusuario/cambiosneg_10_6_433 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_61_1335 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_7  (
    .I0(\controldeusuario/cambiosneg_9_6_665 ),
    .I1(\controldeusuario/cambiosneg_8_6_648 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_7_1338 )
  );
  MUXF5   \controldeusuario/mux6_5_f5  (
    .I0(\controldeusuario/mux6_7_1338 ),
    .I1(\controldeusuario/mux6_61_1335 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux6_5_f5_1332 )
  );
  MUXF6   \controldeusuario/mux6_3_f6  (
    .I0(\controldeusuario/mux6_5_f5_1332 ),
    .I1(\controldeusuario/mux6_4_f5_1329 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux6_3_f6_1328 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_62  (
    .I0(\controldeusuario/cambiosneg_7_6_631 ),
    .I1(\controldeusuario/cambiosneg_6_6_612 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_62_1336 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_71  (
    .I0(\controldeusuario/cambiosneg_5_6_595 ),
    .I1(\controldeusuario/cambiosneg_4_6_578 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_71_1339 )
  );
  MUXF5   \controldeusuario/mux6_5_f5_0  (
    .I0(\controldeusuario/mux6_71_1339 ),
    .I1(\controldeusuario/mux6_62_1336 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux6_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_72  (
    .I0(\controldeusuario/cambiosneg_3_6_561 ),
    .I1(\controldeusuario/cambiosneg_2_6_544 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_72_1340 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux6_8  (
    .I0(\controldeusuario/cambiosneg_1_6_527 ),
    .I1(\controldeusuario/cambiosneg_0_6_416 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux6_8_1341 )
  );
  MUXF5   \controldeusuario/mux6_6_f5  (
    .I0(\controldeusuario/mux6_8_1341 ),
    .I1(\controldeusuario/mux6_72_1340 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux6_6_f5_1337 )
  );
  MUXF6   \controldeusuario/mux6_4_f6  (
    .I0(\controldeusuario/mux6_6_f5_1337 ),
    .I1(\controldeusuario/mux6_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux6_4_f6_1330 )
  );
  MUXF7   \controldeusuario/mux6_2_f7  (
    .I0(\controldeusuario/mux6_4_f6_1330 ),
    .I1(\controldeusuario/mux6_3_f6_1328 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_lut [6])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_5  (
    .I0(\controldeusuario/cambiospos_15_0_770 ),
    .I1(\controldeusuario/cambiospos_14_0_753 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux8_5_1359 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_6  (
    .I0(\controldeusuario/cambiospos_13_0_736 ),
    .I1(\controldeusuario/cambiospos_12_0_727 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux8_6_1362 )
  );
  MUXF5   \controldeusuario/mux8_4_f5  (
    .I0(\controldeusuario/mux8_6_1362 ),
    .I1(\controldeusuario/mux8_5_1359 ),
    .S(\controldeusuario/puntero_1_2_1419 ),
    .O(\controldeusuario/mux8_4_f5_1357 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_61  (
    .I0(\controldeusuario/cambiospos_11_0_710 ),
    .I1(\controldeusuario/cambiospos_10_0_693 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux8_61_1363 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_7  (
    .I0(\controldeusuario/cambiospos_9_0_926 ),
    .I1(\controldeusuario/cambiospos_8_0_909 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux8_7_1366 )
  );
  MUXF5   \controldeusuario/mux8_5_f5  (
    .I0(\controldeusuario/mux8_7_1366 ),
    .I1(\controldeusuario/mux8_61_1363 ),
    .S(\controldeusuario/puntero_1_2_1419 ),
    .O(\controldeusuario/mux8_5_f5_1360 )
  );
  MUXF6   \controldeusuario/mux8_3_f6  (
    .I0(\controldeusuario/mux8_5_f5_1360 ),
    .I1(\controldeusuario/mux8_4_f5_1357 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux8_3_f6_1356 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_62  (
    .I0(\controldeusuario/cambiospos_7_0_892 ),
    .I1(\controldeusuario/cambiospos_6_0_873 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux8_62_1364 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_71  (
    .I0(\controldeusuario/cambiospos_5_0_856 ),
    .I1(\controldeusuario/cambiospos_4_0_839 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux8_71_1367 )
  );
  MUXF5   \controldeusuario/mux8_5_f5_0  (
    .I0(\controldeusuario/mux8_71_1367 ),
    .I1(\controldeusuario/mux8_62_1364 ),
    .S(\controldeusuario/puntero_1_2_1419 ),
    .O(\controldeusuario/mux8_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_72  (
    .I0(\controldeusuario/cambiospos_3_0_822 ),
    .I1(\controldeusuario/cambiospos_2_0_805 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux8_72_1368 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux8_8  (
    .I0(\controldeusuario/cambiospos_1_0_787 ),
    .I1(\controldeusuario/cambiospos_0_0_676 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux8_8_1369 )
  );
  MUXF5   \controldeusuario/mux8_6_f5  (
    .I0(\controldeusuario/mux8_8_1369 ),
    .I1(\controldeusuario/mux8_72_1368 ),
    .S(\controldeusuario/puntero_1_2_1419 ),
    .O(\controldeusuario/mux8_6_f5_1365 )
  );
  MUXF6   \controldeusuario/mux8_4_f6  (
    .I0(\controldeusuario/mux8_6_f5_1365 ),
    .I1(\controldeusuario/mux8_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux8_4_f6_1358 )
  );
  MUXF7   \controldeusuario/mux8_2_f7  (
    .I0(\controldeusuario/mux8_4_f6_1358 ),
    .I1(\controldeusuario/mux8_3_f6_1356 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_4_addsub0000_cy[0] )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_5  (
    .I0(\controldeusuario/cambiosneg_15_4_508 ),
    .I1(\controldeusuario/cambiosneg_14_4_491 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_5_1303 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_6  (
    .I0(\controldeusuario/cambiosneg_13_4_474 ),
    .I1(\controldeusuario/cambiosneg_12_4_465 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_6_1306 )
  );
  MUXF5   \controldeusuario/mux4_4_f5  (
    .I0(\controldeusuario/mux4_6_1306 ),
    .I1(\controldeusuario/mux4_5_1303 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux4_4_f5_1301 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_61  (
    .I0(\controldeusuario/cambiosneg_11_4_448 ),
    .I1(\controldeusuario/cambiosneg_10_4_431 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_61_1307 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_7  (
    .I0(\controldeusuario/cambiosneg_9_4_663 ),
    .I1(\controldeusuario/cambiosneg_8_4_646 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_7_1310 )
  );
  MUXF5   \controldeusuario/mux4_5_f5  (
    .I0(\controldeusuario/mux4_7_1310 ),
    .I1(\controldeusuario/mux4_61_1307 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux4_5_f5_1304 )
  );
  MUXF6   \controldeusuario/mux4_3_f6  (
    .I0(\controldeusuario/mux4_5_f5_1304 ),
    .I1(\controldeusuario/mux4_4_f5_1301 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux4_3_f6_1300 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_62  (
    .I0(\controldeusuario/cambiosneg_7_4_629 ),
    .I1(\controldeusuario/cambiosneg_6_4_610 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_62_1308 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_71  (
    .I0(\controldeusuario/cambiosneg_5_4_593 ),
    .I1(\controldeusuario/cambiosneg_4_4_576 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_71_1311 )
  );
  MUXF5   \controldeusuario/mux4_5_f5_0  (
    .I0(\controldeusuario/mux4_71_1311 ),
    .I1(\controldeusuario/mux4_62_1308 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux4_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_72  (
    .I0(\controldeusuario/cambiosneg_3_4_559 ),
    .I1(\controldeusuario/cambiosneg_2_4_542 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_72_1312 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux4_8  (
    .I0(\controldeusuario/cambiosneg_1_4_525 ),
    .I1(\controldeusuario/cambiosneg_0_4_414 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux4_8_1313 )
  );
  MUXF5   \controldeusuario/mux4_6_f5  (
    .I0(\controldeusuario/mux4_8_1313 ),
    .I1(\controldeusuario/mux4_72_1312 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux4_6_f5_1309 )
  );
  MUXF6   \controldeusuario/mux4_4_f6  (
    .I0(\controldeusuario/mux4_6_f5_1309 ),
    .I1(\controldeusuario/mux4_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux4_4_f6_1302 )
  );
  MUXF7   \controldeusuario/mux4_2_f7  (
    .I0(\controldeusuario/mux4_4_f6_1302 ),
    .I1(\controldeusuario/mux4_3_f6_1300 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_lut [4])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_5  (
    .I0(\controldeusuario/cambiosneg_15_3_507 ),
    .I1(\controldeusuario/cambiosneg_14_3_490 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_5_1289 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_6  (
    .I0(\controldeusuario/cambiosneg_13_3_473 ),
    .I1(\controldeusuario/cambiosneg_12_3_464 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_6_1292 )
  );
  MUXF5   \controldeusuario/mux3_4_f5  (
    .I0(\controldeusuario/mux3_6_1292 ),
    .I1(\controldeusuario/mux3_5_1289 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux3_4_f5_1287 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_61  (
    .I0(\controldeusuario/cambiosneg_11_3_447 ),
    .I1(\controldeusuario/cambiosneg_10_3_430 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_61_1293 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_7  (
    .I0(\controldeusuario/cambiosneg_9_3_662 ),
    .I1(\controldeusuario/cambiosneg_8_3_645 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_7_1296 )
  );
  MUXF5   \controldeusuario/mux3_5_f5  (
    .I0(\controldeusuario/mux3_7_1296 ),
    .I1(\controldeusuario/mux3_61_1293 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux3_5_f5_1290 )
  );
  MUXF6   \controldeusuario/mux3_3_f6  (
    .I0(\controldeusuario/mux3_5_f5_1290 ),
    .I1(\controldeusuario/mux3_4_f5_1287 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux3_3_f6_1286 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_62  (
    .I0(\controldeusuario/cambiosneg_7_3_628 ),
    .I1(\controldeusuario/cambiosneg_6_3_609 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_62_1294 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_71  (
    .I0(\controldeusuario/cambiosneg_5_3_592 ),
    .I1(\controldeusuario/cambiosneg_4_3_575 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_71_1297 )
  );
  MUXF5   \controldeusuario/mux3_5_f5_0  (
    .I0(\controldeusuario/mux3_71_1297 ),
    .I1(\controldeusuario/mux3_62_1294 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux3_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_72  (
    .I0(\controldeusuario/cambiosneg_3_3_558 ),
    .I1(\controldeusuario/cambiosneg_2_3_541 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_72_1298 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux3_8  (
    .I0(\controldeusuario/cambiosneg_1_3_524 ),
    .I1(\controldeusuario/cambiosneg_0_3_413 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux3_8_1299 )
  );
  MUXF5   \controldeusuario/mux3_6_f5  (
    .I0(\controldeusuario/mux3_8_1299 ),
    .I1(\controldeusuario/mux3_72_1298 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux3_6_f5_1295 )
  );
  MUXF6   \controldeusuario/mux3_4_f6  (
    .I0(\controldeusuario/mux3_6_f5_1295 ),
    .I1(\controldeusuario/mux3_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux3_4_f6_1288 )
  );
  MUXF7   \controldeusuario/mux3_2_f7  (
    .I0(\controldeusuario/mux3_4_f6_1288 ),
    .I1(\controldeusuario/mux3_3_f6_1286 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_lut [3])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_5  (
    .I0(\controldeusuario/cambiosneg_15_5_509 ),
    .I1(\controldeusuario/cambiosneg_14_5_492 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_5_1317 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_6  (
    .I0(\controldeusuario/cambiosneg_13_5_475 ),
    .I1(\controldeusuario/cambiosneg_12_5_466 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_6_1320 )
  );
  MUXF5   \controldeusuario/mux5_4_f5  (
    .I0(\controldeusuario/mux5_6_1320 ),
    .I1(\controldeusuario/mux5_5_1317 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux5_4_f5_1315 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_61  (
    .I0(\controldeusuario/cambiosneg_11_5_449 ),
    .I1(\controldeusuario/cambiosneg_10_5_432 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_61_1321 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_7  (
    .I0(\controldeusuario/cambiosneg_9_5_664 ),
    .I1(\controldeusuario/cambiosneg_8_5_647 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_7_1324 )
  );
  MUXF5   \controldeusuario/mux5_5_f5  (
    .I0(\controldeusuario/mux5_7_1324 ),
    .I1(\controldeusuario/mux5_61_1321 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux5_5_f5_1318 )
  );
  MUXF6   \controldeusuario/mux5_3_f6  (
    .I0(\controldeusuario/mux5_5_f5_1318 ),
    .I1(\controldeusuario/mux5_4_f5_1315 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux5_3_f6_1314 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_62  (
    .I0(\controldeusuario/cambiosneg_7_5_630 ),
    .I1(\controldeusuario/cambiosneg_6_5_611 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_62_1322 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_71  (
    .I0(\controldeusuario/cambiosneg_5_5_594 ),
    .I1(\controldeusuario/cambiosneg_4_5_577 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_71_1325 )
  );
  MUXF5   \controldeusuario/mux5_5_f5_0  (
    .I0(\controldeusuario/mux5_71_1325 ),
    .I1(\controldeusuario/mux5_62_1322 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux5_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_72  (
    .I0(\controldeusuario/cambiosneg_3_5_560 ),
    .I1(\controldeusuario/cambiosneg_2_5_543 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_72_1326 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux5_8  (
    .I0(\controldeusuario/cambiosneg_1_5_526 ),
    .I1(\controldeusuario/cambiosneg_0_5_415 ),
    .I2(\controldeusuario/puntero [0]),
    .O(\controldeusuario/mux5_8_1327 )
  );
  MUXF5   \controldeusuario/mux5_6_f5  (
    .I0(\controldeusuario/mux5_8_1327 ),
    .I1(\controldeusuario/mux5_72_1326 ),
    .S(\controldeusuario/puntero [1]),
    .O(\controldeusuario/mux5_6_f5_1323 )
  );
  MUXF6   \controldeusuario/mux5_4_f6  (
    .I0(\controldeusuario/mux5_6_f5_1323 ),
    .I1(\controldeusuario/mux5_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux5_4_f6_1316 )
  );
  MUXF7   \controldeusuario/mux5_2_f7  (
    .I0(\controldeusuario/mux5_4_f6_1316 ),
    .I1(\controldeusuario/mux5_3_f6_1314 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_lut [5])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_5  (
    .I0(\controldeusuario/cambiosneg_15_1_505 ),
    .I1(\controldeusuario/cambiosneg_14_1_488 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux1_5_1093 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_6  (
    .I0(\controldeusuario/cambiosneg_13_1_471 ),
    .I1(\controldeusuario/cambiosneg_12_1_462 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux1_6_1096 )
  );
  MUXF5   \controldeusuario/mux1_4_f5  (
    .I0(\controldeusuario/mux1_6_1096 ),
    .I1(\controldeusuario/mux1_5_1093 ),
    .S(\controldeusuario/puntero_1_1_1418 ),
    .O(\controldeusuario/mux1_4_f5_1091 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_61  (
    .I0(\controldeusuario/cambiosneg_11_1_445 ),
    .I1(\controldeusuario/cambiosneg_10_1_428 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux1_61_1097 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_7  (
    .I0(\controldeusuario/cambiosneg_9_1_660 ),
    .I1(\controldeusuario/cambiosneg_8_1_643 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux1_7_1100 )
  );
  MUXF5   \controldeusuario/mux1_5_f5  (
    .I0(\controldeusuario/mux1_7_1100 ),
    .I1(\controldeusuario/mux1_61_1097 ),
    .S(\controldeusuario/puntero_1_1_1418 ),
    .O(\controldeusuario/mux1_5_f5_1094 )
  );
  MUXF6   \controldeusuario/mux1_3_f6  (
    .I0(\controldeusuario/mux1_5_f5_1094 ),
    .I1(\controldeusuario/mux1_4_f5_1091 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux1_3_f6_1090 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_62  (
    .I0(\controldeusuario/cambiosneg_7_1_626 ),
    .I1(\controldeusuario/cambiosneg_6_1_607 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux1_62_1098 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_71  (
    .I0(\controldeusuario/cambiosneg_5_1_590 ),
    .I1(\controldeusuario/cambiosneg_4_1_573 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux1_71_1101 )
  );
  MUXF5   \controldeusuario/mux1_5_f5_0  (
    .I0(\controldeusuario/mux1_71_1101 ),
    .I1(\controldeusuario/mux1_62_1098 ),
    .S(\controldeusuario/puntero_1_1_1418 ),
    .O(\controldeusuario/mux1_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_72  (
    .I0(\controldeusuario/cambiosneg_3_1_556 ),
    .I1(\controldeusuario/cambiosneg_2_1_539 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux1_72_1102 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux1_8  (
    .I0(\controldeusuario/cambiosneg_1_1_522 ),
    .I1(\controldeusuario/cambiosneg_0_1_411 ),
    .I2(\controldeusuario/puntero_0_1_1415 ),
    .O(\controldeusuario/mux1_8_1103 )
  );
  MUXF5   \controldeusuario/mux1_6_f5  (
    .I0(\controldeusuario/mux1_8_1103 ),
    .I1(\controldeusuario/mux1_72_1102 ),
    .S(\controldeusuario/puntero_1_1_1418 ),
    .O(\controldeusuario/mux1_6_f5_1099 )
  );
  MUXF6   \controldeusuario/mux1_4_f6  (
    .I0(\controldeusuario/mux1_6_f5_1099 ),
    .I1(\controldeusuario/mux1_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux1_4_f6_1092 )
  );
  MUXF7   \controldeusuario/mux1_2_f7  (
    .I0(\controldeusuario/mux1_4_f6_1092 ),
    .I1(\controldeusuario/mux1_3_f6_1090 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_lut [1])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_5  (
    .I0(\controldeusuario/cambiosneg_15_0_504 ),
    .I1(\controldeusuario/cambiosneg_14_0_487 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux_5_1387 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_6  (
    .I0(\controldeusuario/cambiosneg_13_0_470 ),
    .I1(\controldeusuario/cambiosneg_12_0_461 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux_6_1390 )
  );
  MUXF5   \controldeusuario/mux_4_f5  (
    .I0(\controldeusuario/mux_6_1390 ),
    .I1(\controldeusuario/mux_5_1387 ),
    .S(\controldeusuario/puntero_1_1_1418 ),
    .O(\controldeusuario/mux_4_f5_1385 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_61  (
    .I0(\controldeusuario/cambiosneg_11_0_444 ),
    .I1(\controldeusuario/cambiosneg_10_0_427 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux_61_1391 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_7  (
    .I0(\controldeusuario/cambiosneg_9_0_659 ),
    .I1(\controldeusuario/cambiosneg_8_0_642 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux_7_1394 )
  );
  MUXF5   \controldeusuario/mux_5_f5  (
    .I0(\controldeusuario/mux_7_1394 ),
    .I1(\controldeusuario/mux_61_1391 ),
    .S(\controldeusuario/puntero_1_1_1418 ),
    .O(\controldeusuario/mux_5_f5_1388 )
  );
  MUXF6   \controldeusuario/mux_3_f6  (
    .I0(\controldeusuario/mux_5_f5_1388 ),
    .I1(\controldeusuario/mux_4_f5_1385 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux_3_f6_1384 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_62  (
    .I0(\controldeusuario/cambiosneg_7_0_625 ),
    .I1(\controldeusuario/cambiosneg_6_0_606 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux_62_1392 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_71  (
    .I0(\controldeusuario/cambiosneg_5_0_589 ),
    .I1(\controldeusuario/cambiosneg_4_0_572 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux_71_1395 )
  );
  MUXF5   \controldeusuario/mux_5_f5_0  (
    .I0(\controldeusuario/mux_71_1395 ),
    .I1(\controldeusuario/mux_62_1392 ),
    .S(\controldeusuario/puntero_1_1_1418 ),
    .O(\controldeusuario/mux_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_72  (
    .I0(\controldeusuario/cambiosneg_3_0_555 ),
    .I1(\controldeusuario/cambiosneg_2_0_538 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux_72_1396 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux_8  (
    .I0(\controldeusuario/cambiosneg_1_0_521 ),
    .I1(\controldeusuario/cambiosneg_0_0_410 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux_8_1397 )
  );
  MUXF5   \controldeusuario/mux_6_f5  (
    .I0(\controldeusuario/mux_8_1397 ),
    .I1(\controldeusuario/mux_72_1396 ),
    .S(\controldeusuario/puntero_1_1_1418 ),
    .O(\controldeusuario/mux_6_f5_1393 )
  );
  MUXF6   \controldeusuario/mux_4_f6  (
    .I0(\controldeusuario/mux_6_f5_1393 ),
    .I1(\controldeusuario/mux_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux_4_f6_1386 )
  );
  MUXF7   \controldeusuario/mux_2_f7  (
    .I0(\controldeusuario/mux_4_f6_1386 ),
    .I1(\controldeusuario/mux_3_f6_1384 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_cy[0] )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_5  (
    .I0(\controldeusuario/cambiosneg_15_2_506 ),
    .I1(\controldeusuario/cambiosneg_14_2_489 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux2_5_1247 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_6  (
    .I0(\controldeusuario/cambiosneg_13_2_472 ),
    .I1(\controldeusuario/cambiosneg_12_2_463 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux2_6_1250 )
  );
  MUXF5   \controldeusuario/mux2_4_f5  (
    .I0(\controldeusuario/mux2_6_1250 ),
    .I1(\controldeusuario/mux2_5_1247 ),
    .S(\controldeusuario/puntero_1_2_1419 ),
    .O(\controldeusuario/mux2_4_f5_1245 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_61  (
    .I0(\controldeusuario/cambiosneg_11_2_446 ),
    .I1(\controldeusuario/cambiosneg_10_2_429 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux2_61_1251 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_7  (
    .I0(\controldeusuario/cambiosneg_9_2_661 ),
    .I1(\controldeusuario/cambiosneg_8_2_644 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux2_7_1254 )
  );
  MUXF5   \controldeusuario/mux2_5_f5  (
    .I0(\controldeusuario/mux2_7_1254 ),
    .I1(\controldeusuario/mux2_61_1251 ),
    .S(\controldeusuario/puntero_1_2_1419 ),
    .O(\controldeusuario/mux2_5_f5_1248 )
  );
  MUXF6   \controldeusuario/mux2_3_f6  (
    .I0(\controldeusuario/mux2_5_f5_1248 ),
    .I1(\controldeusuario/mux2_4_f5_1245 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux2_3_f6_1244 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_62  (
    .I0(\controldeusuario/cambiosneg_7_2_627 ),
    .I1(\controldeusuario/cambiosneg_6_2_608 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux2_62_1252 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_71  (
    .I0(\controldeusuario/cambiosneg_5_2_591 ),
    .I1(\controldeusuario/cambiosneg_4_2_574 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux2_71_1255 )
  );
  MUXF5   \controldeusuario/mux2_5_f5_0  (
    .I0(\controldeusuario/mux2_71_1255 ),
    .I1(\controldeusuario/mux2_62_1252 ),
    .S(\controldeusuario/puntero_1_2_1419 ),
    .O(\controldeusuario/mux2_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_72  (
    .I0(\controldeusuario/cambiosneg_3_2_557 ),
    .I1(\controldeusuario/cambiosneg_2_2_540 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux2_72_1256 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \controldeusuario/mux2_8  (
    .I0(\controldeusuario/cambiosneg_1_2_523 ),
    .I1(\controldeusuario/cambiosneg_0_2_412 ),
    .I2(\controldeusuario/puntero_0_2_1416 ),
    .O(\controldeusuario/mux2_8_1257 )
  );
  MUXF5   \controldeusuario/mux2_6_f5  (
    .I0(\controldeusuario/mux2_8_1257 ),
    .I1(\controldeusuario/mux2_72_1256 ),
    .S(\controldeusuario/puntero_1_2_1419 ),
    .O(\controldeusuario/mux2_6_f5_1253 )
  );
  MUXF6   \controldeusuario/mux2_4_f6  (
    .I0(\controldeusuario/mux2_6_f5_1253 ),
    .I1(\controldeusuario/mux2_5_f51 ),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/mux2_4_f6_1246 )
  );
  MUXF7   \controldeusuario/mux2_2_f7  (
    .I0(\controldeusuario/mux2_4_f6_1246 ),
    .I1(\controldeusuario/mux2_3_f6_1244 ),
    .S(\controldeusuario/puntero [3]),
    .O(\controldeusuario/Madd_COND_2_addsub0000_lut [2])
  );
  FDRE   \controldeusuario/puntero2_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/puntero2_not0001 ),
    .D(\controldeusuario/Result [3]),
    .R(\controldeusuario/puntero2_or0000 ),
    .Q(\controldeusuario/puntero2 [3])
  );
  FDRE   \controldeusuario/puntero2_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/puntero2_not0001 ),
    .D(\controldeusuario/Result [2]),
    .R(\controldeusuario/puntero2_or0000 ),
    .Q(\controldeusuario/puntero2 [2])
  );
  FDRE   \controldeusuario/puntero2_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/puntero2_not0001 ),
    .D(\controldeusuario/Result [1]),
    .R(\controldeusuario/puntero2_or0000 ),
    .Q(\controldeusuario/puntero2 [1])
  );
  FDRE   \controldeusuario/puntero2_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/puntero2_not0001 ),
    .D(\controldeusuario/Result [0]),
    .R(\controldeusuario/puntero2_or0000 ),
    .Q(\controldeusuario/puntero2 [0])
  );
  FDRE   \controldeusuario/Dato_out_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/Dato_out [7])
  );
  FDRE   \controldeusuario/Dato_out_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/Dato_out [6])
  );
  FDRE   \controldeusuario/Dato_out_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/Dato_out [5])
  );
  FDRE   \controldeusuario/Dato_out_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/Dato_out [4])
  );
  FDRE   \controldeusuario/Dato_out_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/Dato_out [3])
  );
  FDRE   \controldeusuario/Dato_out_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/Dato_out [2])
  );
  FDRE   \controldeusuario/Dato_out_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/Dato_out [1])
  );
  FDRE   \controldeusuario/Dato_out_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Dato_out_sub0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/Dato_out [0])
  );
  FDRE   \controldeusuario/cambiosneg_12_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_12_7_468 )
  );
  FDRE   \controldeusuario/cambiosneg_12_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_12_6_467 )
  );
  FDRE   \controldeusuario/cambiosneg_12_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_12_5_466 )
  );
  FDRE   \controldeusuario/cambiosneg_12_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_12_4_465 )
  );
  FDRE   \controldeusuario/cambiosneg_12_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_12_3_464 )
  );
  FDRE   \controldeusuario/cambiosneg_12_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_12_2_463 )
  );
  FDRE   \controldeusuario/cambiosneg_12_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_12_1_462 )
  );
  FDRE   \controldeusuario/cambiosneg_12_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_12_not0001 ),
    .D(\controldeusuario/COND_2_addsub0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_12_0_461 )
  );
  FDRE   \controldeusuario/cambiospos_12_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_12_not0001_735 ),
    .D(\controldeusuario/COND_4_addsub0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_12_7_734 )
  );
  FDRE   \controldeusuario/cambiospos_12_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_12_not0001_735 ),
    .D(\controldeusuario/COND_4_addsub0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_12_6_733 )
  );
  FDRE   \controldeusuario/cambiospos_12_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_12_not0001_735 ),
    .D(\controldeusuario/COND_4_addsub0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_12_5_732 )
  );
  FDRE   \controldeusuario/cambiospos_12_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_12_not0001_735 ),
    .D(\controldeusuario/COND_4_addsub0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_12_4_731 )
  );
  FDRE   \controldeusuario/cambiospos_12_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_12_not0001_735 ),
    .D(\controldeusuario/COND_4_addsub0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_12_3_730 )
  );
  FDRE   \controldeusuario/cambiospos_12_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_12_not0001_735 ),
    .D(\controldeusuario/COND_4_addsub0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_12_2_729 )
  );
  FDRE   \controldeusuario/cambiospos_12_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_12_not0001_735 ),
    .D(\controldeusuario/COND_4_addsub0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_12_1_728 )
  );
  FDRE   \controldeusuario/cambiospos_12_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_12_not0001_735 ),
    .D(\controldeusuario/COND_4_addsub0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_12_0_727 )
  );
  FDRE   \controldeusuario/ADD2_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Mrom__COND_56 ),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/ADD2[6] )
  );
  FDRE   \controldeusuario/ADD2_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Mrom__COND_55 ),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/ADD2[5] )
  );
  FDRE   \controldeusuario/ADD2_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Mrom__COND_54 ),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/ADD2[4] )
  );
  FDRE   \controldeusuario/ADD2_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Mrom__COND_52 ),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/ADD2[2] )
  );
  FDRE   \controldeusuario/ADD2_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Mrom__COND_51 ),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/ADD2[1] )
  );
  FDRE   \controldeusuario/ADD2_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/Mrom__COND_5 ),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/ADD2[0] )
  );
  FDRE   \controldeusuario/ADD_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/puntero2 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/ADD [3])
  );
  FDRE   \controldeusuario/ADD_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/puntero2 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/ADD [2])
  );
  FDRE   \controldeusuario/ADD_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/puntero2 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/ADD [1])
  );
  FDRE   \controldeusuario/ADD_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(\controldeusuario/puntero2 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/ADD [0])
  );
  FDE   \controldeusuario/punteroOut_3  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/reset_inv ),
    .D(\controldeusuario/punteroOut_mux0000 [3]),
    .Q(\controldeusuario/punteroOut [3])
  );
  FDE   \controldeusuario/punteroOut_2  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/reset_inv ),
    .D(\controldeusuario/punteroOut_mux0000 [2]),
    .Q(\controldeusuario/punteroOut [2])
  );
  FDE   \controldeusuario/punteroOut_1  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/reset_inv ),
    .D(\controldeusuario/punteroOut_mux0000 [1]),
    .Q(\controldeusuario/punteroOut [1])
  );
  FDE   \controldeusuario/punteroOut_0  (
    .C(clk_BUFGP_244),
    .CE(\Cront_out/reset_inv ),
    .D(\controldeusuario/punteroOut_mux0000 [0]),
    .Q(\controldeusuario/punteroOut [0])
  );
  FDRE   \controldeusuario/cambiosneg_15_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_15_not0001_520 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_15_7_511 )
  );
  FDRE   \controldeusuario/cambiosneg_15_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_15_not0001_520 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_15_6_510 )
  );
  FDRE   \controldeusuario/cambiosneg_15_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_15_not0001_520 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_15_5_509 )
  );
  FDRE   \controldeusuario/cambiosneg_15_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_15_not0001_520 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_15_4_508 )
  );
  FDRE   \controldeusuario/cambiosneg_15_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_15_not0001_520 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_15_3_507 )
  );
  FDRE   \controldeusuario/cambiosneg_15_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_15_not0001_520 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_15_2_506 )
  );
  FDRE   \controldeusuario/cambiosneg_15_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_15_not0001_520 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_15_1_505 )
  );
  FDRE   \controldeusuario/cambiosneg_15_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_15_not0001_520 ),
    .D(\controldeusuario/cambiosneg_15_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_15_0_504 )
  );
  FDRE   \controldeusuario/cambiosneg_14_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_14_not0001_503 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_14_7_494 )
  );
  FDRE   \controldeusuario/cambiosneg_14_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_14_not0001_503 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_14_6_493 )
  );
  FDRE   \controldeusuario/cambiosneg_14_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_14_not0001_503 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_14_5_492 )
  );
  FDRE   \controldeusuario/cambiosneg_14_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_14_not0001_503 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_14_4_491 )
  );
  FDRE   \controldeusuario/cambiosneg_14_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_14_not0001_503 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_14_3_490 )
  );
  FDRE   \controldeusuario/cambiosneg_14_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_14_not0001_503 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_14_2_489 )
  );
  FDRE   \controldeusuario/cambiosneg_14_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_14_not0001_503 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_14_1_488 )
  );
  FDRE   \controldeusuario/cambiosneg_14_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_14_not0001_503 ),
    .D(\controldeusuario/cambiosneg_14_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_14_0_487 )
  );
  FDRE   \controldeusuario/cambiosneg_13_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_13_not0001_486 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_13_7_477 )
  );
  FDRE   \controldeusuario/cambiosneg_13_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_13_not0001_486 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_13_6_476 )
  );
  FDRE   \controldeusuario/cambiosneg_13_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_13_not0001_486 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_13_5_475 )
  );
  FDRE   \controldeusuario/cambiosneg_13_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_13_not0001_486 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_13_4_474 )
  );
  FDRE   \controldeusuario/cambiosneg_13_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_13_not0001_486 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_13_3_473 )
  );
  FDRE   \controldeusuario/cambiosneg_13_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_13_not0001_486 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_13_2_472 )
  );
  FDRE   \controldeusuario/cambiosneg_13_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_13_not0001_486 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_13_1_471 )
  );
  FDRE   \controldeusuario/cambiosneg_13_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_13_not0001_486 ),
    .D(\controldeusuario/cambiosneg_13_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_13_0_470 )
  );
  FDRE   \controldeusuario/cambiosneg_10_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_10_not0001_443 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_10_7_434 )
  );
  FDRE   \controldeusuario/cambiosneg_10_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_10_not0001_443 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_10_6_433 )
  );
  FDRE   \controldeusuario/cambiosneg_10_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_10_not0001_443 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_10_5_432 )
  );
  FDRE   \controldeusuario/cambiosneg_10_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_10_not0001_443 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_10_4_431 )
  );
  FDRE   \controldeusuario/cambiosneg_10_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_10_not0001_443 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_10_3_430 )
  );
  FDRE   \controldeusuario/cambiosneg_10_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_10_not0001_443 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_10_2_429 )
  );
  FDRE   \controldeusuario/cambiosneg_10_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_10_not0001_443 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_10_1_428 )
  );
  FDRE   \controldeusuario/cambiosneg_10_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_10_not0001_443 ),
    .D(\controldeusuario/cambiosneg_10_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_10_0_427 )
  );
  FDRE   \controldeusuario/cambiosneg_9_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_9_not0001_675 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_9_7_666 )
  );
  FDRE   \controldeusuario/cambiosneg_9_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_9_not0001_675 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_9_6_665 )
  );
  FDRE   \controldeusuario/cambiosneg_9_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_9_not0001_675 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_9_5_664 )
  );
  FDRE   \controldeusuario/cambiosneg_9_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_9_not0001_675 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_9_4_663 )
  );
  FDRE   \controldeusuario/cambiosneg_9_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_9_not0001_675 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_9_3_662 )
  );
  FDRE   \controldeusuario/cambiosneg_9_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_9_not0001_675 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_9_2_661 )
  );
  FDRE   \controldeusuario/cambiosneg_9_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_9_not0001_675 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_9_1_660 )
  );
  FDRE   \controldeusuario/cambiosneg_9_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_9_not0001_675 ),
    .D(\controldeusuario/cambiosneg_9_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_9_0_659 )
  );
  FDRE   \controldeusuario/cambiosneg_11_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_11_not0001_460 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_11_7_451 )
  );
  FDRE   \controldeusuario/cambiosneg_11_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_11_not0001_460 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_11_6_450 )
  );
  FDRE   \controldeusuario/cambiosneg_11_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_11_not0001_460 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_11_5_449 )
  );
  FDRE   \controldeusuario/cambiosneg_11_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_11_not0001_460 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_11_4_448 )
  );
  FDRE   \controldeusuario/cambiosneg_11_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_11_not0001_460 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_11_3_447 )
  );
  FDRE   \controldeusuario/cambiosneg_11_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_11_not0001_460 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_11_2_446 )
  );
  FDRE   \controldeusuario/cambiosneg_11_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_11_not0001_460 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_11_1_445 )
  );
  FDRE   \controldeusuario/cambiosneg_11_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_11_not0001_460 ),
    .D(\controldeusuario/cambiosneg_11_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_11_0_444 )
  );
  FDRE   \controldeusuario/cambiosneg_8_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_8_not0001_658 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_8_7_649 )
  );
  FDRE   \controldeusuario/cambiosneg_8_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_8_not0001_658 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_8_6_648 )
  );
  FDRE   \controldeusuario/cambiosneg_8_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_8_not0001_658 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_8_5_647 )
  );
  FDRE   \controldeusuario/cambiosneg_8_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_8_not0001_658 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_8_4_646 )
  );
  FDRE   \controldeusuario/cambiosneg_8_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_8_not0001_658 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_8_3_645 )
  );
  FDRE   \controldeusuario/cambiosneg_8_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_8_not0001_658 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_8_2_644 )
  );
  FDRE   \controldeusuario/cambiosneg_8_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_8_not0001_658 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_8_1_643 )
  );
  FDRE   \controldeusuario/cambiosneg_8_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_8_not0001_658 ),
    .D(\controldeusuario/cambiosneg_8_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_8_0_642 )
  );
  FDRE   \controldeusuario/cambiosneg_7_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_7_not0001_641 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_7_7_632 )
  );
  FDRE   \controldeusuario/cambiosneg_7_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_7_not0001_641 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_7_6_631 )
  );
  FDRE   \controldeusuario/cambiosneg_7_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_7_not0001_641 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_7_5_630 )
  );
  FDRE   \controldeusuario/cambiosneg_7_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_7_not0001_641 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_7_4_629 )
  );
  FDRE   \controldeusuario/cambiosneg_7_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_7_not0001_641 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_7_3_628 )
  );
  FDRE   \controldeusuario/cambiosneg_7_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_7_not0001_641 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_7_2_627 )
  );
  FDRE   \controldeusuario/cambiosneg_7_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_7_not0001_641 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_7_1_626 )
  );
  FDRE   \controldeusuario/cambiosneg_7_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_7_not0001_641 ),
    .D(\controldeusuario/cambiosneg_7_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_7_0_625 )
  );
  FDRE   \controldeusuario/cambiosneg_6_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_6_7_613 )
  );
  FDRE   \controldeusuario/cambiosneg_6_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_6_6_612 )
  );
  FDRE   \controldeusuario/cambiosneg_6_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_6_5_611 )
  );
  FDRE   \controldeusuario/cambiosneg_6_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_6_4_610 )
  );
  FDRE   \controldeusuario/cambiosneg_6_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_6_3_609 )
  );
  FDRE   \controldeusuario/cambiosneg_6_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_6_2_608 )
  );
  FDRE   \controldeusuario/cambiosneg_6_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_6_1_607 )
  );
  FDRE   \controldeusuario/cambiosneg_6_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_6_not0001 ),
    .D(\controldeusuario/cambiosneg_6_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_6_0_606 )
  );
  FDRE   \controldeusuario/cambiosneg_5_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_5_not0001_605 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_5_7_596 )
  );
  FDRE   \controldeusuario/cambiosneg_5_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_5_not0001_605 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_5_6_595 )
  );
  FDRE   \controldeusuario/cambiosneg_5_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_5_not0001_605 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_5_5_594 )
  );
  FDRE   \controldeusuario/cambiosneg_5_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_5_not0001_605 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_5_4_593 )
  );
  FDRE   \controldeusuario/cambiosneg_5_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_5_not0001_605 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_5_3_592 )
  );
  FDRE   \controldeusuario/cambiosneg_5_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_5_not0001_605 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_5_2_591 )
  );
  FDRE   \controldeusuario/cambiosneg_5_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_5_not0001_605 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_5_1_590 )
  );
  FDRE   \controldeusuario/cambiosneg_5_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_5_not0001_605 ),
    .D(\controldeusuario/cambiosneg_5_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_5_0_589 )
  );
  FDRE   \controldeusuario/cambiosneg_3_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_3_not0001_571 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_3_7_562 )
  );
  FDRE   \controldeusuario/cambiosneg_3_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_3_not0001_571 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_3_6_561 )
  );
  FDRE   \controldeusuario/cambiosneg_3_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_3_not0001_571 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_3_5_560 )
  );
  FDRE   \controldeusuario/cambiosneg_3_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_3_not0001_571 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_3_4_559 )
  );
  FDRE   \controldeusuario/cambiosneg_3_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_3_not0001_571 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_3_3_558 )
  );
  FDRE   \controldeusuario/cambiosneg_3_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_3_not0001_571 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_3_2_557 )
  );
  FDRE   \controldeusuario/cambiosneg_3_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_3_not0001_571 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_3_1_556 )
  );
  FDRE   \controldeusuario/cambiosneg_3_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_3_not0001_571 ),
    .D(\controldeusuario/cambiosneg_3_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_3_0_555 )
  );
  FDRE   \controldeusuario/cambiosneg_2_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_2_not0001_554 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_2_7_545 )
  );
  FDRE   \controldeusuario/cambiosneg_2_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_2_not0001_554 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_2_6_544 )
  );
  FDRE   \controldeusuario/cambiosneg_2_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_2_not0001_554 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_2_5_543 )
  );
  FDRE   \controldeusuario/cambiosneg_2_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_2_not0001_554 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_2_4_542 )
  );
  FDRE   \controldeusuario/cambiosneg_2_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_2_not0001_554 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_2_3_541 )
  );
  FDRE   \controldeusuario/cambiosneg_2_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_2_not0001_554 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_2_2_540 )
  );
  FDRE   \controldeusuario/cambiosneg_2_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_2_not0001_554 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_2_1_539 )
  );
  FDRE   \controldeusuario/cambiosneg_2_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_2_not0001_554 ),
    .D(\controldeusuario/cambiosneg_2_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_2_0_538 )
  );
  FDRE   \controldeusuario/cambiosneg_4_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_4_not0001_588 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_4_7_579 )
  );
  FDRE   \controldeusuario/cambiosneg_4_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_4_not0001_588 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_4_6_578 )
  );
  FDRE   \controldeusuario/cambiosneg_4_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_4_not0001_588 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_4_5_577 )
  );
  FDRE   \controldeusuario/cambiosneg_4_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_4_not0001_588 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_4_4_576 )
  );
  FDRE   \controldeusuario/cambiosneg_4_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_4_not0001_588 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_4_3_575 )
  );
  FDRE   \controldeusuario/cambiosneg_4_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_4_not0001_588 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_4_2_574 )
  );
  FDRE   \controldeusuario/cambiosneg_4_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_4_not0001_588 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_4_1_573 )
  );
  FDRE   \controldeusuario/cambiosneg_4_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_4_not0001_588 ),
    .D(\controldeusuario/cambiosneg_4_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_4_0_572 )
  );
  FDRE   \controldeusuario/cambiosneg_1_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_1_not0001_537 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_1_7_528 )
  );
  FDRE   \controldeusuario/cambiosneg_1_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_1_not0001_537 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_1_6_527 )
  );
  FDRE   \controldeusuario/cambiosneg_1_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_1_not0001_537 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_1_5_526 )
  );
  FDRE   \controldeusuario/cambiosneg_1_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_1_not0001_537 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_1_4_525 )
  );
  FDRE   \controldeusuario/cambiosneg_1_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_1_not0001_537 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_1_3_524 )
  );
  FDRE   \controldeusuario/cambiosneg_1_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_1_not0001_537 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_1_2_523 )
  );
  FDRE   \controldeusuario/cambiosneg_1_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_1_not0001_537 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_1_1_522 )
  );
  FDRE   \controldeusuario/cambiosneg_1_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_1_not0001_537 ),
    .D(\controldeusuario/cambiosneg_1_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_1_0_521 )
  );
  FDRE   \controldeusuario/cambiosneg_0_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_0_not0001_426 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_0_7_417 )
  );
  FDRE   \controldeusuario/cambiosneg_0_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_0_not0001_426 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_0_6_416 )
  );
  FDRE   \controldeusuario/cambiosneg_0_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_0_not0001_426 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_0_5_415 )
  );
  FDRE   \controldeusuario/cambiosneg_0_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_0_not0001_426 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_0_4_414 )
  );
  FDRE   \controldeusuario/cambiosneg_0_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_0_not0001_426 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_0_3_413 )
  );
  FDRE   \controldeusuario/cambiosneg_0_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_0_not0001_426 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_0_2_412 )
  );
  FDRE   \controldeusuario/cambiosneg_0_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_0_not0001_426 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_0_1_411 )
  );
  FDRE   \controldeusuario/cambiosneg_0_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiosneg_0_not0001_426 ),
    .D(\controldeusuario/cambiosneg_0_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiosneg_0_0_410 )
  );
  FDRE   \controldeusuario/cambiospos_15_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_15_not0001_786 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_15_7_777 )
  );
  FDRE   \controldeusuario/cambiospos_15_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_15_not0001_786 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_15_6_776 )
  );
  FDRE   \controldeusuario/cambiospos_15_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_15_not0001_786 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_15_5_775 )
  );
  FDRE   \controldeusuario/cambiospos_15_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_15_not0001_786 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_15_4_774 )
  );
  FDRE   \controldeusuario/cambiospos_15_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_15_not0001_786 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_15_3_773 )
  );
  FDRE   \controldeusuario/cambiospos_15_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_15_not0001_786 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_15_2_772 )
  );
  FDRE   \controldeusuario/cambiospos_15_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_15_not0001_786 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_15_1_771 )
  );
  FDRE   \controldeusuario/cambiospos_15_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_15_not0001_786 ),
    .D(\controldeusuario/cambiospos_15_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_15_0_770 )
  );
  FDRE   \controldeusuario/cambiospos_14_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_14_not0001_769 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_14_7_760 )
  );
  FDRE   \controldeusuario/cambiospos_14_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_14_not0001_769 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_14_6_759 )
  );
  FDRE   \controldeusuario/cambiospos_14_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_14_not0001_769 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_14_5_758 )
  );
  FDRE   \controldeusuario/cambiospos_14_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_14_not0001_769 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_14_4_757 )
  );
  FDRE   \controldeusuario/cambiospos_14_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_14_not0001_769 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_14_3_756 )
  );
  FDRE   \controldeusuario/cambiospos_14_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_14_not0001_769 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_14_2_755 )
  );
  FDRE   \controldeusuario/cambiospos_14_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_14_not0001_769 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_14_1_754 )
  );
  FDRE   \controldeusuario/cambiospos_14_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_14_not0001_769 ),
    .D(\controldeusuario/cambiospos_14_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_14_0_753 )
  );
  FDRE   \controldeusuario/cambiospos_11_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_11_not0001_726 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_11_7_717 )
  );
  FDRE   \controldeusuario/cambiospos_11_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_11_not0001_726 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_11_6_716 )
  );
  FDRE   \controldeusuario/cambiospos_11_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_11_not0001_726 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_11_5_715 )
  );
  FDRE   \controldeusuario/cambiospos_11_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_11_not0001_726 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_11_4_714 )
  );
  FDRE   \controldeusuario/cambiospos_11_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_11_not0001_726 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_11_3_713 )
  );
  FDRE   \controldeusuario/cambiospos_11_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_11_not0001_726 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_11_2_712 )
  );
  FDRE   \controldeusuario/cambiospos_11_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_11_not0001_726 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_11_1_711 )
  );
  FDRE   \controldeusuario/cambiospos_11_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_11_not0001_726 ),
    .D(\controldeusuario/cambiospos_11_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_11_0_710 )
  );
  FDRE   \controldeusuario/cambiospos_13_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_13_not0001_752 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_13_7_743 )
  );
  FDRE   \controldeusuario/cambiospos_13_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_13_not0001_752 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_13_6_742 )
  );
  FDRE   \controldeusuario/cambiospos_13_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_13_not0001_752 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_13_5_741 )
  );
  FDRE   \controldeusuario/cambiospos_13_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_13_not0001_752 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_13_4_740 )
  );
  FDRE   \controldeusuario/cambiospos_13_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_13_not0001_752 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_13_3_739 )
  );
  FDRE   \controldeusuario/cambiospos_13_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_13_not0001_752 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_13_2_738 )
  );
  FDRE   \controldeusuario/cambiospos_13_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_13_not0001_752 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_13_1_737 )
  );
  FDRE   \controldeusuario/cambiospos_13_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_13_not0001_752 ),
    .D(\controldeusuario/cambiospos_13_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_13_0_736 )
  );
  FDRE   \controldeusuario/cambiospos_10_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_10_not0001_709 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_10_7_700 )
  );
  FDRE   \controldeusuario/cambiospos_10_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_10_not0001_709 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_10_6_699 )
  );
  FDRE   \controldeusuario/cambiospos_10_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_10_not0001_709 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_10_5_698 )
  );
  FDRE   \controldeusuario/cambiospos_10_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_10_not0001_709 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_10_4_697 )
  );
  FDRE   \controldeusuario/cambiospos_10_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_10_not0001_709 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_10_3_696 )
  );
  FDRE   \controldeusuario/cambiospos_10_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_10_not0001_709 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_10_2_695 )
  );
  FDRE   \controldeusuario/cambiospos_10_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_10_not0001_709 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_10_1_694 )
  );
  FDRE   \controldeusuario/cambiospos_10_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_10_not0001_709 ),
    .D(\controldeusuario/cambiospos_10_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_10_0_693 )
  );
  FDRE   \controldeusuario/cambiospos_9_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_9_7_933 )
  );
  FDRE   \controldeusuario/cambiospos_9_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_9_6_932 )
  );
  FDRE   \controldeusuario/cambiospos_9_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_9_5_931 )
  );
  FDRE   \controldeusuario/cambiospos_9_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_9_4_930 )
  );
  FDRE   \controldeusuario/cambiospos_9_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_9_3_929 )
  );
  FDRE   \controldeusuario/cambiospos_9_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_9_2_928 )
  );
  FDRE   \controldeusuario/cambiospos_9_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_9_1_927 )
  );
  FDRE   \controldeusuario/cambiospos_9_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_9_not0001 ),
    .D(\controldeusuario/cambiospos_9_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_9_0_926 )
  );
  FDRE   \controldeusuario/cambiospos_8_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_8_not0001_925 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_8_7_916 )
  );
  FDRE   \controldeusuario/cambiospos_8_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_8_not0001_925 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_8_6_915 )
  );
  FDRE   \controldeusuario/cambiospos_8_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_8_not0001_925 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_8_5_914 )
  );
  FDRE   \controldeusuario/cambiospos_8_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_8_not0001_925 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_8_4_913 )
  );
  FDRE   \controldeusuario/cambiospos_8_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_8_not0001_925 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_8_3_912 )
  );
  FDRE   \controldeusuario/cambiospos_8_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_8_not0001_925 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_8_2_911 )
  );
  FDRE   \controldeusuario/cambiospos_8_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_8_not0001_925 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_8_1_910 )
  );
  FDRE   \controldeusuario/cambiospos_8_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_8_not0001_925 ),
    .D(\controldeusuario/cambiospos_8_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_8_0_909 )
  );
  FDRE   \controldeusuario/cambiospos_7_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_7_not0001_908 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_7_7_899 )
  );
  FDRE   \controldeusuario/cambiospos_7_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_7_not0001_908 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_7_6_898 )
  );
  FDRE   \controldeusuario/cambiospos_7_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_7_not0001_908 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_7_5_897 )
  );
  FDRE   \controldeusuario/cambiospos_7_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_7_not0001_908 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_7_4_896 )
  );
  FDRE   \controldeusuario/cambiospos_7_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_7_not0001_908 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_7_3_895 )
  );
  FDRE   \controldeusuario/cambiospos_7_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_7_not0001_908 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_7_2_894 )
  );
  FDRE   \controldeusuario/cambiospos_7_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_7_not0001_908 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_7_1_893 )
  );
  FDRE   \controldeusuario/cambiospos_7_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_7_not0001_908 ),
    .D(\controldeusuario/cambiospos_7_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_7_0_892 )
  );
  FDRE   \controldeusuario/cambiospos_5_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_5_not0001_872 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_5_7_863 )
  );
  FDRE   \controldeusuario/cambiospos_5_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_5_not0001_872 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_5_6_862 )
  );
  FDRE   \controldeusuario/cambiospos_5_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_5_not0001_872 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_5_5_861 )
  );
  FDRE   \controldeusuario/cambiospos_5_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_5_not0001_872 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_5_4_860 )
  );
  FDRE   \controldeusuario/cambiospos_5_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_5_not0001_872 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_5_3_859 )
  );
  FDRE   \controldeusuario/cambiospos_5_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_5_not0001_872 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_5_2_858 )
  );
  FDRE   \controldeusuario/cambiospos_5_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_5_not0001_872 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_5_1_857 )
  );
  FDRE   \controldeusuario/cambiospos_5_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_5_not0001_872 ),
    .D(\controldeusuario/cambiospos_5_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_5_0_856 )
  );
  FDRE   \controldeusuario/cambiospos_4_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_4_not0001_855 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_4_7_846 )
  );
  FDRE   \controldeusuario/cambiospos_4_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_4_not0001_855 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_4_6_845 )
  );
  FDRE   \controldeusuario/cambiospos_4_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_4_not0001_855 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_4_5_844 )
  );
  FDRE   \controldeusuario/cambiospos_4_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_4_not0001_855 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_4_4_843 )
  );
  FDRE   \controldeusuario/cambiospos_4_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_4_not0001_855 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_4_3_842 )
  );
  FDRE   \controldeusuario/cambiospos_4_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_4_not0001_855 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_4_2_841 )
  );
  FDRE   \controldeusuario/cambiospos_4_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_4_not0001_855 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_4_1_840 )
  );
  FDRE   \controldeusuario/cambiospos_4_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_4_not0001_855 ),
    .D(\controldeusuario/cambiospos_4_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_4_0_839 )
  );
  FDRE   \controldeusuario/cambiospos_6_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_6_7_880 )
  );
  FDRE   \controldeusuario/cambiospos_6_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_6_6_879 )
  );
  FDRE   \controldeusuario/cambiospos_6_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_6_5_878 )
  );
  FDRE   \controldeusuario/cambiospos_6_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_6_4_877 )
  );
  FDRE   \controldeusuario/cambiospos_6_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_6_3_876 )
  );
  FDRE   \controldeusuario/cambiospos_6_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_6_2_875 )
  );
  FDRE   \controldeusuario/cambiospos_6_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_6_1_874 )
  );
  FDRE   \controldeusuario/cambiospos_6_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_6_not0001 ),
    .D(\controldeusuario/cambiospos_6_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_6_0_873 )
  );
  FDRE   \controldeusuario/cambiospos_3_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_3_not0001_838 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_3_7_829 )
  );
  FDRE   \controldeusuario/cambiospos_3_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_3_not0001_838 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_3_6_828 )
  );
  FDRE   \controldeusuario/cambiospos_3_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_3_not0001_838 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_3_5_827 )
  );
  FDRE   \controldeusuario/cambiospos_3_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_3_not0001_838 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_3_4_826 )
  );
  FDRE   \controldeusuario/cambiospos_3_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_3_not0001_838 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_3_3_825 )
  );
  FDRE   \controldeusuario/cambiospos_3_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_3_not0001_838 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_3_2_824 )
  );
  FDRE   \controldeusuario/cambiospos_3_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_3_not0001_838 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_3_1_823 )
  );
  FDRE   \controldeusuario/cambiospos_3_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_3_not0001_838 ),
    .D(\controldeusuario/cambiospos_3_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_3_0_822 )
  );
  FDRE   \controldeusuario/cambiospos_2_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_2_not0001_821 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_2_7_812 )
  );
  FDRE   \controldeusuario/cambiospos_2_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_2_not0001_821 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_2_6_811 )
  );
  FDRE   \controldeusuario/cambiospos_2_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_2_not0001_821 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_2_5_810 )
  );
  FDRE   \controldeusuario/cambiospos_2_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_2_not0001_821 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_2_4_809 )
  );
  FDRE   \controldeusuario/cambiospos_2_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_2_not0001_821 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_2_3_808 )
  );
  FDRE   \controldeusuario/cambiospos_2_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_2_not0001_821 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_2_2_807 )
  );
  FDRE   \controldeusuario/cambiospos_2_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_2_not0001_821 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_2_1_806 )
  );
  FDRE   \controldeusuario/cambiospos_2_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_2_not0001_821 ),
    .D(\controldeusuario/cambiospos_2_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_2_0_805 )
  );
  FDRE   \controldeusuario/cambiospos_1_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_1_7_794 )
  );
  FDRE   \controldeusuario/cambiospos_1_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_1_6_793 )
  );
  FDRE   \controldeusuario/cambiospos_1_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_1_5_792 )
  );
  FDRE   \controldeusuario/cambiospos_1_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_1_4_791 )
  );
  FDRE   \controldeusuario/cambiospos_1_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_1_3_790 )
  );
  FDRE   \controldeusuario/cambiospos_1_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_1_2_789 )
  );
  FDRE   \controldeusuario/cambiospos_1_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_1_1_788 )
  );
  FDRE   \controldeusuario/cambiospos_1_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_1_not0001 ),
    .D(\controldeusuario/cambiospos_1_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_1_0_787 )
  );
  FDRE   \controldeusuario/cambiospos_0_7  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_0_not0001_692 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [7]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_0_7_683 )
  );
  FDRE   \controldeusuario/cambiospos_0_6  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_0_not0001_692 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [6]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_0_6_682 )
  );
  FDRE   \controldeusuario/cambiospos_0_5  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_0_not0001_692 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [5]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_0_5_681 )
  );
  FDRE   \controldeusuario/cambiospos_0_4  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_0_not0001_692 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [4]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_0_4_680 )
  );
  FDRE   \controldeusuario/cambiospos_0_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_0_not0001_692 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [3]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_0_3_679 )
  );
  FDRE   \controldeusuario/cambiospos_0_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_0_not0001_692 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_0_2_678 )
  );
  FDRE   \controldeusuario/cambiospos_0_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_0_not0001_692 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_0_1_677 )
  );
  FDRE   \controldeusuario/cambiospos_0_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/cambiospos_0_not0001_692 ),
    .D(\controldeusuario/cambiospos_0_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/cambiospos_0_0_676 )
  );
  FDRE   \controldeusuario/puntero_3  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [0]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/puntero [3])
  );
  FDRE   \controldeusuario/puntero_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [1]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/puntero [2])
  );
  FDRE   \controldeusuario/puntero_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/puntero [1])
  );
  FDSE   \controldeusuario/puntero_0  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [3]),
    .S(reset_IBUF_1944),
    .Q(\controldeusuario/puntero [0])
  );
  FDRE   \controldeusuario/escritura  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/ADD_not0001 ),
    .D(N1),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/escritura_944 )
  );
  FDR   \controldeusuario/Maquina_out  (
    .C(clk_BUFGP_244),
    .D(N1),
    .R(\controldeusuario/Maquina_out_or0000 ),
    .Q(\controldeusuario/Maquina_out_335 )
  );
  FDRE   \controldeusuario/final  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/final_not0001_949 ),
    .D(\controldeusuario/final_mux0000 ),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/final_945 )
  );
  FDR   \inicia/state_FSM_FFd6  (
    .C(clk_BUFGP_244),
    .D(\inicia/state_FSM_FFd6-In ),
    .R(\inicia/state_or0000 ),
    .Q(\inicia/state_FSM_FFd6_1485 )
  );
  FDS   \inicia/state_FSM_FFd7  (
    .C(clk_BUFGP_244),
    .D(\inicia/state_FSM_FFd7-In ),
    .S(\inicia/state_or0000 ),
    .Q(\inicia/state_FSM_FFd7_1487 )
  );
  FDR   \inicia/state_FSM_FFd1  (
    .C(clk_BUFGP_244),
    .D(\inicia/state_FSM_FFd1-In ),
    .R(\inicia/state_or0000 ),
    .Q(\inicia/state_FSM_FFd1_1479 )
  );
  FDR   \WT/state_FSM_FFd11  (
    .C(clk_BUFGP_244),
    .D(\WT/state_FSM_FFd11-In ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd11_230 )
  );
  FDS   \WT/state_FSM_FFd12  (
    .C(clk_BUFGP_244),
    .D(\WT/state_FSM_FFd12-In ),
    .S(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd12_232 )
  );
  FDR   \WT/state_FSM_FFd1  (
    .C(clk_BUFGP_244),
    .D(\WT/state_FSM_FFd1-In ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd1_227 )
  );
  FDR   \write/state_FSM_FFd2  (
    .C(clk_BUFGP_244),
    .D(\write/state_FSM_FFd2-In ),
    .R(\write/state_or0000 ),
    .Q(\write/state_FSM_FFd2_2001 )
  );
  FDR   \write/state_FSM_FFd1  (
    .C(clk_BUFGP_244),
    .D(\write/state_FSM_FFd1-In ),
    .R(\write/state_or0000 ),
    .Q(\write/state_FSM_FFd1_1999 )
  );
  FDR   \write/final  (
    .C(clk_BUFGP_244),
    .D(\write/state_cmp_eq0003 ),
    .R(\write/state_or0000 ),
    .Q(\write/final_1998 )
  );
  FDR   \write/activa  (
    .C(clk_BUFGP_244),
    .D(\write/state_FSM_FFd2_2001 ),
    .R(\write/state_or0000 ),
    .Q(\write/activa_1953 )
  );
  FDR   \write/data_out_7  (
    .C(clk_BUFGP_244),
    .D(\write/data_out_mux0000 [0]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [7])
  );
  FDR   \write/data_out_6  (
    .C(clk_BUFGP_244),
    .D(\write/data_out_mux0000 [1]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [6])
  );
  FDR   \write/data_out_5  (
    .C(clk_BUFGP_244),
    .D(\write/data_out_mux0000 [2]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [5])
  );
  FDR   \write/data_out_4  (
    .C(clk_BUFGP_244),
    .D(\write/data_out_mux0000 [3]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [4])
  );
  FDR   \write/data_out_3  (
    .C(clk_BUFGP_244),
    .D(\write/data_out_mux0000 [4]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [3])
  );
  FDR   \write/data_out_2  (
    .C(clk_BUFGP_244),
    .D(\write/data_out_mux0000 [5]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [2])
  );
  FDR   \write/data_out_1  (
    .C(clk_BUFGP_244),
    .D(\write/data_out_mux0000 [6]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [1])
  );
  FDR   \write/data_out_0  (
    .C(clk_BUFGP_244),
    .D(\write/data_out_mux0000 [7]),
    .R(\write/state_or0000 ),
    .Q(\write/data_out [0])
  );
  FDR   \write/dir_out_7  (
    .C(clk_BUFGP_244),
    .D(\write/dir_out_mux0000[0] ),
    .R(\write/state_or0000 ),
    .Q(\write/dir_out[7] )
  );
  FDR   \write/dir_out_6  (
    .C(clk_BUFGP_244),
    .D(\write/dir_out_mux0000[1] ),
    .R(\write/state_or0000 ),
    .Q(\write/dir_out[6] )
  );
  FDR   \write/dir_out_5  (
    .C(clk_BUFGP_244),
    .D(\write/dir_out_mux0000[2] ),
    .R(\write/state_or0000 ),
    .Q(\write/dir_out[5] )
  );
  FDR   \write/dir_out_4  (
    .C(clk_BUFGP_244),
    .D(\write/dir_out_mux0000[3] ),
    .R(\write/state_or0000 ),
    .Q(\write/dir_out[4] )
  );
  FDR   \write/dir_out_2  (
    .C(clk_BUFGP_244),
    .D(\write/dir_out_mux0000[5] ),
    .R(\write/state_or0000 ),
    .Q(\write/dir_out[2] )
  );
  FDR   \write/dir_out_1  (
    .C(clk_BUFGP_244),
    .D(\write/dir_out_mux0000[6] ),
    .R(\write/state_or0000 ),
    .Q(\write/dir_out[1] )
  );
  FDR   \write/dir_out_0  (
    .C(clk_BUFGP_244),
    .D(\write/dir_out_mux0000[7] ),
    .R(\write/state_or0000 ),
    .Q(\write/dir_out[0] )
  );
  FDR   \read/state_FSM_FFd2  (
    .C(clk_BUFGP_244),
    .D(\read/state_FSM_FFd2-In ),
    .R(\read/state_or0000 ),
    .Q(\read/state_FSM_FFd2_1938 )
  );
  FDR   \read/state_FSM_FFd1  (
    .C(clk_BUFGP_244),
    .D(\read/state_FSM_FFd1-In ),
    .R(\read/state_or0000 ),
    .Q(\read/state_FSM_FFd1_1936 )
  );
  FDR   \read/activa  (
    .C(clk_BUFGP_244),
    .D(\read/state_FSM_FFd2_1938 ),
    .R(\read/state_or0000 ),
    .Q(\read/activa_1914 )
  );
  FDR   \read/w  (
    .C(clk_BUFGP_244),
    .D(\read/w_mux0000 ),
    .R(\read/state_or0000 ),
    .Q(\read/w_1941 )
  );
  FDR   \read/final  (
    .C(clk_BUFGP_244),
    .D(\read/state_FSM_FFd1_1936 ),
    .R(\read/state_or0000 ),
    .Q(\read/final_1927 )
  );
  FDR   \read/dir_out_7  (
    .C(clk_BUFGP_244),
    .D(\read/dir_out_mux0000[3] ),
    .R(\read/state_or0000 ),
    .Q(\read/dir_out[7] )
  );
  FDR   \read/dir_out_6  (
    .C(clk_BUFGP_244),
    .D(\read/dir_out_mux0000[1] ),
    .R(\read/state_or0000 ),
    .Q(\read/dir_out[6] )
  );
  FDR   \read/dir_out_5  (
    .C(clk_BUFGP_244),
    .D(\read/dir_out_mux0000[2] ),
    .R(\read/state_or0000 ),
    .Q(\read/dir_out[5] )
  );
  FDR   \read/dir_out_2  (
    .C(clk_BUFGP_244),
    .D(\read/dir_out_mux0000[5] ),
    .R(\read/state_or0000 ),
    .Q(\read/dir_out[2] )
  );
  FDR   \read/dir_out_1  (
    .C(clk_BUFGP_244),
    .D(\read/dir_out_mux0000[6] ),
    .R(\read/state_or0000 ),
    .Q(\read/dir_out[1] )
  );
  FDR   \read/dir_out_0  (
    .C(clk_BUFGP_244),
    .D(\read/dir_out_mux0000[7] ),
    .R(\read/state_or0000 ),
    .Q(\read/dir_out[0] )
  );
  FDR   \read/reg_out_3  (
    .C(clk_BUFGP_244),
    .D(\read/reg_out_mux0000 [0]),
    .R(\read/state_or0000 ),
    .Q(\read/reg_out [3])
  );
  FDR   \read/reg_out_2  (
    .C(clk_BUFGP_244),
    .D(\read/reg_out_mux0000 [1]),
    .R(\read/state_or0000 ),
    .Q(\read/reg_out [2])
  );
  FDR   \read/reg_out_1  (
    .C(clk_BUFGP_244),
    .D(\read/reg_out_mux0000 [2]),
    .R(\read/state_or0000 ),
    .Q(\read/reg_out [1])
  );
  FDR   \read/reg_out_0  (
    .C(clk_BUFGP_244),
    .D(\read/reg_out_mux0000 [3]),
    .R(\read/state_or0000 ),
    .Q(\read/reg_out [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux15_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_7_1596 ),
    .I2(\memoria/memoria1_15_7_1605 ),
    .O(\memoria/mux15_5_1763 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux15_6  (
    .I0(\memoria/memoria1_13_7_1587 ),
    .I1(\controldeusuario/ADD [0]),
    .O(\memoria/mux15_6_1766 )
  );
  MUXF5   \memoria/mux15_4_f5  (
    .I0(\memoria/mux15_6_1766 ),
    .I1(\memoria/mux15_5_1763 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux15_4_f5_1761 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux15_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_7_1565 ),
    .I2(\memoria/memoria1_11_7_1574 ),
    .O(\memoria/mux15_61_1767 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux15_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_7_1678 ),
    .I2(\memoria/memoria1_9_7_1688 ),
    .O(\memoria/mux15_7_1770 )
  );
  MUXF5   \memoria/mux15_5_f5  (
    .I0(\memoria/mux15_7_1770 ),
    .I1(\memoria/mux15_61_1767 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux15_5_f5_1764 )
  );
  MUXF6   \memoria/mux15_3_f6  (
    .I0(\memoria/mux15_5_f5_1764 ),
    .I1(\memoria/mux15_4_f5_1761 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux15_3_f6_1760 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux15_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_7_1660 ),
    .I2(\memoria/memoria1_7_7_1669 ),
    .O(\memoria/mux15_62_1768 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux15_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_7_1641 ),
    .I2(\memoria/memoria1_5_7_1651 ),
    .O(\memoria/mux15_71_1771 )
  );
  MUXF5   \memoria/mux15_5_f5_0  (
    .I0(\memoria/mux15_71_1771 ),
    .I1(\memoria/mux15_62_1768 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux15_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux15_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_7_1623 ),
    .I2(\memoria/memoria1_3_7_1632 ),
    .O(\memoria/mux15_72_1772 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux15_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_7_1555 ),
    .I2(\memoria/memoria1_1_7_1614 ),
    .O(\memoria/mux15_8_1773 )
  );
  MUXF5   \memoria/mux15_6_f5  (
    .I0(\memoria/mux15_8_1773 ),
    .I1(\memoria/mux15_72_1772 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux15_6_f5_1769 )
  );
  MUXF6   \memoria/mux15_4_f6  (
    .I0(\memoria/mux15_6_f5_1769 ),
    .I1(\memoria/mux15_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux15_4_f6_1762 )
  );
  MUXF7   \memoria/mux15_2_f7  (
    .I0(\memoria/mux15_4_f6_1762 ),
    .I1(\memoria/mux15_3_f6_1760 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux14_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_6_1595 ),
    .I2(\memoria/memoria1_15_6_1604 ),
    .O(\memoria/mux14_5_1749 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux14_6  (
    .I0(\memoria/memoria1_13_6_1586 ),
    .I1(\controldeusuario/ADD [0]),
    .O(\memoria/mux14_6_1752 )
  );
  MUXF5   \memoria/mux14_4_f5  (
    .I0(\memoria/mux14_6_1752 ),
    .I1(\memoria/mux14_5_1749 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux14_4_f5_1747 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux14_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_6_1564 ),
    .I2(\memoria/memoria1_11_6_1573 ),
    .O(\memoria/mux14_61_1753 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux14_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_6_1677 ),
    .I2(\memoria/memoria1_9_6_1687 ),
    .O(\memoria/mux14_7_1756 )
  );
  MUXF5   \memoria/mux14_5_f5  (
    .I0(\memoria/mux14_7_1756 ),
    .I1(\memoria/mux14_61_1753 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux14_5_f5_1750 )
  );
  MUXF6   \memoria/mux14_3_f6  (
    .I0(\memoria/mux14_5_f5_1750 ),
    .I1(\memoria/mux14_4_f5_1747 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux14_3_f6_1746 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux14_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_6_1659 ),
    .I2(\memoria/memoria1_7_6_1668 ),
    .O(\memoria/mux14_62_1754 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux14_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_6_1640 ),
    .I2(\memoria/memoria1_5_6_1650 ),
    .O(\memoria/mux14_71_1757 )
  );
  MUXF5   \memoria/mux14_5_f5_0  (
    .I0(\memoria/mux14_71_1757 ),
    .I1(\memoria/mux14_62_1754 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux14_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux14_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_6_1622 ),
    .I2(\memoria/memoria1_3_6_1631 ),
    .O(\memoria/mux14_72_1758 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux14_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_6_1554 ),
    .I2(\memoria/memoria1_1_6_1613 ),
    .O(\memoria/mux14_8_1759 )
  );
  MUXF5   \memoria/mux14_6_f5  (
    .I0(\memoria/mux14_8_1759 ),
    .I1(\memoria/mux14_72_1758 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux14_6_f5_1755 )
  );
  MUXF6   \memoria/mux14_4_f6  (
    .I0(\memoria/mux14_6_f5_1755 ),
    .I1(\memoria/mux14_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux14_4_f6_1748 )
  );
  MUXF7   \memoria/mux14_2_f7  (
    .I0(\memoria/mux14_4_f6_1748 ),
    .I1(\memoria/mux14_3_f6_1746 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux13_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_5_1594 ),
    .I2(\memoria/memoria1_15_5_1603 ),
    .O(\memoria/mux13_5_1735 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux13_6  (
    .I0(\memoria/memoria1_13_5_1585 ),
    .I1(\controldeusuario/ADD [0]),
    .O(\memoria/mux13_6_1738 )
  );
  MUXF5   \memoria/mux13_4_f5  (
    .I0(\memoria/mux13_6_1738 ),
    .I1(\memoria/mux13_5_1735 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux13_4_f5_1733 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux13_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_5_1563 ),
    .I2(\memoria/memoria1_11_5_1572 ),
    .O(\memoria/mux13_61_1739 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux13_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_5_1676 ),
    .I2(\memoria/memoria1_9_5_1686 ),
    .O(\memoria/mux13_7_1742 )
  );
  MUXF5   \memoria/mux13_5_f5  (
    .I0(\memoria/mux13_7_1742 ),
    .I1(\memoria/mux13_61_1739 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux13_5_f5_1736 )
  );
  MUXF6   \memoria/mux13_3_f6  (
    .I0(\memoria/mux13_5_f5_1736 ),
    .I1(\memoria/mux13_4_f5_1733 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux13_3_f6_1732 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux13_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_5_1658 ),
    .I2(\memoria/memoria1_7_5_1667 ),
    .O(\memoria/mux13_62_1740 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux13_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_5_1639 ),
    .I2(\memoria/memoria1_5_5_1649 ),
    .O(\memoria/mux13_71_1743 )
  );
  MUXF5   \memoria/mux13_5_f5_0  (
    .I0(\memoria/mux13_71_1743 ),
    .I1(\memoria/mux13_62_1740 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux13_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux13_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_5_1621 ),
    .I2(\memoria/memoria1_3_5_1630 ),
    .O(\memoria/mux13_72_1744 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux13_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_5_1553 ),
    .I2(\memoria/memoria1_1_5_1612 ),
    .O(\memoria/mux13_8_1745 )
  );
  MUXF5   \memoria/mux13_6_f5  (
    .I0(\memoria/mux13_8_1745 ),
    .I1(\memoria/mux13_72_1744 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux13_6_f5_1741 )
  );
  MUXF6   \memoria/mux13_4_f6  (
    .I0(\memoria/mux13_6_f5_1741 ),
    .I1(\memoria/mux13_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux13_4_f6_1734 )
  );
  MUXF7   \memoria/mux13_2_f7  (
    .I0(\memoria/mux13_4_f6_1734 ),
    .I1(\memoria/mux13_3_f6_1732 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux12_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_4_1593 ),
    .I2(\memoria/memoria1_15_4_1602 ),
    .O(\memoria/mux12_5_1721 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux12_6  (
    .I0(\memoria/memoria1_13_4_1584 ),
    .I1(\controldeusuario/ADD [0]),
    .O(\memoria/mux12_6_1724 )
  );
  MUXF5   \memoria/mux12_4_f5  (
    .I0(\memoria/mux12_6_1724 ),
    .I1(\memoria/mux12_5_1721 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux12_4_f5_1719 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux12_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_4_1562 ),
    .I2(\memoria/memoria1_11_4_1571 ),
    .O(\memoria/mux12_61_1725 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux12_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_4_1675 ),
    .I2(\memoria/memoria1_9_4_1685 ),
    .O(\memoria/mux12_7_1728 )
  );
  MUXF5   \memoria/mux12_5_f5  (
    .I0(\memoria/mux12_7_1728 ),
    .I1(\memoria/mux12_61_1725 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux12_5_f5_1722 )
  );
  MUXF6   \memoria/mux12_3_f6  (
    .I0(\memoria/mux12_5_f5_1722 ),
    .I1(\memoria/mux12_4_f5_1719 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux12_3_f6_1718 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux12_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_4_1657 ),
    .I2(\memoria/memoria1_7_4_1666 ),
    .O(\memoria/mux12_62_1726 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux12_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_4_1638 ),
    .I2(\memoria/memoria1_5_4_1648 ),
    .O(\memoria/mux12_71_1729 )
  );
  MUXF5   \memoria/mux12_5_f5_0  (
    .I0(\memoria/mux12_71_1729 ),
    .I1(\memoria/mux12_62_1726 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux12_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux12_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_4_1620 ),
    .I2(\memoria/memoria1_3_4_1629 ),
    .O(\memoria/mux12_72_1730 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux12_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_4_1552 ),
    .I2(\memoria/memoria1_1_4_1611 ),
    .O(\memoria/mux12_8_1731 )
  );
  MUXF5   \memoria/mux12_6_f5  (
    .I0(\memoria/mux12_8_1731 ),
    .I1(\memoria/mux12_72_1730 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux12_6_f5_1727 )
  );
  MUXF6   \memoria/mux12_4_f6  (
    .I0(\memoria/mux12_6_f5_1727 ),
    .I1(\memoria/mux12_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux12_4_f6_1720 )
  );
  MUXF7   \memoria/mux12_2_f7  (
    .I0(\memoria/mux12_4_f6_1720 ),
    .I1(\memoria/mux12_3_f6_1718 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_3_1592 ),
    .I2(\memoria/memoria1_15_3_1601 ),
    .O(\memoria/mux11_5_1707 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_6  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_12_3_1579 ),
    .I2(\memoria/memoria1_13_3_1583 ),
    .O(\memoria/mux11_6_1710 )
  );
  MUXF5   \memoria/mux11_4_f5  (
    .I0(\memoria/mux11_6_1710 ),
    .I1(\memoria/mux11_5_1707 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux11_4_f5_1705 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_3_1561 ),
    .I2(\memoria/memoria1_11_3_1570 ),
    .O(\memoria/mux11_61_1711 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_3_1674 ),
    .I2(\memoria/memoria1_9_3_1684 ),
    .O(\memoria/mux11_7_1714 )
  );
  MUXF5   \memoria/mux11_5_f5  (
    .I0(\memoria/mux11_7_1714 ),
    .I1(\memoria/mux11_61_1711 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux11_5_f5_1708 )
  );
  MUXF6   \memoria/mux11_3_f6  (
    .I0(\memoria/mux11_5_f5_1708 ),
    .I1(\memoria/mux11_4_f5_1705 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux11_3_f6_1704 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_3_1656 ),
    .I2(\memoria/memoria1_7_3_1665 ),
    .O(\memoria/mux11_62_1712 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_3_1637 ),
    .I2(\memoria/memoria1_5_3_1647 ),
    .O(\memoria/mux11_71_1715 )
  );
  MUXF5   \memoria/mux11_5_f5_0  (
    .I0(\memoria/mux11_71_1715 ),
    .I1(\memoria/mux11_62_1712 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux11_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_3_1619 ),
    .I2(\memoria/memoria1_3_3_1628 ),
    .O(\memoria/mux11_72_1716 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux11_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_3_1551 ),
    .I2(\memoria/memoria1_1_3_1610 ),
    .O(\memoria/mux11_8_1717 )
  );
  MUXF5   \memoria/mux11_6_f5  (
    .I0(\memoria/mux11_8_1717 ),
    .I1(\memoria/mux11_72_1716 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux11_6_f5_1713 )
  );
  MUXF6   \memoria/mux11_4_f6  (
    .I0(\memoria/mux11_6_f5_1713 ),
    .I1(\memoria/mux11_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux11_4_f6_1706 )
  );
  MUXF7   \memoria/mux11_2_f7  (
    .I0(\memoria/mux11_4_f6_1706 ),
    .I1(\memoria/mux11_3_f6_1704 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_2_1591 ),
    .I2(\memoria/memoria1_15_2_1600 ),
    .O(\memoria/mux10_5_1693 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_6  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_12_2_1578 ),
    .I2(\memoria/memoria1_13_2_1582 ),
    .O(\memoria/mux10_6_1696 )
  );
  MUXF5   \memoria/mux10_4_f5  (
    .I0(\memoria/mux10_6_1696 ),
    .I1(\memoria/mux10_5_1693 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux10_4_f5_1691 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_2_1560 ),
    .I2(\memoria/memoria1_11_2_1569 ),
    .O(\memoria/mux10_61_1697 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_2_1673 ),
    .I2(\memoria/memoria1_9_2_1683 ),
    .O(\memoria/mux10_7_1700 )
  );
  MUXF5   \memoria/mux10_5_f5  (
    .I0(\memoria/mux10_7_1700 ),
    .I1(\memoria/mux10_61_1697 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux10_5_f5_1694 )
  );
  MUXF6   \memoria/mux10_3_f6  (
    .I0(\memoria/mux10_5_f5_1694 ),
    .I1(\memoria/mux10_4_f5_1691 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux10_3_f6_1690 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_2_1655 ),
    .I2(\memoria/memoria1_7_2_1664 ),
    .O(\memoria/mux10_62_1698 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_2_1636 ),
    .I2(\memoria/memoria1_5_2_1646 ),
    .O(\memoria/mux10_71_1701 )
  );
  MUXF5   \memoria/mux10_5_f5_0  (
    .I0(\memoria/mux10_71_1701 ),
    .I1(\memoria/mux10_62_1698 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux10_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_2_1618 ),
    .I2(\memoria/memoria1_3_2_1627 ),
    .O(\memoria/mux10_72_1702 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux10_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_2_1550 ),
    .I2(\memoria/memoria1_1_2_1609 ),
    .O(\memoria/mux10_8_1703 )
  );
  MUXF5   \memoria/mux10_6_f5  (
    .I0(\memoria/mux10_8_1703 ),
    .I1(\memoria/mux10_72_1702 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux10_6_f5_1699 )
  );
  MUXF6   \memoria/mux10_4_f6  (
    .I0(\memoria/mux10_6_f5_1699 ),
    .I1(\memoria/mux10_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux10_4_f6_1692 )
  );
  MUXF7   \memoria/mux10_2_f7  (
    .I0(\memoria/mux10_4_f6_1692 ),
    .I1(\memoria/mux10_3_f6_1690 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_1_1590 ),
    .I2(\memoria/memoria1_15_1_1599 ),
    .O(\memoria/mux9_5_1889 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_6  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_12_1_1577 ),
    .I2(\memoria/memoria1_13_1_1581 ),
    .O(\memoria/mux9_6_1892 )
  );
  MUXF5   \memoria/mux9_4_f5  (
    .I0(\memoria/mux9_6_1892 ),
    .I1(\memoria/mux9_5_1889 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux9_4_f5_1887 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_1_1559 ),
    .I2(\memoria/memoria1_11_1_1568 ),
    .O(\memoria/mux9_61_1893 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_1_1672 ),
    .I2(\memoria/memoria1_9_1_1682 ),
    .O(\memoria/mux9_7_1896 )
  );
  MUXF5   \memoria/mux9_5_f5  (
    .I0(\memoria/mux9_7_1896 ),
    .I1(\memoria/mux9_61_1893 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux9_5_f5_1890 )
  );
  MUXF6   \memoria/mux9_3_f6  (
    .I0(\memoria/mux9_5_f5_1890 ),
    .I1(\memoria/mux9_4_f5_1887 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux9_3_f6_1886 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_1_1654 ),
    .I2(\memoria/memoria1_7_1_1663 ),
    .O(\memoria/mux9_62_1894 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_1_1635 ),
    .I2(\memoria/memoria1_5_1_1645 ),
    .O(\memoria/mux9_71_1897 )
  );
  MUXF5   \memoria/mux9_5_f5_0  (
    .I0(\memoria/mux9_71_1897 ),
    .I1(\memoria/mux9_62_1894 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux9_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_1_1617 ),
    .I2(\memoria/memoria1_3_1_1626 ),
    .O(\memoria/mux9_72_1898 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux9_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_1_1549 ),
    .I2(\memoria/memoria1_1_1_1608 ),
    .O(\memoria/mux9_8_1899 )
  );
  MUXF5   \memoria/mux9_6_f5  (
    .I0(\memoria/mux9_8_1899 ),
    .I1(\memoria/mux9_72_1898 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux9_6_f5_1895 )
  );
  MUXF6   \memoria/mux9_4_f6  (
    .I0(\memoria/mux9_6_f5_1895 ),
    .I1(\memoria/mux9_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux9_4_f6_1888 )
  );
  MUXF7   \memoria/mux9_2_f7  (
    .I0(\memoria/mux9_4_f6_1888 ),
    .I1(\memoria/mux9_3_f6_1886 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_5  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_14_0_1589 ),
    .I2(\memoria/memoria1_15_0_1598 ),
    .O(\memoria/mux8_5_1875 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_6  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_12_0_1576 ),
    .I2(\memoria/memoria1_13_0_1580 ),
    .O(\memoria/mux8_6_1878 )
  );
  MUXF5   \memoria/mux8_4_f5  (
    .I0(\memoria/mux8_6_1878 ),
    .I1(\memoria/mux8_5_1875 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux8_4_f5_1873 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_61  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_10_0_1558 ),
    .I2(\memoria/memoria1_11_0_1567 ),
    .O(\memoria/mux8_61_1879 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_7  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_8_0_1671 ),
    .I2(\memoria/memoria1_9_0_1681 ),
    .O(\memoria/mux8_7_1882 )
  );
  MUXF5   \memoria/mux8_5_f5  (
    .I0(\memoria/mux8_7_1882 ),
    .I1(\memoria/mux8_61_1879 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux8_5_f5_1876 )
  );
  MUXF6   \memoria/mux8_3_f6  (
    .I0(\memoria/mux8_5_f5_1876 ),
    .I1(\memoria/mux8_4_f5_1873 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux8_3_f6_1872 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_62  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_6_0_1653 ),
    .I2(\memoria/memoria1_7_0_1662 ),
    .O(\memoria/mux8_62_1880 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_71  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_4_0_1634 ),
    .I2(\memoria/memoria1_5_0_1644 ),
    .O(\memoria/mux8_71_1883 )
  );
  MUXF5   \memoria/mux8_5_f5_0  (
    .I0(\memoria/mux8_71_1883 ),
    .I1(\memoria/mux8_62_1880 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux8_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_72  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_2_0_1616 ),
    .I2(\memoria/memoria1_3_0_1625 ),
    .O(\memoria/mux8_72_1884 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux8_8  (
    .I0(\controldeusuario/ADD [0]),
    .I1(\memoria/memoria1_0_0_1548 ),
    .I2(\memoria/memoria1_1_0_1607 ),
    .O(\memoria/mux8_8_1885 )
  );
  MUXF5   \memoria/mux8_6_f5  (
    .I0(\memoria/mux8_8_1885 ),
    .I1(\memoria/mux8_72_1884 ),
    .S(\controldeusuario/ADD [1]),
    .O(\memoria/mux8_6_f5_1881 )
  );
  MUXF6   \memoria/mux8_4_f6  (
    .I0(\memoria/mux8_6_f5_1881 ),
    .I1(\memoria/mux8_5_f51 ),
    .S(\controldeusuario/ADD [2]),
    .O(\memoria/mux8_4_f6_1874 )
  );
  MUXF7   \memoria/mux8_2_f7  (
    .I0(\memoria/mux8_4_f6_1874 ),
    .I1(\memoria/mux8_3_f6_1872 ),
    .S(\controldeusuario/ADD [3]),
    .O(\memoria/_COND_9 [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux7_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_7_1596 ),
    .I2(\memoria/memoria1_15_7_1605 ),
    .O(\memoria/mux7_5_1861 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux7_6  (
    .I0(\memoria/memoria1_13_7_1587 ),
    .I1(ADDreadreg_0_IBUF_5),
    .O(\memoria/mux7_6_1864 )
  );
  MUXF5   \memoria/mux7_4_f5  (
    .I0(\memoria/mux7_6_1864 ),
    .I1(\memoria/mux7_5_1861 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux7_4_f5_1859 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux7_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_7_1565 ),
    .I2(\memoria/memoria1_11_7_1574 ),
    .O(\memoria/mux7_61_1865 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux7_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_7_1678 ),
    .I2(\memoria/memoria1_9_7_1688 ),
    .O(\memoria/mux7_7_1868 )
  );
  MUXF5   \memoria/mux7_5_f5  (
    .I0(\memoria/mux7_7_1868 ),
    .I1(\memoria/mux7_61_1865 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux7_5_f5_1862 )
  );
  MUXF6   \memoria/mux7_3_f6  (
    .I0(\memoria/mux7_5_f5_1862 ),
    .I1(\memoria/mux7_4_f5_1859 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux7_3_f6_1858 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux7_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_7_1660 ),
    .I2(\memoria/memoria1_7_7_1669 ),
    .O(\memoria/mux7_62_1866 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux7_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_7_1641 ),
    .I2(\memoria/memoria1_5_7_1651 ),
    .O(\memoria/mux7_71_1869 )
  );
  MUXF5   \memoria/mux7_5_f5_0  (
    .I0(\memoria/mux7_71_1869 ),
    .I1(\memoria/mux7_62_1866 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux7_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux7_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_7_1623 ),
    .I2(\memoria/memoria1_3_7_1632 ),
    .O(\memoria/mux7_72_1870 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux7_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_7_1555 ),
    .I2(\memoria/memoria1_1_7_1614 ),
    .O(\memoria/mux7_8_1871 )
  );
  MUXF5   \memoria/mux7_6_f5  (
    .I0(\memoria/mux7_8_1871 ),
    .I1(\memoria/mux7_72_1870 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux7_6_f5_1867 )
  );
  MUXF6   \memoria/mux7_4_f6  (
    .I0(\memoria/mux7_6_f5_1867 ),
    .I1(\memoria/mux7_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux7_4_f6_1860 )
  );
  MUXF7   \memoria/mux7_2_f7  (
    .I0(\memoria/mux7_4_f6_1860 ),
    .I1(\memoria/mux7_3_f6_1858 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux6_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_6_1595 ),
    .I2(\memoria/memoria1_15_6_1604 ),
    .O(\memoria/mux6_5_1847 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux6_6  (
    .I0(\memoria/memoria1_13_6_1586 ),
    .I1(ADDreadreg_0_IBUF_5),
    .O(\memoria/mux6_6_1850 )
  );
  MUXF5   \memoria/mux6_4_f5  (
    .I0(\memoria/mux6_6_1850 ),
    .I1(\memoria/mux6_5_1847 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux6_4_f5_1845 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux6_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_6_1564 ),
    .I2(\memoria/memoria1_11_6_1573 ),
    .O(\memoria/mux6_61_1851 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux6_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_6_1677 ),
    .I2(\memoria/memoria1_9_6_1687 ),
    .O(\memoria/mux6_7_1854 )
  );
  MUXF5   \memoria/mux6_5_f5  (
    .I0(\memoria/mux6_7_1854 ),
    .I1(\memoria/mux6_61_1851 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux6_5_f5_1848 )
  );
  MUXF6   \memoria/mux6_3_f6  (
    .I0(\memoria/mux6_5_f5_1848 ),
    .I1(\memoria/mux6_4_f5_1845 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux6_3_f6_1844 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux6_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_6_1659 ),
    .I2(\memoria/memoria1_7_6_1668 ),
    .O(\memoria/mux6_62_1852 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux6_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_6_1640 ),
    .I2(\memoria/memoria1_5_6_1650 ),
    .O(\memoria/mux6_71_1855 )
  );
  MUXF5   \memoria/mux6_5_f5_0  (
    .I0(\memoria/mux6_71_1855 ),
    .I1(\memoria/mux6_62_1852 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux6_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux6_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_6_1622 ),
    .I2(\memoria/memoria1_3_6_1631 ),
    .O(\memoria/mux6_72_1856 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux6_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_6_1554 ),
    .I2(\memoria/memoria1_1_6_1613 ),
    .O(\memoria/mux6_8_1857 )
  );
  MUXF5   \memoria/mux6_6_f5  (
    .I0(\memoria/mux6_8_1857 ),
    .I1(\memoria/mux6_72_1856 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux6_6_f5_1853 )
  );
  MUXF6   \memoria/mux6_4_f6  (
    .I0(\memoria/mux6_6_f5_1853 ),
    .I1(\memoria/mux6_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux6_4_f6_1846 )
  );
  MUXF7   \memoria/mux6_2_f7  (
    .I0(\memoria/mux6_4_f6_1846 ),
    .I1(\memoria/mux6_3_f6_1844 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux5_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_5_1594 ),
    .I2(\memoria/memoria1_15_5_1603 ),
    .O(\memoria/mux5_5_1833 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux5_6  (
    .I0(\memoria/memoria1_13_5_1585 ),
    .I1(ADDreadreg_0_IBUF_5),
    .O(\memoria/mux5_6_1836 )
  );
  MUXF5   \memoria/mux5_4_f5  (
    .I0(\memoria/mux5_6_1836 ),
    .I1(\memoria/mux5_5_1833 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux5_4_f5_1831 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux5_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_5_1563 ),
    .I2(\memoria/memoria1_11_5_1572 ),
    .O(\memoria/mux5_61_1837 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux5_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_5_1676 ),
    .I2(\memoria/memoria1_9_5_1686 ),
    .O(\memoria/mux5_7_1840 )
  );
  MUXF5   \memoria/mux5_5_f5  (
    .I0(\memoria/mux5_7_1840 ),
    .I1(\memoria/mux5_61_1837 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux5_5_f5_1834 )
  );
  MUXF6   \memoria/mux5_3_f6  (
    .I0(\memoria/mux5_5_f5_1834 ),
    .I1(\memoria/mux5_4_f5_1831 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux5_3_f6_1830 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux5_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_5_1658 ),
    .I2(\memoria/memoria1_7_5_1667 ),
    .O(\memoria/mux5_62_1838 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux5_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_5_1639 ),
    .I2(\memoria/memoria1_5_5_1649 ),
    .O(\memoria/mux5_71_1841 )
  );
  MUXF5   \memoria/mux5_5_f5_0  (
    .I0(\memoria/mux5_71_1841 ),
    .I1(\memoria/mux5_62_1838 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux5_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux5_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_5_1621 ),
    .I2(\memoria/memoria1_3_5_1630 ),
    .O(\memoria/mux5_72_1842 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux5_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_5_1553 ),
    .I2(\memoria/memoria1_1_5_1612 ),
    .O(\memoria/mux5_8_1843 )
  );
  MUXF5   \memoria/mux5_6_f5  (
    .I0(\memoria/mux5_8_1843 ),
    .I1(\memoria/mux5_72_1842 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux5_6_f5_1839 )
  );
  MUXF6   \memoria/mux5_4_f6  (
    .I0(\memoria/mux5_6_f5_1839 ),
    .I1(\memoria/mux5_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux5_4_f6_1832 )
  );
  MUXF7   \memoria/mux5_2_f7  (
    .I0(\memoria/mux5_4_f6_1832 ),
    .I1(\memoria/mux5_3_f6_1830 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux4_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_4_1593 ),
    .I2(\memoria/memoria1_15_4_1602 ),
    .O(\memoria/mux4_5_1819 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \memoria/mux4_6  (
    .I0(\memoria/memoria1_13_4_1584 ),
    .I1(ADDreadreg_0_IBUF_5),
    .O(\memoria/mux4_6_1822 )
  );
  MUXF5   \memoria/mux4_4_f5  (
    .I0(\memoria/mux4_6_1822 ),
    .I1(\memoria/mux4_5_1819 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux4_4_f5_1817 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux4_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_4_1562 ),
    .I2(\memoria/memoria1_11_4_1571 ),
    .O(\memoria/mux4_61_1823 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux4_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_4_1675 ),
    .I2(\memoria/memoria1_9_4_1685 ),
    .O(\memoria/mux4_7_1826 )
  );
  MUXF5   \memoria/mux4_5_f5  (
    .I0(\memoria/mux4_7_1826 ),
    .I1(\memoria/mux4_61_1823 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux4_5_f5_1820 )
  );
  MUXF6   \memoria/mux4_3_f6  (
    .I0(\memoria/mux4_5_f5_1820 ),
    .I1(\memoria/mux4_4_f5_1817 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux4_3_f6_1816 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux4_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_4_1657 ),
    .I2(\memoria/memoria1_7_4_1666 ),
    .O(\memoria/mux4_62_1824 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux4_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_4_1638 ),
    .I2(\memoria/memoria1_5_4_1648 ),
    .O(\memoria/mux4_71_1827 )
  );
  MUXF5   \memoria/mux4_5_f5_0  (
    .I0(\memoria/mux4_71_1827 ),
    .I1(\memoria/mux4_62_1824 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux4_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux4_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_4_1620 ),
    .I2(\memoria/memoria1_3_4_1629 ),
    .O(\memoria/mux4_72_1828 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux4_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_4_1552 ),
    .I2(\memoria/memoria1_1_4_1611 ),
    .O(\memoria/mux4_8_1829 )
  );
  MUXF5   \memoria/mux4_6_f5  (
    .I0(\memoria/mux4_8_1829 ),
    .I1(\memoria/mux4_72_1828 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux4_6_f5_1825 )
  );
  MUXF6   \memoria/mux4_4_f6  (
    .I0(\memoria/mux4_6_f5_1825 ),
    .I1(\memoria/mux4_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux4_4_f6_1818 )
  );
  MUXF7   \memoria/mux4_2_f7  (
    .I0(\memoria/mux4_4_f6_1818 ),
    .I1(\memoria/mux4_3_f6_1816 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_3_1592 ),
    .I2(\memoria/memoria1_15_3_1601 ),
    .O(\memoria/mux3_5_1805 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_6  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_12_3_1579 ),
    .I2(\memoria/memoria1_13_3_1583 ),
    .O(\memoria/mux3_6_1808 )
  );
  MUXF5   \memoria/mux3_4_f5  (
    .I0(\memoria/mux3_6_1808 ),
    .I1(\memoria/mux3_5_1805 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux3_4_f5_1803 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_3_1561 ),
    .I2(\memoria/memoria1_11_3_1570 ),
    .O(\memoria/mux3_61_1809 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_3_1674 ),
    .I2(\memoria/memoria1_9_3_1684 ),
    .O(\memoria/mux3_7_1812 )
  );
  MUXF5   \memoria/mux3_5_f5  (
    .I0(\memoria/mux3_7_1812 ),
    .I1(\memoria/mux3_61_1809 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux3_5_f5_1806 )
  );
  MUXF6   \memoria/mux3_3_f6  (
    .I0(\memoria/mux3_5_f5_1806 ),
    .I1(\memoria/mux3_4_f5_1803 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux3_3_f6_1802 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_3_1656 ),
    .I2(\memoria/memoria1_7_3_1665 ),
    .O(\memoria/mux3_62_1810 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_3_1637 ),
    .I2(\memoria/memoria1_5_3_1647 ),
    .O(\memoria/mux3_71_1813 )
  );
  MUXF5   \memoria/mux3_5_f5_0  (
    .I0(\memoria/mux3_71_1813 ),
    .I1(\memoria/mux3_62_1810 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux3_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_3_1619 ),
    .I2(\memoria/memoria1_3_3_1628 ),
    .O(\memoria/mux3_72_1814 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux3_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_3_1551 ),
    .I2(\memoria/memoria1_1_3_1610 ),
    .O(\memoria/mux3_8_1815 )
  );
  MUXF5   \memoria/mux3_6_f5  (
    .I0(\memoria/mux3_8_1815 ),
    .I1(\memoria/mux3_72_1814 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux3_6_f5_1811 )
  );
  MUXF6   \memoria/mux3_4_f6  (
    .I0(\memoria/mux3_6_f5_1811 ),
    .I1(\memoria/mux3_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux3_4_f6_1804 )
  );
  MUXF7   \memoria/mux3_2_f7  (
    .I0(\memoria/mux3_4_f6_1804 ),
    .I1(\memoria/mux3_3_f6_1802 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_2_1591 ),
    .I2(\memoria/memoria1_15_2_1600 ),
    .O(\memoria/mux2_5_1791 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_6  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_12_2_1578 ),
    .I2(\memoria/memoria1_13_2_1582 ),
    .O(\memoria/mux2_6_1794 )
  );
  MUXF5   \memoria/mux2_4_f5  (
    .I0(\memoria/mux2_6_1794 ),
    .I1(\memoria/mux2_5_1791 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux2_4_f5_1789 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_2_1560 ),
    .I2(\memoria/memoria1_11_2_1569 ),
    .O(\memoria/mux2_61_1795 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_2_1673 ),
    .I2(\memoria/memoria1_9_2_1683 ),
    .O(\memoria/mux2_7_1798 )
  );
  MUXF5   \memoria/mux2_5_f5  (
    .I0(\memoria/mux2_7_1798 ),
    .I1(\memoria/mux2_61_1795 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux2_5_f5_1792 )
  );
  MUXF6   \memoria/mux2_3_f6  (
    .I0(\memoria/mux2_5_f5_1792 ),
    .I1(\memoria/mux2_4_f5_1789 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux2_3_f6_1788 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_2_1655 ),
    .I2(\memoria/memoria1_7_2_1664 ),
    .O(\memoria/mux2_62_1796 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_2_1636 ),
    .I2(\memoria/memoria1_5_2_1646 ),
    .O(\memoria/mux2_71_1799 )
  );
  MUXF5   \memoria/mux2_5_f5_0  (
    .I0(\memoria/mux2_71_1799 ),
    .I1(\memoria/mux2_62_1796 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux2_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_2_1618 ),
    .I2(\memoria/memoria1_3_2_1627 ),
    .O(\memoria/mux2_72_1800 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux2_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_2_1550 ),
    .I2(\memoria/memoria1_1_2_1609 ),
    .O(\memoria/mux2_8_1801 )
  );
  MUXF5   \memoria/mux2_6_f5  (
    .I0(\memoria/mux2_8_1801 ),
    .I1(\memoria/mux2_72_1800 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux2_6_f5_1797 )
  );
  MUXF6   \memoria/mux2_4_f6  (
    .I0(\memoria/mux2_6_f5_1797 ),
    .I1(\memoria/mux2_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux2_4_f6_1790 )
  );
  MUXF7   \memoria/mux2_2_f7  (
    .I0(\memoria/mux2_4_f6_1790 ),
    .I1(\memoria/mux2_3_f6_1788 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_1_1590 ),
    .I2(\memoria/memoria1_15_1_1599 ),
    .O(\memoria/mux1_5_1777 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_6  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_12_1_1577 ),
    .I2(\memoria/memoria1_13_1_1581 ),
    .O(\memoria/mux1_6_1780 )
  );
  MUXF5   \memoria/mux1_4_f5  (
    .I0(\memoria/mux1_6_1780 ),
    .I1(\memoria/mux1_5_1777 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux1_4_f5_1775 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_1_1559 ),
    .I2(\memoria/memoria1_11_1_1568 ),
    .O(\memoria/mux1_61_1781 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_1_1672 ),
    .I2(\memoria/memoria1_9_1_1682 ),
    .O(\memoria/mux1_7_1784 )
  );
  MUXF5   \memoria/mux1_5_f5  (
    .I0(\memoria/mux1_7_1784 ),
    .I1(\memoria/mux1_61_1781 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux1_5_f5_1778 )
  );
  MUXF6   \memoria/mux1_3_f6  (
    .I0(\memoria/mux1_5_f5_1778 ),
    .I1(\memoria/mux1_4_f5_1775 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux1_3_f6_1774 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_1_1654 ),
    .I2(\memoria/memoria1_7_1_1663 ),
    .O(\memoria/mux1_62_1782 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_1_1635 ),
    .I2(\memoria/memoria1_5_1_1645 ),
    .O(\memoria/mux1_71_1785 )
  );
  MUXF5   \memoria/mux1_5_f5_0  (
    .I0(\memoria/mux1_71_1785 ),
    .I1(\memoria/mux1_62_1782 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux1_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_1_1617 ),
    .I2(\memoria/memoria1_3_1_1626 ),
    .O(\memoria/mux1_72_1786 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux1_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_1_1549 ),
    .I2(\memoria/memoria1_1_1_1608 ),
    .O(\memoria/mux1_8_1787 )
  );
  MUXF5   \memoria/mux1_6_f5  (
    .I0(\memoria/mux1_8_1787 ),
    .I1(\memoria/mux1_72_1786 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux1_6_f5_1783 )
  );
  MUXF6   \memoria/mux1_4_f6  (
    .I0(\memoria/mux1_6_f5_1783 ),
    .I1(\memoria/mux1_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux1_4_f6_1776 )
  );
  MUXF7   \memoria/mux1_2_f7  (
    .I0(\memoria/mux1_4_f6_1776 ),
    .I1(\memoria/mux1_3_f6_1774 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_5  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_14_0_1589 ),
    .I2(\memoria/memoria1_15_0_1598 ),
    .O(\memoria/mux_5_1903 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_6  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_12_0_1576 ),
    .I2(\memoria/memoria1_13_0_1580 ),
    .O(\memoria/mux_6_1906 )
  );
  MUXF5   \memoria/mux_4_f5  (
    .I0(\memoria/mux_6_1906 ),
    .I1(\memoria/mux_5_1903 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux_4_f5_1901 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_61  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_10_0_1558 ),
    .I2(\memoria/memoria1_11_0_1567 ),
    .O(\memoria/mux_61_1907 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_7  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_8_0_1671 ),
    .I2(\memoria/memoria1_9_0_1681 ),
    .O(\memoria/mux_7_1910 )
  );
  MUXF5   \memoria/mux_5_f5  (
    .I0(\memoria/mux_7_1910 ),
    .I1(\memoria/mux_61_1907 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux_5_f5_1904 )
  );
  MUXF6   \memoria/mux_3_f6  (
    .I0(\memoria/mux_5_f5_1904 ),
    .I1(\memoria/mux_4_f5_1901 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux_3_f6_1900 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_62  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_6_0_1653 ),
    .I2(\memoria/memoria1_7_0_1662 ),
    .O(\memoria/mux_62_1908 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_71  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_4_0_1634 ),
    .I2(\memoria/memoria1_5_0_1644 ),
    .O(\memoria/mux_71_1911 )
  );
  MUXF5   \memoria/mux_5_f5_0  (
    .I0(\memoria/mux_71_1911 ),
    .I1(\memoria/mux_62_1908 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_72  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_2_0_1616 ),
    .I2(\memoria/memoria1_3_0_1625 ),
    .O(\memoria/mux_72_1912 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \memoria/mux_8  (
    .I0(ADDreadreg_0_IBUF_5),
    .I1(\memoria/memoria1_0_0_1548 ),
    .I2(\memoria/memoria1_1_0_1607 ),
    .O(\memoria/mux_8_1913 )
  );
  MUXF5   \memoria/mux_6_f5  (
    .I0(\memoria/mux_8_1913 ),
    .I1(\memoria/mux_72_1912 ),
    .S(ADDreadreg_1_IBUF_6),
    .O(\memoria/mux_6_f5_1909 )
  );
  MUXF6   \memoria/mux_4_f6  (
    .I0(\memoria/mux_6_f5_1909 ),
    .I1(\memoria/mux_5_f51 ),
    .S(ADDreadreg_2_IBUF_7),
    .O(\memoria/mux_4_f6_1902 )
  );
  MUXF7   \memoria/mux_2_f7  (
    .I0(\memoria/mux_4_f6_1902 ),
    .I1(\memoria/mux_3_f6_1900 ),
    .S(ADDreadreg_3_IBUF_8),
    .O(\memoria/_COND_8 [0])
  );
  FDR   \memoria/Dato3_7  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_9 [7]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato3 [7])
  );
  FDR   \memoria/Dato3_6  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_9 [6]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato3 [6])
  );
  FDR   \memoria/Dato3_5  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_9 [5]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato3 [5])
  );
  FDR   \memoria/Dato3_4  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_9 [4]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato3 [4])
  );
  FDR   \memoria/Dato3_3  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_9 [3]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato3 [3])
  );
  FDR   \memoria/Dato3_2  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_9 [2]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato3 [2])
  );
  FDR   \memoria/Dato3_1  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_9 [1]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato3 [1])
  );
  FDR   \memoria/Dato3_0  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_9 [0]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato3 [0])
  );
  FDR   \memoria/Dato2_7  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_8 [7]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato2 [7])
  );
  FDR   \memoria/Dato2_6  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_8 [6]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato2 [6])
  );
  FDR   \memoria/Dato2_5  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_8 [5]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato2 [5])
  );
  FDR   \memoria/Dato2_4  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_8 [4]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato2 [4])
  );
  FDR   \memoria/Dato2_3  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_8 [3]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato2 [3])
  );
  FDR   \memoria/Dato2_2  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_8 [2]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato2 [2])
  );
  FDR   \memoria/Dato2_1  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_8 [1]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato2 [1])
  );
  FDR   \memoria/Dato2_0  (
    .C(clk_BUFGP_244),
    .D(\memoria/_COND_8 [0]),
    .R(reset_IBUF_1944),
    .Q(\memoria/Dato2 [0])
  );
  FD   \memoria/memoria1_12_3  (
    .C(clk_BUFGP_244),
    .D(\controldeusuario/punteroOut [3]),
    .Q(\memoria/memoria1_12_3_1579 )
  );
  FD   \memoria/memoria1_12_2  (
    .C(clk_BUFGP_244),
    .D(\controldeusuario/punteroOut [2]),
    .Q(\memoria/memoria1_12_2_1578 )
  );
  FD   \memoria/memoria1_12_1  (
    .C(clk_BUFGP_244),
    .D(\controldeusuario/punteroOut [1]),
    .Q(\memoria/memoria1_12_1_1577 )
  );
  FD   \memoria/memoria1_12_0  (
    .C(clk_BUFGP_244),
    .D(\controldeusuario/punteroOut [0]),
    .Q(\memoria/memoria1_12_0_1576 )
  );
  FDRE   \memoria/memoria1_15_7  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_7_IBUF_2022),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_15_7_1605 )
  );
  FDRE   \memoria/memoria1_15_6  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_6_IBUF_2021),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_15_6_1604 )
  );
  FDRE   \memoria/memoria1_15_5  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_5_IBUF_2020),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_15_5_1603 )
  );
  FDRE   \memoria/memoria1_15_4  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_4_IBUF_2019),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_15_4_1602 )
  );
  FDRE   \memoria/memoria1_15_3  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_3_IBUF_2018),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_15_3_1601 )
  );
  FDRE   \memoria/memoria1_15_2  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_2_IBUF_2017),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_15_2_1600 )
  );
  FDRE   \memoria/memoria1_15_1  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_1_IBUF_2016),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_15_1_1599 )
  );
  FDRE   \memoria/memoria1_15_0  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_15_not0001 ),
    .D(writedata_0_IBUF_2015),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_15_0_1598 )
  );
  FDRE   \memoria/memoria1_14_7  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_7_IBUF_2022),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_14_7_1596 )
  );
  FDRE   \memoria/memoria1_14_6  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_6_IBUF_2021),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_14_6_1595 )
  );
  FDRE   \memoria/memoria1_14_5  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_5_IBUF_2020),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_14_5_1594 )
  );
  FDRE   \memoria/memoria1_14_4  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_4_IBUF_2019),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_14_4_1593 )
  );
  FDRE   \memoria/memoria1_14_3  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_3_IBUF_2018),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_14_3_1592 )
  );
  FDRE   \memoria/memoria1_14_2  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_2_IBUF_2017),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_14_2_1591 )
  );
  FDRE   \memoria/memoria1_14_1  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_1_IBUF_2016),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_14_1_1590 )
  );
  FDRE   \memoria/memoria1_14_0  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_14_not0001 ),
    .D(writedata_0_IBUF_2015),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_14_0_1589 )
  );
  FDRE   \memoria/memoria1_13_7  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_7_IBUF_2022),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_13_7_1587 )
  );
  FDRE   \memoria/memoria1_13_6  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_6_IBUF_2021),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_13_6_1586 )
  );
  FDRE   \memoria/memoria1_13_5  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_5_IBUF_2020),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_13_5_1585 )
  );
  FDRE   \memoria/memoria1_13_4  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_4_IBUF_2019),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_13_4_1584 )
  );
  FDRE   \memoria/memoria1_13_3  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_3_IBUF_2018),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_13_3_1583 )
  );
  FDRE   \memoria/memoria1_13_2  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_2_IBUF_2017),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_13_2_1582 )
  );
  FDRE   \memoria/memoria1_13_1  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_1_IBUF_2016),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_13_1_1581 )
  );
  FDRE   \memoria/memoria1_13_0  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_13_not0001 ),
    .D(writedata_0_IBUF_2015),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_13_0_1580 )
  );
  FDRE   \memoria/memoria1_11_7  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_7_IBUF_2022),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_11_7_1574 )
  );
  FDRE   \memoria/memoria1_11_6  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_6_IBUF_2021),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_11_6_1573 )
  );
  FDRE   \memoria/memoria1_11_5  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_5_IBUF_2020),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_11_5_1572 )
  );
  FDRE   \memoria/memoria1_11_4  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_4_IBUF_2019),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_11_4_1571 )
  );
  FDRE   \memoria/memoria1_11_3  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_3_IBUF_2018),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_11_3_1570 )
  );
  FDRE   \memoria/memoria1_11_2  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_2_IBUF_2017),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_11_2_1569 )
  );
  FDRE   \memoria/memoria1_11_1  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_1_IBUF_2016),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_11_1_1568 )
  );
  FDRE   \memoria/memoria1_11_0  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_11_not0001 ),
    .D(writedata_0_IBUF_2015),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_11_0_1567 )
  );
  FDRE   \memoria/memoria1_9_7  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_7_IBUF_2022),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_9_7_1688 )
  );
  FDRE   \memoria/memoria1_9_6  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_6_IBUF_2021),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_9_6_1687 )
  );
  FDRE   \memoria/memoria1_9_5  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_5_IBUF_2020),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_9_5_1686 )
  );
  FDRE   \memoria/memoria1_9_4  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_4_IBUF_2019),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_9_4_1685 )
  );
  FDRE   \memoria/memoria1_9_3  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_3_IBUF_2018),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_9_3_1684 )
  );
  FDRE   \memoria/memoria1_9_2  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_2_IBUF_2017),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_9_2_1683 )
  );
  FDRE   \memoria/memoria1_9_1  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_1_IBUF_2016),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_9_1_1682 )
  );
  FDRE   \memoria/memoria1_9_0  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_9_not0001 ),
    .D(writedata_0_IBUF_2015),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_9_0_1681 )
  );
  FDRE   \memoria/memoria1_8_7  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_7_IBUF_2022),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_8_7_1678 )
  );
  FDRE   \memoria/memoria1_8_6  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_6_IBUF_2021),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_8_6_1677 )
  );
  FDRE   \memoria/memoria1_8_5  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_5_IBUF_2020),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_8_5_1676 )
  );
  FDRE   \memoria/memoria1_8_4  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_4_IBUF_2019),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_8_4_1675 )
  );
  FDRE   \memoria/memoria1_8_3  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_3_IBUF_2018),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_8_3_1674 )
  );
  FDRE   \memoria/memoria1_8_2  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_2_IBUF_2017),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_8_2_1673 )
  );
  FDRE   \memoria/memoria1_8_1  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_1_IBUF_2016),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_8_1_1672 )
  );
  FDRE   \memoria/memoria1_8_0  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_8_not0001 ),
    .D(writedata_0_IBUF_2015),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_8_0_1671 )
  );
  FDRE   \memoria/memoria1_10_7  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_7_IBUF_2022),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_10_7_1565 )
  );
  FDRE   \memoria/memoria1_10_6  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_6_IBUF_2021),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_10_6_1564 )
  );
  FDRE   \memoria/memoria1_10_5  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_5_IBUF_2020),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_10_5_1563 )
  );
  FDRE   \memoria/memoria1_10_4  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_4_IBUF_2019),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_10_4_1562 )
  );
  FDRE   \memoria/memoria1_10_3  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_3_IBUF_2018),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_10_3_1561 )
  );
  FDRE   \memoria/memoria1_10_2  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_2_IBUF_2017),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_10_2_1560 )
  );
  FDRE   \memoria/memoria1_10_1  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_1_IBUF_2016),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_10_1_1559 )
  );
  FDRE   \memoria/memoria1_10_0  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_10_not0001 ),
    .D(writedata_0_IBUF_2015),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_10_0_1558 )
  );
  FDRE   \memoria/memoria1_7_7  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_7_IBUF_2022),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_7_7_1669 )
  );
  FDRE   \memoria/memoria1_7_6  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_6_IBUF_2021),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_7_6_1668 )
  );
  FDRE   \memoria/memoria1_7_5  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_5_IBUF_2020),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_7_5_1667 )
  );
  FDRE   \memoria/memoria1_7_4  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_4_IBUF_2019),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_7_4_1666 )
  );
  FDRE   \memoria/memoria1_7_3  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_3_IBUF_2018),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_7_3_1665 )
  );
  FDRE   \memoria/memoria1_7_2  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_2_IBUF_2017),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_7_2_1664 )
  );
  FDRE   \memoria/memoria1_7_1  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_1_IBUF_2016),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_7_1_1663 )
  );
  FDRE   \memoria/memoria1_7_0  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_7_not0001 ),
    .D(writedata_0_IBUF_2015),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_7_0_1662 )
  );
  FDRE   \memoria/memoria1_6_7  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_7_IBUF_2022),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_6_7_1660 )
  );
  FDRE   \memoria/memoria1_6_6  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_6_IBUF_2021),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_6_6_1659 )
  );
  FDRE   \memoria/memoria1_6_5  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_5_IBUF_2020),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_6_5_1658 )
  );
  FDRE   \memoria/memoria1_6_4  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_4_IBUF_2019),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_6_4_1657 )
  );
  FDRE   \memoria/memoria1_6_3  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_3_IBUF_2018),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_6_3_1656 )
  );
  FDRE   \memoria/memoria1_6_2  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_2_IBUF_2017),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_6_2_1655 )
  );
  FDRE   \memoria/memoria1_6_1  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_1_IBUF_2016),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_6_1_1654 )
  );
  FDRE   \memoria/memoria1_6_0  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_6_not0001 ),
    .D(writedata_0_IBUF_2015),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_6_0_1653 )
  );
  FDRE   \memoria/memoria1_4_7  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_7_IBUF_2022),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_4_7_1641 )
  );
  FDRE   \memoria/memoria1_4_6  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_6_IBUF_2021),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_4_6_1640 )
  );
  FDRE   \memoria/memoria1_4_5  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_5_IBUF_2020),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_4_5_1639 )
  );
  FDRE   \memoria/memoria1_4_4  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_4_IBUF_2019),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_4_4_1638 )
  );
  FDRE   \memoria/memoria1_4_3  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_3_IBUF_2018),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_4_3_1637 )
  );
  FDRE   \memoria/memoria1_4_2  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_2_IBUF_2017),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_4_2_1636 )
  );
  FDRE   \memoria/memoria1_4_1  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_1_IBUF_2016),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_4_1_1635 )
  );
  FDRE   \memoria/memoria1_4_0  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_4_not0001 ),
    .D(writedata_0_IBUF_2015),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_4_0_1634 )
  );
  FDRE   \memoria/memoria1_3_7  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_7_IBUF_2022),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_3_7_1632 )
  );
  FDRE   \memoria/memoria1_3_6  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_6_IBUF_2021),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_3_6_1631 )
  );
  FDRE   \memoria/memoria1_3_5  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_5_IBUF_2020),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_3_5_1630 )
  );
  FDRE   \memoria/memoria1_3_4  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_4_IBUF_2019),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_3_4_1629 )
  );
  FDRE   \memoria/memoria1_3_3  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_3_IBUF_2018),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_3_3_1628 )
  );
  FDRE   \memoria/memoria1_3_2  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_2_IBUF_2017),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_3_2_1627 )
  );
  FDRE   \memoria/memoria1_3_1  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_1_IBUF_2016),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_3_1_1626 )
  );
  FDRE   \memoria/memoria1_3_0  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_3_not0001 ),
    .D(writedata_0_IBUF_2015),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_3_0_1625 )
  );
  FDRE   \memoria/memoria1_5_7  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_7_IBUF_2022),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_5_7_1651 )
  );
  FDRE   \memoria/memoria1_5_6  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_6_IBUF_2021),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_5_6_1650 )
  );
  FDRE   \memoria/memoria1_5_5  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_5_IBUF_2020),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_5_5_1649 )
  );
  FDRE   \memoria/memoria1_5_4  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_4_IBUF_2019),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_5_4_1648 )
  );
  FDRE   \memoria/memoria1_5_3  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_3_IBUF_2018),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_5_3_1647 )
  );
  FDRE   \memoria/memoria1_5_2  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_2_IBUF_2017),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_5_2_1646 )
  );
  FDRE   \memoria/memoria1_5_1  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_1_IBUF_2016),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_5_1_1645 )
  );
  FDRE   \memoria/memoria1_5_0  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_5_not0001 ),
    .D(writedata_0_IBUF_2015),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_5_0_1644 )
  );
  FDRE   \memoria/memoria1_2_7  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_7_IBUF_2022),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_2_7_1623 )
  );
  FDRE   \memoria/memoria1_2_6  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_6_IBUF_2021),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_2_6_1622 )
  );
  FDRE   \memoria/memoria1_2_5  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_5_IBUF_2020),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_2_5_1621 )
  );
  FDRE   \memoria/memoria1_2_4  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_4_IBUF_2019),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_2_4_1620 )
  );
  FDRE   \memoria/memoria1_2_3  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_3_IBUF_2018),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_2_3_1619 )
  );
  FDRE   \memoria/memoria1_2_2  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_2_IBUF_2017),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_2_2_1618 )
  );
  FDRE   \memoria/memoria1_2_1  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_1_IBUF_2016),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_2_1_1617 )
  );
  FDRE   \memoria/memoria1_2_0  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_2_not0001 ),
    .D(writedata_0_IBUF_2015),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_2_0_1616 )
  );
  FDRE   \memoria/memoria1_1_7  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_7_IBUF_2022),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_1_7_1614 )
  );
  FDRE   \memoria/memoria1_1_6  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_6_IBUF_2021),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_1_6_1613 )
  );
  FDRE   \memoria/memoria1_1_5  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_5_IBUF_2020),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_1_5_1612 )
  );
  FDRE   \memoria/memoria1_1_4  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_4_IBUF_2019),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_1_4_1611 )
  );
  FDRE   \memoria/memoria1_1_3  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_3_IBUF_2018),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_1_3_1610 )
  );
  FDRE   \memoria/memoria1_1_2  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_2_IBUF_2017),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_1_2_1609 )
  );
  FDRE   \memoria/memoria1_1_1  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_1_IBUF_2016),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_1_1_1608 )
  );
  FDRE   \memoria/memoria1_1_0  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_1_not0001 ),
    .D(writedata_0_IBUF_2015),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_1_0_1607 )
  );
  FDRE   \memoria/memoria1_0_7  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_7_IBUF_2022),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_0_7_1555 )
  );
  FDRE   \memoria/memoria1_0_6  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_6_IBUF_2021),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_0_6_1554 )
  );
  FDRE   \memoria/memoria1_0_5  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_5_IBUF_2020),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_0_5_1553 )
  );
  FDRE   \memoria/memoria1_0_4  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_4_IBUF_2019),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_0_4_1552 )
  );
  FDRE   \memoria/memoria1_0_3  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_3_IBUF_2018),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_0_3_1551 )
  );
  FDRE   \memoria/memoria1_0_2  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_2_IBUF_2017),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_0_2_1550 )
  );
  FDRE   \memoria/memoria1_0_1  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_1_IBUF_2016),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_0_1_1549 )
  );
  FDRE   \memoria/memoria1_0_0  (
    .C(clk_BUFGP_244),
    .CE(\memoria/memoria1_0_not0001 ),
    .D(writedata_0_IBUF_2015),
    .R(reset_IBUF_1944),
    .Q(\memoria/memoria1_0_0_1548 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \write/state_FSM_Out31  (
    .I0(\write/state_FSM_FFd1_1999 ),
    .I1(\write/state_FSM_FFd2_2001 ),
    .O(\write/state_cmp_eq0003 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/w_mux00001  (
    .I0(\read/state_FSM_FFd2_1938 ),
    .I1(\WT/lectura_219 ),
    .O(\read/w_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/state_FSM_FFd1-In1  (
    .I0(\Cront_out/final_63 ),
    .I1(\read/state_FSM_FFd2_1938 ),
    .O(\read/state_FSM_FFd1-In )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/reg_out_mux0000<3>1  (
    .I0(\read/state_FSM_FFd2_1938 ),
    .I1(\WT/dir_reg [0]),
    .O(\read/reg_out_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/reg_out_mux0000<2>1  (
    .I0(\read/state_FSM_FFd2_1938 ),
    .I1(\WT/dir_reg [1]),
    .O(\read/reg_out_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/reg_out_mux0000<1>1  (
    .I0(\read/state_FSM_FFd2_1938 ),
    .I1(\WT/dir_reg [2]),
    .O(\read/reg_out_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/reg_out_mux0000<0>1  (
    .I0(\read/state_FSM_FFd2_1938 ),
    .I1(\WT/dir_reg [3]),
    .O(\read/reg_out_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/dir_out_mux0000<7>1  (
    .I0(\read/state_FSM_FFd2_1938 ),
    .I1(\WT/dir[0] ),
    .O(\read/dir_out_mux0000[7] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/dir_out_mux0000<6>1  (
    .I0(\read/state_FSM_FFd2_1938 ),
    .I1(\WT/dir[1] ),
    .O(\read/dir_out_mux0000[6] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/dir_out_mux0000<5>1  (
    .I0(\read/state_FSM_FFd2_1938 ),
    .I1(\WT/dir[2] ),
    .O(\read/dir_out_mux0000[5] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/dir_out_mux0000<3>1  (
    .I0(\read/state_FSM_FFd2_1938 ),
    .I1(\WT/escritura_217 ),
    .O(\read/dir_out_mux0000[3] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/dir_out_mux0000<2>1  (
    .I0(\read/state_FSM_FFd2_1938 ),
    .I1(\WT/dir[5] ),
    .O(\read/dir_out_mux0000[2] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \read/dir_out_mux0000<1>1  (
    .I0(\read/state_FSM_FFd2_1938 ),
    .I1(\WT/dir[6] ),
    .O(\read/dir_out_mux0000[1] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \maquinaprincipal/State_mux0001<2>1  (
    .I0(\maquinaprincipal/State [1]),
    .I1(\WT/final_218 ),
    .O(\maquinaprincipal/State_mux0001 [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \inicia/state_FSM_FFd1-In1  (
    .I0(\write/final_1998 ),
    .I1(\inicia/state_FSM_FFd2_1481 ),
    .O(\inicia/state_FSM_FFd1-In )
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
    .I1(\write/state_FSM_FFd2_2001 ),
    .I2(\write/state_FSM_FFd1_1999 ),
    .O(\write/state_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \inicia/state_FSM_FFd7-In1  (
    .I0(\maquinaprincipal/iniciar_1511 ),
    .I1(\inicia/state_FSM_FFd7_1487 ),
    .I2(\inicia/state_FSM_FFd1_1479 ),
    .O(\inicia/state_FSM_FFd7-In )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/state_FSM_FFd12-In1  (
    .I0(\maquinaprincipal/whileT_1512 ),
    .I1(\WT/state_FSM_FFd12_232 ),
    .I2(\WT/state_FSM_FFd1_227 ),
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
    .I0(\WT/escritura_217 ),
    .I1(\maquinaprincipal/whileT_1512 ),
    .I2(\write/state_FSM_FFd2_2001 ),
    .I3(\write/state_FSM_FFd1_1999 ),
    .O(\write/dir_out_mux0000[0] )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \maquinaprincipal/State_mux0001<3>1  (
    .I0(\maquinaprincipal/State [3]),
    .I1(\controldeusuario/final_945 ),
    .I2(\maquinaprincipal/State [2]),
    .I3(\controldeusuario/Maquina_out_335 ),
    .O(\maquinaprincipal/State_mux0001 [3])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \inicia/state_FSM_FFd6-In1  (
    .I0(\inicia/state_FSM_FFd6_1485 ),
    .I1(\write/final_1998 ),
    .I2(\maquinaprincipal/iniciar_1511 ),
    .I3(\inicia/state_FSM_FFd7_1487 ),
    .O(\inicia/state_FSM_FFd6-In )
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
    .I0(\read/state_FSM_FFd2_1938 ),
    .I1(\read/state_FSM_FFd1_1936 ),
    .I2(\WT/lectura_219 ),
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
  LUT3 #(
    .INIT ( 8'hEF ))
  \write/data_out_mux0000<5>_SW0  (
    .I0(\maquinaprincipal/whileT_1512 ),
    .I1(\write/state_FSM_FFd1_1999 ),
    .I2(\write/state_FSM_FFd2_2001 ),
    .O(N6)
  );
  LUT4 #(
    .INIT ( 16'h0D08 ))
  \write/data_out_mux0000<5>  (
    .I0(\maquinaprincipal/iniciar_1511 ),
    .I1(\inicia/dato [0]),
    .I2(N6),
    .I3(\controldeusuario/Dato_out [2]),
    .O(\write/data_out_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h0D08 ))
  \write/data_out_mux0000<4>  (
    .I0(\maquinaprincipal/iniciar_1511 ),
    .I1(\inicia/dato [1]),
    .I2(N6),
    .I3(\controldeusuario/Dato_out [3]),
    .O(\write/data_out_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \maquinaprincipal/State_mux0001<1>4  (
    .I0(\maquinaprincipal/State [0]),
    .I1(\inicia/true_1490 ),
    .I2(\maquinaprincipal/State [3]),
    .I3(\controldeusuario/final_945 ),
    .O(\maquinaprincipal/State_mux0001<1>4_1508 )
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \maquinaprincipal/State_mux0001<1>15  (
    .I0(\maquinaprincipal/State [2]),
    .I1(\controldeusuario/Maquina_out_335 ),
    .I2(\maquinaprincipal/State [1]),
    .I3(\WT/final_218 ),
    .O(\maquinaprincipal/State_mux0001<1>15_1507 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \maquinaprincipal/State_mux0001<1>16  (
    .I0(\maquinaprincipal/State_mux0001<1>4_1508 ),
    .I1(\maquinaprincipal/State_mux0001<1>15_1507 ),
    .O(\maquinaprincipal/State_mux0001 [1])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \read/state_or00001  (
    .I0(\WT/lectura_219 ),
    .I1(reset_IBUF_1944),
    .O(\read/state_or0000 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \inicia/state_or00001  (
    .I0(\maquinaprincipal/iniciar_1511 ),
    .I1(reset_IBUF_1944),
    .O(\inicia/state_or0000 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \WT/state_or00001  (
    .I0(\maquinaprincipal/whileT_1512 ),
    .I1(reset_IBUF_1944),
    .O(\WT/state_or0000 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Compor2/salida1  (
    .I0(\write/final_1998 ),
    .I1(\read/final_1927 ),
    .O(fininwt)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \WT/state_FSM_FFd11-In1  (
    .I0(\WT/state_FSM_FFd11_230 ),
    .I1(fininwt),
    .I2(\maquinaprincipal/whileT_1512 ),
    .I3(\WT/state_FSM_FFd12_232 ),
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
  LUT2 #(
    .INIT ( 4'hE ))
  \inicia/dir_mux0000<1>_SW0  (
    .I0(\inicia/state_FSM_FFd5_1484 ),
    .I1(\inicia/state_FSM_FFd6_1485 ),
    .O(N28)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \inicia/next_state_or0000_SW0  (
    .I0(\inicia/state_FSM_FFd4_1483 ),
    .I1(\inicia/state_FSM_FFd5_1484 ),
    .I2(\inicia/state_FSM_FFd7_1487 ),
    .I3(\inicia/state_FSM_FFd6_1485 ),
    .O(N36)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \inicia/next_state_or0000  (
    .I0(\inicia/state_FSM_FFd1_1479 ),
    .I1(\inicia/state_FSM_FFd2_1481 ),
    .I2(\inicia/state_FSM_FFd3_1482 ),
    .I3(N36),
    .O(\inicia/next_state_or0000_1478 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \inicia/escritura_mux0000_SW0  (
    .I0(\inicia/state_FSM_FFd3_1482 ),
    .I1(\inicia/state_FSM_FFd4_1483 ),
    .I2(\inicia/state_FSM_FFd5_1484 ),
    .I3(\inicia/state_FSM_FFd6_1485 ),
    .O(N38)
  );
  LUT4 #(
    .INIT ( 16'h27FF ))
  \write/dir_out_mux0000<7>_SW0  (
    .I0(\maquinaprincipal/whileT_1512 ),
    .I1(\WT/dir[0] ),
    .I2(\controldeusuario/ADD2[0] ),
    .I3(\write/state_FSM_FFd2_2001 ),
    .O(N40)
  );
  LUT4 #(
    .INIT ( 16'h27FF ))
  \write/dir_out_mux0000<7>_SW1  (
    .I0(\maquinaprincipal/whileT_1512 ),
    .I1(\WT/dir[0] ),
    .I2(\inicia/dir [0]),
    .I3(\write/state_FSM_FFd2_2001 ),
    .O(N411)
  );
  LUT4 #(
    .INIT ( 16'h0213 ))
  \write/dir_out_mux0000<7>  (
    .I0(\maquinaprincipal/iniciar_1511 ),
    .I1(\write/state_FSM_FFd1_1999 ),
    .I2(N411),
    .I3(N40),
    .O(\write/dir_out_mux0000[7] )
  );
  LUT4 #(
    .INIT ( 16'h27FF ))
  \write/dir_out_mux0000<6>_SW0  (
    .I0(\maquinaprincipal/whileT_1512 ),
    .I1(\WT/dir[1] ),
    .I2(\controldeusuario/ADD2[1] ),
    .I3(\write/state_FSM_FFd2_2001 ),
    .O(N43)
  );
  LUT4 #(
    .INIT ( 16'h27FF ))
  \write/dir_out_mux0000<6>_SW1  (
    .I0(\maquinaprincipal/whileT_1512 ),
    .I1(\WT/dir[1] ),
    .I2(\inicia/dir [1]),
    .I3(\write/state_FSM_FFd2_2001 ),
    .O(N44)
  );
  LUT4 #(
    .INIT ( 16'h0213 ))
  \write/dir_out_mux0000<6>  (
    .I0(\maquinaprincipal/iniciar_1511 ),
    .I1(\write/state_FSM_FFd1_1999 ),
    .I2(N44),
    .I3(N43),
    .O(\write/dir_out_mux0000[6] )
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \write/dir_out_mux0000<2>_SW0  (
    .I0(\maquinaprincipal/whileT_1512 ),
    .I1(\WT/dir[5] ),
    .I2(\write/state_FSM_FFd1_1999 ),
    .I3(\controldeusuario/ADD2[5] ),
    .O(N46)
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \write/dir_out_mux0000<2>_SW1  (
    .I0(\maquinaprincipal/whileT_1512 ),
    .I1(\WT/dir[5] ),
    .I2(\write/state_FSM_FFd1_1999 ),
    .I3(\inicia/dir [2]),
    .O(N47)
  );
  LUT4 #(
    .INIT ( 16'hC808 ))
  \write/dir_out_mux0000<2>  (
    .I0(N46),
    .I1(\write/state_FSM_FFd2_2001 ),
    .I2(\maquinaprincipal/iniciar_1511 ),
    .I3(N47),
    .O(\write/dir_out_mux0000[2] )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \controldeusuario/cambiosneg_12_not00011  (
    .I0(\controldeusuario/puntero [3]),
    .I1(selectores_0_IBUF_1949),
    .I2(\controldeusuario/N331 ),
    .I3(\controldeusuario/final_cmp_eq0000 ),
    .O(\controldeusuario/cambiosneg_12_not0001 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Cront_out/escreg_mux000011  (
    .I0(\write/activa_1953 ),
    .I1(\read/activa_1914 ),
    .O(N01)
  );
  LUT4 #(
    .INIT ( 16'hFF8F ))
  \Cront_out/contador_or00001  (
    .I0(N246),
    .I1(\Cront_out/contador [3]),
    .I2(N01),
    .I3(reset_IBUF_1944),
    .O(\Cront_out/contador_or0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \controldeusuario/puntero_mux0000<2>121  (
    .I0(interruptores_2_IBUF_1497),
    .I1(interruptores_1_IBUF_1496),
    .I2(interruptores_0_IBUF_1495),
    .O(\controldeusuario/N341 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \WT/dir_mux0000<5>_SW0  (
    .I0(\WT/state_FSM_FFd6_238 ),
    .I1(\WT/state_FSM_FFd7_239 ),
    .O(N49)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Cront_out/WR_mux00001  (
    .I0(\Cront_out/contador [4]),
    .I1(\Cront_out/contador [3]),
    .I2(\Cront_out/contador [2]),
    .I3(N51),
    .O(\Cront_out/CS_cmp_eq0005 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \WT/dir_reg_mux0000<2>_SW0  (
    .I0(\WT/state_FSM_FFd5_237 ),
    .I1(\WT/state_FSM_FFd8_240 ),
    .I2(\WT/state_FSM_FFd9_241 ),
    .O(N55)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \WT/dir_reg_mux0000<1>_SW0  (
    .I0(\WT/state_FSM_FFd5_237 ),
    .I1(\WT/state_FSM_FFd6_238 ),
    .I2(\WT/state_FSM_FFd7_239 ),
    .O(N57)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \WT/dir_mux0000<1>_SW0  (
    .I0(\WT/state_FSM_FFd4_236 ),
    .I1(\WT/state_FSM_FFd2_234 ),
    .I2(\WT/state_FSM_FFd11_230 ),
    .O(N59)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \WT/dir_reg_mux0000<3>_SW0  (
    .I0(\WT/state_FSM_FFd6_238 ),
    .I1(\WT/state_FSM_FFd8_240 ),
    .I2(\WT/state_FSM_FFd10_229 ),
    .I3(\WT/state_FSM_FFd2_234 ),
    .O(N82)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \WT/dir_mux0000<6>_SW0  (
    .I0(\WT/state_FSM_FFd5_237 ),
    .I1(\WT/state_FSM_FFd8_240 ),
    .I2(\WT/state_FSM_FFd9_241 ),
    .I3(\WT/state_FSM_FFd2_234 ),
    .O(N86)
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  \Cront_out/escreg_mux0000_SW0  (
    .I0(\write/activa_1953 ),
    .I1(\read/w_1941 ),
    .I2(\Cront_out/AD_mux000035 ),
    .I3(\Cront_out/contador [3]),
    .O(N88)
  );
  LUT4 #(
    .INIT ( 16'hA222 ))
  \Cront_out/escreg_mux0000  (
    .I0(N01),
    .I1(N88),
    .I2(N4),
    .I3(\Cront_out/escreg_59 ),
    .O(\Cront_out/escreg_mux0000_60 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \WT/dir_mux0000<2>2  (
    .I0(\WT/state_FSM_FFd10_229 ),
    .I1(\WT/state_FSM_FFd8_240 ),
    .I2(\WT/state_FSM_FFd9_241 ),
    .O(\WT/dir_mux0000<2>2_203 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \WT/dir_mux0000<2>7  (
    .I0(\WT/state_FSM_FFd11_230 ),
    .I1(\WT/state_FSM_FFd5_237 ),
    .I2(\WT/state_FSM_FFd6_238 ),
    .I3(\WT/state_FSM_FFd7_239 ),
    .O(\WT/dir_mux0000<2>7_205 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \WT/lectura_mux00004  (
    .I0(\WT/state_FSM_FFd3_235 ),
    .I1(\WT/state_FSM_FFd4_236 ),
    .I2(\WT/state_FSM_FFd5_237 ),
    .I3(\WT/state_FSM_FFd6_238 ),
    .O(\WT/lectura_mux00004_223 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \WT/next_state_or000014  (
    .I0(\WT/state_FSM_FFd7_239 ),
    .I1(\WT/state_FSM_FFd8_240 ),
    .I2(\WT/state_FSM_FFd9_241 ),
    .I3(\WT/state_FSM_FFd10_229 ),
    .O(\WT/next_state_or000014_225 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \WT/next_state_or000023  (
    .I0(\WT/next_state_or00004_226 ),
    .I1(\WT/lectura_mux00004_223 ),
    .I2(\WT/next_state_or000014_225 ),
    .O(\WT/next_state_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \controldeusuario/cambiosneg_13_not00011  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/puntero2 [1]),
    .I3(N247),
    .O(\controldeusuario/N29 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiospos_5_not0001  (
    .I0(N112),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/N29 ),
    .I3(\controldeusuario/N37 ),
    .O(\controldeusuario/cambiospos_5_not0001_872 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_4_not0001_SW0  (
    .I0(\controldeusuario/puntero [3]),
    .I1(selectores_2_IBUF_1951),
    .I2(selectores_0_IBUF_1949),
    .I3(N239),
    .O(N114)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiospos_4_not0001  (
    .I0(N114),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/N31 ),
    .I3(\controldeusuario/N37 ),
    .O(\controldeusuario/cambiospos_4_not0001_855 )
  );
  LUT4 #(
    .INIT ( 16'hF111 ))
  \controldeusuario/cambiospos_3_not0001  (
    .I0(\controldeusuario/final_cmp_eq0000 ),
    .I1(N116),
    .I2(\controldeusuario/N35 ),
    .I3(\controldeusuario/N271 ),
    .O(\controldeusuario/cambiospos_3_not0001_838 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiospos_2_not0001  (
    .I0(N118),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/N30 ),
    .I3(\controldeusuario/N35 ),
    .O(\controldeusuario/cambiospos_2_not0001_821 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_14_not0001_SW0  (
    .I0(\controldeusuario/puntero [0]),
    .I1(selectores_2_IBUF_1951),
    .I2(selectores_0_IBUF_1949),
    .I3(N249),
    .O(N120)
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \controldeusuario/cambiospos_14_not0001  (
    .I0(N120),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/N30 ),
    .I3(\controldeusuario/N36 ),
    .O(\controldeusuario/cambiospos_14_not0001_769 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \controldeusuario/cambiospos_13_not0001_SW0  (
    .I0(N252),
    .I1(\controldeusuario/puntero [3]),
    .I2(selectores_2_IBUF_1951),
    .I3(selectores_0_IBUF_1949),
    .O(N122)
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \controldeusuario/cambiospos_13_not0001  (
    .I0(N122),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/N29 ),
    .I3(\controldeusuario/N36 ),
    .O(\controldeusuario/cambiospos_13_not0001_752 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \controldeusuario/cambiospos_11_not0001_SW0  (
    .I0(\controldeusuario/puntero [3]),
    .I1(selectores_0_IBUF_1949),
    .I2(selectores_2_IBUF_1951),
    .I3(N240),
    .O(N124)
  );
  LUT4 #(
    .INIT ( 16'hF111 ))
  \controldeusuario/cambiospos_11_not0001  (
    .I0(\controldeusuario/final_cmp_eq0000 ),
    .I1(N124),
    .I2(\controldeusuario/N391 ),
    .I3(\controldeusuario/N271 ),
    .O(\controldeusuario/cambiospos_11_not0001_726 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \controldeusuario/cambiospos_10_not0001_SW0  (
    .I0(N241),
    .I1(selectores_2_IBUF_1951),
    .I2(\controldeusuario/puntero [3]),
    .I3(selectores_0_IBUF_1949),
    .O(N126)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiospos_10_not0001  (
    .I0(N126),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/N30 ),
    .I3(\controldeusuario/N391 ),
    .O(\controldeusuario/cambiospos_10_not0001_709 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_9_not0001  (
    .I0(N128),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/N29 ),
    .I3(\controldeusuario/N391 ),
    .O(\controldeusuario/cambiosneg_9_not0001_675 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_1_not0001  (
    .I0(N130),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/N29 ),
    .I3(\controldeusuario/N35 ),
    .O(\controldeusuario/cambiosneg_1_not0001_537 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_6_not000128  (
    .I0(\controldeusuario/cambiosneg_6_not000113 ),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(N242),
    .I3(\controldeusuario/N30 ),
    .O(\controldeusuario/cambiosneg_6_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \controldeusuario/ADD_not00011  (
    .I0(\maquinaprincipal/CrontUs_1498 ),
    .I1(\write/final_1998 ),
    .I2(\controldeusuario/final_cmp_eq0001 ),
    .I3(\controldeusuario/final_cmp_eq0000 ),
    .O(\controldeusuario/ADD_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \controldeusuario/cambiosneg_8_not0001  (
    .I0(N248),
    .I1(\controldeusuario/N391 ),
    .I2(N132),
    .I3(\controldeusuario/N411 ),
    .O(\controldeusuario/cambiosneg_8_not0001_658 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \controldeusuario/cambiosneg_0_not0001  (
    .I0(\controldeusuario/N31 ),
    .I1(N243),
    .I2(N134),
    .I3(\controldeusuario/N411 ),
    .O(\controldeusuario/cambiosneg_0_not0001_426 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_8_not0001_SW0  (
    .I0(\controldeusuario/final_cmp_eq0000 ),
    .I1(selectores_2_IBUF_1951),
    .I2(selectores_0_IBUF_1949),
    .I3(\controldeusuario/puntero [3]),
    .O(N136)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \controldeusuario/cambiospos_8_not0001  (
    .I0(\controldeusuario/N31 ),
    .I1(N244),
    .I2(N136),
    .I3(\controldeusuario/N411 ),
    .O(\controldeusuario/cambiospos_8_not0001_925 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \controldeusuario/cambiospos_0_not0001_SW0  (
    .I0(selectores_2_IBUF_1951),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/puntero [3]),
    .I3(selectores_0_IBUF_1949),
    .O(N138)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \controldeusuario/cambiospos_0_not0001  (
    .I0(\controldeusuario/N31 ),
    .I1(\controldeusuario/N35 ),
    .I2(N138),
    .I3(\controldeusuario/N411 ),
    .O(\controldeusuario/cambiospos_0_not0001_692 )
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
    .I0(N146),
    .I1(\Cront_out/AD_mux000035 ),
    .I2(\write/activa_1953 ),
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
    .I3(\write/activa_1953 ),
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
    .I2(\maquinaprincipal/CrontUs_1498 ),
    .I3(reset_IBUF_1944),
    .O(\controldeusuario/puntero2_or0000 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \controldeusuario/puntero_mux0000<0>31  (
    .I0(interruptores_1_IBUF_1496),
    .I1(interruptores_0_IBUF_1495),
    .O(\controldeusuario/N40 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \controldeusuario/cambiosneg_11_not00011  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/puntero2 [1]),
    .I2(\maquinaprincipal/CrontUs_1498 ),
    .I3(N148),
    .O(\controldeusuario/N271 )
  );
  LUT4 #(
    .INIT ( 16'hD5C0 ))
  \controldeusuario/cambiosneg_7_not0001  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(N134),
    .I2(\controldeusuario/N27 ),
    .I3(N250),
    .O(\controldeusuario/cambiosneg_7_not0001_641 )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \controldeusuario/cambiosneg_15_not0001  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(N132),
    .I2(\controldeusuario/N27 ),
    .I3(\controldeusuario/N34 ),
    .O(\controldeusuario/cambiosneg_15_not0001_520 )
  );
  LUT4 #(
    .INIT ( 16'hD5C0 ))
  \controldeusuario/cambiospos_7_not0001  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(N138),
    .I2(\controldeusuario/N27 ),
    .I3(\controldeusuario/N34 ),
    .O(\controldeusuario/cambiospos_7_not0001_908 )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \controldeusuario/cambiospos_15_not0001  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(N136),
    .I2(\controldeusuario/N27 ),
    .I3(\controldeusuario/N34 ),
    .O(\controldeusuario/cambiospos_15_not0001_786 )
  );
  LUT4 #(
    .INIT ( 16'hFF32 ))
  \controldeusuario/final_not0001_SW0  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\maquinaprincipal/CrontUs_1498 ),
    .I2(N245),
    .I3(\controldeusuario/final_cmp_eq0000 ),
    .O(N158)
  );
  LUT4 #(
    .INIT ( 16'h2373 ))
  \controldeusuario/final_not0001  (
    .I0(\controldeusuario/final_cmp_eq0001 ),
    .I1(N158),
    .I2(\write/final_1998 ),
    .I3(N159),
    .O(\controldeusuario/final_not0001_949 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \controldeusuario/puntero_mux0000<3>8_SW0  (
    .I0(interruptores_0_IBUF_1495),
    .I1(interruptores_2_IBUF_1497),
    .I2(interruptores_1_IBUF_1496),
    .O(N161)
  );
  LUT4 #(
    .INIT ( 16'h5540 ))
  \controldeusuario/puntero_mux0000<3>8  (
    .I0(N161),
    .I1(\controldeusuario/puntero [3]),
    .I2(\controldeusuario/N121 ),
    .I3(N269),
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
    .I0(\maquinaprincipal/CrontUs_1498 ),
    .I1(\write/final_1998 ),
    .I2(N279),
    .O(\controldeusuario/N20 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \controldeusuario/Madd_COND_4_addsub0000_xor<4>11  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I1(N273),
    .O(\controldeusuario/COND_4_addsub0000 [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \controldeusuario/Madd_COND_2_addsub0000_xor<4>11  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I1(N274),
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
    .I0(selectores_1_IBUF_1950),
    .I1(\controldeusuario/N311 ),
    .I2(\controldeusuario/puntero [3]),
    .I3(N276),
    .O(\controldeusuario/N0 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_9_mux0000<6>1  (
    .I0(N256),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_9_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_7_mux0000<6>1  (
    .I0(N257),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_7_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_6_mux0000<6>1  (
    .I0(N258),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_6_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_5_mux0000<6>1  (
    .I0(N259),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_5_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_4_mux0000<6>1  (
    .I0(N260),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_4_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_3_mux0000<6>1  (
    .I0(N261),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_3_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_2_mux0000<6>1  (
    .I0(N262),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_2_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_1_mux0000<6>1  (
    .I0(N263),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_1_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_15_mux0000<6>1  (
    .I0(N264),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_15_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_14_mux0000<6>1  (
    .I0(N265),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_14_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_13_mux0000<6>1  (
    .I0(N266),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_13_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_11_mux0000<6>1  (
    .I0(N267),
    .I1(\controldeusuario/COND_4_addsub0000 [6]),
    .O(\controldeusuario/cambiospos_11_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiospos_10_mux0000<6>1  (
    .I0(N268),
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
    .I2(N271),
    .O(\controldeusuario/COND_4_addsub0000 [7])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \controldeusuario/Madd_COND_2_addsub0000_xor<7>11  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [7]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I2(N272),
    .O(\controldeusuario/COND_2_addsub0000 [7])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \controldeusuario/puntero_mux0000<3>15  (
    .I0(interruptores_1_IBUF_1496),
    .I1(interruptores_2_IBUF_1497),
    .I2(interruptores_0_IBUF_1495),
    .O(\controldeusuario/puntero_mux0000<1>4 )
  );
  LUT4 #(
    .INIT ( 16'h040C ))
  \controldeusuario/puntero_mux0000<3>26  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero_mux0000<1>4 ),
    .I2(\controldeusuario/puntero [3]),
    .I3(\controldeusuario/puntero [1]),
    .O(\controldeusuario/puntero_mux0000<3>26_1450 )
  );
  LUT4 #(
    .INIT ( 16'hFF8F ))
  \controldeusuario/puntero_mux0000<3>62  (
    .I0(\controldeusuario/puntero [3]),
    .I1(N275),
    .I2(interruptores_2_IBUF_1497),
    .I3(interruptores_1_IBUF_1496),
    .O(\controldeusuario/puntero_mux0000<3>62_1452 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \controldeusuario/puntero_mux0000<3>90  (
    .I0(interruptores_2_IBUF_1497),
    .I1(interruptores_1_IBUF_1496),
    .O(\controldeusuario/puntero_mux0000<3>90_1454 )
  );
  LUT4 #(
    .INIT ( 16'hB233 ))
  \controldeusuario/puntero_mux0000<3>149  (
    .I0(\controldeusuario/puntero [2]),
    .I1(interruptores_2_IBUF_1497),
    .I2(\controldeusuario/puntero [1]),
    .I3(interruptores_1_IBUF_1496),
    .O(\controldeusuario/puntero_mux0000<3>149_1447 )
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \controldeusuario/puntero_mux0000<3>255  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/puntero_mux0000<3>104_1446 ),
    .I2(\controldeusuario/puntero_mux0000<3>76_1453 ),
    .I3(\controldeusuario/puntero_mux0000<3>241_1449 ),
    .O(\controldeusuario/puntero_mux0000 [3])
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \controldeusuario/puntero_mux0000<1>10  (
    .I0(\controldeusuario/puntero_cmp_lt0000 ),
    .I1(\controldeusuario/puntero_mux0000<1>4 ),
    .I2(\controldeusuario/N131 ),
    .O(\controldeusuario/puntero_mux0000<1>10_1435 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \controldeusuario/puntero_mux0000<1>37  (
    .I0(N270),
    .I1(\controldeusuario/N341 ),
    .I2(\controldeusuario/puntero_mux0000<1>31_1437 ),
    .O(\controldeusuario/puntero_mux0000<1>37_1438 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \controldeusuario/Maddsub_puntero_share0000_cy<1>11  (
    .I0(\controldeusuario/puntero [1]),
    .I1(\controldeusuario/puntero [0]),
    .I2(N277),
    .O(\controldeusuario/Maddsub_puntero_share0000_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0015 ))
  \controldeusuario/puntero_mux0000<0>23  (
    .I0(interruptores_0_IBUF_1495),
    .I1(\controldeusuario/puntero [3]),
    .I2(N251),
    .I3(\controldeusuario/puntero_cmp_lt0000 ),
    .O(\controldeusuario/puntero_mux0000<0>23_1426 )
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1944)
  );
  IBUF   writedata_7_IBUF (
    .I(writedata[7]),
    .O(writedata_7_IBUF_2022)
  );
  IBUF   writedata_6_IBUF (
    .I(writedata[6]),
    .O(writedata_6_IBUF_2021)
  );
  IBUF   writedata_5_IBUF (
    .I(writedata[5]),
    .O(writedata_5_IBUF_2020)
  );
  IBUF   writedata_4_IBUF (
    .I(writedata[4]),
    .O(writedata_4_IBUF_2019)
  );
  IBUF   writedata_3_IBUF (
    .I(writedata[3]),
    .O(writedata_3_IBUF_2018)
  );
  IBUF   writedata_2_IBUF (
    .I(writedata[2]),
    .O(writedata_2_IBUF_2017)
  );
  IBUF   writedata_1_IBUF (
    .I(writedata[1]),
    .O(writedata_1_IBUF_2016)
  );
  IBUF   writedata_0_IBUF (
    .I(writedata[0]),
    .O(writedata_0_IBUF_2015)
  );
  IBUF   selectores_3_IBUF (
    .I(selectores[3]),
    .O(selectores_3_IBUF_1952)
  );
  IBUF   selectores_2_IBUF (
    .I(selectores[2]),
    .O(selectores_2_IBUF_1951)
  );
  IBUF   selectores_1_IBUF (
    .I(selectores[1]),
    .O(selectores_1_IBUF_1950)
  );
  IBUF   selectores_0_IBUF (
    .I(selectores[0]),
    .O(selectores_0_IBUF_1949)
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
    .O(interruptores_2_IBUF_1497)
  );
  IBUF   interruptores_1_IBUF (
    .I(interruptores[1]),
    .O(interruptores_1_IBUF_1496)
  );
  IBUF   interruptores_0_IBUF (
    .I(interruptores[0]),
    .O(interruptores_0_IBUF_1495)
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
  FDRS   \inicia/true  (
    .C(clk_BUFGP_244),
    .D(\inicia/true_mux00001 ),
    .R(\inicia/state_or0000 ),
    .S(\inicia/state_FSM_FFd1_1479 ),
    .Q(\inicia/true_1490 )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \inicia/true_mux000011  (
    .I0(\inicia/next_state_or0000_1478 ),
    .I1(\inicia/true_1490 ),
    .I2(\inicia/state_FSM_FFd2_1481 ),
    .O(\inicia/true_mux00001 )
  );
  FDRS   \inicia/escritura  (
    .C(clk_BUFGP_244),
    .D(\inicia/escritura_mux00001_1477 ),
    .R(\inicia/state_or0000 ),
    .S(\inicia/state_FSM_FFd2_1481 ),
    .Q(\inicia/escritura_1476 )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \inicia/escritura_mux00001  (
    .I0(\inicia/next_state_or0000_1478 ),
    .I1(\inicia/escritura_1476 ),
    .I2(N38),
    .O(\inicia/escritura_mux00001_1477 )
  );
  FDRS   \inicia/dir_1  (
    .C(clk_BUFGP_244),
    .D(\inicia/dir_mux0000<1>1_1474 ),
    .R(\inicia/state_or0000 ),
    .S(N28),
    .Q(\inicia/dir [1])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \inicia/dir_mux0000<1>1  (
    .I0(\inicia/next_state_or0000_1478 ),
    .I1(\inicia/dir [1]),
    .I2(\inicia/state_FSM_FFd2_1481 ),
    .O(\inicia/dir_mux0000<1>1_1474 )
  );
  FDRS   \inicia/dir_0  (
    .C(clk_BUFGP_244),
    .D(\inicia/dir_mux0000<2>1 ),
    .R(\inicia/state_or0000 ),
    .S(\inicia/state_FSM_FFd2_1481 ),
    .Q(\inicia/dir [0])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \inicia/dir_mux0000<2>11  (
    .I0(\inicia/next_state_or0000_1478 ),
    .I1(\inicia/dir [0]),
    .I2(\inicia/state_FSM_FFd4_1483 ),
    .O(\inicia/dir_mux0000<2>1 )
  );
  FDRS   \inicia/dato_1  (
    .C(clk_BUFGP_244),
    .D(\inicia/dato_mux0000<2>1 ),
    .R(\inicia/state_or0000 ),
    .S(\inicia/state_FSM_FFd2_1481 ),
    .Q(\inicia/dato [1])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \inicia/dato_mux0000<2>11  (
    .I0(\inicia/next_state_or0000_1478 ),
    .I1(\inicia/dato [1]),
    .I2(\inicia/state_FSM_FFd3_1482 ),
    .O(\inicia/dato_mux0000<2>1 )
  );
  FDRS   \inicia/dato_0  (
    .C(clk_BUFGP_244),
    .D(\inicia/dato_mux0000<3>1 ),
    .R(\inicia/state_or0000 ),
    .S(\inicia/state_FSM_FFd2_1481 ),
    .Q(\inicia/dato [0])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \inicia/dato_mux0000<3>11  (
    .I0(\inicia/next_state_or0000_1478 ),
    .I1(\inicia/dato [0]),
    .I2(\inicia/state_FSM_FFd4_1483 ),
    .O(\inicia/dato_mux0000<3>1 )
  );
  FDRS   \WT/lectura  (
    .C(clk_BUFGP_244),
    .D(\WT/lectura_mux000027 ),
    .R(\WT/state_or0000 ),
    .S(\WT/lectura_mux00004_223 ),
    .Q(\WT/lectura_219 )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/lectura_mux0000271  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/lectura_219 ),
    .I2(\WT/lectura_mux000011 ),
    .O(\WT/lectura_mux000027 )
  );
  FDRS   \WT/dir_6  (
    .C(clk_BUFGP_244),
    .D(\WT/dir_mux0000<1>1_202 ),
    .R(\WT/state_or0000 ),
    .S(N59),
    .Q(\WT/dir[6] )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_mux0000<1>1  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir[6] ),
    .I2(\WT/state_FSM_FFd3_235 ),
    .O(\WT/dir_mux0000<1>1_202 )
  );
  FDRS   \WT/dir_5  (
    .C(clk_BUFGP_244),
    .D(\WT/dir_mux0000<2>20 ),
    .R(\WT/state_or0000 ),
    .S(\WT/dir_mux0000<2>2_203 ),
    .Q(\WT/dir[5] )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_mux0000<2>201  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir[5] ),
    .I2(\WT/dir_mux0000<2>7_205 ),
    .O(\WT/dir_mux0000<2>20 )
  );
  FDRS   \WT/dir_2  (
    .C(clk_BUFGP_244),
    .D(\WT/dir_mux0000<5>1_206 ),
    .R(\WT/state_or0000 ),
    .S(N49),
    .Q(\WT/dir[2] )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_mux0000<5>1  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir[2] ),
    .I2(\WT/state_FSM_FFd5_237 ),
    .O(\WT/dir_mux0000<5>1_206 )
  );
  FDRS   \WT/dir_1  (
    .C(clk_BUFGP_244),
    .D(\WT/dir_mux0000<6>1_207 ),
    .R(\WT/state_or0000 ),
    .S(N86),
    .Q(\WT/dir[1] )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_mux0000<6>1  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir[1] ),
    .I2(\WT/state_FSM_FFd3_235 ),
    .O(\WT/dir_mux0000<6>1_207 )
  );
  FDRS   \WT/dir_0  (
    .C(clk_BUFGP_244),
    .D(\WT/dir_mux0000<7>1_208 ),
    .R(\WT/state_or0000 ),
    .S(N82),
    .Q(\WT/dir[0] )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_mux0000<7>1  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir[0] ),
    .I2(\WT/state_FSM_FFd4_236 ),
    .O(\WT/dir_mux0000<7>1_208 )
  );
  FDRS   \WT/dir_reg_3  (
    .C(clk_BUFGP_244),
    .D(\WT/dir_reg_mux0000<0>1 ),
    .R(\WT/state_or0000 ),
    .S(\WT/state_FSM_FFd2_234 ),
    .Q(\WT/dir_reg [3])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_reg_mux0000<0>11  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir_reg [3]),
    .I2(\WT/state_FSM_FFd3_235 ),
    .O(\WT/dir_reg_mux0000<0>1 )
  );
  FDRS   \WT/dir_reg_2  (
    .C(clk_BUFGP_244),
    .D(\WT/dir_reg_mux0000<1>1_214 ),
    .R(\WT/state_or0000 ),
    .S(N57),
    .Q(\WT/dir_reg [2])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_reg_mux0000<1>1  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir_reg [2]),
    .I2(\WT/state_FSM_FFd4_236 ),
    .O(\WT/dir_reg_mux0000<1>1_214 )
  );
  FDRS   \WT/dir_reg_1  (
    .C(clk_BUFGP_244),
    .D(\WT/dir_reg_mux0000<2>1_215 ),
    .R(\WT/state_or0000 ),
    .S(N55),
    .Q(\WT/dir_reg [1])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_reg_mux0000<2>1  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir_reg [1]),
    .I2(\WT/state_FSM_FFd4_236 ),
    .O(\WT/dir_reg_mux0000<2>1_215 )
  );
  FDRS   \WT/dir_reg_0  (
    .C(clk_BUFGP_244),
    .D(\WT/dir_reg_mux0000<3>1_216 ),
    .R(\WT/state_or0000 ),
    .S(N82),
    .Q(\WT/dir_reg [0])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \WT/dir_reg_mux0000<3>1  (
    .I0(\WT/next_state_or0000 ),
    .I1(\WT/dir_reg [0]),
    .I2(\WT/state_FSM_FFd4_236 ),
    .O(\WT/dir_reg_mux0000<3>1_216 )
  );
  FDRE   \inicia/state_FSM_FFd5  (
    .C(clk_BUFGP_244),
    .CE(\write/final_1998 ),
    .D(\inicia/state_FSM_FFd6_1485 ),
    .R(\inicia/state_or0000 ),
    .Q(\inicia/state_FSM_FFd5_1484 )
  );
  FDRE   \inicia/state_FSM_FFd4  (
    .C(clk_BUFGP_244),
    .CE(\write/final_1998 ),
    .D(\inicia/state_FSM_FFd5_1484 ),
    .R(\inicia/state_or0000 ),
    .Q(\inicia/state_FSM_FFd4_1483 )
  );
  FDRE   \inicia/state_FSM_FFd3  (
    .C(clk_BUFGP_244),
    .CE(\write/final_1998 ),
    .D(\inicia/state_FSM_FFd4_1483 ),
    .R(\inicia/state_or0000 ),
    .Q(\inicia/state_FSM_FFd3_1482 )
  );
  FDRE   \inicia/state_FSM_FFd2  (
    .C(clk_BUFGP_244),
    .CE(\write/final_1998 ),
    .D(\inicia/state_FSM_FFd3_1482 ),
    .R(\inicia/state_or0000 ),
    .Q(\inicia/state_FSM_FFd2_1481 )
  );
  FDRE   \WT/state_FSM_FFd10  (
    .C(clk_BUFGP_244),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd11_230 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd10_229 )
  );
  FDRE   \WT/state_FSM_FFd8  (
    .C(clk_BUFGP_244),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd9_241 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd8_240 )
  );
  FDRE   \WT/state_FSM_FFd7  (
    .C(clk_BUFGP_244),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd8_240 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd7_239 )
  );
  FDRE   \WT/state_FSM_FFd9  (
    .C(clk_BUFGP_244),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd10_229 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd9_241 )
  );
  FDRE   \WT/state_FSM_FFd5  (
    .C(clk_BUFGP_244),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd6_238 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd5_237 )
  );
  FDRE   \WT/state_FSM_FFd4  (
    .C(clk_BUFGP_244),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd5_237 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd4_236 )
  );
  FDRE   \WT/state_FSM_FFd6  (
    .C(clk_BUFGP_244),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd7_239 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd6_238 )
  );
  FDRE   \WT/state_FSM_FFd2  (
    .C(clk_BUFGP_244),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd3_235 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd2_234 )
  );
  FDRE   \WT/state_FSM_FFd3  (
    .C(clk_BUFGP_244),
    .CE(fininwt),
    .D(\WT/state_FSM_FFd4_236 ),
    .R(\WT/state_or0000 ),
    .Q(\WT/state_FSM_FFd3_235 )
  );
  FDRSE   \inicia/dir_2  (
    .C(clk_BUFGP_244),
    .CE(\inicia/next_state_or0000_1478 ),
    .D(N0),
    .R(\inicia/state_or0000 ),
    .S(\inicia/state_FSM_FFd2_1481 ),
    .Q(\inicia/dir [2])
  );
  FDRSE   \inicia/dato_3  (
    .C(clk_BUFGP_244),
    .CE(\inicia/next_state_or0000_1478 ),
    .D(N0),
    .R(\inicia/state_or0000 ),
    .S(\inicia/state_FSM_FFd4_1483 ),
    .Q(\inicia/dato [3])
  );
  FDRSE   \inicia/dato_2  (
    .C(clk_BUFGP_244),
    .CE(\inicia/next_state_or0000_1478 ),
    .D(N0),
    .R(\inicia/state_or0000 ),
    .S(\inicia/state_FSM_FFd6_1485 ),
    .Q(\inicia/dato [2])
  );
  FDRSE   \WT/escritura  (
    .C(clk_BUFGP_244),
    .CE(\WT/next_state_or0000 ),
    .D(N0),
    .R(\WT/state_or0000 ),
    .S(\WT/state_FSM_FFd11_230 ),
    .Q(\WT/escritura_217 )
  );
  FDRSE   \WT/final  (
    .C(clk_BUFGP_244),
    .CE(\WT/next_state_or0000 ),
    .D(N0),
    .R(\WT/state_or0000 ),
    .S(\WT/state_FSM_FFd1_227 ),
    .Q(\WT/final_218 )
  );
  LUT4 #(
    .INIT ( 16'hFEEE ))
  \controldeusuario/puntero_mux0000<1>86  (
    .I0(\controldeusuario/puntero_mux0000<1>16_1436 ),
    .I1(\controldeusuario/puntero_mux0000<1>10_1435 ),
    .I2(\controldeusuario/puntero_mux0000<1>37_1438 ),
    .I3(\controldeusuario/puntero_mux0000<1>69_1440 ),
    .O(\controldeusuario/puntero_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hDCEC ))
  \controldeusuario/puntero_mux0000<0>140  (
    .I0(\controldeusuario/puntero [3]),
    .I1(\controldeusuario/puntero_mux0000<0>8_1433 ),
    .I2(\controldeusuario/puntero_mux0000<0>71 ),
    .I3(N173),
    .O(\controldeusuario/puntero_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h596A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<1>  (
    .I0(\memoria/Dato3 [1]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux17_3_f6_1048 ),
    .I3(\controldeusuario/mux17_4_f6_1050 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [1])
  );
  LUT4 #(
    .INIT ( 16'h596A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<2>  (
    .I0(\memoria/Dato3 [2]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux18_3_f6_1062 ),
    .I3(\controldeusuario/mux18_4_f6_1064 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h596A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<3>  (
    .I0(\memoria/Dato3 [3]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux19_3_f6_1076 ),
    .I3(\controldeusuario/mux19_4_f6_1078 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h596A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<4>  (
    .I0(\memoria/Dato3 [4]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux20_3_f6_1104 ),
    .I3(\controldeusuario/mux20_4_f6_1106 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [4])
  );
  LUT4 #(
    .INIT ( 16'h596A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<5>  (
    .I0(\memoria/Dato3 [5]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux21_3_f6_1118 ),
    .I3(\controldeusuario/mux21_4_f6_1120 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [5])
  );
  LUT4 #(
    .INIT ( 16'h596A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<0>  (
    .I0(\memoria/Dato3 [0]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux16_3_f6_1034 ),
    .I3(\controldeusuario/mux16_4_f6_1036 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [0])
  );
  LUT4 #(
    .INIT ( 16'h569A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<6>  (
    .I0(\memoria/Dato3 [6]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux22_4_f6_1134 ),
    .I3(\controldeusuario/mux22_3_f6_1132 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [6])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \controldeusuario/Madd_COND_4_addsub0000_xor<6>11  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [6]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I3(N281),
    .O(\controldeusuario/COND_4_addsub0000 [6])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \controldeusuario/Madd_COND_2_addsub0000_xor<6>11  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [6]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I3(N282),
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
    .I0(\controldeusuario/puntero_mux0000<2>40_1443 ),
    .I1(\controldeusuario/N23 ),
    .I2(\controldeusuario/puntero_mux0000<2>20_1442 ),
    .I3(\controldeusuario/puntero_mux0000<2>76_1444 ),
    .O(\controldeusuario/puntero_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h596A ))
  \controldeusuario/Madd_Dato_out_addsub0000_lut<7>  (
    .I0(\memoria/Dato3 [7]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/mux23_3_f6_1146 ),
    .I3(\controldeusuario/mux23_4_f6_1148 ),
    .O(\controldeusuario/Madd_Dato_out_addsub0000_lut [7])
  );
  LUT4 #(
    .INIT ( 16'hF080 ))
  \controldeusuario/puntero_mux0000<3>164  (
    .I0(\controldeusuario/puntero [1]),
    .I1(\controldeusuario/puntero [2]),
    .I2(interruptores_2_IBUF_1497),
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
    .I0(N254),
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
    .I0(N255),
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
    .I0(interruptores_0_IBUF_1495),
    .I1(\controldeusuario/puntero [0]),
    .I2(N179),
    .I3(\controldeusuario/N0 ),
    .O(\controldeusuario/puntero_mux0000<3>241_1449 )
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \controldeusuario/puntero_mux0000<2>20  (
    .I0(\controldeusuario/N131 ),
    .I1(N181),
    .I2(interruptores_2_IBUF_1497),
    .I3(interruptores_0_IBUF_1495),
    .O(\controldeusuario/puntero_mux0000<2>20_1442 )
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
    .I2(N278),
    .I3(interruptores_2_IBUF_1497),
    .O(\controldeusuario/puntero_mux0000<1>31_1437 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \controldeusuario/final_mux00001  (
    .I0(\maquinaprincipal/CrontUs_1498 ),
    .I1(\controldeusuario/N36 ),
    .I2(\controldeusuario/puntero2 [0]),
    .I3(\controldeusuario/puntero2 [1]),
    .O(\controldeusuario/final_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hAAAB ))
  \write/state_or00001  (
    .I0(reset_IBUF_1944),
    .I1(\inicia/escritura_1476 ),
    .I2(\WT/escritura_217 ),
    .I3(\controldeusuario/escritura_944 ),
    .O(\write/state_or0000 )
  );
  LUT3 #(
    .INIT ( 8'hAB ))
  \Cront_out/CS_or00001  (
    .I0(reset_IBUF_1944),
    .I1(\write/activa_1953 ),
    .I2(\read/activa_1914 ),
    .O(\Cront_out/CS_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \controldeusuario/puntero_mux0000<0>8_SW0  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero [1]),
    .I2(\controldeusuario/N341 ),
    .I3(\controldeusuario/final_cmp_eq0000 ),
    .O(N183)
  );
  LUT4 #(
    .INIT ( 16'hF8D8 ))
  \controldeusuario/puntero_mux0000<0>8  (
    .I0(\controldeusuario/puntero [3]),
    .I1(N183),
    .I2(\controldeusuario/puntero_mux0000<0>3_1427 ),
    .I3(\controldeusuario/N411 ),
    .O(\controldeusuario/puntero_mux0000<0>8_1433 )
  );
  LUT4 #(
    .INIT ( 16'hFCF8 ))
  \controldeusuario/puntero_mux0000<1>11_SW0  (
    .I0(\controldeusuario/puntero [1]),
    .I1(\controldeusuario/puntero [3]),
    .I2(interruptores_2_IBUF_1497),
    .I3(\controldeusuario/puntero [2]),
    .O(N163)
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \WT/state_FSM_FFd1-In1  (
    .I0(\write/final_1998 ),
    .I1(\WT/state_FSM_FFd2_234 ),
    .I2(\read/final_1927 ),
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
    .I0(reset_IBUF_1944),
    .I1(\read/activa_1914 ),
    .I2(\write/activa_1953 ),
    .I3(N4),
    .O(\Cront_out/Mtridata_data_out_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \Cront_out/Mtridata_data_out_mux0000<4>1  (
    .I0(\write/data_out [3]),
    .I1(\write/activa_1953 ),
    .I2(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_6_not000128  (
    .I0(\controldeusuario/puntero [3]),
    .I1(\controldeusuario/cambiospos_6_not000113_890 ),
    .I2(\controldeusuario/final_cmp_eq0000 ),
    .I3(\controldeusuario/puntero [1]),
    .O(\controldeusuario/cambiospos_6_not000128_891 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \Cront_out/Mtrien_data_out_mux00001  (
    .I0(\write/activa_1953 ),
    .I1(\Cront_out/CS_cmp_eq0005 ),
    .I2(\read/activa_1914 ),
    .O(\Cront_out/Mtrien_data_out_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \controldeusuario/cambiosneg_8_not0001_SW0  (
    .I0(selectores_0_IBUF_1949),
    .I1(\controldeusuario/puntero [3]),
    .I2(interruptores_2_IBUF_1497),
    .I3(\controldeusuario/N40 ),
    .O(N132)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \controldeusuario/cambiospos_9_not000122  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/puntero [1]),
    .I3(N185),
    .O(\controldeusuario/cambiospos_9_not000122_943 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \controldeusuario/cambiospos_1_not000125  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/final_cmp_eq0000 ),
    .I2(\controldeusuario/puntero [1]),
    .I3(N187),
    .O(\controldeusuario/cambiospos_1_not000125_804 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \controldeusuario/puntero_mux0000<3>44_SW0  (
    .I0(interruptores_1_IBUF_1496),
    .I1(\controldeusuario/puntero [2]),
    .I2(interruptores_2_IBUF_1497),
    .I3(\controldeusuario/puntero [3]),
    .O(N191)
  );
  LUT4 #(
    .INIT ( 16'hFF2F ))
  \controldeusuario/cambiosneg_5_not0001_SW1  (
    .I0(\controldeusuario/N40 ),
    .I1(interruptores_2_IBUF_1497),
    .I2(selectores_0_IBUF_1949),
    .I3(\controldeusuario/puntero [3]),
    .O(N193)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_5_not0001  (
    .I0(\controldeusuario/N311 ),
    .I1(N193),
    .I2(\controldeusuario/N37 ),
    .I3(\controldeusuario/N29 ),
    .O(\controldeusuario/cambiosneg_5_not0001_605 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_4_not0001  (
    .I0(\controldeusuario/N331 ),
    .I1(N193),
    .I2(\controldeusuario/N37 ),
    .I3(\controldeusuario/N31 ),
    .O(\controldeusuario/cambiosneg_4_not0001_588 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_3_not0001  (
    .I0(\controldeusuario/N301 ),
    .I1(N193),
    .I2(\controldeusuario/N35 ),
    .I3(\controldeusuario/N271 ),
    .O(\controldeusuario/cambiosneg_3_not0001_571 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_2_not0001  (
    .I0(\controldeusuario/N321 ),
    .I1(N193),
    .I2(\controldeusuario/N35 ),
    .I3(\controldeusuario/N30 ),
    .O(\controldeusuario/cambiosneg_2_not0001_554 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \controldeusuario/cambiosneg_13_not0001  (
    .I0(\controldeusuario/N29 ),
    .I1(N253),
    .I2(\controldeusuario/N311 ),
    .I3(N132),
    .O(\controldeusuario/cambiosneg_13_not0001_486 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \controldeusuario/cambiosneg_11_not0001  (
    .I0(\controldeusuario/N271 ),
    .I1(\controldeusuario/N391 ),
    .I2(\controldeusuario/N301 ),
    .I3(N132),
    .O(\controldeusuario/cambiosneg_11_not0001_460 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \controldeusuario/cambiosneg_10_not0001  (
    .I0(N280),
    .I1(\controldeusuario/N391 ),
    .I2(\controldeusuario/N321 ),
    .I3(N132),
    .O(\controldeusuario/cambiosneg_10_not0001_443 )
  );
  LUT4 #(
    .INIT ( 16'h222F ))
  \controldeusuario/cambiosneg_14_not0001  (
    .I0(\controldeusuario/N30 ),
    .I1(\controldeusuario/N36 ),
    .I2(\controldeusuario/puntero [0]),
    .I3(N207),
    .O(\controldeusuario/cambiosneg_14_not0001_503 )
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
    .I1(\controldeusuario/puntero_mux0000<3>62_1452 ),
    .I2(\controldeusuario/puntero_mux0000<3>44_1451 ),
    .I3(\controldeusuario/N0 ),
    .O(\controldeusuario/puntero_mux0000<3>76_1453 )
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \controldeusuario/cambiospos_9_not000128  (
    .I0(\controldeusuario/cambiospos_9_not000122_943 ),
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
    .I3(\controldeusuario/cambiospos_1_not000125_804 ),
    .O(\controldeusuario/cambiospos_1_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \controldeusuario/cambiospos_6_not000137  (
    .I0(\controldeusuario/cambiospos_6_not000128_891 ),
    .I1(\controldeusuario/N30 ),
    .I2(\controldeusuario/puntero2 [2]),
    .I3(\controldeusuario/puntero2 [3]),
    .O(\controldeusuario/cambiospos_6_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h1091 ))
  \controldeusuario/puntero_mux0000<2>40  (
    .I0(interruptores_0_IBUF_1495),
    .I1(interruptores_1_IBUF_1496),
    .I2(interruptores_2_IBUF_1497),
    .I3(\controldeusuario/puntero_cmp_gt0003 ),
    .O(\controldeusuario/puntero_mux0000<2>40_1443 )
  );
  LUT4 #(
    .INIT ( 16'h4050 ))
  \controldeusuario/cambiosneg_0_not0001_SW0  (
    .I0(\controldeusuario/puntero [3]),
    .I1(interruptores_2_IBUF_1497),
    .I2(selectores_0_IBUF_1949),
    .I3(\controldeusuario/N40 ),
    .O(N134)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \controldeusuario/puntero_mux0000<0>3  (
    .I0(interruptores_1_IBUF_1496),
    .I1(interruptores_0_IBUF_1495),
    .I2(interruptores_2_IBUF_1497),
    .O(\controldeusuario/puntero_mux0000<0>3_1427 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \controldeusuario/cambiosneg_10_not00011_SW0  (
    .I0(\write/final_1998 ),
    .I1(interruptores_0_IBUF_1495),
    .I2(interruptores_1_IBUF_1496),
    .I3(interruptores_2_IBUF_1497),
    .O(\controldeusuario/puntero2_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h01FF ))
  \controldeusuario/cambiospos_12_not0001_SW0  (
    .I0(interruptores_2_IBUF_1497),
    .I1(interruptores_0_IBUF_1495),
    .I2(interruptores_1_IBUF_1496),
    .I3(selectores_2_IBUF_1951),
    .O(N215)
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_12_not0001  (
    .I0(selectores_0_IBUF_1949),
    .I1(\controldeusuario/N331 ),
    .I2(N215),
    .I3(\controldeusuario/puntero [3]),
    .O(\controldeusuario/cambiospos_12_not0001_735 )
  );
  LUT4 #(
    .INIT ( 16'h8002 ))
  \controldeusuario/puntero_mux0000<1>16  (
    .I0(\controldeusuario/puntero_cmp_gt0003 ),
    .I1(interruptores_0_IBUF_1495),
    .I2(interruptores_1_IBUF_1496),
    .I3(interruptores_2_IBUF_1497),
    .O(\controldeusuario/puntero_mux0000<1>16_1436 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \controldeusuario/punteroOut_mux0000<3>1  (
    .I0(\controldeusuario/puntero [3]),
    .I1(interruptores_1_IBUF_1496),
    .I2(interruptores_0_IBUF_1495),
    .I3(interruptores_2_IBUF_1497),
    .O(\controldeusuario/punteroOut_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \controldeusuario/punteroOut_mux0000<2>1  (
    .I0(\controldeusuario/puntero [2]),
    .I1(interruptores_1_IBUF_1496),
    .I2(interruptores_0_IBUF_1495),
    .I3(interruptores_2_IBUF_1497),
    .O(\controldeusuario/punteroOut_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \controldeusuario/punteroOut_mux0000<1>1  (
    .I0(\controldeusuario/puntero [1]),
    .I1(interruptores_1_IBUF_1496),
    .I2(interruptores_0_IBUF_1495),
    .I3(interruptores_2_IBUF_1497),
    .O(\controldeusuario/punteroOut_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \controldeusuario/punteroOut_mux0000<0>1  (
    .I0(\controldeusuario/puntero [0]),
    .I1(interruptores_1_IBUF_1496),
    .I2(interruptores_0_IBUF_1495),
    .I3(interruptores_2_IBUF_1497),
    .O(\controldeusuario/punteroOut_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \controldeusuario/puntero_mux0000<1>211  (
    .I0(interruptores_1_IBUF_1496),
    .I1(interruptores_0_IBUF_1495),
    .I2(interruptores_2_IBUF_1497),
    .O(\controldeusuario/final_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \controldeusuario/puntero_not00001  (
    .I0(interruptores_1_IBUF_1496),
    .I1(interruptores_0_IBUF_1495),
    .I2(interruptores_2_IBUF_1497),
    .O(\controldeusuario/puntero_not0000 )
  );
  LUT4 #(
    .INIT ( 16'hAAAB ))
  \controldeusuario/Maquina_out_or00001  (
    .I0(reset_IBUF_1944),
    .I1(interruptores_2_IBUF_1497),
    .I2(interruptores_1_IBUF_1496),
    .I3(interruptores_0_IBUF_1495),
    .O(\controldeusuario/Maquina_out_or0000 )
  );
  FDRE   \controldeusuario/puntero_1_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/puntero_1_1_1418 )
  );
  FDRE   \controldeusuario/puntero_1_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [2]),
    .R(reset_IBUF_1944),
    .Q(\controldeusuario/puntero_1_2_1419 )
  );
  FDRE   \controldeusuario/puntero2_0_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/puntero2_not0001 ),
    .D(\controldeusuario/Result [0]),
    .R(\controldeusuario/puntero2_or0000 ),
    .Q(\controldeusuario/puntero2_0_1_1399 )
  );
  FDRE   \controldeusuario/puntero2_0_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/puntero2_not0001 ),
    .D(\controldeusuario/Result [0]),
    .R(\controldeusuario/puntero2_or0000 ),
    .Q(\controldeusuario/puntero2_0_2_1400 )
  );
  FDSE   \controldeusuario/puntero_0_1  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [3]),
    .S(reset_IBUF_1944),
    .Q(\controldeusuario/puntero_0_1_1415 )
  );
  FDSE   \controldeusuario/puntero_0_2  (
    .C(clk_BUFGP_244),
    .CE(\controldeusuario/puntero_not0000 ),
    .D(\controldeusuario/puntero_mux0000 [3]),
    .S(reset_IBUF_1944),
    .Q(\controldeusuario/puntero_0_2_1416 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_244)
  );
  INV   \maquinaprincipal/reset_inv1_INV_0  (
    .I(reset_IBUF_1944),
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
    .I0(N217),
    .I1(N218),
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
    .O(N217)
  );
  LUT4 #(
    .INIT ( 16'hFFF6 ))
  \Cront_out/CS_or0003_G  (
    .I0(\Cront_out/contador [4]),
    .I1(\Cront_out/contador [1]),
    .I2(\Cront_out/contador [3]),
    .I3(\Cront_out/contador [2]),
    .O(N218)
  );
  MUXF5   \Cront_out/RD_mux00002  (
    .I0(N219),
    .I1(N220),
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
    .O(N219)
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \Cront_out/RD_mux00002_G  (
    .I0(\Cront_out/contador [2]),
    .I1(\Cront_out/contador [1]),
    .I2(\Cront_out/contador [3]),
    .I3(\Cront_out/contador [4]),
    .O(N220)
  );
  MUXF5   \controldeusuario/puntero_mux0000<3>182  (
    .I0(N221),
    .I1(N222),
    .S(interruptores_2_IBUF_1497),
    .O(\controldeusuario/puntero_mux0000<3>182_1448 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \controldeusuario/puntero_mux0000<3>182_F  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/puntero [1]),
    .I2(\controldeusuario/puntero [2]),
    .I3(interruptores_1_IBUF_1496),
    .O(N221)
  );
  LUT4 #(
    .INIT ( 16'h0018 ))
  \controldeusuario/puntero_mux0000<3>182_G  (
    .I0(\controldeusuario/puntero [1]),
    .I1(\controldeusuario/puntero [2]),
    .I2(\controldeusuario/puntero [3]),
    .I3(interruptores_1_IBUF_1496),
    .O(N222)
  );
  MUXF5   \controldeusuario/puntero_mux0000<1>111  (
    .I0(N223),
    .I1(N224),
    .S(\controldeusuario/puntero [2]),
    .O(\controldeusuario/N51 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \controldeusuario/puntero_mux0000<1>111_F  (
    .I0(\controldeusuario/puntero [3]),
    .I1(interruptores_2_IBUF_1497),
    .I2(\controldeusuario/puntero [1]),
    .O(N223)
  );
  LUT4 #(
    .INIT ( 16'h89DD ))
  \controldeusuario/puntero_mux0000<1>111_G  (
    .I0(\controldeusuario/puntero [3]),
    .I1(interruptores_2_IBUF_1497),
    .I2(\controldeusuario/puntero [0]),
    .I3(\controldeusuario/puntero [1]),
    .O(N224)
  );
  MUXF5   \Cront_out/Mtridata_data_out_mux0000<7>  (
    .I0(N225),
    .I1(N226),
    .S(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Cront_out/Mtridata_data_out_mux0000<7>_F  (
    .I0(\write/activa_1953 ),
    .I1(\write/data_out [0]),
    .O(N225)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \Cront_out/Mtridata_data_out_mux0000<7>_G  (
    .I0(\write/activa_1953 ),
    .I1(\read/activa_1914 ),
    .I2(\read/dir_out[0] ),
    .I3(\write/dir_out[0] ),
    .O(N226)
  );
  MUXF5   \Cront_out/Mtridata_data_out_mux0000<6>  (
    .I0(N227),
    .I1(N228),
    .S(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Cront_out/Mtridata_data_out_mux0000<6>_F  (
    .I0(\write/activa_1953 ),
    .I1(\write/data_out [1]),
    .O(N227)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \Cront_out/Mtridata_data_out_mux0000<6>_G  (
    .I0(\write/activa_1953 ),
    .I1(\read/activa_1914 ),
    .I2(\read/dir_out[1] ),
    .I3(\write/dir_out[1] ),
    .O(N228)
  );
  MUXF5   \Cront_out/Mtridata_data_out_mux0000<5>  (
    .I0(N229),
    .I1(N230),
    .S(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Cront_out/Mtridata_data_out_mux0000<5>_F  (
    .I0(\write/activa_1953 ),
    .I1(\write/data_out [2]),
    .O(N229)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \Cront_out/Mtridata_data_out_mux0000<5>_G  (
    .I0(\write/activa_1953 ),
    .I1(\read/activa_1914 ),
    .I2(\read/dir_out[2] ),
    .I3(\write/dir_out[2] ),
    .O(N230)
  );
  MUXF5   \Cront_out/Mtridata_data_out_mux0000<3>  (
    .I0(N231),
    .I1(N232),
    .S(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Cront_out/Mtridata_data_out_mux0000<3>_F  (
    .I0(\write/activa_1953 ),
    .I1(\write/data_out [4]),
    .O(N231)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \Cront_out/Mtridata_data_out_mux0000<3>_G  (
    .I0(\write/activa_1953 ),
    .I1(\read/activa_1914 ),
    .I2(\read/dir_out[7] ),
    .I3(\write/dir_out[4] ),
    .O(N232)
  );
  MUXF5   \Cront_out/Mtridata_data_out_mux0000<2>  (
    .I0(N233),
    .I1(N234),
    .S(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Cront_out/Mtridata_data_out_mux0000<2>_F  (
    .I0(\write/activa_1953 ),
    .I1(\write/data_out [5]),
    .O(N233)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \Cront_out/Mtridata_data_out_mux0000<2>_G  (
    .I0(\write/activa_1953 ),
    .I1(\read/activa_1914 ),
    .I2(\read/dir_out[5] ),
    .I3(\write/dir_out[5] ),
    .O(N234)
  );
  MUXF5   \Cront_out/Mtridata_data_out_mux0000<1>  (
    .I0(N235),
    .I1(N236),
    .S(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Cront_out/Mtridata_data_out_mux0000<1>_F  (
    .I0(\write/activa_1953 ),
    .I1(\write/data_out [6]),
    .O(N235)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \Cront_out/Mtridata_data_out_mux0000<1>_G  (
    .I0(\write/activa_1953 ),
    .I1(\read/activa_1914 ),
    .I2(\read/dir_out[6] ),
    .I3(\write/dir_out[6] ),
    .O(N236)
  );
  MUXF5   \Cront_out/Mtridata_data_out_mux0000<0>  (
    .I0(N237),
    .I1(N238),
    .S(\Cront_out/CS_cmp_eq0005 ),
    .O(\Cront_out/Mtridata_data_out_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Cront_out/Mtridata_data_out_mux0000<0>_F  (
    .I0(\write/activa_1953 ),
    .I1(\write/data_out [7]),
    .O(N237)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \Cront_out/Mtridata_data_out_mux0000<0>_G  (
    .I0(\write/activa_1953 ),
    .I1(\read/activa_1914 ),
    .I2(\read/dir_out[7] ),
    .I3(\write/dir_out[7] ),
    .O(N238)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \write/data_out_mux0000<7>1  (
    .I0(\controldeusuario/Dato_out [0]),
    .I1(\maquinaprincipal/iniciar_1511 ),
    .I2(\maquinaprincipal/whileT_1512 ),
    .I3(\write/state_FSM_FFd1_1999 ),
    .O(\write/data_out_mux0000<7>1_1977 )
  );
  MUXF5   \write/data_out_mux0000<7>_f5  (
    .I0(N0),
    .I1(\write/data_out_mux0000<7>1_1977 ),
    .S(\write/state_FSM_FFd2_2001 ),
    .O(\write/data_out_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \write/data_out_mux0000<6>1  (
    .I0(\controldeusuario/Dato_out [1]),
    .I1(\maquinaprincipal/iniciar_1511 ),
    .I2(\maquinaprincipal/whileT_1512 ),
    .I3(\write/state_FSM_FFd1_1999 ),
    .O(\write/data_out_mux0000<6>1_1975 )
  );
  MUXF5   \write/data_out_mux0000<6>_f5  (
    .I0(N0),
    .I1(\write/data_out_mux0000<6>1_1975 ),
    .S(\write/state_FSM_FFd2_2001 ),
    .O(\write/data_out_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \maquinaprincipal/State_mux0001<0>1  (
    .I0(\maquinaprincipal/State [0]),
    .I1(\inicia/true_1490 ),
    .O(\maquinaprincipal/State_mux0001<0>1_1504 )
  );
  LUT4 #(
    .INIT ( 16'h2227 ))
  \maquinaprincipal/State_mux0001<0>2  (
    .I0(\maquinaprincipal/State [0]),
    .I1(\inicia/true_1490 ),
    .I2(\maquinaprincipal/State [2]),
    .I3(\maquinaprincipal/State [1]),
    .O(\maquinaprincipal/State_mux0001<0>2_1505 )
  );
  MUXF5   \maquinaprincipal/State_mux0001<0>_f5  (
    .I0(\maquinaprincipal/State_mux0001<0>2_1505 ),
    .I1(\maquinaprincipal/State_mux0001<0>1_1504 ),
    .S(\maquinaprincipal/State [3]),
    .O(\maquinaprincipal/State_mux0001 [0])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \memoria/memoria1_8_not00011  (
    .I0(\Cront_out/escreg_59 ),
    .I1(\read/reg_out [1]),
    .I2(\read/reg_out [0]),
    .I3(\read/reg_out [2]),
    .O(\memoria/memoria1_8_not00011_1680 )
  );
  MUXF5   \memoria/memoria1_8_not0001_f5  (
    .I0(N0),
    .I1(\memoria/memoria1_8_not00011_1680 ),
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
    .O(\memoria/memoria1_4_not00011_1643 )
  );
  MUXF5   \memoria/memoria1_4_not0001_f5  (
    .I0(\memoria/memoria1_4_not00011_1643 ),
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
    .O(\memoria/memoria1_0_not00011_1557 )
  );
  MUXF5   \memoria/memoria1_0_not0001_f5  (
    .I0(\memoria/memoria1_0_not00011_1557 ),
    .I1(N0),
    .S(\read/reg_out [3]),
    .O(\memoria/memoria1_0_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \write/state_FSM_FFd2-In11  (
    .I0(\Cront_out/final_63 ),
    .I1(\write/state_FSM_FFd1_1999 ),
    .O(\write/state_FSM_FFd2-In1 )
  );
  LUT4 #(
    .INIT ( 16'h3332 ))
  \write/state_FSM_FFd2-In12  (
    .I0(\WT/escritura_217 ),
    .I1(\write/state_FSM_FFd1_1999 ),
    .I2(\controldeusuario/escritura_944 ),
    .I3(\inicia/escritura_1476 ),
    .O(\write/state_FSM_FFd2-In11_2004 )
  );
  MUXF5   \write/state_FSM_FFd2-In1_f5  (
    .I0(\write/state_FSM_FFd2-In11_2004 ),
    .I1(\write/state_FSM_FFd2-In1 ),
    .S(\write/state_FSM_FFd2_2001 ),
    .O(\write/state_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \write/data_out_mux0000<2>1  (
    .I0(\controldeusuario/Dato_out [5]),
    .I1(\maquinaprincipal/iniciar_1511 ),
    .I2(\maquinaprincipal/whileT_1512 ),
    .I3(\write/state_FSM_FFd1_1999 ),
    .O(\write/data_out_mux0000<2>1_1968 )
  );
  MUXF5   \write/data_out_mux0000<2>_f5  (
    .I0(N0),
    .I1(\write/data_out_mux0000<2>1_1968 ),
    .S(\write/state_FSM_FFd2_2001 ),
    .O(\write/data_out_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \write/data_out_mux0000<0>1  (
    .I0(\controldeusuario/Dato_out [7]),
    .I1(\maquinaprincipal/iniciar_1511 ),
    .I2(\maquinaprincipal/whileT_1512 ),
    .I3(\write/state_FSM_FFd1_1999 ),
    .O(\write/data_out_mux0000<0>1_1963 )
  );
  MUXF5   \write/data_out_mux0000<0>_f5  (
    .I0(N0),
    .I1(\write/data_out_mux0000<0>1_1963 ),
    .S(\write/state_FSM_FFd2_2001 ),
    .O(\write/data_out_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \write/dir_out_mux0000<5>1  (
    .I0(\WT/dir[2] ),
    .I1(\write/state_FSM_FFd2_2001 ),
    .I2(\write/state_FSM_FFd1_1999 ),
    .O(\write/dir_out_mux0000<5>1_1994 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \write/dir_out_mux0000<5>2  (
    .I0(\maquinaprincipal/iniciar_1511 ),
    .I1(\write/state_FSM_FFd2_2001 ),
    .I2(\write/state_FSM_FFd1_1999 ),
    .I3(\controldeusuario/ADD2[2] ),
    .O(\write/dir_out_mux0000<5>2_1995 )
  );
  MUXF5   \write/dir_out_mux0000<5>_f5  (
    .I0(\write/dir_out_mux0000<5>2_1995 ),
    .I1(\write/dir_out_mux0000<5>1_1994 ),
    .S(\maquinaprincipal/whileT_1512 ),
    .O(\write/dir_out_mux0000[5] )
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \write/dir_out_mux0000<3>1  (
    .I0(\write/state_FSM_FFd1_1999 ),
    .I1(\write/state_FSM_FFd2_2001 ),
    .I2(\WT/escritura_217 ),
    .O(\write/dir_out_mux0000<3>1_1991 )
  );
  LUT4 #(
    .INIT ( 16'hF020 ))
  \write/dir_out_mux0000<3>2  (
    .I0(\controldeusuario/ADD2[4] ),
    .I1(\maquinaprincipal/iniciar_1511 ),
    .I2(\write/state_FSM_FFd2_2001 ),
    .I3(\write/state_FSM_FFd1_1999 ),
    .O(\write/dir_out_mux0000<3>2_1992 )
  );
  MUXF5   \write/dir_out_mux0000<3>_f5  (
    .I0(\write/dir_out_mux0000<3>2_1992 ),
    .I1(\write/dir_out_mux0000<3>1_1991 ),
    .S(\maquinaprincipal/whileT_1512 ),
    .O(\write/dir_out_mux0000[3] )
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \write/dir_out_mux0000<1>1  (
    .I0(\write/state_FSM_FFd1_1999 ),
    .I1(\write/state_FSM_FFd2_2001 ),
    .I2(\WT/dir[6] ),
    .O(\write/dir_out_mux0000<1>1_1987 )
  );
  LUT4 #(
    .INIT ( 16'hF020 ))
  \write/dir_out_mux0000<1>2  (
    .I0(\controldeusuario/ADD2[6] ),
    .I1(\maquinaprincipal/iniciar_1511 ),
    .I2(\write/state_FSM_FFd2_2001 ),
    .I3(\write/state_FSM_FFd1_1999 ),
    .O(\write/dir_out_mux0000<1>2_1988 )
  );
  MUXF5   \write/dir_out_mux0000<1>_f5  (
    .I0(\write/dir_out_mux0000<1>2_1988 ),
    .I1(\write/dir_out_mux0000<1>1_1987 ),
    .S(\maquinaprincipal/whileT_1512 ),
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
    .INIT ( 16'hF020 ))
  \write/data_out_mux0000<3>1  (
    .I0(\inicia/dato [2]),
    .I1(\maquinaprincipal/whileT_1512 ),
    .I2(\write/state_FSM_FFd2_2001 ),
    .I3(\write/state_FSM_FFd1_1999 ),
    .O(\write/data_out_mux0000<3>1_1970 )
  );
  LUT4 #(
    .INIT ( 16'hF020 ))
  \write/data_out_mux0000<3>2  (
    .I0(\controldeusuario/Dato_out [4]),
    .I1(\maquinaprincipal/whileT_1512 ),
    .I2(\write/state_FSM_FFd2_2001 ),
    .I3(\write/state_FSM_FFd1_1999 ),
    .O(\write/data_out_mux0000<3>2_1971 )
  );
  MUXF5   \write/data_out_mux0000<3>_f5  (
    .I0(\write/data_out_mux0000<3>2_1971 ),
    .I1(\write/data_out_mux0000<3>1_1970 ),
    .S(\maquinaprincipal/iniciar_1511 ),
    .O(\write/data_out_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hF020 ))
  \write/data_out_mux0000<1>1  (
    .I0(\inicia/dato [3]),
    .I1(\maquinaprincipal/whileT_1512 ),
    .I2(\write/state_FSM_FFd2_2001 ),
    .I3(\write/state_FSM_FFd1_1999 ),
    .O(\write/data_out_mux0000<1>1_1965 )
  );
  LUT4 #(
    .INIT ( 16'hF020 ))
  \write/data_out_mux0000<1>2  (
    .I0(\controldeusuario/Dato_out [6]),
    .I1(\maquinaprincipal/whileT_1512 ),
    .I2(\write/state_FSM_FFd2_2001 ),
    .I3(\write/state_FSM_FFd1_1999 ),
    .O(\write/data_out_mux0000<1>2_1966 )
  );
  MUXF5   \write/data_out_mux0000<1>_f5  (
    .I0(\write/data_out_mux0000<1>2_1966 ),
    .I1(\write/data_out_mux0000<1>1_1965 ),
    .S(\maquinaprincipal/iniciar_1511 ),
    .O(\write/data_out_mux0000 [1])
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
    .I0(\WT/state_FSM_FFd10_229 ),
    .I1(\WT/state_FSM_FFd2_234 ),
    .I2(\WT/state_FSM_FFd7_239 ),
    .I3(\WT/state_FSM_FFd8_240 ),
    .O(\WT/lectura_mux0000111_221 )
  );
  MUXF5   \WT/lectura_mux000011_f5  (
    .I0(\WT/lectura_mux0000111_221 ),
    .I1(N1),
    .S(\WT/state_FSM_FFd9_241 ),
    .O(\WT/lectura_mux000011 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiosneg_6_not0001131  (
    .I0(\controldeusuario/puntero [3]),
    .I1(\controldeusuario/puntero [2]),
    .I2(\controldeusuario/puntero [0]),
    .I3(\controldeusuario/puntero [1]),
    .O(\controldeusuario/cambiosneg_6_not0001131_624 )
  );
  MUXF5   \controldeusuario/cambiosneg_6_not000113_f5  (
    .I0(N0),
    .I1(\controldeusuario/cambiosneg_6_not0001131_624 ),
    .S(selectores_0_IBUF_1949),
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
    .I1(\controldeusuario/puntero_mux0000<0>23_1426 ),
    .I2(N189),
    .O(\controldeusuario/puntero_mux0000<0>711_1431 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \controldeusuario/puntero_mux0000<0>712  (
    .I0(\controldeusuario/puntero_mux0000<0>23_1426 ),
    .I1(\controldeusuario/N51 ),
    .I2(interruptores_0_IBUF_1495),
    .O(\controldeusuario/puntero_mux0000<0>712_1432 )
  );
  MUXF5   \controldeusuario/puntero_mux0000<0>71_f5  (
    .I0(\controldeusuario/puntero_mux0000<0>712_1432 ),
    .I1(\controldeusuario/puntero_mux0000<0>711_1431 ),
    .S(interruptores_1_IBUF_1496),
    .O(\controldeusuario/puntero_mux0000<0>71 )
  );
  LUT4 #(
    .INIT ( 16'h02AA ))
  \controldeusuario/puntero_mux0000<0>62_SW0_SW01  (
    .I0(interruptores_0_IBUF_1495),
    .I1(\controldeusuario/puntero [2]),
    .I2(\controldeusuario/puntero [1]),
    .I3(\controldeusuario/puntero [3]),
    .O(\controldeusuario/puntero_mux0000<0>62_SW0_SW0 )
  );
  MUXF5   \controldeusuario/puntero_mux0000<0>62_SW0_SW0_f5  (
    .I0(\controldeusuario/puntero_mux0000<0>62_SW0_SW0 ),
    .I1(interruptores_0_IBUF_1495),
    .S(interruptores_2_IBUF_1497),
    .O(N189)
  );
  LUT3_D #(
    .INIT ( 8'h10 ))
  \controldeusuario/cambiospos_12_and000611  (
    .I0(\controldeusuario/puntero [1]),
    .I1(\controldeusuario/puntero [0]),
    .I2(\controldeusuario/puntero [2]),
    .LO(N239),
    .O(\controldeusuario/N331 )
  );
  LUT3_D #(
    .INIT ( 8'h08 ))
  \controldeusuario/cambiospos_11_and000611  (
    .I0(\controldeusuario/puntero [0]),
    .I1(\controldeusuario/puntero [1]),
    .I2(\controldeusuario/puntero [2]),
    .LO(N240),
    .O(\controldeusuario/N301 )
  );
  LUT3_D #(
    .INIT ( 8'h10 ))
  \controldeusuario/cambiospos_10_and000611  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero [0]),
    .I2(\controldeusuario/puntero [1]),
    .LO(N241),
    .O(\controldeusuario/N321 )
  );
  LUT2_D #(
    .INIT ( 4'h2 ))
  \controldeusuario/cambiosneg_4_not000111  (
    .I0(\controldeusuario/puntero2 [2]),
    .I1(\controldeusuario/puntero2 [3]),
    .LO(N242),
    .O(\controldeusuario/N37 )
  );
  LUT2_D #(
    .INIT ( 4'h1 ))
  \controldeusuario/cambiosneg_3_not000111  (
    .I0(\controldeusuario/puntero2 [2]),
    .I1(\controldeusuario/puntero2 [3]),
    .LO(N243),
    .O(\controldeusuario/N35 )
  );
  LUT2_D #(
    .INIT ( 4'h2 ))
  \controldeusuario/Mrom__COND_5211  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/puntero2 [2]),
    .LO(N244),
    .O(\controldeusuario/N391 )
  );
  LUT3_D #(
    .INIT ( 8'hFE ))
  \controldeusuario/Mrom__COND_5511  (
    .I0(\controldeusuario/puntero2 [2]),
    .I1(\controldeusuario/puntero2 [1]),
    .I2(\controldeusuario/puntero2 [0]),
    .LO(N245),
    .O(\controldeusuario/N151 )
  );
  LUT4_D #(
    .INIT ( 16'h0400 ))
  \Cront_out/AD_mux000011  (
    .I0(\Cront_out/contador [0]),
    .I1(\Cront_out/contador [4]),
    .I2(\Cront_out/contador [1]),
    .I3(\Cront_out/contador [2]),
    .LO(N246),
    .O(\Cront_out/AD_mux000035 )
  );
  LUT2_L #(
    .INIT ( 4'hD ))
  \Cront_out/WR_mux00001_SW0  (
    .I0(\Cront_out/contador [0]),
    .I1(\Cront_out/contador [1]),
    .LO(N51)
  );
  LUT4_L #(
    .INIT ( 16'hFFFE ))
  \WT/next_state_or00004  (
    .I0(\WT/state_FSM_FFd11_230 ),
    .I1(\WT/state_FSM_FFd12_232 ),
    .I2(\WT/state_FSM_FFd1_227 ),
    .I3(\WT/state_FSM_FFd2_234 ),
    .LO(\WT/next_state_or00004_226 )
  );
  LUT2_D #(
    .INIT ( 4'h7 ))
  \controldeusuario/cambiosneg_13_not00011_SW0  (
    .I0(\maquinaprincipal/CrontUs_1498 ),
    .I1(\write/final_1998 ),
    .LO(N247),
    .O(N90)
  );
  LUT4_D #(
    .INIT ( 16'h0001 ))
  \controldeusuario/cambiosneg_0_not00012  (
    .I0(\controldeusuario/final_cmp_eq0000 ),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/puntero2 [1]),
    .I3(N90),
    .LO(N248),
    .O(\controldeusuario/N31 )
  );
  LUT4_L #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_5_not0001_SW0  (
    .I0(\controldeusuario/puntero [3]),
    .I1(selectores_2_IBUF_1951),
    .I2(selectores_0_IBUF_1949),
    .I3(\controldeusuario/N311 ),
    .LO(N112)
  );
  LUT4_L #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiospos_3_not0001_SW0  (
    .I0(selectores_0_IBUF_1949),
    .I1(selectores_2_IBUF_1951),
    .I2(\controldeusuario/N301 ),
    .I3(\controldeusuario/puntero [3]),
    .LO(N116)
  );
  LUT4_L #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_2_not0001_SW0  (
    .I0(\controldeusuario/puntero [3]),
    .I1(selectores_2_IBUF_1951),
    .I2(selectores_0_IBUF_1949),
    .I3(\controldeusuario/N321 ),
    .LO(N118)
  );
  LUT4_L #(
    .INIT ( 16'h0080 ))
  \controldeusuario/cambiosneg_9_not0001_SW0  (
    .I0(selectores_0_IBUF_1949),
    .I1(\controldeusuario/puntero [0]),
    .I2(\controldeusuario/puntero [3]),
    .I3(\controldeusuario/N32 ),
    .LO(N128)
  );
  LUT4_L #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiosneg_1_not0001_SW0  (
    .I0(\controldeusuario/N32 ),
    .I1(\controldeusuario/puntero [0]),
    .I2(\controldeusuario/puntero [3]),
    .I3(selectores_0_IBUF_1949),
    .LO(N130)
  );
  LUT4_L #(
    .INIT ( 16'h0400 ))
  \controldeusuario/cambiospos_6_not000113  (
    .I0(selectores_0_IBUF_1949),
    .I1(\controldeusuario/puntero [2]),
    .I2(\controldeusuario/puntero [0]),
    .I3(selectores_2_IBUF_1951),
    .LO(\controldeusuario/cambiospos_6_not000113_890 )
  );
  LUT3_L #(
    .INIT ( 8'hF8 ))
  \Cront_out/WR_mux0000_SW0  (
    .I0(\Cront_out/WR_51 ),
    .I1(\Cront_out/CS_or0003_20 ),
    .I2(\Cront_out/CS_cmp_eq0005 ),
    .LO(N146)
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
    .LO(N249),
    .O(\controldeusuario/puntero_cmp_gt0003 )
  );
  LUT2_D #(
    .INIT ( 4'h8 ))
  \controldeusuario/cambiosneg_15_not000111  (
    .I0(\controldeusuario/puntero2 [2]),
    .I1(\controldeusuario/N271 ),
    .LO(N250),
    .O(\controldeusuario/N34 )
  );
  LUT3_D #(
    .INIT ( 8'hEA ))
  \controldeusuario/puntero_cmp_gt000111  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero [1]),
    .I2(\controldeusuario/puntero [0]),
    .LO(N251),
    .O(\controldeusuario/N121 )
  );
  LUT3_D #(
    .INIT ( 8'h08 ))
  \controldeusuario/cambiospos_5_and000611  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero [0]),
    .I2(\controldeusuario/puntero [1]),
    .LO(N252),
    .O(\controldeusuario/N311 )
  );
  LUT2_D #(
    .INIT ( 4'h7 ))
  \controldeusuario/Mrom__COND_5121  (
    .I0(\controldeusuario/puntero2 [2]),
    .I1(\controldeusuario/puntero2 [3]),
    .LO(N253),
    .O(\controldeusuario/N36 )
  );
  LUT3_D #(
    .INIT ( 8'hFD ))
  \controldeusuario/cambiosneg_8_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .LO(N254),
    .O(\controldeusuario/N9 )
  );
  LUT3_D #(
    .INIT ( 8'hFE ))
  \controldeusuario/cambiosneg_0_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N151 ),
    .I2(\controldeusuario/N20 ),
    .LO(N255),
    .O(\controldeusuario/N11 )
  );
  LUT4_D #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiosneg_9_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/N391 ),
    .I2(\controldeusuario/puntero2 [0]),
    .I3(\controldeusuario/N20 ),
    .LO(N256),
    .O(\controldeusuario/N10 )
  );
  LUT4_D #(
    .INIT ( 16'hFF7F ))
  \controldeusuario/cambiosneg_7_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/N37 ),
    .I3(\controldeusuario/N20 ),
    .LO(N257),
    .O(\controldeusuario/N8 )
  );
  LUT4_D #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiosneg_6_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/N37 ),
    .I2(\controldeusuario/puntero2 [1]),
    .I3(\controldeusuario/N20 ),
    .LO(N258),
    .O(\controldeusuario/N7 )
  );
  LUT4_D #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiosneg_5_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/N37 ),
    .I2(\controldeusuario/puntero2 [0]),
    .I3(\controldeusuario/N20 ),
    .LO(N259),
    .O(\controldeusuario/N6 )
  );
  LUT4_D #(
    .INIT ( 16'hFFEF ))
  \controldeusuario/cambiosneg_4_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/N37 ),
    .I3(\controldeusuario/N20 ),
    .LO(N260),
    .O(\controldeusuario/N5 )
  );
  LUT4_D #(
    .INIT ( 16'hFF7F ))
  \controldeusuario/cambiosneg_3_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/N35 ),
    .I3(\controldeusuario/N20 ),
    .LO(N261),
    .O(\controldeusuario/N4 )
  );
  LUT4_D #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiosneg_2_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/N35 ),
    .I2(\controldeusuario/puntero2 [1]),
    .I3(\controldeusuario/N20 ),
    .LO(N262),
    .O(\controldeusuario/N3 )
  );
  LUT4_D #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiosneg_1_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/N35 ),
    .I2(\controldeusuario/puntero2 [0]),
    .I3(\controldeusuario/N20 ),
    .LO(N263),
    .O(\controldeusuario/N2 )
  );
  LUT4_D #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiosneg_15_mux0000<0>11  (
    .I0(\controldeusuario/N36 ),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/puntero2 [1]),
    .I3(\controldeusuario/N20 ),
    .LO(N264),
    .O(\controldeusuario/N15 )
  );
  LUT4_D #(
    .INIT ( 16'hFFFD ))
  \controldeusuario/cambiosneg_14_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/N36 ),
    .I3(\controldeusuario/N20 ),
    .LO(N265),
    .O(\controldeusuario/N14 )
  );
  LUT4_D #(
    .INIT ( 16'hFFFB ))
  \controldeusuario/cambiosneg_13_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/N36 ),
    .I3(\controldeusuario/N20 ),
    .LO(N266),
    .O(\controldeusuario/N13 )
  );
  LUT4_D #(
    .INIT ( 16'hFF7F ))
  \controldeusuario/cambiosneg_11_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [1]),
    .I1(\controldeusuario/puntero2 [0]),
    .I2(\controldeusuario/N391 ),
    .I3(\controldeusuario/N20 ),
    .LO(N267),
    .O(\controldeusuario/N12 )
  );
  LUT4_D #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiosneg_10_mux0000<0>11  (
    .I0(\controldeusuario/puntero2 [0]),
    .I1(\controldeusuario/N391 ),
    .I2(\controldeusuario/puntero2 [1]),
    .I3(\controldeusuario/N20 ),
    .LO(N268),
    .O(\controldeusuario/N111 )
  );
  LUT3_D #(
    .INIT ( 8'h15 ))
  \controldeusuario/puntero_cmp_lt00001  (
    .I0(\controldeusuario/puntero [3]),
    .I1(\controldeusuario/puntero [1]),
    .I2(\controldeusuario/puntero [2]),
    .LO(N269),
    .O(\controldeusuario/puntero_cmp_lt0000 )
  );
  LUT4_D #(
    .INIT ( 16'h62EA ))
  \controldeusuario/puntero_mux0000<1>11  (
    .I0(interruptores_1_IBUF_1496),
    .I1(interruptores_0_IBUF_1495),
    .I2(\controldeusuario/N51 ),
    .I3(N163),
    .LO(N270),
    .O(\controldeusuario/N23 )
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \controldeusuario/Madd_COND_4_addsub0000_cy<5>11  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_cy<3>11_309 ),
    .LO(N271),
    .O(\controldeusuario/Madd_COND_4_addsub0000_cy[5] )
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \controldeusuario/Madd_COND_2_addsub0000_cy<5>11  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [5]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [4]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_cy<3>11_298 ),
    .LO(N272),
    .O(\controldeusuario/Madd_COND_2_addsub0000_cy[5] )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \controldeusuario/Madd_COND_4_addsub0000_cy<3>11  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [3]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .LO(N273),
    .O(\controldeusuario/Madd_COND_4_addsub0000_cy[3] )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \controldeusuario/Madd_COND_2_addsub0000_cy<3>11  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [3]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .LO(N274),
    .O(\controldeusuario/Madd_COND_2_addsub0000_cy[3] )
  );
  LUT4_L #(
    .INIT ( 16'h3CAA ))
  \controldeusuario/puntero_mux0000<2>76  (
    .I0(\controldeusuario/puntero [1]),
    .I1(\controldeusuario/puntero [0]),
    .I2(\controldeusuario/Maddsub_puntero_share0000_lut [1]),
    .I3(\controldeusuario/N0 ),
    .LO(\controldeusuario/puntero_mux0000<2>76_1444 )
  );
  LUT2_D #(
    .INIT ( 4'hE ))
  \controldeusuario/puntero_mux0000<3>312  (
    .I0(\controldeusuario/puntero [1]),
    .I1(\controldeusuario/puntero [2]),
    .LO(N275),
    .O(\controldeusuario/N32 )
  );
  LUT3_D #(
    .INIT ( 8'h8A ))
  \controldeusuario/puntero_and00001  (
    .I0(selectores_3_IBUF_1952),
    .I1(\controldeusuario/puntero [3]),
    .I2(\controldeusuario/N411 ),
    .LO(N276),
    .O(\controldeusuario/puntero_and00001_1422 )
  );
  LUT4_D #(
    .INIT ( 16'h785A ))
  \controldeusuario/Maddsub_puntero_share0000_lut<1>1  (
    .I0(selectores_3_IBUF_1952),
    .I1(\controldeusuario/puntero [3]),
    .I2(\controldeusuario/puntero [1]),
    .I3(\controldeusuario/N411 ),
    .LO(N277),
    .O(\controldeusuario/Maddsub_puntero_share0000_lut [1])
  );
  LUT3_D #(
    .INIT ( 8'h01 ))
  \controldeusuario/cambiospos_8_and000611  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero [1]),
    .I2(\controldeusuario/puntero [0]),
    .LO(N278),
    .O(\controldeusuario/N411 )
  );
  LUT4_L #(
    .INIT ( 16'h96AA ))
  \controldeusuario/puntero_mux0000<1>69  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero_and00001_1422 ),
    .I2(\controldeusuario/Maddsub_puntero_share0000_cy [1]),
    .I3(\controldeusuario/N0 ),
    .LO(\controldeusuario/puntero_mux0000<1>69_1440 )
  );
  LUT4_L #(
    .INIT ( 16'h2400 ))
  \controldeusuario/puntero_mux0000<0>140_SW0  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero_and00001_1422 ),
    .I2(\controldeusuario/Maddsub_puntero_share0000_cy [1]),
    .I3(\controldeusuario/N0 ),
    .LO(N173)
  );
  LUT3_L #(
    .INIT ( 8'hF8 ))
  \controldeusuario/puntero_mux0000<3>209_SW0  (
    .I0(\controldeusuario/puntero [3]),
    .I1(\controldeusuario/puntero_mux0000<3>149_1447 ),
    .I2(\controldeusuario/puntero_mux0000<3>182_1448 ),
    .LO(N179)
  );
  LUT4_L #(
    .INIT ( 16'hFFAE ))
  \controldeusuario/final_not0001_SW1  (
    .I0(\controldeusuario/puntero2 [3]),
    .I1(\controldeusuario/N40 ),
    .I2(interruptores_2_IBUF_1497),
    .I3(\controldeusuario/N151 ),
    .LO(N159)
  );
  LUT4_L #(
    .INIT ( 16'h0CEE ))
  \controldeusuario/puntero_mux0000<3>104  (
    .I0(\controldeusuario/puntero_mux0000<3>90_1454 ),
    .I1(\controldeusuario/puntero [3]),
    .I2(\controldeusuario/puntero [0]),
    .I3(\controldeusuario/N0 ),
    .LO(\controldeusuario/puntero_mux0000<3>104_1446 )
  );
  LUT4_L #(
    .INIT ( 16'hFFBF ))
  \controldeusuario/cambiospos_9_not000122_SW0  (
    .I0(selectores_0_IBUF_1949),
    .I1(\controldeusuario/puntero [3]),
    .I2(selectores_2_IBUF_1951),
    .I3(\controldeusuario/puntero [2]),
    .LO(N185)
  );
  LUT4_L #(
    .INIT ( 16'hFEFF ))
  \controldeusuario/cambiospos_1_not000125_SW0  (
    .I0(\controldeusuario/puntero [2]),
    .I1(\controldeusuario/puntero [3]),
    .I2(selectores_0_IBUF_1949),
    .I3(selectores_2_IBUF_1951),
    .LO(N187)
  );
  LUT4_L #(
    .INIT ( 16'hFFF8 ))
  \controldeusuario/puntero_mux0000<3>44  (
    .I0(\controldeusuario/puntero [1]),
    .I1(N191),
    .I2(\controldeusuario/puntero_mux0000<3>26_1450 ),
    .I3(\controldeusuario/N131 ),
    .LO(\controldeusuario/puntero_mux0000<3>44_1451 )
  );
  LUT4_L #(
    .INIT ( 16'h5DFF ))
  \controldeusuario/cambiosneg_14_not0001_SW1  (
    .I0(\controldeusuario/puntero_cmp_gt0003 ),
    .I1(\controldeusuario/N40 ),
    .I2(interruptores_2_IBUF_1497),
    .I3(selectores_0_IBUF_1949),
    .LO(N207)
  );
  LUT4_L #(
    .INIT ( 16'hE4F5 ))
  \controldeusuario/puntero_mux0000<2>20_SW0  (
    .I0(interruptores_1_IBUF_1496),
    .I1(\controldeusuario/N411 ),
    .I2(\controldeusuario/puntero_cmp_lt0000 ),
    .I3(\controldeusuario/puntero [3]),
    .LO(N181)
  );
  LUT4_D #(
    .INIT ( 16'h0008 ))
  \controldeusuario/final_cmp_eq00011  (
    .I0(\controldeusuario/puntero2 [2]),
    .I1(\controldeusuario/puntero2 [3]),
    .I2(\controldeusuario/puntero2 [1]),
    .I3(\controldeusuario/puntero2 [0]),
    .LO(N279),
    .O(\controldeusuario/final_cmp_eq0001 )
  );
  LUT4_L #(
    .INIT ( 16'h01FF ))
  \controldeusuario/cambiosneg_11_not00011_SW0  (
    .I0(interruptores_1_IBUF_1496),
    .I1(interruptores_0_IBUF_1495),
    .I2(interruptores_2_IBUF_1497),
    .I3(\write/final_1998 ),
    .LO(N148)
  );
  LUT4_D #(
    .INIT ( 16'h0080 ))
  \controldeusuario/cambiosneg_10_not00011  (
    .I0(\controldeusuario/puntero2_not0001 ),
    .I1(\controldeusuario/puntero2 [1]),
    .I2(\maquinaprincipal/CrontUs_1498 ),
    .I3(\controldeusuario/puntero2 [0]),
    .LO(N280),
    .O(\controldeusuario/N30 )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \controldeusuario/Madd_COND_4_addsub0000_cy<3>11_1  (
    .I0(\controldeusuario/Madd_COND_4_addsub0000_lut [3]),
    .I1(\controldeusuario/Madd_COND_4_addsub0000_lut [2]),
    .I2(\controldeusuario/Madd_COND_4_addsub0000_lut [1]),
    .I3(\controldeusuario/Madd_COND_4_addsub0000_cy[0] ),
    .LO(N281),
    .O(\controldeusuario/Madd_COND_4_addsub0000_cy<3>11_309 )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \controldeusuario/Madd_COND_2_addsub0000_cy<3>11_1  (
    .I0(\controldeusuario/Madd_COND_2_addsub0000_lut [3]),
    .I1(\controldeusuario/Madd_COND_2_addsub0000_lut [2]),
    .I2(\controldeusuario/Madd_COND_2_addsub0000_lut [1]),
    .I3(\controldeusuario/Madd_COND_2_addsub0000_cy[0] ),
    .LO(N282),
    .O(\controldeusuario/Madd_COND_2_addsub0000_cy<3>11_298 )
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

