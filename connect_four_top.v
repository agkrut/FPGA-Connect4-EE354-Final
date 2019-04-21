`timescale 1ns / 1ps
module connect_four_top (
        MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS, // Disable the three memory chips
        ClkPort,             				//100 MHz clock signal
        Ld6, Ld5, Ld4, Ld3, Ld2, Ld1, Ld0, 	//LEDs
        An3, An2, An1, An0, 				//SSD Anodes
        Cg, Cf, Ce, Cd, Cc, Cb, Ca, Dp, 	//SSD Cathodes
        Sw5, Sw4, Sw3, Sw2, Sw1, Sw0, 		//Switches
        BtnU, BtnL, BtnR, BtnC, BtnD,  		//Left, Right, and Center buttons
		VGA_Red0, VGA_Green0, VGA_Blue0,	//VGA RGB pins
		VGA_Red1, VGA_Green1, VGA_Blue1,	//VGA RGB pins
		VGA_Red2, VGA_Green2, 				//VGA RGB pins
		VGA_Hsync, VGA_Vsync,				//VGA sync pins
		JA_0, JA_1, JA_2,					//Controller 1
		JB_0, JB_1, JB_2					//Controller 2
    );

    /* INPUT */
    // Clock & Reset I/O
    input ClkPort;
    input BtnL, BtnR, BtnC, BtnU, BtnD;
    input Sw5, Sw4, Sw3, Sw2, Sw1, Sw0;
	input JA_2, JB_2;

    /* OUTPUT */
    // Control signals on Memory chips  (to disable them)
    output  MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS;
    assign {MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS} = 5'b11111;

    output Ld6, Ld5, Ld4, Ld3, Ld2, Ld1, Ld0;
    output An3, An2, An1, An0;
    output Cg, Cf, Ce, Cd, Cc, Cb, Ca, Dp;
	output VGA_Red0, VGA_Green0, VGA_Blue0;
	output VGA_Red1, VGA_Green1, VGA_Blue1;
	output VGA_Red2, VGA_Green2;
	output VGA_Hsync, VGA_Vsync;
	output JA_0, JA_1, JB_0, JB_1;

    wire Reset, ClkPort;
    wire board_clk, game_clk, vga_clk, controller_clk;
    wire [1:0] ssdscan_clk;
    reg [26:0]  DIV_CLK;

    reg Left1, Right1, BtnA1, Start1;
	 reg Left2, Right2, BtnA2, Start2;
    wire [41:0] board;
    wire [41:0] colors;
    wire [2:0] selected_col;
	wire player, game_over;
	wire [1:0] winner;
	wire start_state, end_state;

	//SSD
    wire [5:0]  SWITCHES;
    reg [6:0]   SSD3, SSD2, SSD1, SSD0;
    reg [6:0]   SSD_CATHODES;
	
	//VGA
	wire VGA_Red0, VGA_Green0, VGA_Blue0;
	wire VGA_Red1, VGA_Green1, VGA_Blue1;
	wire VGA_Red2, VGA_Green2;
	wire VGA_Hsync, VGA_Vsync;

	//Controller 1
	wire [11:0] buttons1;
	wire control_finish1;
	wire [5:0] snes_state1;
	
	//Controller 2
	wire [11:0] buttons2;
	wire control_finish2;
	wire [5:0] snes_state2;
	
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
    assign game_clk = DIV_CLK[24];
    assign Reset = BtnC;
    connect_four connect_four_mod(
        .Clk(game_clk), .Reset(Reset),
        .Left1(Left1), .Right1(Right1), .Drop1(BtnA1), .Start1(Start1),
		  .Left2(Left2), .Right2(Right2), .Drop2(BtnA2), .Start2(Start2),
        .board(board), .colors(colors), .selected_col(selected_col),
		.player(player), .game_over(game_over), .winner(winner),
		.start_state(start_state), .end_state(end_state)
    );

	/*
	Create VGA module
	*/
	assign vga_clk = DIV_CLK[1]; //25MHz clock
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
	
	assign controller_clk = DIV_CLK[0]; //50MHz clock
	
	snes_controller controller1(
		.Clk(controller_clk), .data_in_snes(JA_2),
		.buttons_snes(buttons1), .finish(control_finish1),
		.latch_snes(JA_1), .clk_snes(JA_0),
		.snes_state(snes_state1), .reset(Reset)//,.start(Start)
	);
	
	snes_controller controller2(
		.Clk(controller_clk), .data_in_snes(JB_2),
		.buttons_snes(buttons2), .finish(control_finish2),
		.latch_snes(JB_1), .clk_snes(JB_0),
		.snes_state(snes_state2), .reset(Reset)//,.start(Start)
	);
	
	always @ (posedge control_finish1)
	begin
		Left1 <= ~buttons1[6];
		Right1 <= ~buttons1[7];
		BtnA1 <= ~buttons1[8];
		Start1 <= ~buttons1[2]|~buttons1[3];
	end
	
	always @ (posedge control_finish2)
	begin
		Left2 <= ~buttons2[6];
		Right2 <= ~buttons2[7];
		BtnA2 <= ~buttons2[8];
		Start2 <= ~buttons2[2]|~buttons2[3];
	end
		
    /*
    Control SSD Display with switches
    */
    assign SWITCHES = { Sw5, Sw4, Sw3, Sw2, Sw1, Sw0 };
    always @ (SWITCHES, board, colors)
    begin : DISPLAY_ROW
        case(SWITCHES)
				6'b000000:
				begin
				SSD0 = {buttons1[0],buttons1[1],buttons1[2],buttons1[3],buttons1[4],buttons1[5],buttons1[6]};
				SSD1 = {buttons1[7],buttons1[8],buttons1[9],buttons1[10],buttons1[11],2'b11};
				SSD2 = {buttons2[0],buttons2[1],buttons2[2],buttons2[3],buttons2[4],buttons2[5],buttons2[6]};
				SSD3 = {buttons2[7],buttons2[8],buttons2[9],buttons2[10],buttons2[11],2'b11};
				end
            6'b000001:
				begin
				SSD0 = {1'b1, ~board[6]|~colors[6], ~board[6]|colors[6], 1'b1, ~board[5]|colors[5], ~board[5]|~colors[5], 1'b1};
				SSD1 = {1'b1, ~board[4]|~colors[4], ~board[4]|colors[4], 1'b1, ~board[3]|colors[3], ~board[3]|~colors[3], 1'b1};
				SSD2 = {1'b1, ~board[2]|~colors[2], ~board[2]|colors[2], 1'b1, ~board[1]|colors[1], ~board[1]|~colors[1], 1'b1};
				SSD3 = {1'b1, ~board[0]|~colors[0], ~board[0]|colors[0], 4'b1111};
				end
            6'b000010: 
				begin
				SSD0 = {1'b1, ~board[13]|~colors[13], ~board[13]|colors[13], 1'b1, ~board[12]|colors[12], ~board[12]|~colors[12], 1'b1};
				SSD1 = {1'b1, ~board[11]|~colors[11], ~board[11]|colors[11], 1'b1, ~board[10]|colors[10], ~board[10]|~colors[10], 1'b1};
				SSD2 = {1'b1, ~board[9]|~colors[9], ~board[9]|colors[9], 1'b1, ~board[8]|colors[8], ~board[8]|~colors[8], 1'b1};
				SSD3 = {1'b1, ~board[7]|~colors[7], ~board[7]|colors[7], 4'b1111};
				end
            6'b000100: 
				begin
				SSD0 = {1'b1, ~board[20]|~colors[20], ~board[20]|colors[20], 1'b1, ~board[19]|colors[19], ~board[19]|~colors[19], 1'b1};
				SSD1 = {1'b1, ~board[18]|~colors[18], ~board[18]|colors[18], 1'b1, ~board[17]|colors[17], ~board[17]|~colors[17], 1'b1};
				SSD2 = {1'b1, ~board[16]|~colors[16], ~board[16]|colors[16], 1'b1, ~board[15]|colors[15], ~board[15]|~colors[15], 1'b1};
				SSD3 = {1'b1, ~board[14]|~colors[14], ~board[14]|colors[14], 4'b1111};
				end
            6'b001000: 
				begin
				SSD0 = {1'b1, ~board[27]|~colors[27], ~board[27]|colors[27], 1'b1, ~board[26]|colors[26], ~board[26]|~colors[26], 1'b1};
				SSD1 = {1'b1, ~board[25]|~colors[25], ~board[25]|colors[25], 1'b1, ~board[24]|colors[24], ~board[24]|~colors[24], 1'b1};
				SSD2 = {1'b1, ~board[23]|~colors[23], ~board[23]|colors[23], 1'b1, ~board[22]|colors[22], ~board[22]|~colors[22], 1'b1};
				SSD3 = {1'b1, ~board[21]|~colors[21], ~board[21]|colors[21], 4'b1111};
				end
            6'b010000: 
				begin
				SSD0 = {1'b1, ~board[34]|~colors[34], ~board[34]|colors[34], 1'b1, ~board[33]|colors[33], ~board[33]|~colors[33], 1'b1};
				SSD1 = {1'b1, ~board[32]|~colors[32], ~board[32]|colors[32], 1'b1, ~board[31]|colors[31], ~board[31]|~colors[31], 1'b1};
				SSD2 = {1'b1, ~board[30]|~colors[30], ~board[30]|colors[30], 1'b1, ~board[29]|colors[29], ~board[29]|~colors[29], 1'b1};
				SSD3 = {1'b1, ~board[28]|~colors[28], ~board[28]|colors[28], 4'b1111};
				end
            6'b100000: 
				begin
				SSD0 = {1'b1, ~board[41]|~colors[41], ~board[41]|colors[41], 1'b1, ~board[40]|colors[40], ~board[40]|~colors[40], 1'b1};
				SSD1 = {1'b1, ~board[39]|~colors[39], ~board[37]|colors[39], 1'b1, ~board[38]|colors[38], ~board[38]|~colors[38], 1'b1};
				SSD2 = {1'b1, ~board[37]|~colors[37], ~board[37]|colors[37], 1'b1, ~board[36]|colors[36], ~board[36]|~colors[36], 1'b1};
				SSD3 = {1'b1, ~board[35]|~colors[35], ~board[35]|colors[35], 4'b1111};
				end
            default: 
				begin
				SSD0 = 7'b1111111;
				SSD1 = 7'b1111111;
				SSD2 = 7'b1111111;
				SSD3 = 7'b1111111;
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
            2'b00: SSD_CATHODES = SSD0;
            2'b01: SSD_CATHODES = SSD1;
            2'b10: SSD_CATHODES = SSD2;
            2'b11: SSD_CATHODES = SSD3;
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