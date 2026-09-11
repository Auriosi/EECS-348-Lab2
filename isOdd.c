#include "isOdd.h"
#include <stdio.h>

int isOdd(int number) {
	if (number % 2 != 0) {
		printf("%d is odd.\n", number);
	}
	return 0;
}
