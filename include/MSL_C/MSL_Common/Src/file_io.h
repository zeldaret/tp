#ifndef MSL_COMMON_SRC_FILE_IO_H
#define MSL_COMMON_SRC_FILE_IO_H

#include "MSL_C/MSL_Common/Src/ansi_files.h"

#ifdef __cplusplus
extern "C" {
#endif

int __msl_strnicmp(const char* str1, const char* str2, size_t n);
int fflush(FILE* file);
int fclose(FILE* file);

#ifdef __cplusplus
}
#endif

#endif /* MSL_COMMON_SRC_FILE_IO_H */
