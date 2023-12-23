#ifndef MSL_COMMON_SRC_PRINTF_H
#define MSL_COMMON_SRC_PRINTF_H

#include "MSL_C/MSL_Common/Src/ansi_files.h"
#include "Runtime.PPCEABI.H/__va_arg.h"

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

#endif /* MSL_COMMON_SRC_PRINTF_H */
