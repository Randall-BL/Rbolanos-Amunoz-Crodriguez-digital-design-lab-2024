module RestadorParametrizado #(parameter N = 6)(
    input logic clk,
    input logic reset,
    input logic [N-1:0] initial_value,
    input logic dec,
    output logic [6:0] seg1,  // Display 7 segmentos para las decenas
    output logic [6:0] seg0   // Display 7 segmentos para las unidades
);
    logic [N-1:0] count_internal;

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            count_internal <= initial_value;
        else if (dec)
            count_internal <= count_internal - 1;
    end

    function [6:0] bin_to_7seg(input [3:0] digit);
        case (digit)
            4'd0: bin_to_7seg = 7'b1000000;
            4'd1: bin_to_7seg = 7'b1111001;
            4'd2: bin_to_7seg = 7'b0100100;
            4'd3: bin_to_7seg = 7'b0110000;
            4'd4: bin_to_7seg = 7'b0011001;
            4'd5: bin_to_7seg = 7'b0010010;
            4'd6: bin_to_7seg = 7'b0000010;
            4'd7: bin_to_7seg = 7'b1111000;
            4'd8: bin_to_7seg = 7'b0000000;
            4'd9: bin_to_7seg = 7'b0010000;
            default: bin_to_7seg = 7'b1111111; // Error
        endcase
    endfunction

    assign seg0 = bin_to_7seg(count_internal % 10);
    assign seg1 = bin_to_7seg(count_internal / 10);
    
endmodule
