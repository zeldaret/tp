#ifndef MSL_STRING_H_
#define MSL_STRING_H_

#include "dolphin/types.h"

extern "C" {
void memcpy(void*, const void*, s32);
void* memset(void* dest, int ch, u32 count);
char* strrchr(const char* s, int c);
char* strchr(const char* s, int c);
int strncmp(const char* s1, const char* s2, u32 n);
int strcmp(const char* s1, const char* s2);
int stricmp(const char*, const char*);
char* strcat(char* dest, const char* source);
char* strncpy(char* dest, const char* source, u32 n);
char* strcpy(char* dest, const char* source);
u32 strlen(const char* s);
int tolower(int);
int sprintf(char*, const char*, ...);
int printf(const char*, ...);
int snprintf(char*, u32, const char*, ...);
}

#endif