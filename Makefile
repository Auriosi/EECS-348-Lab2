# C Compiler
CXX = gcc

# Compiler Flags
CFLAGS= -c -Wall

all: program

program: main.o isEven.o isOdd.o
	$(CXX) main.o isEven.o isOdd.o -o program

main.o: main.c
	$(CXX) $(CFLAGS) main.c

isEven.o: isEven.c
	$(CXX) $(CFLAGS) isEven.c

isOdd.o: isOdd.c
	$(CXX) $(CFLAGS) isOdd.c

clean:
	rm -rf *.o
	rm -f program
