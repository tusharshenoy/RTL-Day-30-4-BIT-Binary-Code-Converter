//Verilog Code for NOT gate IC IC7404
module IC7404(P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14);
input P1,P3,P5,P9,P11,P13;
input P7,P14; //Supply
output P2,P4,P6,P8,P10,P12;

assign P2=~P1;
assign P4=~P3;
assign P6=~P5;
assign P8=~P9;
assign P10=~P11;
assign P12=~P13;

endmodule
