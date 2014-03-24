OBJS = Grombler.o main.o
CC = g++
DEBUG = -g
CFLAGS = -Wall -c $(DEBUG)
LFLAGS = -Wall $(DEBUG)

p1: $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o avid

Grombler.o: Grombler.cpp Grombler.h
	$(CC) $(CFLAGS) Grombler.cpp

main.o: main.cpp Grombler.h
	$(CC) $(CFLAGS) main.cpp

clean:
	\rm *.o 