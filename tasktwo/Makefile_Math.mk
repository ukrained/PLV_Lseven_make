CC=gcc

CFLAGS=-Wall -Werror -Wextra
MYMATH_INC=mymath.h
MYMATH_SRC=mymath.c
MYMATH_OBJ=mymath.o

# compile program
$(MYMATH_OBJ): $(MYMATH_SRC) $(MYMATH_INC)
	@echo Running target $@ ...
	$(CC) $(CFLAGS) -c $< -o $@
