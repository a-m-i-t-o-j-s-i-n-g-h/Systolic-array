`include "systolic_array.v"
module sysarray8(inp_west0, inp_west4, inp_west8, inp_west12, inp_west16, inp_west20, inp_west24, inp_west28,
		      inp_north0, inp_north1, inp_north2, inp_north3, inp_north4, inp_north5, inp_north6, inp_north7,
		      clk, rst, okay);

    input wire [31:0] inp_west0, inp_west4, inp_west8, inp_west12, inp_west16, inp_west20, inp_west24, inp_west28,
		      inp_north0, inp_north1, inp_north2, inp_north3, inp_north4, inp_north5, inp_north6, inp_north7;
    
    input clk;
    input rst; 
    output reg okay;
	reg [63:0] reast0, reast1, reast2, reast3, reast4, reast5, reast6, reast7, rsouth0, rsouth1, rsouth2, rsouth3, rsouth4, rsouth5, rsouth6, rsouth7;

	reg [7:0] count;

systolic_array sys1(inp_west0, inp_west4, inp_west8, inp_west12,
		      inp_north0, inp_north1, inp_north2, inp_north3,
		      clk, rst, done);

systolic_array sys2(sys1.outp_east3, sys1.outp_east7, sys1.outp_east11, sys1.outp_east15,
		      inp_north4, inp_north5, inp_north6, inp_north7,
		      clk, rst, done);

systolic_array sys3(inp_west16, inp_west20, inp_west24, inp_west28,
		      sys1.outp_south12, sys1.outp_south13, sys1.outp_south14, sys1.outp_south15,
		      clk, rst, done);

systolic_array sys4(sys3.outp_east3, sys3.outp_east7, sys3.outp_east11, sys3.outp_east15,
		      sys2.outp_south12, sys2.outp_south13, sys2.outp_south14, sys2.outp_south15,
		      clk, rst, done);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        okay <= 1'b0;
    end else begin
        okay <= sys1.done & sys2.done & sys3.done & sys4.done;
		reast0 <= sys2.re0;
		reast1 <= sys2.re1;
		reast2 <= sys2.re2;
		reast3 <= sys2.re3;
		reast4 <= sys4.re0;
		reast5 <= sys4.re1;
		reast6 <= sys4.re2;
		reast7 <= sys4.re3;
		rsouth0 <= sys3.rs0;
		rsouth1 <= sys3.rs1;
		rsouth2 <= sys3.rs2;
		rsouth3 <= sys3.rs3;
		rsouth4 <= sys4.rs0;
		rsouth5 <= sys4.rs1;
		rsouth6 <= sys4.rs2;
		rsouth7 <= sys4.rs3;
    end
end


endmodule
