module alu_tb;

reg  [7:0] A;
reg  [7:0] B;
reg  [2:0] sel;

wire [7:0] Y;

alu uut (
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y)
);

initial begin
  $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);
  
    A = 8'b00001111;
    B = 8'b00000011;

    sel = 3'b000; #10; // ADD
    sel = 3'b001; #10; // SUB
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // XOR
    sel = 3'b101; #10; // NOT

    $finish;

end

endmodule