`default_nettype none
`timescale 1ns / 1ps

module halfaddert_b;

reg a;

reg b;

wire sum;

wire carry;

tt_um_half_adder uut ( .a(a),.b(b),.sum(sum), .carry(carry));

initial begin

#10 a=1’b0;b=1’b0;                       –This is input a=0,b=0

#10 a=1’b0;b=1’b1;                        –This is input a=0,b=1

#10 a=1’b1;b=1’b0;                        –This is input a=1,b=0

#10 a=1’b1;b=1’b1;                         –This is input a=1,b=1

#10$stop;

end

endmodule
