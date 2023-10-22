module Code_Converter_4Bit(A,B,C,D,S2,S1,o0,o1,o2,o3);
input A,B,C,D;
input S2,S1;
output [3:0]o0,o1,o2,o3;
reg GND=1'b0,VCC=1'b1;
wire [3:0]de_mux;
wire nC,nD,andCD,nCandD,nCandnD,orCD,nCornD,xorCD,nxorCD;

IC74139 demux(.P1(GND),.P2(S1),.P3(S2),.P4(de_mux[0]),.P5(de_mux[1]),.P6(de_mux[2]),.P7(de_mux[3]),.P8(GND),.P16(VCC));//Unused Pins P9,P10,P11,P12,P13,P14,P15

//Binary to Gray Code Converter
IC74153 mux1(.P1(de_mux[0]),.P2(B),.P3(1'b1),.P4(1'b1),.P5(1'b0),.P6(1'b0),.P7(o0[3]),.P8(GND),.P9(o0[2]),.P10(1'b0),.P11(1'b1),.P12(1'b1),.P13(1'b0),.P14(A),.P15(de_mux[0]),.P16(VCC));
IC74153 mux2(.P1(de_mux[0]),.P2(B),.P3(nC),.P4(C),.P5(nC),.P6(C),.P7(o0[1]),.P8(GND),.P9(o0[0]),.P10(xorCD),.P11(xorCD),.P12(xorCD),.P13(xorCD),.P14(A),.P15(de_mux[0]),.P16(VCC));


//BCD to Excess-3 Code Converter
IC74153 mux3(.P1(de_mux[1]),.P2(B),.P3(1'b0),.P4(1'b1),.P5(orCD),.P6(1'b0),.P7(o1[3]),.P8(GND),.P9(o1[2]),.P10(orCD),.P11(nCandnD),.P12(nCandD),.P13(1'b0),.P14(A),.P15(de_mux[1]),.P16(VCC));
IC74153 mux4(.P1(de_mux[1]),.P2(B),.P3(1'b0),.P4(nCandnD),.P5(nxorCD),.P6(nxorCD),.P7(o1[1]),.P8(GND),.P9(o1[0]),.P10(nD),.P11(nD),.P12(nCandnD),.P13(1'b0),.P14(A),.P15(de_mux[1]),.P16(VCC));

//Gray Code to Binary Converter
IC74153 mux5(.P1(de_mux[2]),.P2(B),.P3(1'b1),.P4(1'b1),.P5(1'b0),.P6(1'b0),.P7(o2[3]),.P8(GND),.P9(o2[2]),.P10(1'b0),.P11(1'b1),.P12(1'b1),.P13(1'b0),.P14(A),.P15(de_mux[2]),.P16(VCC));
IC74153 mux6(.P1(de_mux[2]),.P2(B),.P3(C),.P4(nC),.P5(nC),.P6(C),.P7(o2[1]),.P8(GND),.P9(o2[0]),.P10(xorCD),.P11(nxorCD),.P12(nxorCD),.P13(xorCD),.P14(A),.P15(de_mux[2]),.P16(VCC));

//Excess-3 to BCD Converter
IC74153 mux7(.P1(de_mux[3]),.P2(B),.P3(1'b1),.P4(andCD),.P5(1'b0),.P6(1'b0),.P7(o3[3]),.P8(GND),.P9(o3[2]),.P10(1'b0),.P11(andCD),.P12(nCornD),.P13(1'b0),.P14(A),.P15(de_mux[3]),.P16(VCC));
IC74153 mux8(.P1(de_mux[3]),.P2(B),.P3(1'b0),.P4(xorCD),.P5(xorCD),.P6(1'b0),.P7(o3[1]),.P8(GND),.P9(o3[0]),.P10(1'b0),.P11(nD),.P12(nD),.P13(1'b1),.P14(A),.P15(de_mux[3]),.P16(VCC));


IC7404 notgate(.P1(C),.P2(nC),.P3(D),.P4(nD),.P5(xorCD),.P6(nxorCD),.P7(GND),.P14(VCC));//Unused Pins P8,P9,P10,P11,P12,P13

IC7432 orgate(.P1(C),.P2(D),.P3(orCD),.P4(nC),.P5(nD),.P6(nCornD),.P7(GND),.P14(VCC));//Unused Pins P8,P9,P10,P11,P12,P13 

IC7486 xorgate(.P1(C),.P2(D),.P3(xorCD),.P7(GND),.P14(VCC));//Unused Pins P4,P5,P6,P8,P9,P10,P11,P12,P13

IC7408 andgate(.P1(nC),.P2(nD),.P3(nCandnD),.P4(nC),.P5(D),.P6(nCandD),.P7(GND),.P8(andCD),.P9(C),.P10(D),.P14(VCC));//Unused Pins P11,P12,P13 

endmodule
