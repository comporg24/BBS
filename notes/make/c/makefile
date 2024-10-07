

all: math.o test.o
		cc -o test math.o test.o
		

math.o: math.c 
			cc -c math.c -fverbose-asm -fno-dwarf2-cfi-asm -fno-stack-protector

test.o: test.c
			cc -c test.c
clean:
			rm *.o
