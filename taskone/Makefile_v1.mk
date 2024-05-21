CC=gcc

CFLAGS=-Wall -Werror -Wextra
INCLUDES=mymath.h mylower.h myupper.h
SOURCES=mymath.c myupper.c mylower.c main.c
TARGET=main

.phony: clean

all: $(TARGET)

# compile program
$(TARGET): $(SOURCES) $(INCLUDES)
	@echo Running target $(TARGET) ...
	$(CC) $(SOURCES) $(INCLUDES) $(CFLAGS) -o $(TARGET)

clean:
	@echo Cleaning some trash over here ...
	rm -rf *.o $(TARGET)
