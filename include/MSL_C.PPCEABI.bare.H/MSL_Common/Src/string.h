#ifndef MSL_COMMON_SRC_STRING_H
#define MSL_COMMON_SRC_STRING_H

#include "dolphin/types.h"

extern "C" {
void* memcpy(void*, const void*, s32);
void* memset(void*, int, u32);
char* strrchr(const char*, int);
char* strchr(const char*, int);
int strncmp(const char*, const char*, u32);
int strcmp(const char*, const char*);
char* strcat(char*, const char*);
char* strncpy(char*, const char*, u32);
char* strcpy(char*, const char*);
u32 strlen(const char*);

int stricmp(const char*, const char*);
};

#endif /* MSL_COMMON_SRC_STRING_H */
