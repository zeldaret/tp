#ifndef _MSL_COMMON_STRING_H
#define _MSL_COMMON_STRING_H

#include "stddef.h"
#include "extras.h"

#ifdef __cplusplus
// TODO: std namespace should be used for C++, but it breaks asm compatibility afaict.
// try to fix later
// namespace std {
extern "C" {
#endif

void* memcpy(void* dst, const void* src, size_t n);
void* memset(void* dst, int val, size_t n);
int memcmp(const void* lhs, const void* rhs, size_t count);
void* __memrchr(const void* ptr, int ch, size_t count);
void* memchr(const void* ptr, int ch, size_t count);
void* memmove(void* dst, const void* src, size_t n);
char* strrchr(const char* str, int c);
char* strchr(const char* str, int c);
int strncmp(const char* str1, const char* str2, size_t n);
int strcmp(const char* str1, const char* str2);
char* strcat(char* dst, const char* src);
char* strncpy(char* dst, const char* src, size_t n);
char* strcpy(char* dst, const char* src);
size_t strlen(const char* str);

#ifdef __cplusplus
// }
}
#endif

#endif /* _MSL_COMMON_STRING_H */
