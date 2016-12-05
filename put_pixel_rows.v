module put_pixel_rows(dataa,
                 datab,
                 n,
                 result
                );

input [31:0] dataa;
input [31:0] datab;
input n;
output reg [31:0] result;

wire res1;
wire res2;
wire [7:0] red1;
wire [7:0] green1;
wire [7:0] blue1;
wire [7:0] red2;
wire [7:0] green2;
wire [7:0] blue2;
wire [15:0] intm11;
wire [15:0] intm12;
wire [15:0] intm13;
wire [15:0] intm21;
wire [15:0] intm22;
wire [15:0] intm23;

assign red1= dataa[7:0];
assign green1= dataa[15:8];
assign blue1 = dataa[23:16];
assign red2 = datab[7:0];
assign green2 = datab[15:8];
assign blue2 = datab[23:16];

assign intm11 = (red1 & (16'h00f8))<<8; 
assign intm12 = intm11 | ((green1 & (16'h00fc))<<3);
assign intm13 = intm12 | ((blue1 & (16'h00f8))>>3);

assign intm21 = (red2 & (16'h00f8))<<8;
assign intm22 = intm21 | ((green2 & (16'h00fc))<<3);
assign intm23 = intm22 | ((blue2 & (16'h00f8))>>3);

assign res1 = (n==0);
assign res2 = (n==1);

always
begin
    if(res1)
    begin
        result = {16'h0000,intm13};
    end 
    if(res2)
        result = {intm23,intm13};
    begin
    end
end


endmodule



