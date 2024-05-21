CC=gcc

CFLAGS=-Wall -Werror -Wextra
MYLOWER_INC=mylower.h
MYLOWER_SRC=mylower.c
MYLOWER_OBJ=mylower.o

# compile program
$(MYLOWER_OBJ): $(MYLOWER_SRC) $(MYLOWER_INC)
	@echo Running target $@ ...
	$(CC) $(CFLAGS) -c $< -o $@