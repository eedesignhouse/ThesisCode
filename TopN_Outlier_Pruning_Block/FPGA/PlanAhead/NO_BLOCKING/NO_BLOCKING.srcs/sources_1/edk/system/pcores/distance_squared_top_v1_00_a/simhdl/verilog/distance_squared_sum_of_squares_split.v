// ==============================================================
// File generated by AutoESL - High-Level Synthesis System (C, C++, SystemC)
// Version: 2012.1
// Copyright (C) 2012 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module distance_squared_sum_of_squares_split(
    clk,
    reset,
    address0,
    ce0,
    we0,
    d0,
    q0,
    address1,
    ce1,
    we1,
    d1);

parameter DataWidth = 32'd64;
parameter AddressRange = 32'd8;
parameter AddressWidth = 32'd3;
input clk;
input reset;
input[AddressWidth - 1:0] address0;
input ce0;
input we0;
input[DataWidth - 1:0] d0;
output[DataWidth - 1:0] q0;
input[AddressWidth - 1:0] address1;
input ce1;
input we1;
input[DataWidth - 1:0] d1;

wire[64 - 1:0] sig_d0;
wire[1 - 1:0] sig_we0;
wire[64 - 1:0] sig_q0;
wire[64 - 1:0] sig_d1;
wire[1 - 1:0] sig_we1;
wire[64 - 1:0] sig_q1;


distance_squared_sum_of_squares_split_ram distance_squared_sum_of_squares_split_ram_U(
    .clka( clk ),
    .dina( sig_d0 ),
    .addra( address0 ),
    .wea( sig_we0 ),
    .douta( sig_q0 ),
    .ena( sig_ena ),
    .clkb( clk ),
    .dinb( sig_d1 ),
    .addrb( address1 ),
    .web( sig_we1 ),
    .doutb( sig_q1 ),
    .enb( sig_enb ));

assign sig_we0 = we0;
assign sig_d0 = d0;
assign q0 = sig_q0;
assign sig_ena = ce0;
assign sig_we1 = we1;
assign sig_d1 = d1;
assign sig_enb = ce1;
endmodule