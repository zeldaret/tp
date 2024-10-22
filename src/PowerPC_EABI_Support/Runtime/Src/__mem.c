#include "dol2asm.h"
#include <dolphin.h>

/* 800035C0-800035E4 0004C0 0024+00 0/0 12/12 0/0 .init            TRK_memcpy */
SECTION_INIT void* TRK_memcpy(void* dst, const void* src, size_t n) {
    const unsigned char* s = (const unsigned char*)src - 1;
    unsigned char* d = (unsigned char*)dst - 1;

    n++;
    while (--n != 0)
        *++d = *++s;
    return dst;
}

/* 80003590-800035C0 000490 0030+00 0/0 1/1 0/0 .init            TRK_memset */
SECTION_INIT void* TRK_memset(void* dst, int val, size_t n) {
    TRK_fill_mem(dst, val, n);

    return dst;
}

/* 80003540-80003590 000440 0050+00 1/1 63/63 6/6 .init            memcpy */
SECTION_INIT void* memcpy(void* dst, const void* src, size_t n) {
    const unsigned char* s;
    unsigned char* d;

    if ((unsigned long)src >= (unsigned long)dst) {
        s = (const unsigned char*)src - 1;
        d = (unsigned char*)dst - 1;
        n++;
        while (--n != 0)
            *++d = *++s;
    } else {
        s = (const unsigned char*)src + n;
        d = (unsigned char*)dst + n;
        n++;
        while (--n != 0)
            *--d = *--s;
    }
    return dst;
}

/* 80003488-80003540 000388 00B8+00 1/1 0/0 0/0 .init            __fill_mem */
SECTION_INIT void __fill_mem(void* dst, int val, size_t n) {
    unsigned long v = (unsigned char)val;
    unsigned long i;

    ((unsigned char*)dst) = ((unsigned char*)dst) - 1;

    if (n >= 32) {
        i = (~(unsigned long)dst) & 3;

        if (i) {
            n -= i;

            do {
                *++(((unsigned char*)dst)) = v;
            } while (--i);
        }

        if (v)
            v |= v << 24 | v << 16 | v << 8;

        ((unsigned long*)dst) = ((unsigned long*)(((unsigned char*)dst) + 1)) - 1;

        i = n >> 5;

        if (i) {
            do {
                *++((unsigned long*)dst) = v;
                *++((unsigned long*)dst) = v;
                *++((unsigned long*)dst) = v;
                *++((unsigned long*)dst) = v;
                *++((unsigned long*)dst) = v;
                *++((unsigned long*)dst) = v;
                *++((unsigned long*)dst) = v;
                *++((unsigned long*)dst) = v;
            } while (--i);
        }

        i = (n & 31) >> 2;

        if (i) {
            do {
                *++((unsigned long*)dst) = v;
            } while (--i);
        }

        ((unsigned char*)dst) = ((unsigned char*)(((unsigned long*)dst) + 1)) - 1;

        n &= 3;
    }

    if (n)
        do {
            *++((unsigned char*)dst) = v;
        } while (--n);

    return;
}

/* 80003458-80003488 000358 0030+00 1/1 55/55 137/137 .init            memset */
SECTION_INIT void* memset(void* dst, int val, size_t n) {
    __fill_mem(dst, val, n);

    return dst;
}