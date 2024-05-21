CC=gcc

CFLAGS=-Wall -Werror -Wextra
MYUPPER_INC=myupper.h
MYUPPER_SRC=myupper.c
MYUPPER_OBJ=myupper.o

# compile program
$(MYUPPER_OBJ): $(MYUPPER_SRC) $(MYUPPER_INC)
	@echo Running target $@ ...
	$(CC) $(CFLAGS) -c $< -o $@
