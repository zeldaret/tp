#ifndef MSL_COMMON_SRC_DIRECT_IO_H
#define MSL_COMMON_SRC_DIRECT_IO_H

#include "MSL_C/MSL_Common/Src/ansi_files.h"

#ifdef __cplusplus
extern "C" {
#endif

size_t __fwrite(const void* buffer, size_t size, size_t count, FILE* stream);
size_t fwrite(const void* buffer, size_t size, size_t count, FILE* stream);

#ifdef __cplusplus
}
#endif

#endif /* MSL_COMMON_SRC_DIRECT_IO_H */
