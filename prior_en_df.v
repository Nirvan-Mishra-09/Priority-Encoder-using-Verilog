// Priority Encoder using Data flow modelling
module prior_en_df(en, in, o);
  //declaring input
  input en;
  input [7:0]in;
  //declaring output
  output [2:0]o;
  //assigning the output 
  assign o[2] = in[4] | in[5] | in[6] | in[7]&en;
  assign o[1] = in[2] | in[3] | in[6] | in[7]&en;
  assign o[0] = in[1] | in[3] | in[5] | in[7]&en;
endmodule
