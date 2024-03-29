SOURCES = $(shell ls src/*.c)
TEMP = $(subst src/, obj/, $(SOURCES))
OBJECTS = $(subst .c,.o, $(TEMP))
CFLAGS = -Wall -ansi -std=gnu99 -g

all: aes

aes: $(OBJECTS)
	$(CC) $^ -o $@

obj/%.o: src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) aes
