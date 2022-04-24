#ifndef MSL_COMMON_SRC_PRINTF_H
#define MSL_COMMON_SRC_PRINTF_H

#include "Runtime.PPCEABI.H/__va_arg.h"
#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

size_t sprintf(const char*, const char*, ...);
size_t snprintf(const char*, size_t, const char*, ...);
size_t vsnprintf(char*, size_t, const char*, va_list);
size_t vprintf(const char*, va_list);
size_t printf(const char*, ...);

#ifdef __cplusplus
}
#endif

#endif /* MSL_COMMON_SRC_PRINTF_H */
