module mux(
input [3:0] data0,
input [3:0] data1,
input sel,
output [3:0] result
);
assign result = (sel==1'b1)?data1:data0;
endmodule