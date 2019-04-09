# ee354-Final
EE354 Final Project: Connect-4 designed for Nexys 3 FPGA played on a monitor via FPGA

### Board Representation
- Declared a 6 x 7 two dimensional array of registers to represent the board
- Each register in the 2D array is two-bits wide
- [0 0] = no piece occupies space
- [0 1] = red piece occupies space
- [1 0] = black piece occupies space

### State Tracking
- Declared a 1-bit wide register to track the current player who is moving
- [0] = player 1
- [1] = player 2
- Declared an array of 6 3-bit registers to store the number of discs in a column
- [0 0 0] - zero discs in column currently
- [1 0 1] - column is full (no more discs can be added)
- Declared a register col to track the position of the disc while a user is
choosing where to put it

### IO/Buttons
- RESET will reset our program to initial state and wait for player 1 to move
- BTNL will move the disc to the left
- BTNR will move the disc to the right
- BC will select the disc to be dropped into the column it is currently over