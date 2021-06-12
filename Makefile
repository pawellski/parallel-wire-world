a.out: main.o Game.o ReadFile.o WriteFile.o
	gcc  main.o Game.o ReadFile.o WriteFile.o

main.o: main.c Game.h ReadFile.h WriteFile.h
	gcc -c main.c
	
Game.o: Game.c Game.h WriteFile.h
	gcc -c -fopenmp Game.c

ReadFile.o: ReadFile.c ReadFile.h Game.h
	gcc -c ReadFile.c

WriteFile.o: WriteFile.c WriteFile.h Game.h
	gcc -c WriteFile.c
