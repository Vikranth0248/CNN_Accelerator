module mac_unit(
    input wire clk,
    input wire rst_n,
    input wire clear,
    input wire en,
    input wire signed [7:0] weight,
    input wire signed [7:0] in1,
    output reg signed [31:0] out
);
    wire signed [17:0] product = in1 * weight;
    always @(posedge clk)begin
        if(!rst_n || clear)
            out <= 0;
        else if(en)
            out <= out + product;
    end
endmodule