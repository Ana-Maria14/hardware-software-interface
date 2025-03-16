// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>

#include "iterate.h"
#include "array.h"

void print_chars(void)
{	
	// 5 elemente de 4 biti
	unsigned char *char_ptr = v;
	for (int i = 0; i < 20; i++) {
		printf("%p -> 0x%x\n", char_ptr, *char_ptr);
		char_ptr++;
	}
	printf("-------------------------------\n");
}

void print_shorts(void)
{
	unsigned short *short_ptr = v;
	for (int i = 0; i < 10; i++) {
		printf("%p -> 0x%x\n", short_ptr, *short_ptr);
		short_ptr++;
	}
	printf("-------------------------------\n");
}

void print_ints(void)
{	
	unsigned int *int_ptr = v;
	for (int i = 0; i < 5; i++) {
		printf("%p -> 0x%x\n", int_ptr, *int_ptr);
		int_ptr++;
	}
	printf("-------------------------------\n");
}
