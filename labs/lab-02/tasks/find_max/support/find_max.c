// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "find_max.h"

void *find_max(void *arr, int n, size_t element_size,
				int (*compare)(const void *, const void *))
{
	void *max = arr;
	for (int i = 0; i < n; i++) {
		arr++;
		if (compare(max, arr) < 0) {
			arr = current_element;
		} 
	}
	return max;
}

int compare(const void *a, const void *b)
{
	int *x = (int *)a;
	int *y = (int *)b;
	return *x - *y;
}
