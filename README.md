# PROJECT 'MAKE TOOLS'

## Description
This projects demonstrates Make-tools functionality. Consists of two directories - ```taskone``` and ```tasktwo```.
```taskone``` contains simple C-project and 3 Makefiles of different complexity, building same program.
```tasktwo``` contains simple C-project and 4 Makefiles. 3 of them have targets for building specific C files. Last
one - ```Makefile``` - used to build whole program using previous 3 Makefiles. To this Makefile you may provide flag
MK_INCLUDE_OTHERS - it says how Makefile should interact with othe makefiles (include them or run separately).


## How to use
After you get the sources on your machine, you may try this program on your system. Follow instructions below.

#### Step 1. Get into the project directory and choose subtask:
```
cd project/task[one|two]
```
#### Step 2. Depending which folder you choosed, run make to build your program:
```
[MK_INCLUDE_OTHERS=yes] make -f <makefile>
```
#### Step 3. Use program:
```
./main
```
#### Step 4. After all, in case you need to uninstall this program, run the command:
```
make clean
```

> [!NOTE]
> In the step 2 variable ```MK_INCLUDE_OTHERS=yes``` supported only by Makefile from tasktwo.

> [!IMPORTANT]
> You may use sample script ```commands.sh``` to run through mjor flows of both tasks.

## For maintainers
When making changes in the project, do not forget to update the README.md.

## Out contacts
In case of emergency you may contact us via:
> E-mail: echo@laptop.com
