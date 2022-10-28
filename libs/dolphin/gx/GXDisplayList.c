/**
 * GXDisplayList.c
 * Description:
 */

#include "dolphin/gx/GXDisplayList.h"
#include "dolphin/gx/GX.h"

/* 8035FEF0-8035FF60 35A830 0070+00 0/0 20/20 4/4 .text            GXCallDisplayList */
void GXCallDisplayList(void* list, u32 nbytes) {
    if (__GXData->field_0x5ac != 0) {
        __GXSetDirtyState();
    }

    if (*(u32*)__GXData == 0) {
        __GXSendFlushPrim();
    }

    GFX_FIFO(u8) = 0x40;
    GFX_FIFO(u32) = (u32)list;
    GFX_FIFO(u32) = nbytes;
}
