#ifndef MSL_COMMON_SRC_MBSTRING_H
#define MSL_COMMON_SRC_MBSTRING_H

#include "wchar_io.h"

#ifdef __cplusplus
extern "C" {
#endif

size_t wcstombs(char* dst, const wchar_t* src, size_t n);

#ifdef __cplusplus
}
#endif

#endif /* MSL_COMMON_SRC_MBSTRING_H */
