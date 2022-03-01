
hello_world: hello_world.o ./utils/exit.o ./utils/print.o
	ld hello_world.o ./utils/exit.o ./utils/print.o -o hello_world

hello_world.o: hello_world.s
	as hello_world.s -o hello_world.o

./utils/print.o: ./utils/print.s
	as ./utils/print.s -o ./utils/print.o

./utils/exit.o: ./utils/exit.s
	as ./utils/exit.s -o ./utils/exit.o

clean: hello_world
	rm hello_world
	rm **/*.o
	rm *.o

run: hello_world
	./hello_world
