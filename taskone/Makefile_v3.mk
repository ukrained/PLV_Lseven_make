CC=gcc

CFLAGS=-Wall -Werror -Wextra

INCLUDES=mymath.h mylower.h myupper.h

MATH_LIB_SRC=mymath.c
TEXT_LIB_UPPER_SRC=myupper.c
TEXT_LIB_LOWER_SRC=mylower.c
TARGET_SRC=main.c

MATH_LIB_OBJ=mymath.o
TEXT_LIB_UPPER_OBJ=myupper.o
TEXT_LIB_LOWER_OBJ=mylower.o
TARGET_OBJ=main.o

TARGET=main

.phony: clean

all: $(TARGET)

# compile program
$(TARGET): $(MATH_LIB_OBJ) $(TEXT_LIB_UPPER_OBJ) $(TEXT_LIB_LOWER_OBJ) $(TARGET_OBJ) $(INCLUDES)
	@echo Running target $@ ...
	$(CC) $^ $(CFLAGS) -o $@

# compile main object
$(TARGET_OBJ): $(TARGET_SRC) $(INCLUDES)
	@echo Running object $@ ...
	$(CC) $(CFLAGS) -c $< -o $@

# compile math library
$(MATH_LIB_OBJ): $(MATH_LIB_SRC) $(INCLUDES)
	@echo Running object $@ ...
	$(CC) $(CFLAGS) -c $< -o $@

# compile text upper library
$(TEXT_LIB_UPPER_OBJ): $(TEXT_LIB_UPPER_SRC) $(INCLUDES)
	@echo Running object $@ ...
	$(CC) $(CFLAGS) -c $< -o $@

# compile text lower library
$(TEXT_LIB_LOWER_OBJ): $(TEXT_LIB_LOWER_SRC) $(INCLUDES)
	@echo Running object $@ ...
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	@echo Cleaning some trash over here ...
	rm -rf *.o $(TARGET)
