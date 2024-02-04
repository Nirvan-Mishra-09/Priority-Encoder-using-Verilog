// Priority Encoder using Data flow modelling
module prior_en_df(en, d, q);
  //declaring input
  input en;
  input [7:0]d;
  //declaring output
  output [2:0]q;
  //assigning the output 
  assign q[2] = d[4] | d[5] | d[6] | d[7]&en;
  assign q[1] = d[2] | d[3] | d[6] | d[7]&en;
  assign q[0] = d[1] | d[3] | d[5] | d[7]&en;
endmodule
