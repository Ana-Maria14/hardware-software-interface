// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "mirror.h"

void mirror(char *s) {
	char aux;
	int len = length(s);
	for(int i = 0; i < len / 2; i++) {
		aux = *(s + i);
		*(s + i) = *(s + len -i - 1);
		*(s + len - i - 1) = aux;
	}
}

int length(const char *string) {
	int length = 0, i = 0;
	while (*(string + i)) {
		length++;
		i++;
	}
	return length;
}
