// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "mirror.h"

int main(void)
{
	char *string = calloc(STR_SIZE, sizeof(char));

	free(string);
	
	return 0;
}
