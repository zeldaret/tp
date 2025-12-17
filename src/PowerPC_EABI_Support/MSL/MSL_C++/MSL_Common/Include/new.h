#ifndef STD_NEW_H_
#define STD_NEW_H_

#include <stdio.h>

inline void* (operator new)(size_t, void *ptr) { return ptr; }

#endif
