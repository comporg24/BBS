

#all:
#		cl65 --feature string_escapes -t sim6502 -o hi.prg hi.s sim6502.lib
#		cl65 -t sim6502 -o hi.prg hi.s sim6502.lib

build:
		cc65 -O -t sim6502 putchar.c
		ca65 putchar.s
		ca65 hi.s
		ld65 -t sim6502 -o hi.prg hi.o putchar.o sim6502.lib
#		ca65 hi.s -o hi.o
#		ld65 -t sim6502 -o hi.prg hi.o sim6502.lib

test:
		sim65 hi.prg

clean:
		rm *.o
		rm putchar.s
		rm hi.prg

