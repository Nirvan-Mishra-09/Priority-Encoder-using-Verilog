// Priority Encoder using Behavioral Modelling
module priorityencoder(en, d, q);

// declaring input
input en; //declaring enable
input [7:0]d; // since 8x3 priority encoder, i.e 8 input lines have 3 output lines.
output reg [2:0]q;

always @(en, d)
begin
if (en == 1)
	begin
	if (d[7] == 1) q = 3'b111;
	else if(d[6] == 1) q = 3'b110;
	else if(d[5] == 1) q = 3'b101;
	else if(d[4] == 1) q = 3'b100;
	else if(d[3] == 1) q = 3'b011;
	else if(d[2] == 1) q = 3'b010;
	else if(d[1] == 1) q = 3'b001;
	else q = 3'b000;
	end
else q = 3'bzzz;
end
endmodule
