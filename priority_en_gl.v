// Priority Encoder using Gate-Level modelling
module priority_en_gl(en, in, o);
  input en;
  input [7:0]in;
  output [2:0]o;
  
  wire x, y, z;
  
  or out2(x, in[4], in[5], in[6], in[7]);
  or out1(y, in[2], in[3], in[6], in[7]);
  or out0(z, in[1], in[3], in[5], in[7]);
  
  and s2(o[2], x, en);
  and s1(o[1], y, en);
  and s0(o[0], z, en);
endmodule
