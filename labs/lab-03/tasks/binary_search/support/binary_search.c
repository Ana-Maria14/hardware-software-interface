// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>

#include "binary_search.h"

int binary_search(int *v, int len, int dest)
{
	int start = 0;
	int end = len - 1;
	int middle;

cont:
	middle = (end + start) / 2;
	if (v[middle] == dest)
		goto returneaza;
		if (v[middle] < dest)
		goto bigger;

	end = middle - 1;
	goto cont;

bigger:
	start = middle + 1;
	goto cont;

returneaza:
	return middle;
}
