#include "extras.h"
#include "ctype.h"

/* 8036CA94-8036CB20 3673D4 008C+00 0/0 1/1 0/0 .text            stricmp */
int stricmp(const char* str1, const char* str2) {
	char a_var;
	char b_var;

	do {
		b_var = _tolower(*str1++);
		a_var = _tolower(*str2++);

		if (b_var < a_var) {
			return -1;
		}
		if (b_var > a_var) {
			return 1;
		}
	} while (b_var != 0);

	return 0;
}

/* 8036CA74-8036CA94 3673B4 0020+00 0/0 1/1 0/0 .text            strnicmp */
int strnicmp(const char* str1, const char* str2, int n) {
    return __msl_strnicmp(str1, str2, n);
}
