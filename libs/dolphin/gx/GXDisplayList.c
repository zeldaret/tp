/**
 * GXDisplayList.c
 * Description:
 */

#include "dolphin/gx/GXDisplayList.h"
#include "dolphin/gx.h"

/* 8035FEF0-8035FF60 35A830 0070+00 0/0 20/20 4/4 .text            GXCallDisplayList */
void GXCallDisplayList(void* list, u32 nbytes) {
    if (__GXData->dirtyFlags != 0) {
        __GXSetDirtyState();
    }

    if (*(u32*)__GXData == 0) {
        __GXSendFlushPrim();
    }

    GXWGFifo.u8 = 0x40;
    GXWGFifo.u32 = (u32)list;
    GXWGFifo.u32 = nbytes;
}
