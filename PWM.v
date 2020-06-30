`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:40:16 06/30/2020 
// Design Name: 
// Module Name:    PWM 
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
module PWM(
    input clk,
    input [7:0] duty_cycle, // from 0% to 100
	 input reset_n,
    output reg PWM_out
    );


reg [7:0] counter;


always @(posedge clk)
begin
	if(counter == 8'd99)
		counter <= 0;
	else counter <= counter + 1 ;
	

end


always @(*)
begin
	if(!reset_n)
	begin
		counter <= 0;
		PWM_out <= 0;
	end
	else if(counter < duty_cycle)
		assign PWM_out = 1;
	else
		assign PWM_out = 0;
end 

endmodule
