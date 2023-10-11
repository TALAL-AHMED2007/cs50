CC = gcc

CFLAGS = -std=c11 -Wall -Wextra -pedantic

LIBS = -lcs50



# Get a list of all .c files in the current directory

SRCS = $(wildcard *.c)



# Generate the corresponding list of target executables (remove the .c extension)

TARGETS = $(patsubst %.c,%,$(SRCS))



all: $(TARGETS)



%: %.c

	$(CC) $(CFLAGS) -o $@ $< $(LIBS)



.PHONY: clean



clean:

	rm -f $(TARGETS)

