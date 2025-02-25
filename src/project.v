/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_example (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);


always @(*) begin
    C[7] = ~(A[7] ^ B[7]);
    C[6] = ~(A[6] ^ B[6]);
    C[5] = ~(A[5] ^ B[5]);
    C[4] = ~(A[4] ^ B[4]);
    C[3] = ~(A[3] ^ B[3]);
    C[2] = ~(A[2] ^ B[2]);
    C[1] = ~(A[1] ^ B[1]);
    C[0] = ~(A[0] ^ B[0]);
end

endmodule
