module lockv0(
    input wire reset_n,
    input wire clk,
    input wire [7:0] code,
    output reg [1:0] state,
    output wire unlocked
);

reg [1:0] state_t;
reg unlocked_t;

assign unlocked = unlocked_t;
assign state = state_t;


always @(posedge clk) begin
    if (~reset_n) begin
        state_t <= 2'b00;
        unlocked_t <= 1'b0;
    end
    else begin
        case(state_t)
            2'b00   : 
                if(code == 8'haa) begin
                    state_t <= 2'b01;
                end else begin
                    state_t <= 2'b00;
                end
                2'b01   : 
                    if(code == 8'hbb) begin
                        state_t <= 2'b10;
                    end else begin 
                        state_t <= 2'b01;
                    end
                    2'b10   : 
                        if(code == 8'hcc) begin
                            state_t <= 2'b11;
                        end else begin
                            state_t <= 2'b10;
                        end
                        default : unlocked_t <= 1'b1; 
                    endcase
                end
            end

            endmodule
