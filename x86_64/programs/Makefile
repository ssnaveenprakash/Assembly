
hello_world.out: hello_world.o ./utils/exit.o ./utils/print.o ./factorial.o 
	ld hello_world.o ./factorial.o ./utils/exit.o ./utils/print.o -o hello_world.out

hello_world.o: hello_world.s
	as hello_world.s -o hello_world.o

./factorial.o: factorial.s
	as factorial.s -o factorial.o 

./utils/print.o: ./utils/print.s
	as ./utils/print.s -o ./utils/print.o

./utils/exit.o: ./utils/exit.s
	as ./utils/exit.s -o ./utils/exit.o

clean: 
	rm -rf **/*.o
	rm -rf *.o
	rm -rf *.out

run: hello_world.out
	clear
	./hello_world.out
