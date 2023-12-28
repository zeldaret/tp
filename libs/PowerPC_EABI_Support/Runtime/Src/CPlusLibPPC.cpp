#include "CPlusLibPPC.h"

/* 80361C3C-80361C6C 35C57C 0030+00 0/0 0/0 4/4 .text            __copy */
extern "C" void* __copy(char *dest, char *src, size_t size) {
	char *p;
	
	if (dest && size) {
		p = dest;
		do {
			*p = *src;
			++p;
			++src;
			--size;
		} while (size);
	}
	
	return(dest);
}
