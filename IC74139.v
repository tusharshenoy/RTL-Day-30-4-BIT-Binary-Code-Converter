//Verilog Code for DEMUX IC IC74139
module IC74139(P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16);
input P1,P2,P3,P13,P14,P15;
input P8,P16;//SUPPLY
output reg P4,P5,P6,P7,P9,P10,P11,P12;

//P1 and P15 are the active low enable pins
//P2,P3 and P14,P13 are the two select lines
//P4,P5,P6,P7 are the DEMUX 1 outputs
//P9,P10,P11,P12 are the DEMUX 2 outputs

always@(*)
begin
    if(~P1)
    begin
       case({P3,P2})
        2'b00:{P4,P5,P6,P7}=4'b0111;
        2'b01:{P4,P5,P6,P7}=4'b1011;
        2'b10:{P4,P5,P6,P7}=4'b1101;
        2'b11:{P4,P5,P6,P7}=4'b1110;
       endcase
     end
     else if(~P15)
      begin
       case({P13,P14})
        2'b00:{P12,P11,P10,P9}=4'b0111;
        2'b01:{P12,P11,P10,P9}=4'b1011;
        2'b10:{P12,P11,P10,P9}=4'b1101;
        2'b11:{P12,P11,P10,P9}=4'b1110;
       endcase
    end



end
endmodule
