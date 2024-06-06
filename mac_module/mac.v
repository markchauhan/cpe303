module mac(input signed [3:0] IN, input signed [3:0] W, input clk, input rstb, output reg signed [11:0] OUT);

    reg signed [11:0] A;
    reg signed [11:0] B;
    reg [3:0] cycle_count;

    always @(posedge clk or negedge rstb) begin
        if (!rstb) begin
            A <= 0;
            B <= 0;
            cycle_count <= 0;
            OUT <= 0;
        end else begin
            if (cycle_count < 9) begin
                if (IN != 0 || W != 0) begin
                    B <= B + (IN * W);
                end
                cycle_count <= cycle_count + 1;
            end else begin
                A <= B;
                B <= (IN * W);
                cycle_count <= 1;
            end
            OUT <= A + B;
        end
    end
endmodule

