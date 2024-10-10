#include "abort_exit.h"
#include "critical_regions.h"
#include "stddef.h"

extern void (*_dtors[])(void);

/* 8044D440-8044D540 07A160 0100+00 2/2 0/0 0/0 .bss             __atexit_funcs */
static void (*__atexit_funcs[64])(void);

/* 8045199C-804519A0 000E9C 0004+00 2/2 0/0 0/0 .sbss            __console_exit */
static void (*__console_exit)(void);

/* 80451998-8045199C 000E98 0004+00 1/1 1/1 0/0 .sbss            __stdio_exit */
void (*__stdio_exit)(void);

/* 80451994-80451998 000E94 0004+00 2/2 0/0 0/0 .sbss            __atexit_curr_func */
static int __atexit_curr_func;

/* 80451990-80451994 000E90 0004+00 2/2 0/0 0/0 .sbss            __aborting */
static int __aborting;

/* 80362ABC-80362B58 35D3FC 009C+00 0/0 9/9 0/0 .text            abort */
void abort(void) {
    raise(1);
    __aborting = 1;
    __begin_critical_region(atexit_funcs_access);

    while (__atexit_curr_func > 0)
        __atexit_funcs[--__atexit_curr_func]();

    __end_critical_region(atexit_funcs_access);
    __kill_critical_regions();

    if (__console_exit != NULL) {
        __console_exit();
        __console_exit = NULL;
    }

    _ExitProcess();
}

/* 803629CC-80362ABC 35D30C 00F0+00 0/0 2/2 0/0 .text            exit */
void exit(int status) {
    int i;
    void (**dtor)(void);

    if (!__aborting) {
        __begin_critical_region(atexit_funcs_access);
        __end_critical_region(atexit_funcs_access);
        __destroy_global_chain();

        dtor = _dtors;
        while (*dtor != NULL) {
            (*dtor)();
            dtor++;
        }

        if (__stdio_exit != NULL) {
            __stdio_exit();
            __stdio_exit = NULL;
        }
    }

    __begin_critical_region(atexit_funcs_access);
    while (__atexit_curr_func > 0)
        __atexit_funcs[--__atexit_curr_func]();

    __end_critical_region(atexit_funcs_access);
    __kill_critical_regions();

    if (__console_exit != NULL) {
        __console_exit();
        __console_exit = NULL;
    }

    _ExitProcess();
}