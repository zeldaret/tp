#ifndef __VA_ARG_H
#define __VA_ARG_H

#include "dolphin/types.h"

typedef struct __va_list_struct {
    char gpr;
    char fpr;
    char reserved[2];
    char* input_arg_area;
    char* reg_save_area;
} _va_list_struct;

typedef _va_list_struct __va_list[1];

#ifdef __cplusplus
extern "C" void __va_arg(void*, int);
#else
void __va_arg(void*, int);
#endif

#if IN_VSCODE_EDITOR
#define __builtin_va_info(...)
#define _var_arg_typeof(...)
#endif

// from defined-string in mwcceppc.exe:
// __builtin_va_info: initialize the __va_list_struct
// _var_arg_typeof: convert type to integer for __va_arg
#define __va_start(list, fmt) __builtin_va_info(&list)
#define __va_arg(list, type) (*((type*)__va_arg(ap, _var_arg_typeof(type))))
#define va_start __va_start
#define va_arg __va_arg
#define va_end __va_end
#define va_list __va_list
#define __va_end(list) ((void)0)

#define __va_copy(a, b) (*(a) = *(b))

#endif /* __VA_ARG_H */
