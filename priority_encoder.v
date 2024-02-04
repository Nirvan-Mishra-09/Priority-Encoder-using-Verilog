// Priority Encoder using Behavioral Modelling
module priorityencoder(en, i, y);

// declaring input
input en; //declaring enable
input [7:0]i; // since 8x3 priority encoder, i.e 8 input lines have 3 output lines.
output reg [2:0]y;

always @(en, i)
begin
if (en == 1)
	begin
	if (i[7] == 1) y = 3'b111;
	else if(i[6] == 1) y = 3'b110;
	else if(i[5] == 1) y = 3'b101;
	else if(i[4] == 1) y = 3'b100;
	else if(i[3] == 1) y = 3'b011;
	else if(i[2] == 1) y = 3'b010;
	else if(i[1] == 1) y = 3'b001;
	else y = 3'b000;
	end
else y = 3'bzzz;
end
endmodule
