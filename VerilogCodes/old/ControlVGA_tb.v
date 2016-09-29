`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:43:52 09/11/2016 
// Design Name: 
// Module Name:    ControlVGA_tb 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ControlVGA_tb;
		reg CLK;
		reg RESET;
		wire [3:0] addrOUT;
		reg [7:0] dataIN;
		// Seales VGA
		wire HSync;
		wire VSync;
		wire [3:0] R;
		wire [3:0] G;
		wire [3:0] B;
		
		wire [9:0] PosY, PosX;
		
		integer id;
	reg[7:0] memoria[0:15];
	
	ControlVGACentral_MemoryPointed uut(.CLK(CLK),.RESET(RESET),.MemAddrOut(addrOUT),.MemDataIN(dataIN),.HSync(HSync),.VSync(VSync),.R(R),.G(G),.B(B),.PosX(PosX),.PosY(PosY));
	initial forever #5 CLK=~CLK;
	
	always @(posedge CLK or negedge CLK)
		dataIN <= memoria[addrOUT];
	
	initial
	begin
		id = $fopen("VGA.txt","w+");
		//$fwrite(id, "VSync \t HSync \t R \t G \t B \n");
		CLK=0;
		RESET=1;
		dataIN=0;
		memoria[0]=0;
		memoria[1]=8'h30; // Sec Reloj
		memoria[2]=8'h15; // Min Rloj
		memoria[3]=8'h3;  //Hora Reloj
		memoria[4]=8'h4;  // Dia Reloj
		memoria[5]=8'h3;  // Mes Reloj
		memoria[6]=8'h15; // Ao reloj
		memoria[7]=8'h3;  // Sec Crono
		memoria[8]=8'h50; // Min Cron
		memoria[9]=8'h3;  // Hora Crono
		memoria[10]=8'h0;
		memoria[11]=8'h1;
		memoria[12]=8'h1;
		memoria[13]=0;
		memoria[14]=0;
		memoria[15]=0;
		#10 RESET=0;
		#16800000 $fclose(id);
		$stop;
	end
	
	always @(PosX)
	begin
		//dataIN = memoria[addrOUT];
		$fwrite(id, "_%H",PosX);
		//$fwrite(id, "\t");
		$fwrite(id, "_%H_",PosY);
		//$fwrite(id, "\t");
		$fwrite(id, "%H",R);
		//$fwrite(id, "\t");
		$fwrite(id, "%H",G);
		//$fwrite(id, "\t");
		$fwrite(id, "%H",B);
		$fwrite(id, "\n");
	end
endmodule
