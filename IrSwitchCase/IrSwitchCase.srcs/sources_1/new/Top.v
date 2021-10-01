`timescale 1ns / 1ps
//I was here

module Top(

input CLK100MHZ, reset,
    input [15:0] sw,  //the 4 inputs for each display
    input [2:0] JB,    //
    input [2:0] JA, 
    output [6:0] JC,   //output to H-Bridge
    output a, b, c, d, e, f, g, dp, //the individual LED output for the seven segment along with the digital point
    output [3:0] an,   // Annodes from the constriants file
    output [15:0] LED
 );

localparam FrequencyNum = 18; //frequency for the seven segment
reg [17:0] counter =0;        //Counter for this project
reg [FrequencyNum-1:0]SegCounter; //the 18 bit counter which allows us to multiplex at 1000Hz

always @ (posedge CLK100MHZ or posedge reset)
 begin
  if (reset)
   SegCounter <= 0;
  else
   SegCounter <= SegCounter + 1;
 end

reg [6:0]sseg; //the 7 bit register to hold the data to output
reg [3:0]anodeTemp; //register for the 4 bit enable
always@(posedge CLK100MHZ)begin //clock
    if (counter <200000) //count until 100
        counter <=counter+1; 
    else
        counter <=0; //reset counter              
end        
//////////////////////////////////////////////////
//////////////////////////////////////////////////


always @ (*)
 begin
  case(SegCounter[FrequencyNum-1:FrequencyNum-2]) //using only the 2 MSB's of the counter 
   
//right most segment       
   2'b00 :  //When the 2 MSB's are 00 enable the fourth display
    begin
    if(sw[1]==0)
     sseg = 4'b1011;
     else
     sseg = 4'b1100;

     anodeTemp = 4'b1110;
    end
//Second to right display   
   2'b01:  
    begin
    if(JB[1]==1)
        sseg = 4'b1010;
    else
        sseg = 4'b1111;
     
     anodeTemp = 4'b1101;
    end
 
 //left side
 //Second to left   
   2'b10: 
    begin
     //sseg = in2;
     if(JB[0]==1  ) //stationary 
        sseg = 4'b1010;
     else
     sseg = 4'b1111;
     
     anodeTemp = 4'b1011;
    end   
// left most    
   2'b11:  
    begin
     if( sw[6]==0 ) //stationary 
        sseg = 4'b1011;
     else
        sseg = 4'b1100;
     
     anodeTemp = 4'b0111;
    end
  endcase
 end
assign an = anodeTemp; //setting it equal to the temp variable


reg [6:0] sseg_temp; // 7 bit register to hold the binary value of each input given
//sseg_temp = 7'b0111111; //dash
always @ (*)
 begin
  case(sseg)
   4'd0 : sseg_temp = 7'b1000000; //to display 0
   4'd1 : sseg_temp = 7'b1111001; //to display 1
   4'd2 : sseg_temp = 7'b0100100; //to display 2
   4'd3 : sseg_temp = 7'b0110000; //to display 3
   4'd4 : sseg_temp = 7'b0011001; //to display 4
   4'd5 : sseg_temp = 7'b0010010; //to display 5
   4'd6 : sseg_temp = 7'b0000010; //to display 6
   4'd7 : sseg_temp = 7'b1111000; //to display 7
   4'd8 : sseg_temp = 7'b0000000; //to display 8 //
   4'd9 : sseg_temp = 7'b0010000; //to display 9
   4'd10: sseg_temp = 7'b0111111; // dash
   
   4'd11: sseg_temp = 7'b0001110; // F AFEG
   4'd12: sseg_temp = 7'b0000011; // b
   default : sseg_temp = 7'b1111111; //off dash
  endcase
 end
assign {g, f, e, d, c, b, a} = sseg_temp; //concatenate the outputs to the register, this is just a more neat way of doing this.
// I could have done in the case statement: 4'd0 : {g, f, e, d, c, b, a} = 7'b1000000; 
// its the same thing.. write however you like it

assign dp = 1'b1; //since the decimal point is not needed, all 4 of them are turned off

//enable A
    
    //enable B
    //not pinBox2 (JC[4],LED2, ~sw[1]);
    //    assign JC[0] = ((sw[0]&&~JB[0] ) && ((sw[2]&&counter <75000)||(~sw[2] && counter <190000))) ? 1:0; //enableA

    assign JC[0] = (JA[0]==1 && counter <80000) ? 1:0; //enableA
    not EnableALed (LED[0], ~sw[0] );  //enableA
    not DirectionAF (JC[1],LED[1], ~sw[1]); //Backward
    not DirectionAB (JC[2], sw[1]);         //forward
    not bustA (LED[9], ~JB[0]);
    
////////////////////////////////////////////////////////  && ~JB[1])
    //assign JC[4] = (sw[7]&& ((sw[5]&&counter <75000)||(~sw[5] && counter <190000))) ? 1:0;
    assign JC[4] = (JA[0]==1 && counter <80000 ) ? 1:0;
    not EnableBLed (LED[7], ~(sw[7] ) );  //enableA    
    
    not DirectionBF (JC[5], sw[6]);         //Backward
    not DirectionBB (JC[6],LED[6], ~sw[6]); //forward
    not bustB (LED[14], ~JB[1]);

endmodule


