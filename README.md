# Priority-Encoder-using-Verilog

Priority Encoder is a combinational digital circuit, that take 2^n input lines and encodes it to n output signal lines. For instance for a 8x3 priority encoder the output lines with respect to 8, i.e., (2)^3 input lines are 3 output lines.
![image](https://github.com/Nirvan-Mishra-09/Priority-Encoder-using-Verilog/assets/127642231/eb06c2fb-5684-4cf0-ab4a-35cc3976793d)

Working of Priority Encoder:
D7 is of highest priority, and D0 is of lowest priority. If D4 is on priority we ignore all the input lines before D4, as given diagram. 

This repo. consists of:
1) priority_encoder.v -- behavioral level modelling
2) priority_en_df.v -- data flow level modelling
3) priority_en_gl.v -- gate level modelling
4) priority_tb -- test bench.
