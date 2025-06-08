/**
 * mem_TRK.c
 * Description:
 */

#include "TRK_MINNOW_DOLPHIN/MetroTRK/Portable/mem_TRK.h"

#pragma dont_inline on
/* 8036F580-8036F638 369EC0 00B8+00 0/0 1/1 0/0 .text            TRK_fill_mem */
void TRK_fill_mem(void* dst, int val, u32 n) {
    u32 v, i, j;
    v = (u8)val;

    ((u8*)dst) = ((u8*)dst) - 1;

    if (n >= 32) {
        i = (~(u32)dst) & 3;

        if (i) {
            n -= i;

            do {
                *++(((u8*)dst)) = v;
            } while (--i);
        }

        if (v)
            v |= v << 24 | v << 16 | v << 8;

        ((u32*)dst) = ((u32*)(((u8*)dst) + 4)) - 1;
        ((u32*)dst) = ((u32*)(((u8*)dst) + 1)) - 1;

        i = n / 32;

        if (i) {
            do {
                for (j = 0; j < 8; j++)
                    *++((u32*)dst) = v;
            } while (--i);
        }

        i = (n / 4) % 8;

        if (i) {
            do {
                *++((u32*)dst) = v;
            } while (--i);
        }

        ((u8*)dst) = ((u8*)(((u32*)dst) + 1)) - 1;

        n %= 4;
    }

    if (n)
        do {
            *++((u8*)dst) = v;
        } while (--n);
}
#pragma dont_inline reset

/* 800035C0-800035E4 0004C0 0024+00 0/0 12/12 0/0 .init            TRK_memcpy */
__declspec(section ".init") void* TRK_memcpy(void* dst, const void* src, size_t n) {
    const unsigned char* s = (const unsigned char*)src - 1;
    unsigned char* d = (unsigned char*)dst - 1;

    n++;
    while (--n != 0)
        *++d = *++s;
    return dst;
}

/* 80003590-800035C0 000490 0030+00 0/0 1/1 0/0 .init            TRK_memset */
__declspec(section ".init") void* TRK_memset(void* dst, int val, size_t n) {
    TRK_fill_mem(dst, val, n);

    return dst;
}
