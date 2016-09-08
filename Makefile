#Makefile

all: sum_test

sum_test: main.o sum.o
	g++ -o sum_test main.o sum.o

main.o: sum.h main.cpp
	g++ -c -o main.o main.cpp

sum.o: sum.h sum.cpp
	g++ -c -o sum.o sum.cpp

clean:
	rm -f sum_test
	rm -f *.o

