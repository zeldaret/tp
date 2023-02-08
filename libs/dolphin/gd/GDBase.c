/**
 * GDBase.c
 * Description:
 */

#include "dolphin/gd/GDBase.h"
#include "dolphin/os/OS.h"

/* 80360F98-80360FB0 35B8D8 0018+00 0/0 6/6 0/0 .text            GDInitGDLObj */
void GDInitGDLObj(GDLObj* obj, u8* start, u32 len) {
    obj->start = start;
    obj->ptr = start;
    obj->end = start + len;
    obj->length = len;
}

/* ############################################################################################## */
/* 80451980-80451984 000E80 0004+00 2/2 100/100 0/0 .sbss            __GDCurrentDL */
GDLObj* __GDCurrentDL = NULL;

/* ############################################################################################## */
/* 80451984-80451988 000E84 0004+00 1/1 0/0 0/0 .sbss            overflowcb */
static GDOverflowCallback overflowcb = NULL;

/* 80360FB0-80360FDC 35B8F0 002C+00 0/0 2/2 0/0 .text            GDFlushCurrToMem */
void GDFlushCurrToMem(void) {
    DCFlushRange(__GDCurrentDL->start, __GDCurrentDL->length);
}

static inline void __GDWrite(u8 data) {
    *__GDCurrentDL->ptr++ = data;
}

/* 80360FDC-803610D4 35B91C 00F8+00 0/0 2/2 0/0 .text            GDPadCurr32 */
void GDPadCurr32(void) {
    u32 i = ((u32)__GDCurrentDL->ptr & 31);

	if (i) {
		for (i; i < 32; i++) {
			__GDWrite(0);
		}
	}
}

/* 803610D4-80361104 35BA14 0030+00 0/0 41/41 0/0 .text            GDOverflowed */
void GDOverflowed(void) {
    if (overflowcb != NULL) {
        overflowcb();
    }
}
