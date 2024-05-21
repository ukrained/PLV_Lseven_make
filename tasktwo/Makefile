CC=gcc

CFLAGS=-Wall -Werror -Wextra
MAIN_INC=mymath.h myupper.h mylower.h
MAIN_SRC=main.c
MAIN_OBJ=main.o

TARGET_OBJS=main.o mymath.o mylower.o myupper.o
TARGET=main

all: LOAD_MAKEFILES $(TARGET)

# load or run other makefiles
LOAD_MAKEFILES:
ifeq ($(MK_INCLUDE_OTHERS), yes)
	@echo Include other makefiles
include Makefile_Math.mk
include Makefile_TUpper.mk
include Makefile_TLower.mk
else
	@echo Run other makefiles
	$(MAKE) -f Makefile_Math.mk
	$(MAKE) -f Makefile_TUpper.mk
	$(MAKE) -f Makefile_TLower.mk
endif

# compile the program
$(TARGET): $(TARGET_OBJS) $(MAIN_OBJ)
	@echo Running target $@ ...
	$(CC) $(CFLAGS) $^ -o $@

# compile main object for linking
$(MAIN_OBJ): $(MAIN_SRC) $(MAIN_INC)
	@echo Running target $@ ...
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	@echo Cleaning some trash over here ...
	rm -rf *.o $(TARGET)
