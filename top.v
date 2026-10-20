module top(
    input [15:0] sw,
    input btnU, btnD, btnR, btnL, btnC,
    output [15:0] led
);

wire [3:0] concat;
assign concat = {btnR, btnD, btnU, btnL};

wire [3:0] muxout;

    mux_4_bit a_inst(
        .A(sw[3:0]),
        .B(sw[7:4]),
        .C(sw[11:8]),
        .D(sw[15:12]),
        .Enable(btnC),
        .Sel(concat[1:0]),
        .Y(muxout)
        );
        
    demux_4_bit b_inst(
        .A(muxout),
        .Enable(btnC),
        .Sel(concat[3:2]),
        .lib(led[3:0]),
        .fd(led[7:4]),
        .school(led[11:8]),
        .rs(led[15:12])
        );

endmodule