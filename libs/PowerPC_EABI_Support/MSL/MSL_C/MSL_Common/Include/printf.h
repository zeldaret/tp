#ifndef _MSL_COMMON_PRINTF_H
#define _MSL_COMMON_PRINTF_H

#include "ansi_files.h"
#include "__va_arg.h"

#ifdef __cplusplus
extern "C" {
#endif

int fprintf(FILE* stream, const char* format, ...);
int printf(const char* format, ...);
int sprintf(char* s, const char* format, ...);
int snprintf(char* s, size_t n, const char* format, ...);
int vsnprintf(char* s, size_t n, const char* format, va_list arg);
int vprintf(const char* format, va_list arg);

#ifdef __cplusplus
}
#endif

#endif /* _MSL_COMMON_PRINTF_H */
