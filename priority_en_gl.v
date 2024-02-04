// Priority Encoder using Gate-Level modelling
module priority_en_gl(en, d, q);
  input en;
  input [7:0]d;
  output [2:0]q;
  
  wire x, y, z;
  
  or out2(x, d[4], d[5], d[6], d[7]);
  or out1(y, d[2], d[3], d[6], d[7]);
  or out0(z, d[1], d[3], d[5], d[7]);
  
  and s2(q[2], x, en);
  and s1(q[1], y, en);
  and s0(q[0], z, en);
endmodule
