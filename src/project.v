/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

module bitwise_majority(
    input [7:0] A,
    input [7:0] B,
    output reg [7:0] C
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
