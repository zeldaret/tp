/**
 * GXBump.c
 * Description:
 */

#include "dolphin/gx/GXBump.h"
#include "dolphin/gx/GX.h"

/* 8035ECC0-8035ED2C 359600 006C+00 1/1 3/3 0/0 .text            GXSetTevIndirect */
void GXSetTevIndirect(GXTevStageID tevStage, GXIndTexStageID texStage, GXIndTexFormat texFmt,
                      GXIndTexBiasSel biasSel, GXIndTexMtxID mtxID, GXIndTexWrap wrapS,
                      GXIndTexWrap wrapT, u8 addPrev, u8 utcLod, GXIndTexAlphaSel alphaSel) {
    u32 field = 0;
    u32 stage = tevStage + 0x10;

    GX_BITFIELD_SET(field, 30, 2, texStage);
    GX_BITFIELD_SET(field, 28, 2, texFmt);
    GX_BITFIELD_SET(field, 25, 3, biasSel);
    GX_BITFIELD_SET(field, 23, 2, alphaSel);
    GX_BITFIELD_SET(field, 19, 4, mtxID);
    GX_BITFIELD_SET(field, 16, 3, wrapS);
    GX_BITFIELD_SET(field, 13, 3, wrapT);
    GX_BITFIELD_SET(field, 12, 1, utcLod);
    GX_BITFIELD_SET(field, 11, 1, addPrev);
    GX_BITFIELD_SET(field, 0, 8, stage);

    GXFIFO.u8 = 0x61;
    GXFIFO.s32 = field;

    __GXData->bpSentNot = 0;
}

/* 8035ED2C-8035EEA4 35966C 0178+00 0/0 4/4 1/1 .text            GXSetIndTexMtx */
void GXSetIndTexMtx(GXIndTexMtxID mtxID, f32 offset[6], s8 scale_exp) {
    u32 val;
    u32 field;
    f32 mtx2[6];

    scale_exp += 17;

    switch (mtxID) {
    case GX_ITM_0:
    case GX_ITM_1:
    case GX_ITM_2:
        val = mtxID - 1;
        break;
    case GX_ITM_S0:
    case GX_ITM_S1:
    case GX_ITM_S2:
        val = mtxID - 5;
        break;
    case GX_ITM_T0:
    case GX_ITM_T1:
    case GX_ITM_T2:
        val = mtxID - 9;
        break;
    case GX_ITM_3:
    case GX_ITM_S3:
    default:
        val = 0;
    }

    field = 0;
    GX_BITFIELD_SET(field, 21, 11, 1024.0f * offset[0]);
    GX_BITFIELD_SET(field, 10, 11, 1024.0f * offset[3]);
    GX_BITFIELD_SET(field, 8, 2, (scale_exp >> 0) & 3);
    GX_BITFIELD_SET(field, 0, 8, val * 3 + 6);
    GXFIFO.u8 = 0x61;
    GXFIFO.s32 = field;

    field = 0;
    GX_BITFIELD_SET(field, 21, 11, 1024.0f * offset[1]);
    GX_BITFIELD_SET(field, 10, 11, 1024.0f * offset[4]);
    GX_BITFIELD_SET(field, 8, 2, (scale_exp >> 2) & 3);
    GX_BITFIELD_SET(field, 0, 8, val * 3 + 7);
    GXFIFO.u8 = 0x61;
    GXFIFO.s32 = field;

    field = 0;
    GX_BITFIELD_SET(field, 21, 11, 1024.0f * offset[2]);
    GX_BITFIELD_SET(field, 10, 11, 1024.0f * offset[5]);
    GX_BITFIELD_SET(field, 8, 2, (scale_exp >> 4) & 3);
    GX_BITFIELD_SET(field, 0, 8, val * 3 + 8);
    GXFIFO.u8 = 0x61;
    GXFIFO.s32 = field;

    __GXData->bpSentNot = 0;
}

