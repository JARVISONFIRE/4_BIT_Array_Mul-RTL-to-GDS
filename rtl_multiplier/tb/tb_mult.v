
`timescale 1ns/1ps

module tb_mult;

    reg clk;
    reg rst_n;
    reg [3:0] a, b;
    wire [7:0] p;

    integer i, j;
    integer errors;
    integer checked;
    reg [7:0] expected;

    mult_array dut (
        .clk   (clk),
        .rst_n (rst_n),
        .a     (a),
        .b     (b),
        .p     (p)
    );

    // Clock period = 10 ns
    initial clk = 1'b0;
    always #5 clk = ~clk;

    // Generate waveform for GTKWave
    initial begin
        $dumpfile("mult.vcd");
        $dumpvars(0, tb_mult);
    end

    initial begin
        rst_n  = 1'b0;
        a      = 4'd0;
        b      = 4'd0;
        errors = 0;
        checked = 0;

        $display("================================================");
        $display("        4-BIT MULTIPLIER TESTBENCH");
        $display("================================================");
        $display(" TIME |  A |  B | OUTPUT(P) | EXPECTED | STATUS");
        $display("------------------------------------------------");

        // Keep reset low for first two rising edges
        repeat (2) @(posedge clk);
        @(negedge clk);
        rst_n = 1'b1;

        // Test all 256 input combinations
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin

                // Apply inputs on falling edge
                @(negedge clk);
                a = i;
                b = j;
                expected = i * j;

                // Wait for two rising edges of pipeline latency
                repeat (2) @(posedge clk);
                #1;

                checked = checked + 1;

                if (p !== expected) begin
                    errors = errors + 1;
                    $display(
                        "%5t | %2d | %2d | %9d | %8d | FAIL",
                        $time, i, j, p, expected
                    );
                    $display(
                        "  MISMATCH: a=%0d b=%0d p=%0d expected=%0d",
                        i, j, p, expected
                    );
                end else begin
                    $display(
                        "%5t | %2d | %2d | %9d | %8d | PASS",
                        $time, i, j, p, expected
                    );
                end
            end
        end

        $display("------------------------------------------------");

        if (errors == 0)
            $display("PASS: %0d vectors checked, %0d errors",
                     checked, errors);
        else
            $display("FAIL: %0d vectors checked, %0d errors",
                     checked, errors);

        $display("================================================");
        $finish;
    end

endmodule
