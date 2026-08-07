module sim();
 reg in;
 wire out;
 invert innn(in,out);
initial begin 
in=0;
#10 in=1;
#20 in=0;
end

endmodule