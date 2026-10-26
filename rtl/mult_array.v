
module mult_array (
    input  wire       clk,
    input  wire       rst_n,
    input  wire [3:0] a,
    input  wire [3:0] b,
    output reg  [7:0] p
);

    wire [15:0] pp;

    // 16 AND gates generate the partial products.
    genvar i, j;
    generate
        for (i = 0; i < 4; i = i + 1) begin : ROW
            for (j = 0; j < 4; j = j + 1) begin : COL
                assign pp[4*i+j] = a[j] & b[i];
            end
        end
    endgenerate

    // Stage 1: add pp0 and pp1 shifted left by one.
    wire [3:0] s1, c1;
    wire [3:0] cin1;

    assign cin1[0] = 1'b0;

    genvar k;
    generate
        for (k = 0; k < 4; k = k + 1) begin : ADD1
            full_adder fa (
                .a   (k == 3 ? 1'b0 : pp[k+1]),
                .b   (pp[4+k]),
                .cin (cin1[k]),
                .sum (s1[k]),
                .cout(c1[k])
            );

            if (k < 3) begin
                assign cin1[k+1] = c1[k];
            end
        end
    endgenerate

    // Stage 2: add pp2 shifted left by two.
    wire [3:0] s2, c2;
    wire [3:0] cin2;
    wire [3:0] x2;

    assign x2[0] = s1[1];
    assign x2[1] = s1[2];
    assign x2[2] = s1[3];
    assign x2[3] = c1[3];
    assign cin2[0] = 1'b0;

    generate
        for (k = 0; k < 4; k = k + 1) begin : ADD2
            full_adder fa (
                .a   (x2[k]),
                .b   (pp[8+k]),
                .cin (cin2[k]),
                .sum (s2[k]),
                .cout(c2[k])
            );

            if (k < 3) begin
                assign cin2[k+1] = c2[k];
            end
        end
    endgenerate

    // Stage 3: add pp3 shifted left by three.
    wire [3:0] s3, c3;
    wire [3:0] cin3;
    wire [3:0] x3;

    assign x3[0] = s2[1];
    assign x3[1] = s2[2];
    assign x3[2] = s2[3];
    assign x3[3] = c2[3];
    assign cin3[0] = 1'b0;

    generate
        for (k = 0; k < 4; k = k + 1) begin : ADD3
            full_adder fa (
                .a   (x3[k]),
                .b   (pp[12+k]),
                .cin (cin3[k]),
                .sum (s3[k]),
                .cout(c3[k])
            );

            if (k < 3) begin
                assign cin3[k+1] = c3[k];
            end
        end
    endgenerate

    // Assemble the combinational 8-bit product.
    wire [7:0] product_comb;

    assign product_comb[0] = pp[0];
    assign product_comb[1] = s1[0];
    assign product_comb[2] = s2[0];
    assign product_comb[3] = s3[0];
    assign product_comb[4] = s3[1];
    assign product_comb[5] = s3[2];
    assign product_comb[6] = s3[3];
    assign product_comb[7] = c3[3];

    // Two clocked pipeline stages; active-low reset.
    reg [7:0] product_stage1;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            product_stage1 <= 8'b0;
            p              <= 8'b0;
        end else begin
            product_stage1 <= product_comb;
            p              <= product_stage1;
        end
    end

endmodule
