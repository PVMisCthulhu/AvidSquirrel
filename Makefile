TARGET = avid_squirrel
SOURCES = $(shell echo *.cpp)
HEADERS = $(shell echo *.h)
OBJECTS = $(SOURCES:.cpp=.o)
CC = g++
DEBUG = -g
FLAGS = -Wall
BINDIR = $(DESTDIR)/bin

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(FLAGS) $(DEBUG) -o $(TARGET) $(OBJECTS)

.PHONY: clean
clean:
	\rm *.o 