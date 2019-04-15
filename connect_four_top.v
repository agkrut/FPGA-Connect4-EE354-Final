`timescale 1ns / 1ps
module connect_four_top (
        MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS, // Disable the three memory chips
        ClkPort,             				//100 MHz clock signal
        Ld6, Ld5, Ld4, Ld3, Ld2, Ld1, Ld0, 	//LEDs
        An3, An2, An1, An0, 				//SSD Anodes
        Cg, Cf, Ce, Cd, Cc, Cb, Ca, Dp, 	//SSD Cathodes
        Sw5, Sw4, Sw3, Sw2, Sw1, Sw0, 		//Switches
        BtnU, BtnL, BtnR, BtnC,      		//Left, Right, and Center buttons
		VGA_Red0, VGA_Green0, VGA_Blue0,		//VGA RGB pins
		VGA_Hsync, VGA_Vsync				//VGA sync pins
    );

    /* INPUT */
    // Clock & Reset I/O
    input ClkPort;
    input BtnL, BtnR, BtnC, BtnU;
    input Sw5, Sw4, Sw3, Sw2, Sw1, Sw0;

    /* OUTPUT */
    // Control signals on Memory chips  (to disable them)
    output  MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS;
    assign {MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS} = 5'b11111;

    output Ld6, Ld5, Ld4, Ld3, Ld2, Ld1, Ld0;
    output An3, An2, An1, An0;
    output Cg, Cf, Ce, Cd, Cc, Cb, Ca, Dp;
	output VGA_Red0, VGA_Green0, VGA_Blue0;
	output VGA_Hsync, VGA_Vsync;

    wire Reset, ClkPort;
    wire board_clk, game_clk, vga_clk;
    wire [1:0] ssdscan_clk;
    reg [26:0]  DIV_CLK;

    wire Left, Right, Select;
    wire [41:0] board;
    wire [41:0] colors;
    wire [2:0] selected_col;
	wire player, game_over;
	wire [1:0] winner;

	//SSD
    wire [5:0]  SWITCHES;
    reg [3:0]   SSD;
    reg [3:0]  SSD3, SSD2, SSD1, SSD0;
    reg [6:0]   SSD_CATHODES;
	
	//VGA
	wire VGA_Red0, VGA_Green0, VGA_Blue0;
	wire VGA_Hsync, VGA_Vsync;

    /*
        Divide the clock
    */
    BUFGP BUFGP1 (board_clk, ClkPort);  
    always @(posedge board_clk, posedge Reset)  
    begin                           
        if (Reset)
            DIV_CLK <= 0;
        else
            DIV_CLK <= DIV_CLK + 1'b1;
    end

    /*
    Create connect four module
    */
    assign game_clk = DIV_CLK[25];
    assign Left = BtnL;
    assign Right = BtnR;
    assign Select = BtnC;
    assign Reset = BtnU;
    connect_four connect_four_mod(
        .Clk(game_clk), .Reset(Reset),
        .Left(Left), .Right(Right), .Select(Select),
        .board(board), .colors(colors), .selected_col(selected_col),
		.player(player), .game_over(game_over), .winner(winner)
    );

	/*
	Create VGA module
	*/
	assign vga_clk = DIV_CLK[1]; //25MHz clock
	vga_display vga_display_mod(
		.Clk(vga_clk), .Reset(Reset),
		.VGA_Hsync(VGA_Hsync), .VGA_Vsync(VGA_Vsync),
		.VGA_Red0(VGA_Red0), .VGA_Green0(VGA_Green0), .VGA_Blue0(VGA_Blue0),
		.board(board), .colors(colors), .selected_col(selected_col),
		.player(player), .game_over(game_over), .winner(winner)
	);
	
    /*
    Control SSD Display with switches
    */
    assign SWITCHES = { Sw5, Sw4, Sw3, Sw2, Sw1, Sw0 };
    always @ (SWITCHES, board)
    begin : DISPLAY_ROW
        case(SWITCHES)
            6'b000001: 
				begin
				SSD0 = { board[5], colors[5], board[6], colors[6] };
				SSD1 = { board[3], colors[3], board[4], colors[4] };
				SSD2 = { board[1], colors[1], board[2], colors[2] };
				SSD3 = { 2'b00 , board[0], colors[0] };
				end
            6'b000010: 
				begin
				SSD0 = { board[12], colors[12], board[13], colors[13] };
				SSD1 = { board[10], colors[10], board[11], colors[11] };
				SSD2 = { board[8], colors[8], board[9], colors[9] };
				SSD3 = { 2'b00 , board[7], colors[7] };
				end
            6'b000100: 
				begin
				SSD0 = { board[19], colors[19], board[20], colors[20] };
				SSD1 = { board[17], colors[17], board[18], colors[18] };
				SSD2 = { board[15], colors[15], board[16], colors[16] };
				SSD3 = { 2'b00 , board[14], colors[14] };
				end
            6'b001000: 
				begin
				SSD0 = { board[26], colors[26], board[27], colors[27] };
				SSD1 = { board[24], colors[24], board[25], colors[25] };
				SSD2 = { board[22], colors[22], board[23], colors[23] };
				SSD3 = { 2'b00 , board[21], colors[21] };
				end
            6'b010000: 
				begin
				SSD0 = { board[33], colors[33], board[34], colors[34] };
				SSD1 = { board[31], colors[31], board[32], colors[32] };
				SSD2 = { board[29], colors[29], board[30], colors[30] };
				SSD3 = { 2'b00 , board[28], colors[28] };
				end
            6'b100000: 
				begin
				SSD0 = { board[40], colors[40], board[41], colors[41] };
				SSD1 = { board[38], colors[38], board[39], colors[39] };
				SSD2 = { board[36], colors[36], board[37], colors[37] };
				SSD3 = { 2'b00 , board[35], colors[35] };
				end
            default: 
				begin
				SSD0 = 4'b0000;
				SSD1 = 4'b0000;
				SSD2 = 4'b0000;
				SSD3 = 4'b0000;
				end
		endcase
    end

    assign ssdscan_clk = DIV_CLK[19:18];
    assign An0  = !(ssdscan_clk == 2'b00);
    assign An1  = !(ssdscan_clk == 2'b01);
    assign An2  = !(ssdscan_clk == 2'b10);
    assign An3  = !(ssdscan_clk == 2'b11);

    always @ (ssdscan_clk, SSD0, SSD1, SSD2, SSD3)
    begin : SSD_SCAN_OUT
        case (ssdscan_clk) 
            2'b00: SSD = SSD0;
            2'b01: SSD = SSD1;
            2'b10: SSD = SSD2;
            2'b11: SSD = SSD3;
			default: SSD = 4'bXXXX;
        endcase 
    end

    always @ (SSD)
    begin : SSD_DISPLAY
        case({SSD[3], SSD[1]})
            2'b00: SSD_CATHODES = 7'b1111111;
            2'b01: SSD_CATHODES = {1'b1, ~SSD[0], SSD[0], 4'b1111};
            2'b10: SSD_CATHODES = {4'b1111, SSD[2], ~SSD[2], 1'b1};
            2'b11: SSD_CATHODES = {1'b1, ~SSD[0], SSD[0], 1'b1, SSD[2], ~SSD[2], 1'b1};
        endcase
    end


    assign {Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp} = {SSD_CATHODES, 1'b1};

    /*
    Control LEDs
    */
    //Light up LED to show selected column
    assign Ld6 = (selected_col == 0);
    assign Ld5 = (selected_col == 1);
    assign Ld4 = (selected_col == 2);
    assign Ld3 = (selected_col == 3);
    assign Ld2 = (selected_col == 4);
    assign Ld1 = (selected_col == 5);
    assign Ld0 = (selected_col == 6);
endmodule