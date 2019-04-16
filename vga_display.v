`timescale 1ns / 1ps
module vga_display (
        Clk, Reset,
        VGA_Hsync, VGA_Vsync,
		VGA_Red0, VGA_Green0, VGA_Blue0,	//VGA RGB pins
		VGA_Red1, VGA_Green1, VGA_Blue1,	//VGA RGB pins
		//VGA_Red2, VGA_Green2, 				//VGA RGB pins
		board, colors, selected_col,
		player, game_over, winner,
		start_state, end_state
    );
	input Clk, Reset;
	input [41:0] board, colors;
	input [2:0] selected_col;
	input player, game_over;
	input [1:0] winner;
	
	output VGA_Hsync, VGA_Vsync;
	output VGA_Red0, VGA_Green0, VGA_Blue0;
	output VGA_Red1, VGA_Green1, VGA_Blue1;
	//output VGA_Red2, VGA_Green2;
	
	
	wire inDisplayArea;
	wire [9:0] CounterX;
	wire [9:0] CounterY;
	reg R, G, B;
	reg VGA_Red0, VGA_Green0, VGA_Blue0;
	reg VGA_Red1, VGA_Green1, VGA_Blue1;
	//reg VGA_Red2, VGA_Green2;
	
	//Store where each the center of a chip is
	reg [9:0] x_centers [6:0];
	reg [9:0] y_centers [5:0];
	reg [4:0] circle_edges [21:0];
	
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
		end
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
	end
	
	always @ (CounterX, CounterY, board, colors)
	begin : GAME_DISPLAY
		//Set a white background
		R = 1;
		G = 1;
		B = 1;
		//Color board area yellow
		if(CounterX >= 73 && CounterX <= 537 && CounterY >= 80 && CounterY <= 479) begin
			R = 1;
			G = 1;
			B = 0;
		end
		//Color chips that are in play
		for(row=0; row<6; row=row+1) begin
			for(col=0; col<7; col=col+1) begin
				if(CounterX >= (x_centers[col]-27) && CounterX <= (x_centers[col]+27) &&
					CounterY >= (y_centers[row]-27) && CounterY <= (y_centers[row]+27)) begin
					if(board[7*row+col]) begin //Piece exists on the board, color either red or black
						R = ~(colors[7*row+col]);
						G = 0;
						B = 0;
					end
					else begin //No piece at location, color white
						R = 1;
						G = 1;
						B = 1;
					end
				end
			end
		end
		//Color the chip current being moved
		if(CounterY >=13 && CounterY <= 37) begin
			if(CounterX >= (x_centers[selected_col]-27) && CounterX <= (x_centers[selected_col]+27)) begin
				R = ~player; //Color based on current player's turn
				G = 0;
				B = 0;
			end
			else begin //Color white 
				R = 1;
				G = 1;
				B = 1;
			end			
		end
		//Add yellow around pieces to turn them into circles instead of squares
		for(row=0; row<6; row=row+1) begin
			for(col=0; col<7; col=col+1) begin
				if(CounterX >= (x_centers[col]-27) && CounterX <= (x_centers[col]+27) &&
						CounterY >= (y_centers[row]-27) && CounterY <= (y_centers[row]+27)) begin
					for(offset=0; offset<=21; offset=offset+1) begin
						//Color Yellow if outside of circle boundary
						if((CounterY == (y_centers[row]-(27-offset)) || CounterY == (y_centers[row]+(27-offset))) &&
							(CounterX < (x_centers[col]-circle_edges[offset]) || CounterX > (x_centers[col]+circle_edges[offset]))) begin
							R = 1;
							G = 1;
							B = 0;
						end
					end
				end
			end
		end
	end
	
	always @(posedge Clk)
	begin
		VGA_Red0 <= R & inDisplayArea;
		VGA_Red1 <= R & inDisplayArea;
		//VGA_Red2 <= R & inDisplayArea;
		VGA_Green0 <= G & inDisplayArea;
		VGA_Green1 <= G & inDisplayArea;
		//VGA_Green2 <= G & inDisplayArea;
		VGA_Blue0 <= B & inDisplayArea;
		VGA_Blue1 <= B & inDisplayArea;
	end
	
endmodule