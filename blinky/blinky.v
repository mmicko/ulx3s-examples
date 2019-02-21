module top(input clk_25mhz,
           input [6:0] btn,
           output [7:0] led,
           output wifi_gpio0);

    assign wifi_gpio0 = 1'b1;

    reg [7:0] o_led;
    assign led = o_led;

    reg [31:0] cnt = 0;

    always @(posedge clk_25mhz) begin
        cnt <= cnt + 1;
        o_led[7] <= 1;
        o_led[6] <= btn[1];
        o_led[5:0] <= cnt[23:18];
    end

endmodule
