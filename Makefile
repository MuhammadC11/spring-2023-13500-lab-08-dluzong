
main: main main.o imageio.o funcs.o
	g++ -o main main.o imageio.o funcs.o

sample: sample.o imageio.o
	g++ -o sample sample.o imageio.o

main.o: main.cpp funcs.h imageio.h

funcs.o: funcs.cpp funcs.h	

sample.o: sample.cpp imageio.h

imageio.o: imageio.cpp imageio.h


clean:
	rm -f sample.o imageio.o main.o funcs.o taskA.pgm taskB.pgm taskC.pgm taskD.pgm taskE.pgm taskF.pgm main a.out