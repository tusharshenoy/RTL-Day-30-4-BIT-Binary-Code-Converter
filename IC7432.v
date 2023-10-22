//Verilog Code for OR gate IC IC7432
module IC7432(P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14);
input P1,P2,P4,P5,P9,P10,P12,P13;
input P7,P14;//SUPPLY
output P3,P6,P8,P11;

assign P3=P1|P2;
assign P6=P4|P5;
assign P8=P9|P10;
assign P11=P12|P13;

endmodule
