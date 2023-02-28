CFLAGS=-std=c99 -Wall
CC=gcc

stats: stats.o main.o
	$(CC) $(CFLAGS) stats.o main.o -o stats

main.o: main.c stats.h
	$(CC) $(CFLAGS) -c main.c

stats.o: stats.h stats.c
	$(CC) $(CFLAGS) -c stats.c

clean:
	rm -f stats *.o
