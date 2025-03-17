// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>

#include "vector_max.h"

int vector_max(int *v, int len)
{
	int max;
	unsigned int i;

	i = 0;
	max = v[i];

cont:
	if (max >= v[i])
		goto smaller;
		max = v[i];

smaller:
	i++;
	if (i < len)
		goto cont;
	
	return max;

}
