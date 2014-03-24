AvidSquirrel
============
Compiling a single file into an executable on the command line (where exec_name is the desired name of the executable)

```$ g++ main.cpp -o exec_name```

Compiling multiple files (including headers) into an executable on the command line, showing warnings

```$ g++ -Wall main.cpp Grombler.cpp -o exec_name```

Running the commands in Makefile with MinGW32-Make

```$ mingw32-make```

Running 'clean' from Makefile to delete .o files if desired

```$ mingw32-make clean```

Note that MinGW32-Make just runs g++ commands when you use the Makefile, so you could accomplish the same thing typing the commands in on the command line, like this

```bash
g++ -Wall -c -g Grombler.cpp
g++ -Wall -c -g main.cpp
g++ -Wall -g Grombler.o main.o -o exec_name
```