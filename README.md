A simple number guessing game written in Verilog, implemented using a Basys3 FPGA board.
The number to be guessed is a 2-digit hexadecimal number, and you have 10 chances to guess it correctly. Press the up button to generate the number. Then, using the first 8 switches (4 switches for the value of each digit in binary form) 
determine your number and press the center button to guess. By default the 7-segment displays the chances you have left and your guess. When the center button is pressed, the 7-segment displays "up" if your guess is smaller and "down"
if your guess is bigger. If you guessed correctly, a scrolling message will appear on the 7-segment display saying "congrats!". If you lost all chances, the scrolling message will instead say "Lost it was <correct_number>".
You can press the up button to restart again.
