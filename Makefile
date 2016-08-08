all: main

GLIB = `pkg-config --cflags --libs glib-2.0`

SearchTreeNode.o: SearchTreeNode.c
	gcc -c SearchTreeNode.c $(GLIB) -o SearchTreeNode.o

ClockPuzzle.o: ClockPuzzle.c
	gcc -c ClockPuzzle.c $(GLIB) -o ClockPuzzle.o

main: ClockPuzzle.o SearchTreeNode.o main.c
	gcc ClockPuzzle.o SearchTreeNode.o main.c $(GLIB) -o main

clean:
	rm *.o main