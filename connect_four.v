`timescale 1ns / 1ps
module connect_four (
		Left, Right, Select, Reset,
		Clk,                    
		selected_col
	);
	input Left, Right, Select, Reset, Clk;
	output [2:0] selected_col;
	
	reg [2:0] selected_col;
	reg [1:0] board [5:0] [6:0]; //Make a 6x7 board, 00 = no piece, 01 = red, 10 = black
	reg player; //Player 0 is red, Player 1 is black
	reg [2:0] col_depth [6:0]; //Track depth of each column
	reg [4:0] state;
	integer col;
	integer row;

	localparam
	INITIAL 	= 5'b00001,
	MOVE		= 5'b00010,
	CHECK_MOVE	= 5'b00100,
	CHECK_C4	= 5'b01000,
	WIN			= 5'b10000;

	always @(posedge Clk, posedge Reset) begin
		if (Reset) begin
        	state <= INITIAL;
		end
		else begin : STATE_MACHINE
			(* full_case, parallel_case *)
         	case (state)
         		INITIAL : 
         		begin
         			player <= 0;
         			selected_col <= 3;
         			//RESET BOARD
         			for (col=0; col<7; col=col+1) begin
         				for (row=0; row<6; row=row+1) begin
         					board[row][col] <= 2'b00;
         				end
         				col_depth[col] <= 0;
         			end
         			state <= MOVE;
         			//PRINT NEW GAME
         		end
         		MOVE :
         		begin
	         		if(Select)
	         			state <= CHECK_MOVE;
	         		else
	         		begin
						if(Left & !Right & (selected_col > 0))
	         				selected_col <= selected_col - 1;
						if(Right & !Left & (selected_col < 6))
							selected_col <= selected_col + 1;
	         		end
         		end
         		CHECK_MOVE :
         		begin
         			if(col_depth[selected_col] != 6)
         				begin
         				state <= CHECK_C4;
         				col_depth[selected_col] <= col_depth[selected_col] + 1;
         				if(!player)
         					board[col_depth[selected_col]][selected_col] <= 2'b01;
         				else
         					board[col_depth[selected_col]][selected_col] <= 2'b10;
         				end
         			else
         				state <= MOVE;
         		end
         		CHECK_C4 :
         		begin
         			state <= MOVE;
         			player <= player ^ 1;
         			selected_col <= 3;
				end
         	endcase
		end
	end
endmodule