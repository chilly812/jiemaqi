module put_pixel_rows_hw(
                 clk,
                 reset,
                 chipselect,
                 writedata,
                 write,
                 readdata,
                 read
                );

input [31:0] writedata;
output reg [31:0] readdata;
input clk;
input reset;
input chipselect;
input write;
input read;

reg [31:0] data;
wire [7:0] red1;
wire [7:0] green1;
wire [7:0] blue1;
wire [15:0] intm11;
wire [15:0] intm12;
wire [15:0] intm13;

assign red1 = data[7:0];
assign green1 = data[15:8];
assign blue1 = data[23:16];

assign intm11 = (red1 & (8'hf8))<<8; 
assign intm12 = intm11 | ((green1 & (8'hfc))<<3);
assign intm13 = intm12 | ((blue1 & (8'hf8))>>3);


always @ (posedge clk)
begin
    if(reset)
    begin
        readdata <= 32'h00000000;
    end
    else if(read & chipselect)
    begin
        readdata <= {16'h0000,intm13};
    end 
    else if(write & chipselect)
    begin
        data <= writedata;
    end
end


endmodule



