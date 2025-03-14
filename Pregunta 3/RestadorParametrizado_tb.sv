module RestadorParametrizado_tb();

    // Señales de prueba
    logic clk;
    logic reset;
    logic [5:0] initial_value;
    logic dec;
    
    // Salidas para displays de 7 segmentos
    logic [6:0] seg1_2bits, seg0_2bits;
    logic [6:0] seg1_4bits, seg0_4bits;
    logic [6:0] seg1_6bits, seg0_6bits;

    // Salidas del contador para las pruebas
    logic [1:0] count2;
    logic [3:0] count4;
    logic [5:0] count6;

    // Instancias del módulo RestadorParametrizado
    RestadorParametrizado #(2) uut2 (
        .clk(clk),
        .reset(reset),
        .initial_value(initial_value[1:0]),
        .dec(dec),
        .seg1(seg1_2bits),
        .seg0(seg0_2bits),
        .count(count2)
    );

    RestadorParametrizado #(4) uut4 (
        .clk(clk),
        .reset(reset),
        .initial_value(initial_value[3:0]),
        .dec(dec),
        .seg1(seg1_4bits),
        .seg0(seg0_4bits),
        .count(count4)
    );

    RestadorParametrizado #(6) uut6 (
        .clk(clk),
        .reset(reset),
        .initial_value(initial_value),
        .dec(dec),
        .seg1(seg1_6bits),
        .seg0(seg0_6bits),
        .count(count6)
    );

    // Generación del reloj
    always #5 clk = ~clk;

    // Tarea para mostrar resultados de los displays de 7 segmentos
    task display_7seg;
        input [6:0] seg;
        begin
            $write("7-segment: ");
            case (seg)
                7'b1000000: $write("0");
                7'b1111001: $write("1");
                7'b0100100: $write("2");
                7'b0110000: $write("3");
                7'b0011001: $write("4");
                7'b0010010: $write("5");
                7'b0000010: $write("6");
                7'b1111000: $write("7");
                7'b0000000: $write("8");
                7'b0010000: $write("9");
                default:    $write("X");
            endcase
            $write("\n");
        end
    endtask

	initial begin
		 // Inicialización de señales
		 clk = 0;
		 reset = 0;
		 dec = 0;

		 // Prueba para 2 bits
		 initial_value = 6'b000010; // Valor 2 para 2 bits
		 $display("=== Iniciando prueba para 2 bits ===");
		 #10 reset = 1;
		 #10 reset = 0;
		 #10 dec = 1;  // Activa la señal de decremento
		 #5 clk = 1;  // Genera un flanco de subida de reloj
		 #10 clk = 0; // Baja el reloj para evitar doble decremento
		 #10 $display("Valor final del contador para 2 bits: %b", count2);
		 display_7seg(seg1_2bits);
		 display_7seg(seg0_2bits);
		 assert(count2 == 2'b01) else $fatal("Error: Resultado incorrecto para 2 bits");

		// Prueba para 4 bits
		initial_value = 6'b000101; // Valor 5 para 4 bits
		$display("=== Iniciando prueba para 4 bits ===");
		#10 reset = 1;
		#10 reset = 0;
		#5 dec = 1;   // Activa la señal de decremento
		#5 clk = 1;   // Genera un flanco de subida de reloj
		#10 clk = 0;  // Baja el reloj para evitar doble decremento
		#5 dec = 0;   // Desactiva la señal de decremento
		#10 $display("Valor final del contador para 4 bits: %b", count4);
		display_7seg(seg1_4bits);
		display_7seg(seg0_4bits);

		// Prueba para 6 bits
		initial_value = 6'b001110; // Valor 14 para 6 bits
		$display("=== Iniciando prueba para 6 bits ===");
		#10 reset = 1;
		#10 reset = 0;
		#5 dec = 1;   // Activa la señal de decremento
		#5 clk = 1;   // Genera un flanco de subida de reloj
		#10 clk = 0;  // Baja el reloj para evitar doble decremento
		#5 dec = 0;   // Desactiva la señal de decremento
		#10 $display("Valor final del contador para 6 bits: %b", count6);
		display_7seg(seg1_6bits);
		display_7seg(seg0_6bits);

		// Fin de la simulación
		$stop;
	end


endmodule
