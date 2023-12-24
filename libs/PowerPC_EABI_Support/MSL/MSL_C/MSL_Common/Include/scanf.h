#ifndef MSL_COMMON_SRC_SCANF_H
#define MSL_COMMON_SRC_SCANF_H

#include "stddef.h"
#include "ansi_files.h"

#ifdef __cplusplus
extern "C" {
#endif

enum __ReadProcActions { __GetAChar, __UngetAChar, __TestForError };

enum __WReadProcActions { __GetAwChar, __UngetAwChar, __TestForwcsError };

typedef struct {
	char* CharStr;
	size_t MaxCharCount;
	size_t CharsWritten;
} __OutStrCtrl;

typedef struct {
	char* NextChar;
	int NullCharDetected;
} __InStrCtrl;

typedef struct {
	wchar_t* wCharStr;
	size_t MaxCharCount;
	size_t CharsWritten;
} __wOutStrCtrl;

typedef struct {
	wchar_t* wNextChar;
	int wNullCharDetected;
} __wInStrCtrl;

int __StringRead(void* str, int ch, int behavior);

#ifdef __cplusplus
}
#endif

#endif /* MSL_COMMON_SRC_SCANF_H */
