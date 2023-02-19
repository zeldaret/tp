#ifndef INIT_H
#define INIT_H

#include "MSL_C/MSL_Common/Src/string.h"
#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

__declspec(section ".init") void* TRK_memset(void* dst, int val, size_t n);

#ifdef __cplusplus
}
#endif

#endif /* INIT_H */
