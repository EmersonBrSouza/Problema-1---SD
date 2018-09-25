/*
 * main.c
 *
 *  MI - Sistemas Digitais
 *      Author: Diego Lourenço, Emerson Souza, Lokisley Oliveira
 */

#include <system.h>;
#include <io.h>;

#define START_4_BITS 0x28
#define START_8_BITS 0x38

#define CLEAR_DISPLAY 0x01
#define RETURN_HOME 0x02

#define CURSOR_OFF 0x0C
#define CURSOR_BLOCK 0x0D
#define CURSOR_BAR 0x0E;
#define CURSOR_BLINK 0x0F

#define MOVE_CURSOR_TO_LEFT 0x10
#define MOVE_CURSOR_TO_RIGHT 0x14

#define MOVE_MESSAGE_TO_LEFT 0x18
#define MOVE_MESSAGE_TO_RIGHT 0x1C

void startDisplay (int num_bits);
void writeMessage (char* text);
void sleep (int milliseconds);

int main () {
	startDisplay(START_8_BITS);
}

void startDisplay (int num_bits) {
	sleep(20);
	IOWR(0,0,num_bits);
	IOWR(0,0,CLEAR_DISPLAY);
}

void writeMessage (char* text) {

}

void sleep (int milliseconds) {
	int i = 0;

	while (i < milliseconds) { i++; }
}
