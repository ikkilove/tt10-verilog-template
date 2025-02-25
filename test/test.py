# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles


@cocotb.test()
async def test_project(dut):
    dut._log.info("Start")

    module bitwise_majority_tb;
    reg [7:0] A;
    reg [7:0] B;
    wire [7:0] C;

    // Instantiate the design under test (DUT)
    bitwise_majority dut (
        .A(A),
        .B(B),
        .C(C)
    );

    initial begin
        // Monitor the signals
        $monitor("Time = %0d | A = %b | B = %b | C = %b", $time, A, B, C);

        // Test cases
        A = 8'b11001010; B = 8'b10101010; #10;
        A = 8'b11110000; B = 8'b11111111; #10;
        A = 8'b00001111; B = 8'b00000000; #10;
        A = 8'b10101010; B = 8'b01010101; #10;
        A = 8'b11111111; B = 8'b11111111; #10;
        A = 8'b00000000; B = 8'b00000000; #10;

        // End simulation
        $finish;
    end
endmodule
