`timescale 1ns / 1ps
module vga_display (
        Clk, Reset,
        VGA_Hsync, VGA_Vsync,
		VGA_Red0, VGA_Green0, VGA_Blue0,	//VGA RGB pins
		VGA_Red1, VGA_Green1, VGA_Blue1,	//VGA RGB pins
		VGA_Red2, VGA_Green2, 				//VGA RGB pins
		board, colors, selected_col,
		player, game_over, winner,
		start_state, end_state
    );
	input Clk, Reset;
	input [41:0] board, colors;
	input [2:0] selected_col;
	input player, game_over, start_state, end_state;
	input [1:0] winner;
	
	output VGA_Hsync, VGA_Vsync;
	output VGA_Red0, VGA_Green0, VGA_Blue0;
	output VGA_Red1, VGA_Green1, VGA_Blue1;
	output VGA_Red2, VGA_Green2;
	
	
	wire inDisplayArea;
	wire [9:0] CounterX;
	wire [9:0] CounterY;
	reg [1:0] color;
	reg VGA_Red0, VGA_Green0, VGA_Blue0;
	reg VGA_Red1, VGA_Green1, VGA_Blue1;
	reg VGA_Red2, VGA_Green2;
	
	//Store where each the center of a chip is
	reg [9:0] x_centers [6:0];
	reg [9:0] y_centers [5:0];
	//reg [4:0] circle_edges [27:0];
	
	hvsync_generator syncgen(
		.clk(Clk), .reset(Reset),
		.vga_h_sync(VGA_Hsync), .vga_v_sync(VGA_Vsync),
		.inDisplayArea(inDisplayArea),
		.CounterX(CounterX), .CounterY(CounterY)
	);
	
	integer row, col, offset;
	reg [9:0] X, Y;
	initial
	begin
		X=110;
		for(col=0; col<7; col=col+1) begin
			x_centers[col] = X;
			X=X+65;
		end
		Y=442;
		for(row=0; row<6; row=row+1) begin
			y_centers[row] = Y;
			Y=Y-65;
		end/*
		circle_edges[0] = 5;
		circle_edges[1] = 8;
		circle_edges[2] = 11;
		circle_edges[3] = 13;
		circle_edges[4] = 14;
		circle_edges[5] = 16;
		circle_edges[6] = 17;
		circle_edges[7] = 18;
		circle_edges[8] = 19;
		circle_edges[9] = 20;
		circle_edges[10] = 21;
		circle_edges[11] = 22;
		circle_edges[12] = 22;
		circle_edges[13] = 23;
		circle_edges[14] = 24;
		circle_edges[15] = 24;
		circle_edges[16] = 25;
		circle_edges[17] = 25;
		circle_edges[18] = 25;
		circle_edges[19] = 26;
		circle_edges[20] = 26;
		circle_edges[21] = 26;
		circle_edges[22] = 27;
		circle_edges[23] = 27;
		circle_edges[24] = 27;
		circle_edges[25] = 27;
		circle_edges[26] = 27;
		circle_edges[27] = 27;*/
	end
	
	localparam
    WHITE  = 2'b00,
	 RED	  = 2'b01,
    BLACK  = 2'b10,
    YELLOW = 2'b11;
	
	always @ (CounterX, CounterY, board, colors)
	begin : GAME_DISPLAY
		//Set a white background
		color=WHITE;
		//Color board area yellow
		if(CounterX >= 73 && CounterX <= 537 && CounterY >= 80 && CounterY <= 479) begin
			color=YELLOW;
		end
		//Color chips that are in play
		for(row=0; row<6; row=row+1) begin
			for(col=0; col<7; col=col+1) begin
				if(CounterX >= (x_centers[col]-27) && CounterX <= (x_centers[col]+27) && CounterY >= (y_centers[row]-27) && CounterY <= (y_centers[row]+27)) begin
					if(board[7*row+col]) //Piece exists on the board, color either red or black
						color=(colors[7*row+col])?BLACK:RED;
					else //No piece at location, color white
						color=WHITE;
				end
			end
		end
		//Color the chip current being moved
		if(CounterX >= (x_centers[selected_col]-27) && CounterX <= (x_centers[selected_col]+27) && CounterY >=13 && CounterY <= 67) begin
			color = (player)?BLACK:RED; //Color based on current player's turn
		end
	end
	
	always @(posedge Clk)
	begin
		case(color)
			RED:
			begin
				VGA_Red0 <= 1'b0;
				VGA_Red1 <= 1'b1 & inDisplayArea;
				VGA_Red2 <= 1'b1 & inDisplayArea;
				VGA_Green0 <= 1'b0;
				VGA_Green1 <= 1'b0;
				VGA_Green2 <= 1'b0;
				VGA_Blue0 <= 1'b0;
				VGA_Blue1 <= 1'b0;
			end
			BLACK:
			begin
				VGA_Red0 <= 1'b0;
				VGA_Red1 <= 1'b0;
				VGA_Red2 <= 1'b0;
				VGA_Green0 <= 1'b0;
				VGA_Green1 <= 1'b0;
				VGA_Green2 <= 1'b0;
				VGA_Blue0 <= 1'b0;
				VGA_Blue1 <= 1'b0;
			end
			WHITE:
			begin
				VGA_Red0 <= 1'b1 & inDisplayArea;
				VGA_Red1 <= 1'b1 & inDisplayArea;
				VGA_Red2 <= 1'b1 & inDisplayArea;
				VGA_Green0 <= 1'b1 & inDisplayArea;
				VGA_Green1 <= 1'b1 & inDisplayArea;
				VGA_Green2 <= 1'b1 & inDisplayArea;
				VGA_Blue0 <= 1'b1 & inDisplayArea;
				VGA_Blue1 <= 1'b1 & inDisplayArea;
			end
			YELLOW:
			begin
				VGA_Red0 <= 1'b1 & inDisplayArea;
				VGA_Red1 <= 1'b0;
				VGA_Red2 <= 1'b1 & inDisplayArea;
				VGA_Green0 <= 1'b1 & inDisplayArea;
				VGA_Green1 <= 1'b0;
				VGA_Green2 <= 1'b1 & inDisplayArea;
				VGA_Blue0 <= 1'b0;
				VGA_Blue1 <= 1'b0;
			end
		endcase
	end
	
endmodule