        `timescale 1ns / 1ps

module Top(
    input CLK100MHZ, reset,
    input [15:0] sw,  //the 4 inputs for each display
    input left,
    //input innerLeft,
    //input innerRight,
    input right,
    input outerRight,
    input center,
    input Sensor,
    input rgbWave,
    output [0:3] JB,
    //output [4:]JB,
   // output rgbS0,rgbS1,rgbS2,rgbS3,
    //output [6:0] JC,   //output to H-Bridge
    output enableA, directionPinAF, directionPinAB,
    output enableB,directionPinBF,directionPinBB,
    
    output a, b, c, d, e, f, g, dp, //the individual LED output for the seven segment along with the digital point
    output [3:0] an,   // Annodes from the constriants file
    output [15:0] LED
    
 );

reg [20:0] maxValue = 200000;   //Max counter value
reg [18:0] highSpeed = 150000;
reg [18:0] lowSpeed =  90000;
reg [18:0] RFC = 0; //  Red Frequency Counter during Red Filter
reg [18:0] GFC = 0; // Green Frequency Counter during Green Filter
reg [18:0] BFC = 0; // Blue Frequency Counter during Blue Filter
reg [2:0]  rgb = 0; // Output of RGB function 
reg [18:0] counter = 0;        //Counter for this project
reg [20:0] clockCounter;    // For RBG Method
reg oldSignal = 0;
reg [1:0] temp0 = 0;
reg [1:0] temp1 = 0;
reg [1:0] temp2 = 0;
reg [1:0] temp3 = 0;


always@(posedge CLK100MHZ)begin //clock
    if (counter <maxValue) //count until 100
        counter <=counter+1; 
    else
        counter <= 0; //reset counter              
end      
/*
always@(posedge CLK100MHZ)begin 
    switch
              
end  
*/
////////////////////////////////////////////////////////////////////////////////////////////////////
/*  S2 S3         ~~ TCS3200 RGB Sensor ~~             // Detecting Red Green Blue//
  L  L  RED  
    L  H  BLUE  
    H  L  Clear (no filter)  
    H  H  GREEN */

task setRedFilter(); // Set S2 and S3 to Low
    begin
         temp2 = 0;
         temp3 = 0;
    end
endtask
task setGreenFilter(); // Set S2 and S3 High
    begin
         temp2 = 1;
         temp3 = 1;
    end
endtask
task setBlueFilter(); // Set S2 to Low, S3 to High
    begin
         temp2 = 0;
         temp3 = 1;
    end
endtask
task setScaling(); // Sets Scaling to 100%
    begin
        temp0 = 1;
        temp1  = 1;
    end
endtask
function [2:0] RGB     ; // Red = 1, Green = 2, Blue = 3
    input [18:0] RFC,GFC,BFC;
    begin
        if(RFC > GFC && RFC > BFC)
            RGB = 1;
        else if (GFC > BFC && GFC > RFC)
            RGB = 2;
        else 
            RGB = 3;
    end
endfunction

always@(posedge CLK100MHZ)
begin
    clockCounter = clockCounter+ 1;
    
    if(clockCounter >= 150000)
        begin
            rgb = RGB (RFC,GFC,BFC);
            
            clockCounter = 0;
            RFC = 0;
            GFC = 0;
            BFC = 0;
        end
 
        if(clockCounter<500000 && oldSignal != rgbWave)
            begin
                setRedFilter();
                RFC <=RFC+ 1;
            end
        else if(clockCounter < 100000 && oldSignal != rgbWave)
            begin
                setGreenFilter();
                GFC <=GFC+ 1;
            end
        else if (oldSignal != rgbWave)
            begin
                setBlueFilter();
                BFC <= BFC+1;
            end

    
    oldSignal = rgbWave;

end
              




////////////////////////////////////////////////////////////////////////////////////////////////////////
   
    //assign rgbS1 = temp1;
   // assign rgbS2 = temp2;
   // assign rgbS3 = temp3;
    assign LED[13] = (rgb == 1 )? 1:0;
    assign LED[14] = (rgb == 2 )? 1:0;
    assign LED[15] = (rgb == 3 )? 1:0;
    assign JB[0]= temp0;
    assign JB[1]= temp1;
    assign JB[2]= temp2;
    assign JB[3]= temp3;

    ////////////////////RGBRGBRGB
    
    
endmodule