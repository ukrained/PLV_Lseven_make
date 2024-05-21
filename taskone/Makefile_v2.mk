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

ALL_OBJS=$(MATH_LIB_OBJ) $(TEXT_LIB_UPPER_OBJ) $(TEXT_LIB_LOWER_OBJ) $(TARGET_OBJ)

TARGET=main

.phony: clean

all: $(TARGET)

# compile program
$(TARGET): $(ALL_OBJS) $(INCLUDES)
	@echo Running target $(TARGET) ...
	$(CC) $(ALL_OBJS) $(INCLUDES) $(CFLAGS) -o $(TARGET)

# compile main object
$(TARGET_OBJ): $(TARGET_SRC) $(INCLUDES)
	@echo Running object $(TARGET_OBJ) ...
	$(CC) $(CFLAGS) -c $(TARGET_SRC) -o $(TARGET_OBJ)

# compile math library
$(MATH_LIB_OBJ): $(MATH_LIB_SRC) $(INCLUDES)
	@echo Running object $(MATH_LIB_OBJ) ...
	$(CC) $(CFLAGS) -c $(MATH_LIB_SRC) -o $(MATH_LIB_OBJ)

# compile text upper library
$(TEXT_LIB_UPPER_OBJ): $(TEXT_LIB_UPPER_SRC) $(INCLUDES)
	@echo Running object $(TEXT_LIB_UPPER_OBJ) ...
	$(CC) $(CFLAGS) -c $(TEXT_LIB_UPPER_SRC) -o $(TEXT_LIB_UPPER_OBJ)

# compile text lower library
$(TEXT_LIB_LOWER_OBJ): $(TEXT_LIB_LOWER_SRC) $(INCLUDES)
	@echo Running object $(TEXT_LIB_LOWER_OBJ) ...
	$(CC) $(CFLAGS) -c $(TEXT_LIB_LOWER_SRC) -o $(TEXT_LIB_LOWER_OBJ)

clean:
	@echo Cleaning some trash over here ...
	rm -rf *.o $(TARGET)
