/**
 * GXGeometry.c
 * Description:
 */

#include "dolphin/gx/GXGeometry.h"
#include "dolphin/gx/GX.h"

/* 8035C6E4-8035C764 357024 0080+00 0/0 4/4 0/0 .text            __GXSetDirtyState */
void __GXSetDirtyState(void) {
    u32 dirtyFlags = __GXData->dirtyFlags;

    if (dirtyFlags & GX_DIRTY_SU_TEX) {
        __GXSetSUTexRegs();
    }

    if (dirtyFlags & GX_DIRTY_BP_MASK) {
        __GXUpdateBPMask();
    }

    if (dirtyFlags & GX_DIRTY_GEN_MODE) {
        __GXSetGenMode();
    }

    if (dirtyFlags & GX_DIRTY_VCD) {
        __GXSetVCD();
    }

    if (dirtyFlags & GX_DIRTY_VAT) {
        __GXSetVAT();
    }

    if (dirtyFlags & GX_DIRTY_VLIM) {
        __GXCalculateVLim();
    }

    __GXData->dirtyFlags = 0;
}

/* 8035C764-8035C834 3570A4 00D0+00 0/0 66/66 3/3 .text            GXBegin */
void GXBegin(GXPrimitive type, GXVtxFmt fmt, u16 vert_num) {
    GXData* data = __GXData;
    u32 dirtyFlags = data->dirtyFlags;

    if (data->dirtyFlags != 0) {
        if (dirtyFlags & GX_DIRTY_SU_TEX) {
            __GXSetSUTexRegs();
        }

        if (dirtyFlags & GX_DIRTY_BP_MASK) {
            __GXUpdateBPMask();
        }

        if (dirtyFlags & GX_DIRTY_GEN_MODE) {
            __GXSetGenMode();
        }

        if (dirtyFlags & GX_DIRTY_VCD) {
            __GXSetVCD();
        }

        if (dirtyFlags & GX_DIRTY_VAT) {
            __GXSetVAT();
        }

        if (dirtyFlags & GX_DIRTY_VLIM) {
            __GXCalculateVLim();
        }

        __GXData->dirtyFlags = 0;
    }

    if (*(u32*)__GXData == 0) {
        __GXSendFlushPrim();
    }

    GXFIFO.u8 = fmt | type;
    GXFIFO.u16 = vert_num;
}

/* 8035C834-8035C8BC 357174 0088+00 1/1 1/1 0/0 .text            __GXSendFlushPrim */
void __GXSendFlushPrim(void) {
    u32 i;
    u32 sz = __GXData->vNum * __GXData->vLim;

    GXFIFO.u8 = 0x98;
    GXFIFO.u16 = __GXData->vNum;

    for (i = 0; i < sz; i += 4) {
        GXFIFO.s32 = 0;
    }

    __GXData->bpSentNot = 1;
}

/* 8035C8BC-8035C8FC 3571FC 0040+00 0/0 8/8 0/0 .text            GXSetLineWidth */
void GXSetLineWidth(u8 width, GXTexOffset offsets) {
    GXData* data = __GXData;

    GX_BITFIELD_SET(data->field_0x7c, 24, 8, width);
    GX_BITFIELD_SET(data->field_0x7c, 13, 3, offsets);
    GXFIFO.u8 = 0x61;
    GXFIFO.u32 = data->field_0x7c;
    data->bpSentNot = 0;
}

/* 8035C8FC-8035C93C 35723C 0040+00 0/0 5/5 0/0 .text            GXSetPointSize */
void GXSetPointSize(u8 size, GXTexOffset offsets) {
    GXData* data = __GXData;

    GX_BITFIELD_SET(data->field_0x7c, 16, 8, size);
    GX_BITFIELD_SET(data->field_0x7c, 10, 3, offsets);
    GXFIFO.u8 = 0x61;
    GXFIFO.u32 = data->field_0x7c;
    data->bpSentNot = 0;
}

/* 8035C93C-8035C984 35727C 0048+00 0/0 3/3 0/0 .text            GXEnableTexOffsets */
void GXEnableTexOffsets(GXTexCoordID coord, GXBool line, GXBool point) {
    GXData* data = __GXData;

    GX_BITFIELD_SET(data->field_0xb8[coord], 13, 1, line);
    GX_BITFIELD_SET(data->field_0xb8[coord], 12, 1, point);
    GXFIFO.u8 = 0x61;
    GXFIFO.u32 = data->field_0xb8[coord];
    data->bpSentNot = 0;
}

/* 8035C984-8035C9AC 3572C4 0028+00 0/0 33/33 5/5 .text            GXSetCullMode */
void GXSetCullMode(GXCullMode mode) {
    GXData* data;
    GXCullMode mode2;
    data  = __GXData;

    mode2 = (mode >> 1) & 1;
    GX_BITFIELD_SET(mode2, 30, 1, mode);

    GX_BITFIELD_SET(data->genMode, 16, 2, mode2);
    data->dirtyFlags |= GX_DIRTY_GEN_MODE;
}

/* 8035C9AC-8035C9E0 3572EC 0034+00 0/0 6/6 0/0 .text            GXSetCoPlanar */
void GXSetCoPlanar(GXBool enable) {
    GXData* data = __GXData;

    GX_BITFIELD_SET(data->genMode, 12, 1, enable);
    GXFIFO.u8 = 0x61;
    GXFIFO.u32 = 0xFE080000;
    GXFIFO.u8 = 0x61;
    GXFIFO.u32 = data->genMode;
}

/* 8035C9E0-8035CA04 357320 0024+00 2/2 0/0 0/0 .text            __GXSetGenMode */
void __GXSetGenMode(void) {
    GXFIFO.u8 = 0x61;
    GXFIFO.u32 = __GXData->genMode;
    __GXData->bpSentNot = 0;
}
