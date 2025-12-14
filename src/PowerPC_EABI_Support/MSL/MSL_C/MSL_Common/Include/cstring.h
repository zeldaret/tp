#ifndef STD_CSTRING_H_
#define STD_CSTRING_H_

#include "string.h"

namespace std {
using ::strlen;
using ::strcpy;
using ::wcslen;
using ::strncpy;
using ::strcmp;
using ::strncmp;
using ::strcat;

using ::memset;
using ::memcpy;

inline char* strchr(char* str, int c) {
    return ::strchr(str, c);
}
};  // namespace std

#endif
