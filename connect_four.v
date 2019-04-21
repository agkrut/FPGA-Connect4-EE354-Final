`timescale 1ns / 1ps
module connect_four (
        Clk, Reset,
        Left1, Right1, Drop1, Start1,
		  Left2, Right2, Drop2, Start2,
        board, colors, selected_col, player, game_over, winner,
		start_state, end_state
    );
    input Clk, Reset;
	 input Left1, Right1, Drop1, Start1;
	 input Left2, Right2, Drop2, Start2;
    output [41:0] board, colors;
    output [2:0] selected_col;
	output player, game_over;
	output [1:0] winner;
	output start_state, end_state;
    
    reg [41:0] board; //Row i, col j is located at board[7*i+j]
    /*
    35 36 37 38 39 40 41
    28 29 30 31 32 33 34
    21 22 23 24 25 26 27
    14 15 16 17 18 19 20
    07 08 09 10 11 12 13
    00 01 02 03 04 05 06
    */
    reg [41:0] colors; //if board[i]=1 then color is 0 = red, 1 = black
    reg [2:0] selected_col; //Track selected column
    reg player; //Player 0 is red, Player 1 is black
	 reg game_over; //Flag to determine if game has ended
    reg [1:0] winner; //00 = draw, 01 = red, 10 = black
	
    reg [20:0] col_depth; //Track depth of each column, col*3+2:col*3
    reg [2:0] state;
    
    integer index;
    integer i, j;

    localparam
    INITIAL     = 3'b000,
	 START 	    = 3'b001,
    MOVE1       = 3'b010,
	 MOVE2       = 3'b011,
    CHECK_MOVE  = 3'b100,
    CHECK_C4    = 3'b101,
    END         = 3'b110;

	assign start_state = (state==START);
	assign end_state = (state==END);
	
    always @(posedge Clk, posedge Reset) begin
        if (Reset) begin
            state <= INITIAL;
        end
        else begin : STATE_MACHINE
            (* parallel_case *)
            case (state)
				INITIAL : 
				begin
				  game_over = 0;
				  player <= 0;
				  selected_col <= 3; //Start in middle
				  winner <= 0;
				  //RESET BOARD
				  board <= {42{1'b0}};
				  colors <= {42{1'b0}};
				  //RESET DEPTHS
				  col_depth <= {20{1'b0}};
				  state <= START;
				end
				START :
				begin
					if(Start1 | Drop1)
						state <= MOVE1;
				end
				MOVE1 :
				begin
				  if(Drop1)
						state <= CHECK_MOVE;
				  else
				  begin
						if(Left1 & !Right1 & (selected_col > 0))
							 selected_col <= selected_col - 1'b1;
						if(Right1 & !Left1 & (selected_col < 6))
							 selected_col <= selected_col + 1'b1;
				  end
				end
				MOVE2 :
				begin
				  if(Drop2)
						state <= CHECK_MOVE;
				  else
				  begin
						if(Left2 & !Right2 & (selected_col > 0))
							 selected_col <= selected_col - 1'b1;
						if(Right2 & !Left2 & (selected_col < 6))
							 selected_col <= selected_col + 1'b1;
				  end
				end
				CHECK_MOVE :
				begin
				  if(col_depth[selected_col*3 +: 3] != 6)
				  begin
						state <= CHECK_C4;
						col_depth[selected_col*3 +: 3] <= col_depth[selected_col*3 +: 3] + 1'b1;
						board[7*col_depth[selected_col*3 +: 3]+selected_col] <= 1;
						if(player) //Check if chip is colored black
							 colors[7*col_depth[selected_col*3 +: 3]+selected_col] <= 1;
				  end
				  else
				  begin
					if(player)
						state <= MOVE2;
					else
						state <= MOVE1;
					end
				end
				CHECK_C4 :
				begin
				  //Check columns
				  /*
				  O   O   X
				  O   X   X
				  X   X   X
				  X   X   X
				  X   X   O
				  X,  O,  O
				  */
				  for(i=0; i<7; i=i+1) begin //Column
						for(j=0; j<3; j=j+1) begin //Row
							 //Check that there's discs in each spot
							 if(board[7*(j)+i] & board[7*(j+1)+i] & board[7*(j+2)+i] & board[7*(j+3)+i]) begin
								  //Check all 4 are the same color
									  if(!((colors[7*(j)+i]^colors[7*(j+1)+i]) |
										(colors[7*(j+1)+i]^colors[7*(j+2)+i]) |
										(colors[7*(j+2)+i]^colors[7*(j+3)+i]))) begin
										game_over = 1;
								  end
							 end
						end
				  end
				
				  //Check rows
				  /*
				  X X X X O O O,
				  O X X X X O O,
				  O O X X X X O,
				  O O O X X X X,
				  */
				  for(i=0; i<6; i=i+1) begin //Row
						for(j=0; j<4; j=j+1) begin //Column
							 //Check that there's discs in each spot
							 if(board[7*i+(j)] & board[7*i+(j+1)] & board[7*i+(j+2)] & board[7*i+(j+3)]) begin
								  //Check all 4 are the same color
								  if(!((colors[7*i+(j)]^colors[7*i+(j+1)]) |
										(colors[7*i+(j+1)]^colors[7*i+(j+2)]) |
										(colors[7*i+(j+2)]^colors[7*i+(j+3)]))) begin
										game_over = 1;
								  end
							 end
						end
				  end

				  //Check Diagonals BottomLeft to TopRight
				  /*
				  O O O X O O O
				  O O X O O O O
				  O X O X O O X
				  X O X O O X O
				  O X O O X O O
				  X O O X O O O
				  */
				  for(i=0; i<4; i=i+1) begin //Starting column
						for(j=0; j<3; j=j+1) begin //Starting row
							 if(board[7*(j)+(i)] & board[7*(j+1)+(i+1)] &
								  board[7*(j+2)+(i+2)] & board[7*(j+3)+(i+3)]) begin
								  //Check all 4 are the same color
								  if(!((colors[7*(j)+(i)]^colors[7*(j+1)+(i+1)]) |
										(colors[7*(j+1)+(i+1)]^colors[7*(j+2)+(i+2)]) |
										(colors[7*(j+2)+(i+2)]^colors[7*(j+3)+(i+3)]))) begin
										game_over = 1;
								  end
							 end
						end
				  end

				  //Check Diagonals BottomRight to TopLeft
				  /*
				  X O O X O O O
				  O X O O X O O
				  X O X O O X O
				  O X O X O O X
				  O O X O O O O
				  O O O X O O O
				  */
				  for(i=0; i<4; i=i+1) begin //Starting column
						for(j=3; j<6; j=j+1) begin //Starting row
							 if(board[7*(j)+(i)] & board[7*(j-1)+(i+1)] &
								  board[7*(j-2)+(i+2)] & board[7*(j-3)+(i+3)]) begin
								  //Check all 4 are the same color
								  if(!((colors[7*(j)+(i)]^colors[7*(j-1)+(i+1)]) |
										(colors[7*(j-1)+(i+1)]^colors[7*(j-2)+(i+2)]) |
										(colors[7*(j-2)+(i+2)]^colors[7*(j-3)+(i+3)]))) begin
										game_over = 1;
								  end
							 end
						end
				  end
				  
				  if(game_over) begin
						state <= END;
						winner <= { player, ~player };
				  end
				  else begin
						//Determine if all rows are filled up and is a draw
						game_over=1;
						for(i=0; i<7; i=i+1) begin
							 if(col_depth[i*3 +: 3] != 6)
								game_over=0;
						end
						if(game_over) begin
							 state <= END;
							 winner <= 2'b00;
						end
						else begin
							 begin
							if(player)
								state <= MOVE1;
							else
								state <= MOVE2;
							end
							 player <= player ^ 1'b1;
							 selected_col <= 3;
						end
				  end
				 end
				 END :
				 begin
					if(Start1 | Start2)
						state <= INITIAL;
				 end
          endcase
        end
    end
endmodule