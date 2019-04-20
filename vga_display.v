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
	input [41:0] board;
	input [41:0] colors;
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
		/*
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
	
	localparam
    WHITE  = 2'b00,
	 RED	  = 2'b01,
    BLACK  = 2'b10,
    YELLOW = 2'b11,
	 LTR_A  = 4'b0000,
	 LTR_B  = 4'b0001,
	 LTR_C  = 4'b0010,
	 LTR_D  = 4'b0011,
	 LTR_E  = 4'b0100,
	 LTR_I  = 4'b0101,
	 LTR_K  = 4'b0110,
	 LTR_L  = 4'b0111,
	 LTR_N  = 4'b1000,
	 LTR_P  = 4'b1001,
	 LTR_R  = 4'b1010,
	 LTR_S  = 4'b1011,
	 LTR_T  = 4'b1100,
	 LTR_W  = 4'b1101;
	 
	function [1:0] color_letter;
	input [3:0] letter;
	input [9:0] x;
	input [9:0] y;
	input [1:0] fill;
	begin
		color_letter = WHITE;
		case(letter)
			LTR_A :
			begin
				if(((CounterX>=x && CounterX<=x+5)||(CounterX>=x+18 && CounterX<=x+23)) && CounterY>=y+24 && CounterY<=y+29)
					color_letter = fill;
				if(CounterX>=x+9 && CounterX<=x+14 && ((CounterY>=y && CounterY<=y+11)||(CounterY>=y+21 && CounterY<=y+23)))
					color_letter = fill;
				if(((CounterX>=x+3 && CounterX<=x+8)||(CounterX>=x+15 && CounterX<=x+20)) && CounterY>=y+15 && CounterY<=y+23)
					color_letter = fill;
				if(((CounterX>=x+6 && CounterX<=x+8)||(CounterX>=x+15 && CounterX<=x+17)) && CounterY>=y+6 && CounterY<=y+23)
					color_letter = fill;
			end
			LTR_B :
			begin
				if(CounterX >= x && CounterX <= x+5 && CounterY>=y && CounterY<=y+29)
					color_letter = fill;
				if(CounterX >= x && CounterX <= x+20 && ((CounterY>=y && CounterY<=y+2)||(CounterY>=y+12 && CounterY<=y+14)||(CounterY>=y+27 && CounterY<=y+29)))
					color_letter = fill;
				if(CounterX >= x+18 && CounterX <= x+23 && ((CounterY>=y+3 && CounterY<=y+11)||(CounterY>=y+15 && CounterY<=y+26)))
					color_letter = fill;				
			end
			LTR_C :
			begin
				if(CounterX >= x && CounterX <= x+5 && CounterY>=y+6 && CounterY<=y+23)
					color_letter = fill;
				if(CounterX >= x+6 && CounterX <= x+17 && ((CounterY>=y && CounterY<=y+2)||(CounterY>=y+27 && CounterY<=y+29)))
					color_letter = fill;
				if(((CounterX >= x+3 && CounterX <= x+8)||(CounterX >= x+15 && CounterX <= x+20)) && ((CounterY>=y+3 && CounterY<=y+5)||(CounterY>=y+24 && CounterY<=y+26)))
					color_letter = fill;
				if(CounterX >= x+18 && CounterX <= x+20 && ((CounterY>=y+3 && CounterY<=y+8)||(CounterY>=y+21 && CounterY<=y+26)))
					color_letter = fill;
			end
			LTR_D :
			begin
				if(CounterX >= x && CounterX <= x+5 && CounterY>=y && CounterY<=y+29)
					color_letter = fill;
				if(CounterX >= x && CounterX <= x+17 && ((CounterY>=y && CounterY<=y+2)||(CounterY>=y+27 && CounterY<=y+29)))
					color_letter = fill;
				if(CounterX >= x+15 && CounterX <= x+20 && ((CounterY>=y+3 && CounterY<=y+5)||(CounterY>=y+24 && CounterY<=y+26)))
					color_letter = fill;
				if(CounterX >= x+18 && CounterX <= x+23 && CounterY>=y+6 && CounterY<=y+23)
					color_letter = fill;
			end
			LTR_E :
			begin
				if(CounterX >= x && CounterX <= x+5 && CounterY>=y && CounterY<=y+29)
					color_letter = fill;
				if(CounterX >= x && CounterX <= x+20 && ((CounterY>=y && CounterY<=y+2)||(CounterY>=y+27 && CounterY<=y+29)))
					color_letter = fill;
				if(CounterX >= x && CounterX <= x+17 && CounterY>=y+12 && CounterY<=y+14)
					color_letter = fill;
			end
			LTR_I :
			begin
				if(CounterX >= x && CounterX <= x+5 && CounterY>=y && CounterY<=y+29)
					color_letter = fill;
			end
			LTR_K :
			begin
				if(CounterX >= x && CounterX <= x+5 && CounterY>=y && CounterY<=y+29)
					color_letter = fill;
				if(CounterX >= x+6 && CounterX <= x+8 && CounterY>=y+9 && CounterY<=y+17)
					color_letter = fill;
				if(CounterX >= x+9 && CounterX <= x+11 && ((CounterY>=y+6 && CounterY<=y+11)||(CounterY>=y+15 && CounterY<=y+20)))
					color_letter = fill;
				if(CounterX >= x+12 && CounterX <= x+14 && ((CounterY>=y+3 && CounterY<=y+8)||(CounterY>=y+18 && CounterY<=y+23)))
					color_letter = fill;
				if(CounterX >= x+15 && CounterX <= x+17 && ((CounterY>=y && CounterY<=y+5)||(CounterY>=y+21 && CounterY<=y+26)))
					color_letter = fill;
				if(CounterX >= x+18 && CounterX <= x+20 && ((CounterY>=y && CounterY<=y+2)||(CounterY>=y+24 && CounterY<=y+29)))
					color_letter = fill;
				if(CounterX >= x+21 && CounterX <= x+23 && CounterY>=y+27 && CounterY<=y+29)
					color_letter = fill;
			end
			LTR_L :
			begin
				if(CounterX>=x && CounterX<=x+5 && CounterY>=y && CounterY<=y+29)
					color_letter = fill;
				if(CounterX>=x && CounterX<=x+19 && CounterY>=y+27 && CounterY<=y+29)
					color_letter = fill;
			end
			LTR_N :
			begin
				if(((CounterX >= x && CounterX <= x+5)||(CounterX >= x+18 && CounterX <= x+23)) && CounterY>=y && CounterY<=y+29)
					color_letter = fill;
				if(CounterX >= x+6 && CounterX <= x+8 && CounterY>=y+3 && CounterY<=y+11)
					color_letter = fill;
				if(CounterX >= x+9 && CounterX <= x+11 && CounterY>=y+6 && CounterY<=y+17)
					color_letter = fill;
				if(CounterX >= x+12 && CounterX <= x+14 && CounterY>=y+12 && CounterY<=y+23)
					color_letter = fill;
				if(CounterX >= x+15 && CounterX <= x+17 && CounterY>=y+18 && CounterY<=y+26)
					color_letter = fill;
			end
			LTR_P :
			begin
				if(CounterX >= x && CounterX <= x+5 && CounterY>=y && CounterY<=y+29)
					color_letter = fill;
				if(CounterX >= x && CounterX <= x+20 && ((CounterY>=y && CounterY<=y+2)||(CounterY>=y+15 && CounterY<=y+17)))
					color_letter = fill;
				if(CounterX >= x+18 && CounterX <= x+23 && (CounterY>=y+3 && CounterY<=y+14))
					color_letter = fill;
			end
			LTR_R :
			begin
				if(CounterX >= x && CounterX <= x+5 && CounterY>=y && CounterY<=y+29)
					color_letter = fill;
				if(CounterX >= x && CounterX <= x+20 && ((CounterY>=y && CounterY<=y+2)||(CounterY>=y+15 && CounterY<=y+17)))
					color_letter = fill;
				if(CounterX >= x+18 && CounterX <= x+23 && ((CounterY>=y+3 && CounterY<=y+14) || (CounterY>=y+18 && CounterY<=y+26)))
					color_letter = fill;
				if(CounterX >= x+21 && CounterX <= x+26 && CounterY>=y+27 && CounterY<=y+29)
					color_letter = fill;
			end
			LTR_S :
			begin
				if(CounterX >= x+3 && CounterX <= x+17 && ((CounterY>=y && CounterY<=y+2)||(CounterY>=y+27 && CounterY<=y+29)))
					color_letter = fill;
				if(CounterX >= x && CounterX <= x+5 && ((CounterY>=y+3 && CounterY<=y+11) || (CounterY>=y+21 && CounterY<=y+26)))
					color_letter = fill;
				if(CounterX >= x+15 && CounterX <= x+20 && ((CounterY>=y+3 && CounterY<=y+8) || (CounterY>=y+18 && CounterY<=y+26)))
					color_letter = fill;
				if(CounterX >= x+3 && CounterX <= x+11 && CounterY>=y+12 && CounterY<=y+14)
					color_letter = fill;
				if(CounterX >= x+9 && CounterX <= x+17 && CounterY>=y+15 && CounterY<=y+17)
					color_letter = fill;
			end
			LTR_T :
			begin
				if(CounterX>=x && CounterX<=x+23 && CounterY>=y && CounterY<=y+2)
					color_letter = fill;
				if(CounterX>=x+9 && CounterX<=x+14 && CounterY>=y && CounterY<=y+29)
					color_letter = fill;
			end
			LTR_W :
			begin
				if(CounterY>=y && CounterY<=y+8 && ((CounterX>=x && CounterX<=x+5)||(CounterX>=x+36 && CounterX<=x+41)))
					color_letter = fill;
				if(CounterY>=y+9 && CounterY<=y+14 && ((CounterX>=x+3 && CounterX<=x+8)||(CounterX>=x+33 && CounterX<=x+38)))
					color_letter = fill;
				if(CounterY>=y+15 && CounterY<=y+20 && ((CounterX>=x+6 && CounterX<=x+11)||(CounterX>=x+30 && CounterX<=x+35)))
					color_letter = fill;
				if(CounterY>=y+18 && CounterY<=y+29 && ((CounterX>=x+9 && CounterX<=x+14)||(CounterX>=x+27 && CounterX<=x+32)))
					color_letter = fill;
				if(CounterX>=x+18 && CounterX<=x+23 && CounterY>=y && CounterY<=y+14)
					color_letter = fill;
				if(CounterY>=y+9 && CounterY<=y+20 && ((CounterX>=x+15 && CounterX<=x+17)||(CounterX>=x+24 && CounterX<=x+26)))
					color_letter = fill;
			end
		endcase
	end
	endfunction
	
	always @(posedge Clk, posedge Reset)
	begin : GAME_DISPLAY
		if(Reset)
		begin
			X=125;
			for(col=0; col<7; col=col+1) begin
				x_centers[col] = X;
				X=X+65;
			end
			Y=442;
			for(row=0; row<6; row=row+1) begin
				y_centers[row] = Y;
				Y=Y-65;
			end
		end
		else
		begin
			//Set a white background
			color=WHITE;
			//Color board area yellow
			if(CounterX >= 88 && CounterX <= 551 && CounterY >= 80 && CounterY <= 479) begin
				color=YELLOW;
			end
			//Color chips that are in play
			for(row=0; row<6; row=row+1) begin
				for(col=0; col<7; col=col+1) begin
					if(CounterX >= (x_centers[col]-27) && CounterX <= (x_centers[col]+27) && CounterY >= (y_centers[row]-27) && CounterY <= (y_centers[row]+27)) begin
						if(board[7*(row)+col] == 1'b1) //Piece exists on the board, color either red or black
							color=(colors[7*(row)+col] == 1'b1)?BLACK:RED;
						else //No piece at location, color white
							color=WHITE;
					end
				end
			end
			if(CounterY >=13 && CounterY <= 67) begin
				if(start_state) begin
					//P
					if(CounterX >= 184 && CounterX <= 207)
						color=color_letter(LTR_P,184, 25, BLACK);
					//R
					if(CounterX >= 211 && CounterX <= 237)
						color=color_letter(LTR_R,211, 25, BLACK);
					//E
					if(CounterX >= 241 && CounterX <= 261)
						color=color_letter(LTR_E,241, 25, BLACK);
					//S
					if(CounterX >= 266 && CounterX <= 286)
						color=color_letter(LTR_S,266, 25, BLACK);
					//S
					if(CounterX >= 293 && CounterX <= 313)
						color=color_letter(LTR_S,293, 25, BLACK);
					
					//S
					if(CounterX >= 327 && CounterX <= 347)
						color=color_letter(LTR_S,327, 25, BLACK);
					//T
					if(CounterX >= 351 && CounterX <= 374)
						color=color_letter(LTR_T,351, 25, BLACK);
					//A
					if(CounterX >= 375 && CounterX <= 398)
						color=color_letter(LTR_A,375, 25, BLACK);
					//R
					if(CounterX >= 402 && CounterX <= 428)
						color=color_letter(LTR_R,402, 25, BLACK);
					//T
					if(CounterX >= 429 && CounterX <= 452)
						color=color_letter(LTR_T,429, 25, BLACK);
				end
				else if(end_state) begin
					case(winner)
					 2'b00:
					 begin
						if(CounterX >= 262 && CounterX <= 285)
							color=color_letter(LTR_D,262, 25, YELLOW);
						if(CounterX >= 290 && CounterX <= 316)
							color=color_letter(LTR_R,290, 25, YELLOW);
						if(CounterX >= 320 && CounterX <= 343)
							color=color_letter(LTR_A,320, 25, YELLOW);
						if(CounterX >= 344 && CounterX <= 385)
							color=color_letter(LTR_W,344, 25, YELLOW);
					 end
					 2'b01: //RED WINS
					 begin
						if(CounterX >= 229 && CounterX <= 255)
							color=color_letter(LTR_R,229, 25, RED);
						if(CounterX >= 259 && CounterX <= 279)
							color=color_letter(LTR_E,259, 25, RED);
						if(CounterX >= 285 && CounterX <= 306)
							color=color_letter(LTR_D,285, 25, RED);
							
						if(CounterX >= 332 && CounterX <= 373)
							color=color_letter(LTR_W,332, 25, RED);
						if(CounterX >= 377 && CounterX <= 382)
							color=color_letter(LTR_I,377, 25, RED);
						if(CounterX >= 389 && CounterX <= 412)
							color=color_letter(LTR_N,389, 25, RED);
						if(CounterX >= 418 && CounterX <= 438)
							color=color_letter(LTR_S,418, 25, RED);
					 end
					 2'b10: //BLACK WINS
					 begin
						if(CounterX >= 185 && CounterX <= 208)
							color=color_letter(LTR_B,185, 25, BLACK);
						if(CounterX >= 213 && CounterX <= 232)
							color=color_letter(LTR_L,213, 25, BLACK);
						if(CounterX >= 235 && CounterX <= 259)
							color=color_letter(LTR_A,235, 25, BLACK);
						if(CounterX >= 263 && CounterX <= 283)
							color=color_letter(LTR_C,263, 25, BLACK);
						if(CounterX >= 288 && CounterX <= 311)
							color=color_letter(LTR_K,288, 25, BLACK);
						
						
						if(CounterX >= 332 && CounterX <= 373)
							color=color_letter(LTR_W,332, 25, BLACK);
						if(CounterX >= 377 && CounterX <= 382)
							color=color_letter(LTR_I,377, 25, BLACK);
						if(CounterX >= 389 && CounterX <= 412)
							color=color_letter(LTR_N,389, 25, BLACK);
						if(CounterX >= 418 && CounterX <= 438)
							color=color_letter(LTR_S,418, 25, BLACK);
					 end
					 endcase
				end
				else begin
					//Color the chip current being moved
					if(CounterX >= (x_centers[selected_col]-27) && CounterX <= (x_centers[selected_col]+27)) begin
						color = (player==1'b1)?BLACK:RED; //Color based on current player's turn
					end
				end
			end
			case(color)
				RED:
				begin
					VGA_Red0 <= 1'b0;
					VGA_Red1 <= inDisplayArea;
					VGA_Red2 <= inDisplayArea;
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
					VGA_Red0 <= inDisplayArea;
					VGA_Red1 <= inDisplayArea;
					VGA_Red2 <= inDisplayArea;
					VGA_Green0 <= inDisplayArea;
					VGA_Green1 <= inDisplayArea;
					VGA_Green2 <= inDisplayArea;
					VGA_Blue0 <= inDisplayArea;
					VGA_Blue1 <= inDisplayArea;
				end
				YELLOW:
				begin
					VGA_Red0 <= 1'b0;
					VGA_Red1 <= inDisplayArea;
					VGA_Red2 <= inDisplayArea;
					VGA_Green0 <= 1'b0;
					VGA_Green1 <= inDisplayArea;
					VGA_Green2 <= inDisplayArea;
					VGA_Blue0 <= 1'b0;
					VGA_Blue1 <= 1'b0;
				end
			endcase
		end
	end
endmodule