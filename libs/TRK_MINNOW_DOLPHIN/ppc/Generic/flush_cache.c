/**
 * flush_cache.c
 * Description:
 */

#include "TRK_MINNOW_DOLPHIN/ppc/Generic/flush_cache.h"

/* 8036F548-8036F580 369E88 0038+00 0/0 5/5 0/0 .text            TRK_flush_cache */
asm void TRK_flush_cache(void) {
    // clang-format off
    nofralloc

    lis r5, 0xFFFF
    ori r5, r5, 0xFFF1
    and r5, r5, r3
    subf r3, r5, r3
    add r4, r4, r3

loop:
    dcbst 0, r5
    dcbf 0, r5
    sync
    icbi 0, r5
    addic r5, r5, 8
    addic. r4, r4, -8
    bge loop

    isync 
    blr
    // clang-format on
}
