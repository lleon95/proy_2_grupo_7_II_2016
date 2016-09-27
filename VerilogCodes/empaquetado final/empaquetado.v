`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:14:14 09/22/2016
// Design Name:   proyecto2_empaquetado
// Module Name:   /home/lleon95/GitHub/proy_2_grupo_7_II_2016/VerilogCodes/empaquetado final/empaquetado.v
// Project Name:  Prueba2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: proyecto2_empaquetado
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module empaquetado;

	// Inputs
	reg reset;
	reg clk;
	reg Up;
	reg Down;
	reg Left;
	reg Rig;
	reg int1;
	reg int2;
	reg int3;

	// Outputs
	wire RD;
	wire CS;
	wire AD;
	wire WR;
	wire [3:0] R;
	wire [3:0] G;
	wire [3:0] B;
	wire HSync;
	wire VSync;
	wire [9:0] PosX;
	wire [9:0] PosY;

	// Bidirs
	wire [7:0] DatAdd;
	reg [7:0] datoin;
	assign DatAdd=(!CS&&WR&&!RD&&AD)?datoin:8'bz;
	//memoria de registros
	reg [7:0] memoria[15:0];
	reg [3:0] ADD;
	//archivo
	integer id;
	// Instantiate the Unit Under Test (UUT)
	proyecto2_empaquetado uut (
		.reset(reset), 
		.clk(clk), 
		.RD(RD), 
		.CS(CS), 
		.AD(AD), 
		.WR(WR), 
		.DatAdd(DatAdd), 
		.R(R), 
		.G(G), 
		.B(B), 
		.HSync(HSync), 
		.VSync(VSync), 
		.Up(Up), 
		.Down(Down), 
		.Left(Left), 
		.Rig(Rig), 
		.int1(int1), 
		.int2(int2), 
		.int3(int3)
	);
	initial forever #5 clk = !clk;
	initial begin
		// Initialize Inputs
		//id=$fopen("C:/Users/User/Documents/proy_2_grupo_7_II_2016/Simulations/testbech/resultados/pantallazo1.txt","w+");
		id=$fopen("/home/lleon95/GitHub/proy_2_grupo_7_II_2016/Simulations/testbech/resultados/pantallazo1.txt","w+");
		reset = 1;
		ADD =0;
		datoin=0;
		clk = 0;
		Up = 0;
		Down = 0;
		Left = 0;
		Rig = 0;
		int1 = 0;
		int2 = 0;
		int3 = 0;
		memoria[0]=0;
		memoria[1]=1;
		memoria[2]=2;
		memoria[3]=3;
		memoria[4]=4;
		memoria[5]=5;
		memoria[6]=6;
		memoria[7]=7;
		memoria[8]=8;
		memoria[9]=9;
		memoria[10]=10;
		memoria[11]=11;
		memoria[12]=12;
		memoria[13]=13;
		memoria[14]=14;
		memoria[15]=15;
		#10 reset = 0;
		#8400000;
		$fclose(id);
		id=$fopen("/home/lleon95/GitHub/proy_2_grupo_7_II_2016/Simulations/testbech/resultados/pantallazo2.txt","w+");
		//id=$fopen("C:/Users/User/Documents/proy_2_grupo_7_II_2016/Simulations/testbech/resultados/pantallazo2.txt","w+");
		int1=1;
		Up=1;
		#10;
		Left=1;
		#8400000;
		$fclose(id);
		$finish;
		// Wait 100 ns for global reset to finish
    end
		// Add stimulus here
	
	always @ (CS or WR or AD or RD)
		begin
			//cambio del address
			if(!CS&&!WR&&!AD&&RD)
			begin
				case(DatAdd)
				8'd33:ADD=4'd1;
				8'd34:ADD=4'd2;
				8'd35:ADD=4'd3;
				8'd36:ADD=4'd4;
				8'd37:ADD=4'd5;
				8'd38:ADD=4'd6;
				8'd49:ADD=4'd7;
				8'd50:ADD=4'd8;
				8'd51:ADD=4'd9;
				default: ADD = 0;
				endcase
			end
			else
			begin
				//dato salida
				if(!CS&&WR&&!RD&&AD) datoin = memoria[ADD];
				//escritura dato
				else if(!CS&&!WR&&RD&&AD) memoria[ADD]=DatAdd;
				else begin end
			end
	end
	/*
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
   */
endmodule

