// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "delete_first.h"

char *delete_first(char *s, char *pattern)
{
	char* string = strstr(s, pattern);
	if (!string)
		return s;
	char *result = malloc(strlen(s) + 1 - strlen(pattern));
	strncpy(result, s, string - s);
	strcpy(result + (string - s), string+ strlen(pattern));

	return result;
}
