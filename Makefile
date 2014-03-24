p1: Grombler.o main.o
	g++ -Wall Grombler.o main.o -o avid

Grombler.o: Grombler.cpp Grombler.h
	g++ -Wall -c Grombler.cpp

main.o: main.cpp Grombler.h
	g++ -Wall -c main.cpp

clean:
	\rm *.o 