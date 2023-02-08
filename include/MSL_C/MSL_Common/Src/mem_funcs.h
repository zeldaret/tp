#ifndef MSL_COMMON_SRC_MEM_FUNCS_H
#define MSL_COMMON_SRC_MEM_FUNCS_H

#include "MSL_C/MSL_Common/Src/stddef.h"

#ifdef __cplusplus
extern "C" {
#endif

void __copy_longs_rev_unaligned(void* dst, const void* src, size_t n);
void __copy_longs_unaligned(void* dst, const void* src, size_t n);
void __copy_longs_rev_aligned(void* dst, const void* src, size_t n);
void __copy_longs_aligned(void* dst, const void* src, size_t n);

#ifdef __cplusplus
}
#endif

#endif /* MSL_COMMON_SRC_MEM_FUNCS_H */
