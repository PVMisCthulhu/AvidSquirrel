TARGET = avid_squirrel
SOURCES = $(shell echo *.cpp)
HEADERS = $(shell echo *.h)
OBJECTS = $(SOURCES:.cpp=.o)
CC = g++
DEBUG = -g
FLAGS = -Wall $(DEBUG)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(FLAGS) -o $(TARGET) $(OBJECTS)

%.o:%.cpp
	$(CC) $(FLAGS) -c $+

.PHONY: clean
clean:
	\rm *.o 
