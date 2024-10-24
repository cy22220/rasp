keydisp: gpio.o lcd.o keydisp.o
	arm-linux-gnueabihf-gcc -o keydisp keydisp.o lcd.o gpio.o

keydisp.o:keydisp.c
	arm-linux-gnueabihf-gcc -c keydisp.c

lcd.o:lcd.c
	arm-linux-gnueabihf-gcc -c lcd.c

gpio.o:gpio.c
	arm-linux-gnueabihf-gcc -c gpio.c

clean:
	rm -rf *.o

fclean: clean
	rm -rf keydisp
