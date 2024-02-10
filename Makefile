all: result.vcd

result.vcd: demultiplexer_1to8.vhdl demultiplexer_1to8_tb.vhdl 
	ghdl -a demultiplexer_1to8.vhdl
	ghdl -a demultiplexer_1to8_tb.vhdl
	ghdl -e demultiplexer_1to8
	ghdl -r demultiplexer_1to8 --vcd=result.vcd

clean:
	rm -rf result.vcd
