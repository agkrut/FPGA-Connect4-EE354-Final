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
					if(CounterX >= (x_centers[3]-136) && CounterX <= (x_centers[3]-113))
						color=color_letter(LTR_P,x_centers[3]-136, 25, BLACK);
					//R
					if(CounterX >= (x_centers[3]-109) && CounterX <= (x_centers[3]-83))
						color=color_letter(LTR_R,x_centers[3]-109, 25, BLACK);
					//E
					if(CounterX >= (x_centers[3]-79) && CounterX <= (x_centers[3]-59))
						color=color_letter(LTR_E,x_centers[3]-79, 25, BLACK);
					//S
					if(CounterX >= (x_centers[3]-54) && CounterX <= (x_centers[3]-34))
						color=color_letter(LTR_S,x_centers[3]-54, 25, BLACK);
					//S
					if(CounterX >= (x_centers[3]-27) && CounterX <= (x_centers[3]-7))
						color=color_letter(LTR_S,x_centers[3]-27, 25, BLACK);
					
					//S
					if(CounterX >= (x_centers[3]+7) && CounterX <= (x_centers[3]+27))
						color=color_letter(LTR_S,x_centers[3]+7, 25, BLACK);
					//T
					if(CounterX >= (x_centers[3]+31) && CounterX <= (x_centers[3]+54))
						color=color_letter(LTR_T,x_centers[3]+31, 25, BLACK);
					//A
					if(CounterX >= (x_centers[3]+55) && CounterX <= (x_centers[3]+78))
						color=color_letter(LTR_A,x_centers[3]+55, 25, BLACK);
					//R
					if(CounterX >= (x_centers[3]+82) && CounterX <= (x_centers[3]+108))
						color=color_letter(LTR_R,x_centers[3]+82, 25, BLACK);
					//T
					if(CounterX >= (x_centers[3]+109) && CounterX <= (x_centers[3]+132))
						color=color_letter(LTR_T,x_centers[3]+109, 25, BLACK);
				end
				else if(end_state) begin
					case(winner)
					 2'b00:
					 begin
						if(CounterX >= (x_centers[3]-58) && CounterX <= (x_centers[3]-35))
							color=color_letter(LTR_D,x_centers[3]-58, 25, YELLOW);
						if(CounterX >= (x_centers[3]-30) && CounterX <= (x_centers[3]-4))
							color=color_letter(LTR_R,x_centers[3]-30, 25, YELLOW);
						if(CounterX >= (x_centers[3]) && CounterX <= (x_centers[3]+23))
							color=color_letter(LTR_A,x_centers[3], 25, YELLOW);
						if(CounterX >= (x_centers[3]+24) && CounterX <= (x_centers[3]+65))
							color=color_letter(LTR_W,x_centers[3]+24, 25, YELLOW);
					 end
					 2'b01: //RED WINS
					 begin
						if(CounterX >= (x_centers[3]-91) && CounterX <= (x_centers[3]-65))
							color=color_letter(LTR_R,x_centers[3]-91, 25, RED);
						if(CounterX >= (x_centers[3]-61) && CounterX <= (x_centers[3]-41))
							color=color_letter(LTR_E,x_centers[3]-61, 25, RED);
						if(CounterX >= (x_centers[3]-35) && CounterX <= (x_centers[3]-12))
							color=color_letter(LTR_D,x_centers[3]-35, 25, RED);
							
						if(CounterX >= (x_centers[3]+12) && CounterX <= (x_centers[3]+53))
							color=color_letter(LTR_W,x_centers[3]+12, 25, RED);
						if(CounterX >= (x_centers[3]+57) && CounterX <= (x_centers[3]+62))
							color=color_letter(LTR_I,x_centers[3]+57, 25, RED);
						if(CounterX >= (x_centers[3]+69) && CounterX <= (x_centers[3]+92))
							color=color_letter(LTR_N,x_centers[3]+69, 25, RED);
						if(CounterX >= (x_centers[3]+98) && CounterX <= (x_centers[3]+118))
							color=color_letter(LTR_S,x_centers[3]+98, 25, RED);
					 end
					 2'b10: //BLACK WINS
					 begin
						if(CounterX >= (x_centers[3]-135) && CounterX <= (x_centers[3]-112))
							color=color_letter(LTR_B,x_centers[3]-135, 25, BLACK);
						if(CounterX >= (x_centers[3]-107) && CounterX <= (x_centers[3]-88))
							color=color_letter(LTR_L,x_centers[3]-107, 25, BLACK);
						if(CounterX >= (x_centers[3]-85) && CounterX <= (x_centers[3]-61))
							color=color_letter(LTR_A,x_centers[3]-85, 25, BLACK);
						if(CounterX >= (x_centers[3]-57) && CounterX <= (x_centers[3]-37))
							color=color_letter(LTR_C,x_centers[3]-57, 25, BLACK);
						if(CounterX >= (x_centers[3]-32) && CounterX <= (x_centers[3]-9))
							color=color_letter(LTR_K,x_centers[3]-32, 25, BLACK);
						
						
						if(CounterX >= (x_centers[3]+12) && CounterX <= (x_centers[3]+53))
							color=color_letter(LTR_W,x_centers[3]+12, 25, BLACK);
						if(CounterX >= (x_centers[3]+57) && CounterX <= (x_centers[3]+62))
							color=color_letter(LTR_I,x_centers[3]+57, 25, BLACK);
						if(CounterX >= (x_centers[3]+69) && CounterX <= (x_centers[3]+92))
							color=color_letter(LTR_N,x_centers[3]+69, 25, BLACK);
						if(CounterX >= (x_centers[3]+98) && CounterX <= (x_centers[3]+118))
							color=color_letter(LTR_S,x_centers[3]+98, 25, BLACK);
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
	end
endmodule