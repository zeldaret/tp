#ifndef STD_CSTRING_H_
#define STD_CSTRING_H_

#include "string.h"

namespace std {
using ::strlen;
using ::strcpy;

inline char* strchr(char* str, int c) {
    return ::strchr(str, c);
}
};  // namespace std

#endif
