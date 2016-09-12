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
		// Señales VGA
		wire HSync;
		wire VSync;
		wire [3:0] R;
		wire [3:0] G;
		wire [3:0] B;
		integer id;
	reg[7:0] memoria[0:15];
	ControlVGA uut(.CLK(CLK),.RESET(RESET),.addrOUT(addrOUT),.dataIN(dataIN),.HSync(HSync),.VSync(VSync),.R(R),.G(G),.B(B));
	initial forever #5 CLK=~CLK;
	
	initial
	begin
		id = $fopen("C:/Users/User/Documents/proy_2_grupo_7_II_2016/Simulations/testbech/resultados/VGA.txt","w+");
		$fwrite(id, "VSync \t HSync \t R \t G \t B \n");
		CLK=0;
		RESET=1;
		dataIN=0;
		memoria[0]=0;
		memoria[1]=30;
		memoria[2]=15;
		memoria[3]=3;
		memoria[4]=4;
		memoria[5]=3;
		memoria[6]=15;
		memoria[7]=3;
		memoria[8]=50;
		memoria[9]=3;
		memoria[10]=0;
		memoria[11]=0;
		memoria[12]=0;
		memoria[13]=0;
		memoria[14]=0;
		memoria[15]=0;
		#10 RESET=0;
		#1000000 $fclose(id);
		$finish;
	end
	
	always @(posedge CLK or negedge CLK)
	begin
		dataIN = memoria[addrOUT];
		$fwrite(id, VSync);
		$fwrite(id, "\t");
		$fwrite(id, HSync);
		$fwrite(id, "\t");
		$fwrite(id, R);
		$fwrite(id, "\t");
		$fwrite(id, G);
		$fwrite(id, "\t");
		$fwrite(id, B);
		$fwrite(id, "\n");
	end
endmodule
