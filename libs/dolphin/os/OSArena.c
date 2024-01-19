#include "dolphin/os/OSArena.h"
#include "dolphin/os/OSAlloc.h"

/* 80451650-80451658 000B50 0004+04 2/1 0/0 0/0 .sbss            __OSArenaHi */
static void* __OSArenaHi;

/* 8033B28C-8033B294 -00001 0008+00 0/0 0/0 0/0 .text            OSGetArenaHi */
void* OSGetArenaHi(void) {
    return __OSArenaHi;
}

/* 80450998-804509A0 000418 0004+04 3/2 0/0 0/0 .sdata           __OSArenaLo */
static void* __OSArenaLo = (void*)0xFFFFFFFF;

/* 8033B294-8033B29C -00001 0008+00 0/0 0/0 0/0 .text            OSGetArenaLo */
void* OSGetArenaLo(void) {
    return __OSArenaLo;
}

/* 8033B29C-8033B2A4 335BDC 0008+00 0/0 5/5 0/0 .text            OSSetArenaHi */
void OSSetArenaHi(void* hi) {
    __OSArenaHi = hi;
}

/* 8033B2A4-8033B2AC 335BE4 0008+00 0/0 5/5 0/0 .text            OSSetArenaLo */
void OSSetArenaLo(void* lo) {
    __OSArenaLo = lo;
}

/* 8033B2AC-8033B2D8 335BEC 002C+00 0/0 4/4 0/0 .text            OSAllocFromArenaLo */
void* OSAllocFromArenaLo(u32 size, s32 alignment) {
    u8* blk_start = OSRoundUpPtr(__OSArenaLo, alignment);
    u8* blk_end = blk_start + size;
    blk_end = OSRoundUpPtr(blk_end, alignment);

    __OSArenaLo = blk_end;
    return blk_start;
}
