module snes_controller(
				input Clk,
				input data_in_snes,
				//input start,
				input reset,
				output reg [11:0]buttons_snes,
				output finish,
				//output idle,
				output latch_snes,
				output clk_snes,
				output [5:0] snes_state
				);
							  //LATCH______CLOCK_____FINISH____IDLE______STATE
localparam   IDLE  =  10'b0_____________1_________0________1______000001;
localparam   STATE1=  10'b1_____________1_________0________0______000011;
localparam   STATE2=  10'b0_____________1_________0________0______000111;
localparam   STATE3=  10'b0_____________0_________0________0______001111;
localparam   STATE4=  10'b0_____________1_________0________0______011111;
localparam   FINISH=  10'b0_____________1_________1________0______111111;
							//numero de clocks del relog base de 50 Mhz
localparam   TIME6u	= 10'd300;
localparam   TIME12u	= 10'd600;


reg [9:0]state=IDLE;
reg [9:0]delay=TIME12u;
reg [3:0]num_clks=4'd0;
reg [14:0]buttons_temp=15'd0;
wire pre_finish=(state[9:0]==STATE4)?1'b1:0;
assign latch_snes=state[9];
assign clk_snes=state[8];
assign finish=state[7];
assign snes_state = state[5:0];
//assign idle=state[6];


always@(posedge pre_finish)
begin
	buttons_snes[11:0]<=buttons_temp[11:0];
end

always@(negedge clk_snes)
begin							
	buttons_temp[14:0]<={data_in_snes,buttons_temp[14:1]};
end

always@(posedge Clk, posedge reset)
begin
if(reset)
begin
	state[9:0] <= IDLE;
end
else
begin
	case(state[9:0])
	IDLE  :begin
				//state[9:0]<=IDLE;
				delay[9:0]<=TIME12u;
				num_clks[3:0]<=4'd0;
				state[9:0]<=STATE1;
			 end
   STATE1:begin
				state[9:0]<=STATE1;
				delay[9:0]<=delay[9:0]-1'b1;
				num_clks[3:0]<=4'd1;
				if(delay[9:0]==10'd0)
				begin
					delay[9:0]<=TIME6u;
					state[9:0]<=STATE2;
				end
			 end
	STATE2:begin
				state[9:0]<=STATE2;
				delay[9:0]<=delay[9:0]-1'b1;
				num_clks[3:0]<=num_clks[3:0];
				if(delay[9:0]==10'd0)
				begin
					delay[9:0]<=TIME6u;
					state[9:0]<=STATE3;
				end
			 end
   STATE3:begin
				state[9:0]<=STATE3;
				delay[9:0]<=delay[9:0]-1'b1;
				num_clks[3:0]<=num_clks[3:0];
				if(delay[9:0]==10'd0)
				begin
					num_clks[3:0]<=num_clks[3:0]+1'b1;
					if(num_clks[3:0]<4'd15)
					begin	
						delay[9:0]<=TIME6u;
						state[9:0]<=STATE2;
					end
					else
					begin
						delay[9:0]<=TIME12u;
						state[9:0]<=STATE4;
					end
				end
			 end
   STATE4:begin
				state[9:0]<=STATE4;
				delay[9:0]<=delay[9:0]-1'b1;
				num_clks[3:0]<=4'd0;
				if(delay[9:0]==10'd0)
				begin
					state[9:0]<=FINISH;
				end
			 end
   FINISH:begin
				state[9:0]<=IDLE;
				delay[9:0]<=10'd0;
				num_clks[3:0]<=4'd0;
			 end
	default:begin
				state[9:0]<=IDLE;
				delay[9:0]<=10'd0;
				num_clks[3:0]<=4'd0;
			 end
	endcase
end
end


endmodule