#ifndef MSL_COMMON_SRC_MEM_H
#define MSL_COMMON_SRC_MEM_H

#include "stddef.h"

#ifdef __cplusplus
extern "C" {
#endif

int memcmp(const void* lhs, const void* rhs, size_t count);
void* __memrchr(const void* ptr, int ch, size_t count);
void* memchr(const void* ptr, int ch, size_t count);
void* memmove(void* dst, const void* src, size_t n);

#ifdef __cplusplus
}
#endif

#endif /* MSL_COMMON_SRC_MEM_H */
