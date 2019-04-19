`timescale 1ns / 1ps
module connect_four_tb();

	reg Left, Right, Select, Start;
    wire [41:0] board;
    wire [41:0] colors;
    wire [2:0] selected_col;
	wire player, game_over;
	wire [1:0] winner;
	wire start_state, end_state;
	
	reg Clk;
	reg vga_clk;
	reg Reset;
	reg [3:0] SSD0, SSD1, SSD2, SSD3;
	reg [2:0] SELECTED_ROW = 3'b000;
	integer i;
	
	connect_four connect_four_mod(
        .Clk(Clk), .Reset(Reset),
        .Left(Left), .Right(Right), .Select(Select), .Start(Start),
        .board(board), .colors(colors), .selected_col(selected_col),
		.player(player), .game_over(game_over), .winner(winner),
		.start_state(start_state), .end_state(end_state)
    );
	
	wire VGA_Red0, VGA_Green0, VGA_Blue0;
	wire VGA_Red1, VGA_Green1, VGA_Blue1;
	wire VGA_Red2, VGA_Green2;
	wire VGA_Hsync, VGA_Vsync;
	vga_display vga_display_mod(
		.Clk(vga_clk), .Reset(Reset),
		.VGA_Hsync(VGA_Hsync), .VGA_Vsync(VGA_Vsync),
		.VGA_Red0(VGA_Red0), .VGA_Green0(VGA_Green0), .VGA_Blue0(VGA_Blue0),
		.VGA_Red1(VGA_Red1), .VGA_Green1(VGA_Green1), .VGA_Blue1(VGA_Blue1),
		.VGA_Red2(VGA_Red2), .VGA_Green2(VGA_Green2),
		.board(board), .colors(colors), .selected_col(selected_col),
		.player(player), .game_over(game_over), .winner(winner),
		.start_state(start_state), .end_state(end_state)
	);
	
	
	always  begin #1000; Clk = ~Clk; end
	always  begin #1; vga_clk = ~vga_clk; end
	always @ (SELECTED_ROW, board)
	begin
		SSD0 = { board[7*SELECTED_ROW+5], colors[7*SELECTED_ROW+5], board[7*SELECTED_ROW+6], colors[7*SELECTED_ROW+6] };
		SSD1 = { board[7*SELECTED_ROW+3], colors[7*SELECTED_ROW+3], board[7*SELECTED_ROW+4], colors[7*SELECTED_ROW+4] };
		SSD2 = { board[7*SELECTED_ROW+1], colors[7*SELECTED_ROW+1], board[7*SELECTED_ROW+2], colors[7*SELECTED_ROW+2] };
		SSD3 = { 2'b00 , board[7*SELECTED_ROW], colors[7*SELECTED_ROW] };
	end
	initial begin
		vga_clk = 0;
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
		Start = 1;
		@ (posedge Clk);
		#1
		Start = 0;
		@ (posedge Clk);
		#100;
		for(i=0; i <3; i=i+1) begin
			Left = 1;
			@ (posedge Clk);
			#1
			Left = 0;
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