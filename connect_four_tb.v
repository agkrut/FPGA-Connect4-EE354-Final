`timescale 1ns / 1ps
module connect_four_tb();

	reg Left, Right, Select;
    wire [41:0] board;
    wire [41:0] colors;
    wire [2:0] selected_col;
	reg Clk;
	reg Reset;
	reg [3:0] SSD0, SSD1, SSD2, SSD3;
	reg [2:0] SELECTED_ROW = 3'b000;
	integer i;
	
	connect_four connect_four_mod(
        .Clk(Clk), .Reset(Reset),
        .Left(Left), .Right(Right), .Select(Select),
        .board(board), .colors(colors), .selected_col(selected_col)
    );
	always  begin #10; Clk = ~ Clk; end
	always @ (SELECTED_ROW, board)
	begin
		SSD0 = { board[7*SELECTED_ROW+5], colors[7*SELECTED_ROW+5], board[7*SELECTED_ROW+6], colors[7*SELECTED_ROW+6] };
		SSD1 = { board[7*SELECTED_ROW+3], colors[7*SELECTED_ROW+3], board[7*SELECTED_ROW+4], colors[7*SELECTED_ROW+4] };
		SSD2 = { board[7*SELECTED_ROW+1], colors[7*SELECTED_ROW+1], board[7*SELECTED_ROW+2], colors[7*SELECTED_ROW+2] };
		SSD3 = { 2'b00 , board[7*SELECTED_ROW], colors[7*SELECTED_ROW] };
	end
	initial begin
		Clk = 0;
		Reset = 0;
		Left = 0;
		Right = 0;
		Select = 0;
		@ (posedge Clk);
		#1 
		Reset = 1;
		@ (posedge Clk);
		#1
		Reset = 0;
		@ (posedge Clk);
		#1
		for(i=0; i <3; i=i+1) begin
			Right = 1;
			@ (posedge Clk);
			@ (posedge Clk);
			@ (posedge Clk);
			#1
			Right = 0;
			Select = 1;
			@ (posedge Clk);
			#1
			Select = 0;
			#100
			Right = 1;
			@ (posedge Clk);
			@ (posedge Clk);
			#1
			Right = 0;
			Select = 1;
			@ (posedge Clk);
			#1
			Select = 0;
			#100;
		end
	
	end
endmodule