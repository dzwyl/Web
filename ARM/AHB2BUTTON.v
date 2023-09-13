module AHB2BUTTON(
    input wire          HSEL,
    input wire          HCLK,
    input wire          HRESETn,
    input wire          HREADY,
    input wire  [31:0]  HADDR,
    input wire  [1:0]   HTRANS,
    input wire          HWRITE,
    input wire  [2:0]   HSIZE,
    input wire  [31:0]  HWDATA,
    input wire  [7:0]   BUTTON,

    output wire        HREADYOUT,
    output wire [31:0]  HRDATA
);

reg         HSEL_REG;
reg [31:0]  HADDR_REG;
reg [1:0]   HTRANS_REG;
reg         HWRITE_REG;
reg [2:0]   HSIZE_REG;
reg [31:0]  read_mux;
reg [7:0]   BUTTON_REG;
reg [7:0]   BUTTONS_SYNC;

always @(posedge HCLK or negedge HRESETn)
    begin
      if(!HRESETn)
      begin
        HSEL_REG    <=  1'b0;
        HADDR_REG   <=  32'b0;
        HTRANS_REG  <=  2'b00
      end
    end                                                                                                                                                                                                                                                                                                                     
endmodule