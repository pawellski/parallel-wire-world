a.out: main.o Game.o ReadFile.o WriteFile.o 
	gcc  main.o Game.o ReadFile.o WriteFile.o -fopenmp

main.o: main.c Game.h ReadFile.h WriteFile.h
	gcc -c main.c -fopenmp
	
Game.o: Game.c Game.h WriteFile.h 
	gcc -c Game.c -fopenmp

ReadFile.o: ReadFile.c ReadFile.h Game.h
	gcc -c ReadFile.c

WriteFile.o: WriteFile.c WriteFile.h Game.h
	gcc -c WriteFile.c

