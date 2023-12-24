#ifndef MSL_COMMON_SRC_CHAR_IO_H
#define MSL_COMMON_SRC_CHAR_IO_H

#include "ansi_files.h"

#ifdef __cplusplus
extern "C" {
#endif

int fputs(const char* str, FILE* stream);
int __put_char(int c, FILE* stream);

#ifdef __cplusplus
}
#endif

#endif /* MSL_COMMON_SRC_CHAR_IO_H */
