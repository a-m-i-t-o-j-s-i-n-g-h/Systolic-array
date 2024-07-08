`include "sysarray8.v"
module sysarraytb8;

reg rst, clk;

reg [31:0] inp_west0, inp_west1, inp_west2, inp_west3, inp_west4, inp_west5, inp_west6, inp_west7, inp_north0, inp_north1, inp_north2, inp_north3, inp_north4, inp_north5, inp_north6, inp_north7;
wire okay;

sysarray8 uut8(inp_west0, inp_west1, inp_west2, inp_west3, inp_west4, inp_west5, inp_west6, inp_west7, inp_north0, inp_north1, inp_north2, inp_north3, inp_north4, inp_north5, inp_north6, inp_north7,
		      clk, rst, okay);


initial begin
	#3  inp_west0 <= 32'd3;
	    inp_north0 <= 32'd12;
	#10 inp_west0 <= 32'd2;
	    inp_north0 <= 32'd8;
	#10 inp_west0 <= 32'd1;
	    inp_north0 <= 32'd4;
	#10 inp_west0 <= 32'd0;
	    inp_north0 <= 32'd0;
    #10 inp_west0 <= 32'd3;
	    inp_north0 <= 32'd12;
	#10 inp_west0 <= 32'd2;
	    inp_north0 <= 32'd8;
	#10 inp_west0 <= 32'd1;
	    inp_north0 <= 32'd4;
	#10 inp_west0 <= 32'd0;
	    inp_north0 <= 32'd0;
	#10 inp_west0 <= 32'd0;
	    inp_north0 <= 32'd0;
	#10 inp_west0 <= 32'd0;
	    inp_north0 <= 32'd0;
	#10 inp_west0 <= 32'd0;	
	    inp_north0 <= 32'd0;
        #10 inp_west0 <= 32'd0;	
	    inp_north0 <= 32'd0;
        #10 inp_west0 <= 32'd0;	
	    inp_north0 <= 32'd0;
        #10 inp_west0 <= 32'd0;	
	    inp_north0 <= 32'd0;
        #10 inp_west0 <= 32'd0;	
	    inp_north0 <= 32'd0;
end

initial begin
	#3  inp_west1 <= 32'd0;
	    inp_north1 <= 32'd0;
	#10 inp_west1 <= 32'd7;
	    inp_north1 <= 32'd13;
	#10 inp_west1 <= 32'd6;
	    inp_north1 <= 32'd9;
	#10 inp_west1 <= 32'd5;
	    inp_north1 <= 32'd5;
	#10 inp_west1 <= 32'd4;
	    inp_north1 <= 32'd1;
    #10 inp_west1 <= 32'd7;
	    inp_north1 <= 32'd13;
	#10 inp_west1 <= 32'd6;
	    inp_north1 <= 32'd9;
	#10 inp_west1 <= 32'd5;
	    inp_north1 <= 32'd5;
	#10 inp_west1 <= 32'd4;
	    inp_north1 <= 32'd1;    
	#10 inp_west1 <= 32'd0;
	    inp_north1 <= 32'd0;
	#10 inp_west1 <= 32'd0;	
	    inp_north1 <= 32'd0;
        #10 inp_west1 <= 32'd0;	
	    inp_north1 <= 32'd0;
        #10 inp_west1 <= 32'd0;	
	    inp_north1 <= 32'd0;
        #10 inp_west1 <= 32'd0;	
	    inp_north1 <= 32'd0;
        #10 inp_west1 <= 32'd0;	
	    inp_north1 <= 32'd0;
end

initial begin
	#3  inp_west2 <= 32'd0;
	    inp_north2 <= 32'd0;
	#10 inp_west2 <= 32'd0;
	    inp_north2 <= 32'd0;
	#10 inp_west2 <= 32'd11;
	    inp_north2 <= 32'd14;
	#10 inp_west2 <= 32'd10;
	    inp_north2 <= 32'd10;
	#10 inp_west2 <= 32'd9;
	    inp_north2 <= 32'd6;
	#10 inp_west2 <= 32'd8;
	    inp_north2 <= 32'd2;
    #10 inp_west2 <= 32'd11;
	    inp_north2 <= 32'd14;
	#10 inp_west2 <= 32'd10;
	    inp_north2 <= 32'd10;
	#10 inp_west2 <= 32'd9;
	    inp_north2 <= 32'd6;
	#10 inp_west2 <= 32'd8;
	    inp_north2 <= 32'd2;    
	#10 inp_west2 <= 32'd0;	
	    inp_north2 <= 32'd0;
        #10 inp_west2 <= 32'd0;	
	    inp_north2 <= 32'd0;
        #10 inp_west2 <= 32'd0;	
	    inp_north2 <= 32'd0;
        #10 inp_west2 <= 32'd0;	
	    inp_north2 <= 32'd0;
        #10 inp_west2 <= 32'd0;	
	    inp_north2 <= 32'd0;
end

initial begin
	#3  inp_west3 <= 32'd0;
	    inp_north3 <= 32'd0;
	#10 inp_west3 <= 32'd0;
	    inp_north3 <= 32'd0;
	#10 inp_west3 <= 32'd0;
	    inp_north3 <= 32'd0;
	#10 inp_west3 <= 32'd15;
	    inp_north3 <= 32'd15;
	#10 inp_west3 <= 32'd14;
	    inp_north3 <= 32'd11;
	#10 inp_west3 <= 32'd13;
	    inp_north3 <= 32'd7;
	#10 inp_west3 <= 32'd12;	
	    inp_north3 <= 32'd3;
    #10 inp_west3 <= 32'd15;
	    inp_north3 <= 32'd15;
	#10 inp_west3 <= 32'd14;
	    inp_north3 <= 32'd11;
	#10 inp_west3 <= 32'd13;
	    inp_north3 <= 32'd7;
	#10 inp_west3 <= 32'd12;	
	    inp_north3 <= 32'd3;   
        #10 inp_west3 <= 32'd0;	
	    inp_north3 <= 32'd0;
        #10 inp_west3 <= 32'd0;	
	    inp_north3 <= 32'd0;
        #10 inp_west3 <= 32'd0;	
	    inp_north3 <= 32'd0;
        #10 inp_west3 <= 32'd0;	
	    inp_north3 <= 32'd0; 
end

initial begin
	#3 inp_west4 <= 32'd0;	
	    inp_north4 <= 32'd0;
        #10 inp_west4 <= 32'd0;	
	    inp_north4 <= 32'd0;
        #10 inp_west4 <= 32'd0;	
	    inp_north4 <= 32'd0;
        #10 inp_west4 <= 32'd0;	
	    inp_north4 <= 32'd0;
    #10  inp_west4 <= 32'd3;
	    inp_north4 <= 32'd12;
	#10 inp_west4 <= 32'd2;
	    inp_north4 <= 32'd8;
	#10 inp_west4 <= 32'd1;
	    inp_north4 <= 32'd4;
	#10 inp_west4 <= 32'd0;
	    inp_north4 <= 32'd0;
        #10  inp_west4 <= 32'd3;
	    inp_north4 <= 32'd12;
	#10 inp_west4 <= 32'd2;
	    inp_north4 <= 32'd8;
	#10 inp_west4 <= 32'd1;
	    inp_north4 <= 32'd4;
	#10 inp_west4 <= 32'd0;
	    inp_north4 <= 32'd0;
	#10 inp_west4 <= 32'd0;
	    inp_north4 <= 32'd0;
	#10 inp_west4 <= 32'd0;
	    inp_north4 <= 32'd0;
	#10 inp_west4 <= 32'd0;	
	    inp_north4 <= 32'd0;
end

initial begin
    #3 inp_west5 <= 32'd0;	
	    inp_north5 <= 32'd0;
        #10 inp_west5 <= 32'd0;	
	    inp_north5 <= 32'd0;
        #10 inp_west5 <= 32'd0;	
	    inp_north5 <= 32'd0;
        #10 inp_west5 <= 32'd0;	
	    inp_north5 <= 32'd0;
        #10 inp_west5 <= 32'd0;	
	    inp_north5 <= 32'd0;
	#10 inp_west5 <= 32'd7;
	    inp_north5 <= 32'd13;
	#10 inp_west5 <= 32'd6;
	    inp_north5 <= 32'd9;
	#10 inp_west5 <= 32'd5;
	    inp_north5 <= 32'd5;
	#10 inp_west5 <= 32'd4;
	    inp_north5 <= 32'd1;
        #10 inp_west5 <= 32'd7;
	    inp_north5 <= 32'd13;
	#10 inp_west5 <= 32'd6;
	    inp_north5 <= 32'd9;
	#10 inp_west5 <= 32'd5;
	    inp_north5 <= 32'd5;
	#10 inp_west5 <= 32'd4;
	    inp_north5 <= 32'd1;
	#10 inp_west5 <= 32'd0;
	    inp_north5 <= 32'd0;
	#10 inp_west5 <= 32'd0;	
	    inp_north5 <= 32'd0;
end

initial begin
	#3  inp_west6 <= 32'd0;
	    inp_north6 <= 32'd0;
        #10 inp_west6 <= 32'd0;
	    inp_north6 <= 32'd0;
        #10 inp_west6 <= 32'd0;
	    inp_north6 <= 32'd0;
        #10 inp_west6 <= 32'd0;
	    inp_north6 <= 32'd0;
        #10 inp_west6 <= 32'd0;
	    inp_north6 <= 32'd0;
	#10 inp_west6 <= 32'd0;
	    inp_north6 <= 32'd0;
	#10 inp_west6 <= 32'd11;
	    inp_north6 <= 32'd14;
	#10 inp_west6 <= 32'd10;
	    inp_north6 <= 32'd10;
	#10 inp_west6 <= 32'd9;
	    inp_north6 <= 32'd6;
	#10 inp_west6 <= 32'd8;
	    inp_north6 <= 32'd2;
        #10 inp_west6 <= 32'd11;
	    inp_north6 <= 32'd14;
	#10 inp_west6 <= 32'd10;
	    inp_north6 <= 32'd10;
	#10 inp_west6 <= 32'd9;
	    inp_north6 <= 32'd6;
	#10 inp_west6 <= 32'd8;
	    inp_north6 <= 32'd2;
	#10 inp_west6 <= 32'd0;	
	    inp_north6 <= 32'd0;
end

initial begin
	#3  inp_west7 <= 32'd0;
	    inp_north7 <= 32'd0;
	#10 inp_west7 <= 32'd0;
	    inp_north7 <= 32'd0;
        #10 inp_west7 <= 32'd0;
	    inp_north7 <= 32'd0;
        #10 inp_west7 <= 32'd0;
	    inp_north7 <= 32'd0;
        #10 inp_west7 <= 32'd0;
	    inp_north7 <= 32'd0;
        #10 inp_west7 <= 32'd0;
	    inp_north7 <= 32'd0;
	#10 inp_west7 <= 32'd0;
	    inp_north7 <= 32'd0;
	#10 inp_west7 <= 32'd15;
	    inp_north7 <= 32'd15;
	#10 inp_west7 <= 32'd14;
	    inp_north7 <= 32'd11;
	#10 inp_west7 <= 32'd13;
	    inp_north7 <= 32'd7;
	#10 inp_west7 <= 32'd12;	
	    inp_north7 <= 32'd3;
        #10 inp_west7 <= 32'd15;
	    inp_north7 <= 32'd15;
	#10 inp_west7 <= 32'd14;
	    inp_north7 <= 32'd11;
	#10 inp_west7 <= 32'd13;
	    inp_north7 <= 32'd7;
	#10 inp_west7 <= 32'd12;	
	    inp_north7 <= 32'd3;
end

initial 
begin
$monitor ($time,"East0=%b, East1=%b, East2=%b, East3=%b, East4=%b, East5=%b, East6=%b, East7=%b", uut8.reast0, uut8.reast1, uut8.reast2, uut8.reast3, uut8.reast4, uut8.reast5, uut8.reast6, uut8.reast7);
end

initial begin
rst <= 1;
clk <= 0;
#3
rst <= 0;
end

initial begin
	repeat(42)
		#5 clk <= ~clk;
end




initial begin
	$dumpfile("wave8.vcd");
	$dumpvars(0, sysarraytb8);
end



endmodule