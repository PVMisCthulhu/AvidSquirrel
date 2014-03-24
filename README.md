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