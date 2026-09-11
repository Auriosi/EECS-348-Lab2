# C Compiler
CXX = gcc

# Compiler Flags
CFLAGS= -c -Wall

all: program

program: main.o isEven.o
	$(CXX) main.o isEven.o -o program

main.o: main.c
	$(CXX) $(CFLAGS) main.c

isEven.o: isEven.c
	$(CXX) $(CFLAGS) isEven.c

clean:
	rm -rf *.o
	rm -f program