/* 8035EEA4-8035EFE8 3597E4 0144+00 0/0 5/5 0/0 .text            GXSetIndTexCoordScale */
void GXSetIndTexCoordScale(GXIndTexStageID texStage, GXIndTexScale scaleS, GXIndTexScale scaleT) {
    GXData* data;

    switch (texStage) {
    case GX_INDTEXSTAGE0:
        data = __GXData;
        GX_BITFIELD_SET(data->field_0x128, 28, 4, scaleS);
        GX_BITFIELD_SET(data->field_0x128, 24, 4, scaleT);
        GX_BITFIELD_SET(data->field_0x128, 0, 8, 0x25);
        GXFIFO.u8 = 0x61;
        GXFIFO.s32 = data->field_0x128;
        break;
    case GX_INDTEXSTAGE1:
        data = __GXData;
        GX_BITFIELD_SET(data->field_0x128, 20, 4, scaleS);
        GX_BITFIELD_SET(data->field_0x128, 16, 4, scaleT);
        GX_BITFIELD_SET(data->field_0x128, 0, 8, 0x25);
        GXFIFO.u8 = 0x61;
        GXFIFO.s32 = data->field_0x128;
        break;
    case GX_INDTEXSTAGE2:
        data = __GXData;
        GX_BITFIELD_SET(data->field_0x12c, 28, 4, scaleS);
        GX_BITFIELD_SET(data->field_0x12c, 24, 4, scaleT);
        GX_BITFIELD_SET(data->field_0x12c, 0, 8, 0x26);
        GXFIFO.u8 = 0x61;
        GXFIFO.s32 = data->field_0x12c;
        break;
    case GX_INDTEXSTAGE3:
        data = __GXData;
        GX_BITFIELD_SET(data->field_0x12c, 20, 4, scaleS);
        GX_BITFIELD_SET(data->field_0x12c, 16, 4, scaleT);
        GX_BITFIELD_SET(data->field_0x12c, 0, 8, 0x26);
        GXFIFO.u8 = 0x61;
        GXFIFO.s32 = data->field_0x12c;
        break;
    }

    __GXData->bpSentNot = 0;
}

/* 8035EFE8-8035F0D4 359928 00EC+00 0/0 3/3 0/0 .text            GXSetIndTexOrder */
void GXSetIndTexOrder(GXIndTexStageID stage, GXTexCoordID coord, GXTexMapID map) {
    GXData* data;

    if (map == 0xFF) {
        map = GX_TEXMAP0;
    }

    if (coord == 0xFF) {
        coord = GX_TEXCOORD0;
    }

    switch (stage) {
    case GX_INDTEXSTAGE0:
        data = __GXData;
        GX_BITFIELD_SET(data->iref, 29, 3, map);
        GX_BITFIELD_SET(data->iref, 26, 3, coord);
        break;
    case GX_INDTEXSTAGE1:
        data = __GXData;
        GX_BITFIELD_SET(data->iref, 23, 3, map);
        GX_BITFIELD_SET(data->iref, 20, 3, coord);
        break;
    case GX_INDTEXSTAGE2:
        data = __GXData;
        GX_BITFIELD_SET(data->iref, 17, 3, map);
        GX_BITFIELD_SET(data->iref, 14, 3, coord);
        break;
    case GX_INDTEXSTAGE3:
        data = __GXData;
        GX_BITFIELD_SET(data->iref, 11, 3, map);
        GX_BITFIELD_SET(data->iref, 8, 3, coord);
        break;
    }

    GXFIFO.u8 = 0x61;
    GXFIFO.s32 = __GXData->iref;
    GXSetWasteFlags();
}

/* 8035F0D4-8035F0F8 359A14 0024+00 0/0 43/43 7/7 .text            GXSetNumIndStages */
void GXSetNumIndStages(u8 num) {
    GXData* data = __GXData;
    GX_BITFIELD_SET(data->genMode, 13, 3, num);
    data->dirtyFlags |= GX_DIRTY_BP_MASK | GX_DIRTY_GEN_MODE;
}

/* 8035F0F8-8035F140 359A38 0048+00 0/0 16/16 0/0 .text            GXSetTevDirect */
void GXSetTevDirect(GXTevStageID stage) {
    GXSetTevIndirect(stage, GX_INDTEXSTAGE0, GX_ITF_8, GX_ITB_NONE, GX_ITM_OFF, GX_ITW_OFF,
                     GX_ITW_OFF, FALSE, FALSE, GX_ITBA_OFF);
}

/* 8035F140-8035F144 359A80 0004+00 0/0 2/2 0/0 .text            __GXUpdateBPMask */
void __GXUpdateBPMask(void) {}

/* 8035F144-8035F174 359A84 0030+00 0/0 1/1 0/0 .text            __GXSetIndirectMask */
void __GXSetIndirectMask(u32 mask) {
    GXData* data = __GXData;

    GX_BITFIELD_SET(data->bpMask, 24, 8, mask);
    GXFIFO.u8 = 0x61;
    GXFIFO.s32 = data->bpMask;
    data->bpSentNot = 0;
}

/* 8035F174-8035F198 359AB4 0024+00 0/0 4/4 0/0 .text            __GXFlushTextureState */
void __GXFlushTextureState(void) {
    GXFIFO.u8 = 0x61;
    GXFIFO.s32 = __GXData->bpMask;
    __GXData->bpSentNot = 0;
}
