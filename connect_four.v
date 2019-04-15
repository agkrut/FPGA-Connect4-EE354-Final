`timescale 1ns / 1ps
module connect_four (
        Clk, Reset,
        Left, Right, Select,
        board, colors, selected_col, player, game_over, winner
    );
    input Left, Right, Select, Reset, Clk;
    output [41:0] board, colors;
    output [2:0] selected_col;
	output player, game_over;
	output [1:0] winner;
    
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
	
    reg [2:0] col_depth [6:0]; //Track depth of each column
    reg [4:0] state;
    
    integer index;
    integer i, j;

    localparam
    INITIAL     = 5'b00001,
    MOVE        = 5'b00010,
    CHECK_MOVE  = 5'b00100,
    CHECK_C4    = 5'b01000,
    END         = 5'b10000;

    always @(posedge Clk, posedge Reset) begin
        if (Reset) begin
            state <= INITIAL;
            board <= 42'bX;
            colors <= 42'bX;
            selected_col <= 3'bX;
            player <= 1'bX;
            for(index=0; index<7; index=index+1) begin
                col_depth[index] <= 3'bX;
            end
            winner <= 2'bX;
        end
        else begin : STATE_MACHINE
            (* full_case, parallel_case *)
            case (state)
                INITIAL : 
                begin
							game_over = 0;
                    player <= 0;
                    selected_col <= 3; //Start in middle
                    winner <= 0;
                    //RESET BOARD
                    for (index=0; index<42; index=index+1) begin
                        board[index] <= 0;
                        colors[index] <= 0;
                    end
                    //RESET DEPTHS
                    for(index=0; index<7; index=index+1) begin
                        col_depth[index] <= 0;
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
                            selected_col <= selected_col - 1'b1;
                        if(Right & !Left & (selected_col < 6))
                            selected_col <= selected_col + 1'b1;
                    end
                end
                CHECK_MOVE :
                begin
                    if(col_depth[selected_col] != 6)
                    begin
                        state <= CHECK_C4;
                        col_depth[selected_col] <= col_depth[selected_col] + 1'b1;
                        board[7*col_depth[selected_col]+selected_col] <= 1;
                        if(player) //Check if chip is colored black
                            colors[7*col_depth[selected_col]+selected_col] <= 1;
                    end
                    else
                        state <= MOVE;
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
                            if(col_depth[i] != 6)
                                game_over=0;
                        end
                        if(game_over) begin
                            state <= END;
                            winner <= 2'b00;
                        end
                        else begin
                            state <= MOVE;
                            player <= player ^ 1;
                            selected_col <= 3;
                        end
                    end
                end
                END :
                begin
                
                end
            endcase
        end
    end
endmodule