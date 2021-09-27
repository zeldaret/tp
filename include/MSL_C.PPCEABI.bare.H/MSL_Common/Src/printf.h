#ifndef MSL_COMMON_SRC_PRINTF_H
#define MSL_COMMON_SRC_PRINTF_H

#include "dolphin/types.h"

struct __va_list_struct;

extern "C" size_t sprintf(const char*, const char*, ...);
extern "C" size_t snprintf(const char*, size_t, const char*, ...);
extern "C" size_t vsnprintf(char*, size_t, const char*, __va_list_struct*);
extern "C" size_t vprintf(const char*, __va_list_struct*);
extern "C" size_t printf(const char*, ...);

#endif /* MSL_COMMON_SRC_PRINTF_H */
