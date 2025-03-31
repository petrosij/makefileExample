CC=g++
CFLAGS=-c -Wall

all: run

run: hello.o main.o factorial.o
	$(CC) -o run hello.o main.o factorial.o

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

hello.o: hello.cpp
	$(CC) $(CFLAGS) hello.cpp

factorial.o: factorial.cpp
	$(CC) $(CFLAGS) factorial.cpp

clean:
	rm -rf *.o run
