#ifndef COMPATIBILITY_C_CPP_H
#define COMPATIBILITY_C_CPP_H

#ifdef __cplusplus
#define BEGIN_C_DECLARATIONS extern "C" {
#else
#define BEGIN_C_DECLARATIONS
#endif

#ifdef __cplusplus
#define END_C_DECLARATIONS };
#else
#define END_C_DECLARATIONS
#endif

#endif