#include "scanf.h"

/* 8036878C-8036881C 3630CC 0090+00 0/0 2/2 0/0 .text            __StringRead */
int __StringRead(void* pPtr, int ch, int act)
{
	char ret;
	__InStrCtrl* Iscp = (__InStrCtrl*)pPtr;

	switch (act) {
	case __GetAChar:
		ret = *(Iscp->NextChar);

		if (ret == '\0') {
			Iscp->NullCharDetected = 1;
			return -1;
		} else {
			Iscp->NextChar++;
			return (unsigned char)ret;
		}

	case __UngetAChar:
		if (Iscp->NullCharDetected == 0) {
			Iscp->NextChar--;
		} else {
			Iscp->NullCharDetected = 0;
		}

		return ch;

	case __TestForError:
		return Iscp->NullCharDetected;
	}

	return 0;
}
