#include "NMWException.h"
#include "__ppc_eabi_linker.h"

#if __MWERKS__
#pragma exceptions on
#endif

typedef struct ProcessInfo {
    __eti_init_info* exception_info;
    char* TOC;
    int active;
} ProcessInfo;

/* 8044D430-8044D440 07A150 000C+04 2/2 0/0 0/0 .bss             fragmentinfo */
static ProcessInfo fragmentinfo[1];

/* 803628E0-80362914 35D220 0034+00 0/0 1/1 0/0 .text            __register_fragment */
int __register_fragment(struct __eti_init_info* info, char* TOC) {
    ProcessInfo* f;
    int i;

    for (i = 0, f = fragmentinfo; i < 1; ++i, ++f) {
        if (f->active == 0) {
            f->exception_info = info;
            f->TOC = TOC;
            f->active = 1;
            return i;
        }
    }

    return -1;
}

/* 803628AC-803628E0 35D1EC 0034+00 0/0 1/1 0/0 .text            __unregister_fragment */
void __unregister_fragment(int fragmentId) {
    ProcessInfo* f;
    if (fragmentId >= 0 && fragmentId < 1) {
        f = &fragmentinfo[fragmentId];
        f->exception_info = 0;
        f->TOC = 0;
        f->active = 0;
    }
}