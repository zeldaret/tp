#ifndef MSL_COMMON_SRC_WCHAR_IO_H
#define MSL_COMMON_SRC_WCHAR_IO_H

#include "MSL_C/MSL_Common/Src/ansi_files.h"

typedef unsigned short wchar_t;

int fwide(FILE* file, int mode);

#endif /* MSL_COMMON_SRC_WCHAR_IO_H */
