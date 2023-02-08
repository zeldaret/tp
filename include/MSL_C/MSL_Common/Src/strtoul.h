#ifndef MSL_COMMON_SRC_STRTOUL_H
#define MSL_COMMON_SRC_STRTOUL_H

#ifdef __cplusplus
extern "C" {
#endif

long strtol(const char* str, char** endptr, int base);
unsigned long strtoul(const char* str, char** endptr, int base);
unsigned long __strtoul(const char* str, char** endptr, int base);

#ifdef __cplusplus
}
#endif

#endif /* MSL_COMMON_SRC_STRTOUL_H */
