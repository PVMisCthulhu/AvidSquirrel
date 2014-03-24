AvidSquirrel
============
Recommended installs to be able to compile this stuff: [MinGW32][MinGW32] (with C++ and MSYS) and [Git Bash][GitBash] or [Cygwin][Cygwin]

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

Scared that you can't debug on the command line? As it turns out, you can with GDB! (the following is same GDB input/output including passing command line parameters)

```bash
$ gdb avid
GNU gdb (GDB) 7.6.1
<...snip...>
Reading symbols from C:\Git\AvidSquirrel\avid.exe...done.
(gdb) break main
Breakpoint 1 at 0x4017f2: file main.cpp, line 9.
(gdb) info break
Num     Type           Disp Enb Address    What
1       breakpoint     keep y   0x004017f2 in main(int, char**) at main.cpp:9
(gdb) run -g 100
Starting program: C:\Git\AvidSquirrel/avid.exe -g 100
[New Thread 7304.0x2eac]

Breakpoint 1, main (argc=3, argv=0x2c0e20) at main.cpp:9
9               int amazingNumber = 7;
(gdb) next
10              Grombler* g = new Grombler;
(gdb) print amazingNumber
$1 = 7
(gdb) where
#0  main (argc=3, argv=0x2c0e20) at main.cpp:10
(gdb) quit
A debugging session is active.

        Inferior 1 [process 7304] will be killed.

Quit anyway? (y or n) y
```
[MinGW32]: http://www.mingw.org/
[GitBash]: http://git-scm.com/downloads
[Cygwin]: http://www.cygwin.com/