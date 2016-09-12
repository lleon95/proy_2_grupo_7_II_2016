`timescale 1ns / 1ps


/*
	Got from: http://www.deathbylogic.com/2013/12/binary-to-binary-coded-decimal-bcd-converter/
*/

module BCDConverter(number, tens, ones);
   // I/O Signal Definitions
   input  [7:0] number;
   output reg [3:0] tens;
   output reg [3:0] ones;
   
   // Internal variable for storing bits
   reg [15:0] shift;
   integer i;
   
   always @(number)
   begin
      // Clear previous number and store new number in shift register
      shift[15:8] = 0;
      shift[7:0] = number;
      
      // Loop eight times
      for (i=0; i<8; i=i+1) begin
         if (shift[11:8] >= 5)
            shift[11:8] = shift[11:8] + 4'd3;
            
         if (shift[15:12] >= 5)
            shift[15:12] = shift[15:12] + 4'd3;
         
         // Shift entire register left once
         shift = shift << 1;
      end
      
      // Push decimal numbers to output
      tens     = shift[15:12];
      ones     = shift[11:8];
   end
 
endmodule
