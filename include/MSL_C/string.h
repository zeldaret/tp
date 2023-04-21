#ifndef MSL_STRING_H_
#define MSL_STRING_H_

#include "MSL_C/MSL_Common/Src/stddef.h"


// TODO: move to MSL_C/
extern "C" {
void memcpy(void*, const void*, size_t);
void* memset(void* dest, int ch, size_t count);
char* strrchr(const char* s, int c);
char* strchr(const char* s, int c);
int strncmp(const char* s1, const char* s2, size_t n);
int strcmp(const char* s1, const char* s2);
int stricmp(const char*, const char*);
char* strcat(char* dest, const char* source);
char* strncpy(char* dest, const char* source, size_t n);
char* strcpy(char* dest, const char* source);
size_t strlen(const char* s);
int tolower(int);
}

#endif