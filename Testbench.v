`timescale 1ns / 1ps
module Testbench_1;
reg a, b, c, d, e, f, g, h;
reg [2:0] sel;
wire y;
    Design_1 dut (
        .a(a), .b(b), .c(c), .d(d),
        .e(e), .f(f), .g(g), .h(h),
        .sel(sel),
        .y(y)
    );

    initial begin
        $display("time sel a b c d e f g h | y");
        $monitor("%0dns %b   %b %b %b %b %b %b %b %b | %b", $time, sel, a, b, c, d, e, f, g, h, y);
                 
        {a,b,c,d,e,f,g,h} = 8'b10101010; 
        sel = 3'b000; #5; // expect y=a=1
        sel = 3'b001; #5; // expect y=b=0
        sel = 3'b010; #5; // expect y=c=1
        sel = 3'b011; #5; // expect y=d=0
        sel = 3'b100; #5; // expect y=e=1
        sel = 3'b101; #5; // expect y=f=0
        sel = 3'b110; #5; // expect y=g=1
        sel = 3'b111; #5; // expect y=h=0

        {a,b,c,d,e,f,g,h} = 8'b11001100;
        sel = 3'b000; #5; // y=a=1
        sel = 3'b111; #5; // y=h=0
        #10 $finish;
    end
endmodule
