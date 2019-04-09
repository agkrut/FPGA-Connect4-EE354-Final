`timescale 1ns / 1ps
module connect_four_top (
		MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS, // Disable the three memory chips
		ClkPort,              // the 100 MHz incoming clock signal
		Ld6, Ld5, Ld4, Ld3, Ld2, Ld1, Ld0, //LEDs to show selected location
		BtnL, BtnR, BtnC      // the Left, Right, and Center buttons
	);

	/* INPUT */
	// Clock & Reset I/O
	input		ClkPort;
	input BtnL, BtnR, BtnC;

	/* OUTPUT */
	// Control signals on Memory chips 	(to disable them)
	output 	MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS;
	assign {MemOE, MemWR, RamCS, FlashCS, QuadSpiFlashCS} = 5'b11111;

	output 	Ld0, Ld1, Ld2, Ld3, Ld4, Ld5, Ld6;

	wire		Reset, ClkPort;
	wire		board_clk, sys_clk;

	wire Left, Right, Select;
	wire [2:0] selected_col;

	reg [26:0]	DIV_CLK;
	BUFGP BUFGP1 (board_clk, ClkPort); 	

	/*
		Divide the clock
	*/
	always @(posedge board_clk, posedge Reset) 	
    begin							
        if (Reset)
		DIV_CLK <= 0;
        else
		DIV_CLK <= DIV_CLK + 1'b1;
    end

    assign	sys_clk = DIV_CLK[25]; // DIV_CLK[25] (~1.5Hz) = (100MHz / 2**26)

    assign Left = BtnL;
    assign Right = BtnR;
    assign Select = BtnC;
    connect_four connect_four_mod(.Left(Left), .Right(Right), .Select(Select), .Clk(sys_clk), .selected_col(selected_col));

    assign Ld6 = (selected_col == 0);
    assign Ld5 = (selected_col == 1);
    assign Ld4 = (selected_col == 2);
    assign Ld3 = (selected_col == 3);
    assign Ld2 = (selected_col == 4);
    assign Ld1 = (selected_col == 5);
    assign Ld0 = (selected_col == 6);
endmodule