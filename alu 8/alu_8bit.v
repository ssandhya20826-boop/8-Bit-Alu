module alu_8bit (
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] ALU_Sel,
    output reg [7:0] ALU_Out,
    output reg       Carry,
    output            Zero
);

always @(*) begin
    ALU_Out = 8'b0;
    Carry   = 1'b0;

    case (ALU_Sel)
        3'b000: begin
            {Carry, ALU_Out} = A + B;       // Addition
        end

        3'b001: begin
            {Carry, ALU_Out} = A - B;       // Subtraction
        end

        3'b010: begin
            ALU_Out = A & B;                // AND
        end

        3'b011: begin
            ALU_Out = A | B;                // OR
        end

        3'b100: begin
            ALU_Out = A ^ B;                // XOR
        end

        3'b101: begin
            ALU_Out = ~A;                   // NOT A
        end

        3'b110: begin
            ALU_Out = A << 1;               // Shift left
        end

        3'b111: begin
            ALU_Out = A >> 1;               // Shift right
        end

        default: begin
            ALU_Out = 8'b0;
            Carry   = 1'b0;
        end
    endcase
end

assign Zero = (ALU_Out == 8'b0);

endmodule