module DecoderToBcd (
    input logic [3:0] in,   // Entrada binaria de 4 bits
    output logic [7:0] out  // Salida en BCD (8 bits: decena + unidad)
);
    always_comb begin
        // Inicializar la salida en 0
        out = 8'b0000_0000;  

        // Si el número es 10 o mayor, sumar 6 (ajuste BCD)
        if (in >= 10) begin
            out[7:4] = 4'b0001;   // Decenas (1)
            out[3:0] = in - 4'd10; // Unidades ajustadas
        end 
        else begin
            out[7:4] = 4'b0000;  // Decenas en 0
            out[3:0] = in;        // Unidades igual a la entrada
        end
    end
endmodule

//Modulo Decoder
//El código emplea el modelo de comportamiento mediante el always, cambiando instantaneamente
//cada salida según la entrada, se describe en alto nivel cómo se debe decodificar
//sin específicar sus componentes físicos necesarios
