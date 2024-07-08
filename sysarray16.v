`include "sysarray8.v"
module sysarray16(inp_west0, inp_west4, inp_west8, inp_west12, inp_west16, inp_west20, inp_west24, inp_west28, inp_west32, inp_west36, inp_west40, inp_west44, inp_west48, inp_west56, inp_west60, inp_west52,
		      inp_north0, inp_north1, inp_north2, inp_north3, inp_north4, inp_north5, inp_north6, inp_north7, inp_north8, inp_north9, inp_north10, inp_north11, inp_north12, inp_north13, inp_north14, inp_north15,
		      clk, rst, fine);

    input wire [31:0] inp_west0, inp_west4, inp_west8, inp_west12, inp_west16, inp_west20, inp_west24, inp_west28, inp_west32, inp_west36, inp_west40, inp_west44, inp_west48, inp_west56, inp_west60, inp_west52,
		      inp_north0, inp_north1, inp_north2, inp_north3, inp_north4, inp_north5, inp_north6, inp_north7, inp_north8, inp_north9, inp_north10, inp_north11, inp_north12, inp_north13, inp_north14, inp_north15;
    
    input clk;
    input rst; 
    output reg fine;
	reg [63:0] reseast0, reseast1, reseast2, reseast3, reseast4, reseast5, reseast6, reseast7, reseast8, reseast9, reseast10, reseast11, reseast12, reseast13, reseast14, reseast15, ressouth0, ressouth1, ressouth2, ressouth3, ressouth4, ressouth5, ressouth6, ressouth7, ressouth8, ressouth9, ressouth10, ressouth11, ressouth12, ressouth13, ressouth14, ressouth15;

	reg [15:0] count;

sysarray8 sa1(inp_west0, inp_west4, inp_west8, inp_west12, inp_west16, inp_west20, inp_west24, inp_west28,
		      inp_north0, inp_north1, inp_north2, inp_north3, inp_north4, inp_north5, inp_north6, inp_north7,
		      clk, rst, okay);
sysarray8 sa2(sa1.sys2.outp_east3, sa1.sys2.outp_east7, sa1.sys2.outp_east11, sa1.sys2.outp_east15, sa1.sys4.outp_east3, sa1.sys4.outp_east7, sa1.sys4.outp_east11, sa1.sys4.outp_east15,
		      inp_north8, inp_north9, inp_north10, inp_north11, inp_north12, inp_north13, inp_north14, inp_north15,
		      clk, rst, okay);

sysarray8 sa3(inp_west32, inp_west36, inp_west40, inp_west44, inp_west48, inp_west52, inp_west56, inp_west60,
		      sa1.sys3.outp_south12, sa1.sys3.outp_south13, sa1.sys3.outp_south14, sa1.sys3.outp_south15, sa1.sys4.outp_south12, sa1.sys4.outp_south13, sa1.sys4.outp_south14, sa1.sys4.outp_south15,
		      clk, rst, okay);

sysarray8 sa4(sa1.sys2.outp_east3, sa1.sys2.outp_east7, sa1.sys2.outp_east11, sa1.sys2.outp_east15, sa1.sys4.outp_east3, sa1.sys4.outp_east7, sa1.sys4.outp_east11, sa1.sys4.outp_east15,
		       sa1.sys3.outp_south12, sa1.sys3.outp_south13, sa1.sys3.outp_south14, sa1.sys3.outp_south15, sa1.sys4.outp_south12, sa1.sys4.outp_south13, sa1.sys4.outp_south14, sa1.sys4.outp_south15,
		      clk, rst, okay);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        fine <= 1'b0;
    end else begin
        fine <= sa1.okay & sa2.okay & sa3.okay & sa4.okay;
		reseast0 <= sa2.reast0;
		reseast1 <= sa2.reast1;
		reseast2 <= sa2.reast2;
		reseast3 <= sa2.reast3;
		reseast4 <= sa2.reast4;
		reseast5 <= sa2.reast5;
		reseast6 <= sa2.reast6;
		reseast7 <= sa2.reast7;
        reseast8 <= sa4.reast0;
		reseast9 <= sa4.reast1;
		reseast10 <= sa4.reast2;
		reseast11 <= sa4.reast3;
		reseast12 <= sa4.reast4;
		reseast13 <= sa4.reast5;
		reseast14 <= sa4.reast6;
		reseast15 <= sa4.reast7;
		ressouth0 <= sa3.rsouth0;
		ressouth1 <= sa3.rsouth1;
		ressouth2 <= sa3.rsouth2;
		ressouth3 <= sa3.rsouth3;
		ressouth4 <= sa3.rsouth4;
		ressouth5 <= sa3.rsouth5;
		ressouth6 <= sa3.rsouth6;
		ressouth7 <= sa3.rsouth7;
        ressouth8 <= sa4.rsouth0;
		ressouth9 <= sa4.rsouth1;
		ressouth10 <= sa4.rsouth2;
		ressouth11 <= sa4.rsouth3;
		ressouth12 <= sa4.rsouth4;
		ressouth13 <= sa4.rsouth5;
		ressouth14 <= sa4.rsouth6;
		ressouth15 <= sa4.rsouth7;
    end
end


endmodule
