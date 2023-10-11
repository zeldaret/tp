#ifndef _STDDEF_H_
#define _STDDEF_H_

#ifdef __cplusplus
extern "C" {
#endif

#if defined __INTELLISENSE__
typedef unsigned int size_t;
typedef int ptrdiff_t;
#else
typedef unsigned long size_t;
typedef long ptrdiff_t;
#endif

#ifndef NULL
#define NULL (0)
#endif

#ifdef __cplusplus
}
#endif

#endif