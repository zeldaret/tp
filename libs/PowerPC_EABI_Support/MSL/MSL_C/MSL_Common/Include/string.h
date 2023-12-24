#ifndef MSL_COMMON_SRC_STRING_H
#define MSL_COMMON_SRC_STRING_H

#include "stddef.h"

#ifdef __cplusplus
extern "C" {
#endif

void* memcpy(void* dst, const void* src, size_t n);
void* memset(void* dst, int val, size_t n);

char* strrchr(const char* str, int c);
char* strchr(const char* str, int c);
int strncmp(const char* str1, const char* str2, size_t n);
int strcmp(const char* str1, const char* str2);
char* strcat(char* dst, const char* src);
char* strncpy(char* dst, const char* src, size_t n);
char* strcpy(char* dst, const char* src);
size_t strlen(const char* str);

#ifdef __cplusplus
}
#endif

#endif /* MSL_COMMON_SRC_STRING_H */
