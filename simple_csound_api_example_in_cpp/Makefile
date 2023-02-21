main: main.o
	g++ main.o -o main -F/Library/Frameworks -framework CsoundLib64

main.o: main.cpp
	g++ -c main.cpp -F/Library/Frameworks

clean:
	rm *.o main
