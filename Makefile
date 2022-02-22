all: main
main: main.o sacak-lcp.o 
		gcc main.o sacak-lcp.o -lm -o main
main.o: main.c sacak-lcp.h 
		gcc -Wall -Werror -c main.c
sacak-lcp.o: sacak-lcp.c sacak-lcp.h
		gcc -Wall -Werror -c sacak-lcp.c
