#ifndef _MSL_COMMON_WCHAR_IO_H
#define _MSL_COMMON_WCHAR_IO_H

#include "ansi_files.h"

#ifndef __cplusplus
typedef unsigned short wchar_t;
#endif

int fwide(FILE* file, int mode);

#endif /* _MSL_COMMON_WCHAR_IO_H */
