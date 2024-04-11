#include "dolphin/gx/GXAttr.h"
#include "dolphin/gx.h"

static inline void SETVCDATTR(GXAttr name, GXAttrType type) {
    switch (name) {
    case GX_VA_PNMTXIDX:
        GX_SET_REG(__GXData->vcdLo, type, GX_CP_VCD_LO_POSMTXIDX_ST, GX_CP_VCD_LO_POSMTXIDX_END);
        break;
    case GX_VA_TEX0MTXIDX:
        GX_SET_REG(__GXData->vcdLo, type, GX_CP_VCD_LO_TEX0MTXIDX_ST,
                   GX_CP_VCD_LO_TEX0MTXIDX_END);
        break;
    case GX_VA_TEX1MTXIDX:
        GX_SET_REG(__GXData->vcdLo, type, GX_CP_VCD_LO_TEX1MTXIDX_ST,
                   GX_CP_VCD_LO_TEX1MTXIDX_END);
        break;
    case GX_VA_TEX2MTXIDX:
        GX_SET_REG(__GXData->vcdLo, type, GX_CP_VCD_LO_TEX2MTXIDX_ST,
                   GX_CP_VCD_LO_TEX2MTXIDX_END);
        break;
    case GX_VA_TEX3MTXIDX:
        GX_SET_REG(__GXData->vcdLo, type, GX_CP_VCD_LO_TEX3MTXIDX_ST,
                   GX_CP_VCD_LO_TEX3MTXIDX_END);
        break;
    case GX_VA_TEX4MTXIDX:
        GX_SET_REG(__GXData->vcdLo, type, GX_CP_VCD_LO_TEX4MTXIDX_ST,
                   GX_CP_VCD_LO_TEX4MTXIDX_END);
        break;
    case GX_VA_TEX5MTXIDX:
        GX_SET_REG(__GXData->vcdLo, type, GX_CP_VCD_LO_TEX5MTXIDX_ST,
                   GX_CP_VCD_LO_TEX5MTXIDX_END);
        break;
    case GX_VA_TEX6MTXIDX:
        GX_SET_REG(__GXData->vcdLo, type, GX_CP_VCD_LO_TEX6MTXIDX_ST,
                   GX_CP_VCD_LO_TEX6MTXIDX_END);
        break;
    case GX_VA_TEX7MTXIDX:
        GX_SET_REG(__GXData->vcdLo, type, GX_CP_VCD_LO_TEX7MTXIDX_ST,
                   GX_CP_VCD_LO_TEX7MTXIDX_END);
        break;
    case GX_VA_POS:
        GX_SET_REG(__GXData->vcdLo, type, GX_CP_VCD_LO_POS_ST, GX_CP_VCD_LO_POS_END);
        break;
    case GX_VA_NRM:
        if (type != GX_NONE) {
            __GXData->hasNrms = TRUE;
            __GXData->hasBiNrms = FALSE;
            __GXData->nrmType = type;
        } else {
            __GXData->hasNrms = FALSE;
        }
        break;
    case GX_VA_NBT:
        if (type != GX_NONE) {
            __GXData->hasBiNrms = TRUE;
            __GXData->hasNrms = FALSE;
            __GXData->nrmType = type;
        } else {
            __GXData->hasBiNrms = FALSE;
        }
        break;
    case GX_VA_CLR0:
        GX_SET_REG(__GXData->vcdLo, type, GX_CP_VCD_LO_CLRDIF_ST, GX_CP_VCD_LO_CLRDIF_END);
        break;
    case GX_VA_CLR1:
        GX_SET_REG(__GXData->vcdLo, type, GX_CP_VCD_LO_CLRSPEC_ST, GX_CP_VCD_LO_CLRSPEC_END);
        break;
    case GX_VA_TEX0:
        GX_SET_REG(__GXData->vcdHi, type, GX_CP_VCD_HI_TEX0COORD_ST, GX_CP_VCD_HI_TEX0COORD_END);
        break;
    case GX_VA_TEX1:
        GX_SET_REG(__GXData->vcdHi, type, GX_CP_VCD_HI_TEX1COORD_ST, GX_CP_VCD_HI_TEX1COORD_END);
        break;
    case GX_VA_TEX2:
        GX_SET_REG(__GXData->vcdHi, type, GX_CP_VCD_HI_TEX2COORD_ST, GX_CP_VCD_HI_TEX2COORD_END);
        break;
    case GX_VA_TEX3:
        GX_SET_REG(__GXData->vcdHi, type, GX_CP_VCD_HI_TEX3COORD_ST, GX_CP_VCD_HI_TEX3COORD_END);
        break;
    case GX_VA_TEX4:
        GX_SET_REG(__GXData->vcdHi, type, GX_CP_VCD_HI_TEX4COORD_ST, GX_CP_VCD_HI_TEX4COORD_END);
        break;
    case GX_VA_TEX5:
        GX_SET_REG(__GXData->vcdHi, type, GX_CP_VCD_HI_TEX5COORD_ST, GX_CP_VCD_HI_TEX5COORD_END);
        break;
    case GX_VA_TEX6:
        GX_SET_REG(__GXData->vcdHi, type, GX_CP_VCD_HI_TEX6COORD_ST, GX_CP_VCD_HI_TEX6COORD_END);
        break;
    case GX_VA_TEX7:
        GX_SET_REG(__GXData->vcdHi, type, GX_CP_VCD_HI_TEX7COORD_ST, GX_CP_VCD_HI_TEX7COORD_END);
        break;
    }
}

void GXSetVtxDesc(GXAttr name, GXAttrType type) {
    SETVCDATTR(name, type);

    // Set normal data type if enabled
    if (__GXData->hasNrms || __GXData->hasBiNrms) {
        GX_BITFIELD_SET(__GXData->vcdLo, 19, 2, __GXData->nrmType);
    } else {
        GX_BITFIELD_SET(__GXData->vcdLo, 19, 2, 0);
    }

    __GXData->dirtyState |= GX_DIRTY_VCD;
}

/* 8035B124-8035B3AC 355A64 0288+00 1/0 0/0 1/1 .text            GXSetVtxDescv */
void GXSetVtxDescv(GXVtxDescList* list) {
    for (; list->attr != GX_VA_NULL; list++) {
        SETVCDATTR(list->attr, list->type);
    }

    // Set normal data type if enabled
    if (__GXData->hasNrms || __GXData->hasBiNrms) {
        GX_BITFIELD_SET(__GXData->vcdLo, 19, 2, __GXData->nrmType);
    } else {
        GX_BITFIELD_SET(__GXData->vcdLo, 19, 2, 0);
    }

    __GXData->dirtyState |= GX_DIRTY_VCD;
}

static void __GXXfVtxSpecs(void) {
    u32 normCount, colorCount, texCount;

    normCount = __GXData->hasBiNrms ? 2 : (__GXData->hasNrms ? 1 : 0);

    // Both fields in one access
    colorCount = 33 - __cntlzw((__GXData->vcdLo & (0xf << 0xd)) >> 0xd);
    colorCount /= 2;  // equivalent to /=2 and >>= 1

    // All 16 assigned bits in VCD_Hi
    texCount = 33 - __cntlzw((__GXData->vcdHi & (0xffff << 0)) >> 0);
    texCount /= 2;  // equivalent to /=2 and >>= 1

    GX_XF_LOAD_REG(GX_XF_REG_INVERTEXSPEC, (colorCount) | (normCount << 2) | (texCount << 4));
    __GXData->bpSentNot = GX_TRUE;

    return;
}

/* 8035B3AC-8035B468 355CEC 00BC+00 0/0 2/2 0/0 .text            __GXSetVCD */
void __GXSetVCD(void) {
    GX_CP_LOAD_REG(GX_CP_REG_VCD_LO, __GXData->vcdLo);
    GX_CP_LOAD_REG(GX_CP_REG_VCD_HI, __GXData->vcdHi);

    __GXXfVtxSpecs();
}

/* 8035B468-8035B58C 355DA8 0124+00 0/0 2/2 0/0 .text            __GXCalculateVLim */
void __GXCalculateVLim(void) {
    static u8 tbl1[] = {0, 4, 1, 2};
    static u8 tbl2[] = {0, 8, 1, 2};
    static u8 tbl3[] = {0, 12, 1, 2};

    u32 vlim;
    u32 vcdLoReg;
    u32 vcdHiReg;
    s32 compCnt;

    if (__GXData->vNum == 0) {
        return;
    }

    vcdLoReg = __GXData->vcdLo;
    vcdHiReg = __GXData->vcdHi;

    // GXCompCnt bit of normal parameters
    compCnt = __GXData->vatA[GX_VTXFMT0];
    compCnt = (compCnt & 0x200) >> 9;

    vlim = GX_GET_REG(vcdLoReg, GX_CP_VCD_LO_POSMTXIDX_ST, GX_CP_VCD_LO_POSMTXIDX_END);
    vlim += GX_GET_REG(vcdLoReg, GX_CP_VCD_LO_TEX0MTXIDX_ST, GX_CP_VCD_LO_TEX0MTXIDX_END);
    vlim += GX_GET_REG(vcdLoReg, GX_CP_VCD_LO_TEX1MTXIDX_ST, GX_CP_VCD_LO_TEX1MTXIDX_END);
    vlim += GX_GET_REG(vcdLoReg, GX_CP_VCD_LO_TEX2MTXIDX_ST, GX_CP_VCD_LO_TEX2MTXIDX_END);
    vlim += GX_GET_REG(vcdLoReg, GX_CP_VCD_LO_TEX3MTXIDX_ST, GX_CP_VCD_LO_TEX3MTXIDX_END);
    vlim += GX_GET_REG(vcdLoReg, GX_CP_VCD_LO_TEX4MTXIDX_ST, GX_CP_VCD_LO_TEX4MTXIDX_END);
    vlim += GX_GET_REG(vcdLoReg, GX_CP_VCD_LO_TEX5MTXIDX_ST, GX_CP_VCD_LO_TEX5MTXIDX_END);
    vlim += GX_GET_REG(vcdLoReg, GX_CP_VCD_LO_TEX6MTXIDX_ST, GX_CP_VCD_LO_TEX6MTXIDX_END);
    vlim += GX_GET_REG(vcdLoReg, GX_CP_VCD_LO_TEX7MTXIDX_ST, GX_CP_VCD_LO_TEX7MTXIDX_END);

    vlim += tbl3[GX_GET_REG(vcdLoReg, GX_CP_VCD_LO_POS_ST, GX_CP_VCD_LO_POS_END)];
    vlim += tbl3[GX_GET_REG(vcdLoReg, GX_CP_VCD_LO_NRM_ST, GX_CP_VCD_LO_NRM_END)] *
            (compCnt == GX_NRM_NBT ? 3 : 1);
    vlim += tbl1[GX_GET_REG(vcdLoReg, GX_CP_VCD_LO_CLRDIF_ST, GX_CP_VCD_LO_CLRDIF_END)];
    vlim += tbl1[GX_GET_REG(vcdLoReg, GX_CP_VCD_LO_CLRSPEC_ST, GX_CP_VCD_LO_CLRSPEC_END)];

    vlim += tbl2[GX_GET_REG(vcdHiReg, GX_CP_VCD_HI_TEX0COORD_ST, GX_CP_VCD_HI_TEX0COORD_END)];
    vlim += tbl2[GX_GET_REG(vcdHiReg, GX_CP_VCD_HI_TEX1COORD_ST, GX_CP_VCD_HI_TEX1COORD_END)];
    vlim += tbl2[GX_GET_REG(vcdHiReg, GX_CP_VCD_HI_TEX2COORD_ST, GX_CP_VCD_HI_TEX2COORD_END)];
    vlim += tbl2[GX_GET_REG(vcdHiReg, GX_CP_VCD_HI_TEX3COORD_ST, GX_CP_VCD_HI_TEX3COORD_END)];
    vlim += tbl2[GX_GET_REG(vcdHiReg, GX_CP_VCD_HI_TEX4COORD_ST, GX_CP_VCD_HI_TEX4COORD_END)];
    vlim += tbl2[GX_GET_REG(vcdHiReg, GX_CP_VCD_HI_TEX5COORD_ST, GX_CP_VCD_HI_TEX5COORD_END)];
    vlim += tbl2[GX_GET_REG(vcdHiReg, GX_CP_VCD_HI_TEX6COORD_ST, GX_CP_VCD_HI_TEX6COORD_END)];
    vlim += tbl2[GX_GET_REG(vcdHiReg, GX_CP_VCD_HI_TEX7COORD_ST, GX_CP_VCD_HI_TEX7COORD_END)];

    __GXData->vLim = vlim;
}

void GXGetVtxDesc(int param_0, GXAttrType* param_1) {
    int local_38;

    switch (param_0) {
    case 0:
        local_38 = __GXData->vcdLo & 1;
        break;
    case 1:
        local_38 = (__GXData->vcdLo & 2) >> 1;
        break;
    case 2:
        local_38 = (__GXData->vcdLo & 4) >> 2;
        break;
    case 3:
        local_38 = (__GXData->vcdLo & 8) >> 3;
        break;
    case 4:
        local_38 = (__GXData->vcdLo & 0x10) >> 4;
        break;
    case 5:
        local_38 = (__GXData->vcdLo & 0x20) >> 5;
        break;
    case 6:
        local_38 = (__GXData->vcdLo & 0x40) >> 6;
        break;
    case 7:
        local_38 = (__GXData->vcdLo & 0x80) >> 7;
        break;
    case 8:
        local_38 = (__GXData->vcdLo & 0x100) >> 8;
        break;
    case 9:
        local_38 = (__GXData->vcdLo & 0x600) >> 9;
        break;
    case 10:
        if (__GXData->hasNrms != 0) {
            local_38 = (__GXData->vcdLo & 0x1800) >> 11;
        } else {
            local_38 = 0;
        }
        break;
    case 0x19:
        if (__GXData->hasBiNrms != 0) {
            local_38 = (__GXData->vcdLo & 0x1800) >> 11;
        } else {
            local_38 = 0;
        }
        break;
    case 11:
        local_38 = (__GXData->vcdLo & 0x6000) >> 13;
        break;
    case 12:
        local_38 = (__GXData->vcdLo & 0x18000) >> 15;
        break;
    case 13:
        local_38 = (__GXData->vcdHi & 3);
        break;
    case 14:
        local_38 = (__GXData->vcdHi & 0xC) >> 2;
        break;
    case 15:
        local_38 = (__GXData->vcdHi & 0x30) >> 4;
        break;
    case 16:
        local_38 = (__GXData->vcdHi & 0xC0) >> 6;
        break;
    case 17:
        local_38 = (__GXData->vcdHi & 0x300) >> 8;
        break;
    case 18:
        local_38 = (__GXData->vcdHi & 0xC00) >> 10;
        break;
    case 19:
        local_38 = (__GXData->vcdHi & 0x3000) >> 12;
        break;
    case 20:
        local_38 = (__GXData->vcdHi & 0xC000) >> 14;
        break;
    default:
        local_38 = 0;
        break;
    }

    *param_1 = local_38;
}

void GXGetVtxDescv(GXVtxDescList* attrPtr) {
    int i;

    for (i = 0; i <= 0x14; i++) {
        attrPtr[i].attr = (GXAttr)i;
        GXGetVtxDesc(i, &attrPtr[i].type);
    }

    attrPtr[i].attr = (GXAttr)0x19;
    GXGetVtxDesc(0x19, &attrPtr[i].type);

    i++;
    attrPtr[i].attr = (GXAttr)0xFF;
}

/* 8035B58C-8035B5C4 355ECC 0038+00 0/0 66/66 7/7 .text            GXClearVtxDesc */
void GXClearVtxDesc(void) {
    __GXData->vcdLo = 0;
    GX_BITFIELD_SET(__GXData->vcdLo, 0x15, 2, GX_DIRECT);
    __GXData->vcdHi = 0;
    __GXData->hasNrms = FALSE;
    __GXData->hasBiNrms = FALSE;
    __GXData->dirtyState |= GX_DIRTY_VCD;
}

/* ############################################################################################## */

static inline void SETVAT(u32* vatA, u32* vatB, u32* vatC, GXAttr attr, GXCompCnt compCnt,
                          GXCompType compType, u8 shift) {
    switch (attr) {
    case GX_VA_POS:
        GX_SET_REG(*vatA, compCnt, GX_CP_VAT_GRP0_POS_CNT_ST, GX_CP_VAT_GRP0_POS_CNT_END);
        GX_SET_REG(*vatA, compType, GX_CP_VAT_GRP0_POS_TYPE_ST, GX_CP_VAT_GRP0_POS_TYPE_END);
        GX_SET_REG(*vatA, shift, GX_CP_VAT_GRP0_POS_SHIFT_ST, GX_CP_VAT_GRP0_POS_SHIFT_END);
        break;
    case GX_VA_NRM:
    case GX_VA_NBT:
        GX_SET_REG(*vatA, compType, GX_CP_VAT_GRP0_NRM_TYPE_ST, GX_CP_VAT_GRP0_NRM_TYPE_END);
        if (compCnt == GX_NRM_NBT3) {
            // Probably because the compCnt can only be one bit?
            GX_SET_REG(*vatA, GX_NRM_NBT, GX_CP_VAT_GRP0_NRM_CNT_ST, GX_CP_VAT_GRP0_NRM_CNT_END);
            GX_SET_REG(*vatA, TRUE, GX_CP_VAT_GRP0_NRMIDX3_ST, GX_CP_VAT_GRP0_NRMIDX3_END);
        } else {
            GX_SET_REG(*vatA, compCnt, GX_CP_VAT_GRP0_NRM_CNT_ST, GX_CP_VAT_GRP0_NRM_CNT_END);
            GX_SET_REG(*vatA, FALSE, GX_CP_VAT_GRP0_NRMIDX3_ST, GX_CP_VAT_GRP0_NRMIDX3_END);
        }
        break;
    case GX_VA_CLR0:
        GX_SET_REG(*vatA, compCnt, GX_CP_VAT_GRP0_CLRDIFF_CNT_ST, GX_CP_VAT_GRP0_CLRDIFF_CNT_END);
        GX_SET_REG(*vatA, compType, GX_CP_VAT_GRP0_CLRDIFF_TYPE_ST,
                   GX_CP_VAT_GRP0_CLRDIFF_TYPE_END);
        break;
    case GX_VA_CLR1:
        GX_SET_REG(*vatA, compCnt, GX_CP_VAT_GRP0_CLRSPEC_CNT_ST, GX_CP_VAT_GRP0_CLRSPEC_CNT_END);
        GX_SET_REG(*vatA, compType, GX_CP_VAT_GRP0_CLRSPEC_TYPE_ST,
                   GX_CP_VAT_GRP0_CLRSPEC_TYPE_END);
        break;
    case GX_VA_TEX0:
        GX_SET_REG(*vatA, compCnt, GX_CP_VAT_GRP0_TXC0_CNT_ST, GX_CP_VAT_GRP0_TXC0_CNT_END);
        GX_SET_REG(*vatA, compType, GX_CP_VAT_GRP0_TXC0_TYPE_ST, GX_CP_VAT_GRP0_TXC0_TYPE_END);
        GX_SET_REG(*vatA, shift, GX_CP_VAT_GRP0_TXC0_SHIFT_ST, GX_CP_VAT_GRP0_TXC0_SHIFT_END);
        break;
    case GX_VA_TEX1:
        GX_SET_REG(*vatB, compCnt, GX_CP_VAT_GRP1_TXC1_CNT_ST, GX_CP_VAT_GRP1_TXC1_CNT_END);
        GX_SET_REG(*vatB, compType, GX_CP_VAT_GRP1_TXC1_TYPE_ST, GX_CP_VAT_GRP1_TXC1_TYPE_END);
        GX_SET_REG(*vatB, shift, GX_CP_VAT_GRP1_TXC1_SHIFT_ST, GX_CP_VAT_GRP1_TXC1_SHIFT_END);
        break;
    case GX_VA_TEX2:
        GX_SET_REG(*vatB, compCnt, GX_CP_VAT_GRP1_TXC2_CNT_ST, GX_CP_VAT_GRP1_TXC2_CNT_END);
        GX_SET_REG(*vatB, compType, GX_CP_VAT_GRP1_TXC2_TYPE_ST, GX_CP_VAT_GRP1_TXC2_TYPE_END);
        GX_SET_REG(*vatB, shift, GX_CP_VAT_GRP1_TXC2_SHIFT_ST, GX_CP_VAT_GRP1_TXC2_SHIFT_END);
        break;
    case GX_VA_TEX3:
        GX_SET_REG(*vatB, compCnt, GX_CP_VAT_GRP1_TXC3_CNT_ST, GX_CP_VAT_GRP1_TXC3_CNT_END);
        GX_SET_REG(*vatB, compType, GX_CP_VAT_GRP1_TXC3_TYPE_ST, GX_CP_VAT_GRP1_TXC3_TYPE_END);
        GX_SET_REG(*vatB, shift, GX_CP_VAT_GRP1_TXC3_SHIFT_ST, GX_CP_VAT_GRP1_TXC3_SHIFT_END);
        break;
    case GX_VA_TEX4:
        GX_SET_REG(*vatB, compCnt, GX_CP_VAT_GRP1_TXC4_CNT_ST, GX_CP_VAT_GRP1_TXC4_CNT_END);
        GX_SET_REG(*vatB, compType, GX_CP_VAT_GRP1_TXC4_TYPE_ST, GX_CP_VAT_GRP1_TXC4_TYPE_END);
        GX_SET_REG(*vatC, shift, GX_CP_VAT_GRP2_TXC4_SHIFT_ST, GX_CP_VAT_GRP2_TXC4_SHIFT_END);
        break;
    case GX_VA_TEX5:
        GX_SET_REG(*vatC, compCnt, GX_CP_VAT_GRP2_TXC5_CNT_ST, GX_CP_VAT_GRP2_TXC5_CNT_END);
        GX_SET_REG(*vatC, compType, GX_CP_VAT_GRP2_TXC5_TYPE_ST, GX_CP_VAT_GRP2_TXC5_TYPE_END);
        GX_SET_REG(*vatC, shift, GX_CP_VAT_GRP2_TXC5_SHIFT_ST, GX_CP_VAT_GRP2_TXC5_SHIFT_END);
        break;
    case GX_VA_TEX6:
        GX_SET_REG(*vatC, compCnt, GX_CP_VAT_GRP2_TXC6_CNT_ST, GX_CP_VAT_GRP2_TXC6_CNT_END);
        GX_SET_REG(*vatC, compType, GX_CP_VAT_GRP2_TXC6_TYPE_ST, GX_CP_VAT_GRP2_TXC6_TYPE_END);
        GX_SET_REG(*vatC, shift, GX_CP_VAT_GRP2_TXC6_SHIFT_ST, GX_CP_VAT_GRP2_TXC6_SHIFT_END);
        break;
    case GX_VA_TEX7:
        GX_SET_REG(*vatC, compCnt, GX_CP_VAT_GRP2_TXC7_CNT_ST, GX_CP_VAT_GRP2_TXC7_CNT_END);
        GX_SET_REG(*vatC, compType, GX_CP_VAT_GRP2_TXC7_TYPE_ST, GX_CP_VAT_GRP2_TXC7_TYPE_END);
        GX_SET_REG(*vatC, shift, GX_CP_VAT_GRP2_TXC7_SHIFT_ST, GX_CP_VAT_GRP2_TXC7_SHIFT_END);
        break;
    }
}

/* 8035B5C4-8035B820 355F04 025C+00 1/0 69/69 6/6 .text            GXSetVtxAttrFmt */
void GXSetVtxAttrFmt(GXVtxFmt format, GXAttr attr, GXCompCnt count, GXCompType type, u8 frac) {
    u32* vA = (u32*)&__GXData->vatA[format];
    u32* vB = (u32*)&__GXData->vatB[format];
    u32* vC = &__GXData->vatC[format];

    SETVAT(vA, vB, vC, attr, count, type, frac);

    __GXData->dirtyState |= GX_DIRTY_VAT;
    __GXData->dirtyVAT |= (u8)(1 << (u8)format);
}

/* 8035B820-8035BAA0 356160 0280+00 1/0 1/1 1/1 .text            GXSetVtxAttrFmtv */
void GXSetVtxAttrFmtv(GXVtxFmt format, GXVtxAttrFmtList* list) {
    u32* vatA;
    u32* vatB;
    u32* vatC;

    vatA = (u32*)&__GXData->vatA[format];
    vatB = (u32*)&__GXData->vatB[format];
    vatC = &__GXData->vatC[format];

    for (; list->mAttrib != GX_VA_NULL; list++) {
        SETVAT(vatA, vatB, vatC, list->mAttrib, list->mCompCnt, list->mCompType, list->mCompShift);
    }

    __GXData->dirtyState |= GX_DIRTY_VAT;
    __GXData->dirtyVAT |= (u8)(1 << (u8)format);
}

/* 8035BAA0-8035BB28 3563E0 0088+00 0/0 2/2 0/0 .text            __GXSetVAT */
void __GXSetVAT(void) {
    u32 i = 0;
    u32 dirtyVAT = __GXData->dirtyVAT;
    do {
        if (dirtyVAT & (1)) {
            GX_CP_LOAD_REG(GX_CP_REG_VAT_GRP0 | i, __GXData->vatA[i]);
            GX_CP_LOAD_REG(GX_CP_REG_VAT_GRP1 | i, __GXData->vatB[i]);
            GX_CP_LOAD_REG(GX_CP_REG_VAT_GRP2 | i, __GXData->vatC[i]);
        }
        dirtyVAT >>= 1;
        i++;
    } while (dirtyVAT != 0);

    __GXData->dirtyVAT = 0;
}

static u8 GetFracForNrm(int param_0) {
    int var_r31;

    switch (param_0) {
    case 1:
        var_r31 = 6;
        break;
    case 3:
        var_r31 = 14;
        break;
    default:
    case 2:
        var_r31 = 0;
        break;
    }

    return var_r31;
}

void GXGetVtxAttrFmtv(GXVtxFmt param_0, GXVtxAttrFmtList* param_1) {
    s32 tmp;
    s32 tmp2;
    s32 tmp3;
    int i;

#ifdef DEBUG
    // not fully matching
    /* tmp = 1;
    if (data_8074d3c8 != 0) {
        OSPanic("GXAttr.c", 941, "\'GXGetVtxAttrFmtv\' is not allowed between GXBegin/GXEnd");
        tmp = 0;
    }

    tmp2 = 1;
    if (param_1 == NULL) {
        OSPanic("GXAttr.c", 942, "GXSetVtxAttrFmt: list pointer is NULL");
        tmp2 = 0;
    }

    tmp3 = 1;
    if (param_0 >= 8) {
        OSPanic("GXAttr.c", 943, "GXSetVtxAttrFmt: Format Index is out of range");
        tmp3 = 0;
    } */
#endif

    for (i = 9; i <= 0x14; i++) {
        param_1->mAttrib = i;
        GXGetVtxAttrFmt(param_0, i, &param_1->mCompCnt, &param_1->mCompType, &param_1->mCompShift);
        param_1++;
    }

    param_1->mAttrib = 0xFF;
}

void GXGetVtxAttrFmt(GXVtxFmt param_0, int param_1, GXCompCnt* param_2, GXCompType* param_3,
                     u8* param_4) {
    s32 tmp;
    s32 tmp2;
    GXCompCnt* tmp_1;
    GXCompCnt* tmp_2;
    u32* tmp_3;

#ifdef DEBUG
    // not fully matching
    /* tmp = 1;
    if (data_8074d3c8) {
        OSPanic("GXAttr.c", 844, "\'GXGetVtxAttrFmt\' is not allowed between GXBegin/GXEnd");
        tmp = 0;
    }

    tmp2 = 1;
    if (param_0 >= 8) {
        OSPanic("GXAttr.c", 845, "GXSetVtxAttrFmt: Format Index is out of range");
        tmp2 = 0;
    } */
#endif

    tmp_1 = (GXCompCnt*)&__GXData->vatA[param_0];
    tmp_2 = (GXCompCnt*)&__GXData->vatB[param_0];
    tmp_3 = &__GXData->vatC[param_0];

    switch (param_1) {
    case 9:
        *param_2 = *tmp_1 & 1;
        *param_3 = (*tmp_1 & 0xE) >> 1;
        *param_4 = (*tmp_1 & 0x1F0) >> 4;
        break;
    case 10:
    case 0x19:
        *param_2 = (*tmp_1 & 0x200) >> 9;
        if (*param_2 == 1 && ((*tmp_1 & 0x80000000) >> 31) != 0) {
            *param_2 = 2;
        }

        *param_3 = (*tmp_1 & 0x1C00) >> 10;
        *param_4 = GetFracForNrm(*param_3);
        break;
    case 11:
        *param_2 = (*tmp_1 & 0x2000) >> 0xd;
        *param_3 = (*tmp_1 & 0x1C000) >> 0xe;
        *param_4 = 0;
        break;
    case 12:
        *param_2 = (*tmp_1 & 0x20000) >> 0x11;
        *param_3 = (*tmp_1 & 0x1C0000) >> 0x12;
        *param_4 = 0;
        break;
    case 13:
        *param_2 = (*tmp_1 & 0x200000) >> 0x15;
        *param_3 = (*tmp_1 & 0x1C00000) >> 0x16;
        *param_4 = ((*tmp_1 & 0x3e000000)) >> 25;
        break;
    case 14:
        *param_2 = *tmp_2 & 1;
        *param_3 = (*tmp_2 & 0xE) >> 1;
        *param_4 = (*tmp_2 & 0x1F0) >> 4;
        break;
    case 15:
        *param_2 = (*tmp_2 & 0x200) >> 9;
        *param_3 = (*tmp_2 & 0x1C00) >> 10;
        *param_4 = (*tmp_2 & 0x3E000) >> 13;
        break;
    case 16:
        *param_2 = (*tmp_2 & 0x40000) >> 0x12;
        *param_3 = (*tmp_2 & 0x380000) >> 0x13;
        *param_4 = (*tmp_2 & 0x7C00000) >> 0x16;
        break;
    case 17:
        *param_2 = (*tmp_2 & 0x8000000) >> 0x1B;
        *param_3 = (*tmp_2 & 0x70000000) >> 0x1C;
        *param_4 = (*tmp_3 & 0x1F);
        break;
    case 18:
        *param_2 = (*tmp_3 & 0x20) >> 5;
        *param_3 = (*tmp_3 & 0x1C0) >> 6;
        *param_4 = (*tmp_3 & 0x3E00) >> 9;
        break;
    case 19:
        *param_2 = (*tmp_3 & 0x4000) >> 0xe;
        *param_3 = (*tmp_3 & 0x38000) >> 0xf;
        *param_4 = (*tmp_3 & 0x7c0000) >> 0x12;
        break;
    case 20:
        *param_2 = (*tmp_3 & 0x800000) >> 0x17;
        *param_3 = (*tmp_3 & 0x7000000) >> 0x18;
        *param_4 = (*tmp_3 & 0xF8000000) >> 0x1b;
        break;
    default:
        *param_2 = 1;
        *param_3 = 0;
        *param_4 = 0;
    }
}

/* 8035BB28-8035BB6C 356468 0044+00 0/0 13/13 5/5 .text            GXSetArray */
void GXSetArray(GXAttr attr, void* basePtr, u8 stride) {
    s32 newAttr;
    s32 attrReg;

    newAttr = attr;
    if (newAttr == GX_VA_NBT) {
        newAttr = GX_VA_NRM;
    }

    attrReg = newAttr - GX_VA_POS;

    GX_CP_LOAD_REG(GX_BP_REG_SETMODE0_TEX4 | attrReg,
                   // Address -> offset?
                   (u32)basePtr & ~0xC0000000);

    GX_CP_LOAD_REG(GX_BP_REG_SETIMAGE2_TEX4 | attrReg, stride);
}

/* 8035BB6C-8035BB7C 3564AC 0010+00 0/0 6/6 0/0 .text            GXInvalidateVtxCache */
void GXInvalidateVtxCache(void) {
    GXWGFifo.u8 = GX_FIFO_CMD_INVAL_VTX;
}

/* 8035BB7C-8035BDFC 3564BC 0280+00 2/0 46/46 5/5 .text            GXSetTexCoordGen2 */
void GXSetTexCoordGen2(GXTexCoordID id, GXTexGenType type, GXTexGenSrc src, u32 texMtxIdx,
                       GXBool normalize, u32 dualTexMtxIdx) {
    u32 reg;
    u32 inputRow;
    GXXfTexReg inputForm;

    reg = 0;
    inputForm = GX_XF_TEX_FORM_AB11;
    inputRow = 5;

    switch (src) {
    case GX_TG_POS:
        inputRow = 0;
        inputForm = GX_XF_TEX_FORM_ABC1;
        break;
    case GX_TG_NRM:
        inputRow = 1;
        inputForm = GX_XF_TEX_FORM_ABC1;
        break;
    case GX_TG_BINRM:
        inputRow = 3;
        inputForm = GX_XF_TEX_FORM_ABC1;
        break;
    case GX_TG_TANGENT:
        inputRow = 4;
        inputForm = GX_XF_TEX_FORM_ABC1;
        break;
    case GX_TG_COLOR0:
        inputRow = 2;
        break;
    case GX_TG_COLOR1:
        inputRow = 2;
        break;
    case GX_TG_TEX0:
        inputRow = 5;
        break;
    case GX_TG_TEX1:
        inputRow = 6;
        break;
    case GX_TG_TEX2:
        inputRow = 7;
        break;
    case GX_TG_TEX3:
        inputRow = 8;
        break;
    case GX_TG_TEX4:
        inputRow = 9;
        break;
    case GX_TG_TEX5:
        inputRow = 10;
        break;
    case GX_TG_TEX6:
        inputRow = 11;
        break;
    case GX_TG_TEX7:
        inputRow = 12;
        break;
    }

    switch (type) {
    case GX_TG_NRM:
        GX_SET_REG(reg, GX_XF_TEX_PROJ_ST, GX_XF_TEX_PROJTYPE_ST,
                   GX_XF_TEX_PROJTYPE_END);  // 2x4 projection
        GX_SET_REG(reg, inputForm, GX_XF_TEX_INPUTFORM_ST, GX_XF_TEX_INPUTFORM_END);
        GX_SET_REG(reg, GX_TG_POS, GX_XF_TEX_TEXGENTYPE_ST, GX_XF_TEX_TEXGENTYPE_END);
        GX_SET_REG(reg, inputRow, GX_XF_TEX_SRCROW_ST, GX_XF_TEX_SRCROW_END);
        break;
    case GX_TG_POS:
        GX_SET_REG(reg, GX_XF_TEX_PROJ_STQ, GX_XF_TEX_PROJTYPE_ST,
                   GX_XF_TEX_PROJTYPE_END);  // 3x4 projection
        GX_SET_REG(reg, inputForm, GX_XF_TEX_INPUTFORM_ST, GX_XF_TEX_INPUTFORM_END);
        GX_SET_REG(reg, GX_TG_POS, GX_XF_TEX_TEXGENTYPE_ST, GX_XF_TEX_TEXGENTYPE_END);
        GX_SET_REG(reg, inputRow, GX_XF_TEX_SRCROW_ST, GX_XF_TEX_SRCROW_END);
        break;
    case GX_TG_BUMP0:
    case GX_TG_BUMP1:
    case GX_TG_BUMP2:
    case GX_TG_BUMP3:
    case GX_TG_BUMP4:
    case GX_TG_BUMP5:
    case GX_TG_BUMP6:
    case GX_TG_BUMP7:
        GX_SET_REG(reg, GX_XF_TEX_PROJ_ST, GX_XF_TEX_PROJTYPE_ST,
                   GX_XF_TEX_PROJTYPE_END);  // 2x4 projection
        GX_SET_REG(reg, inputForm, GX_XF_TEX_INPUTFORM_ST, GX_XF_TEX_INPUTFORM_END);
        GX_SET_REG(reg, GX_TG_NRM, GX_XF_TEX_TEXGENTYPE_ST, GX_XF_TEX_TEXGENTYPE_END);
        GX_SET_REG(reg, inputRow, GX_XF_TEX_SRCROW_ST, GX_XF_TEX_SRCROW_END);
        GX_SET_REG(reg, src - GX_TG_TEXCOORD0, GX_XF_TEX_BUMPSRCTEX_ST, GX_XF_TEX_BUMPSRCTEX_END);
        GX_SET_REG(reg, type - GX_TG_BUMP0, GX_XF_TEX_BUMPSRCLIGHT_ST, GX_XF_TEX_BUMPSRCLIGHT_END);
        break;
    case GX_TG_SRTG:
        GX_SET_REG(reg, GX_XF_TEX_PROJ_ST, GX_XF_TEX_PROJTYPE_ST,
                   GX_XF_TEX_PROJTYPE_END);  // 2x4 projection
        GX_SET_REG(reg, inputForm, GX_XF_TEX_INPUTFORM_ST, GX_XF_TEX_INPUTFORM_END);

        if (src == GX_TG_COLOR0) {
            GX_SET_REG(reg, GX_XF_TG_CLR0, GX_XF_TEX_TEXGENTYPE_ST, GX_XF_TEX_TEXGENTYPE_END);
        } else {
            GX_SET_REG(reg, GX_XF_TG_CLR1, GX_XF_TEX_TEXGENTYPE_ST, GX_XF_TEX_TEXGENTYPE_END);
        }
        GX_SET_REG(reg, 2, GX_XF_TEX_SRCROW_ST, GX_XF_TEX_SRCROW_END);
        break;
    default:
        break;
    }

    GX_XF_LOAD_REG(GX_XF_REG_TEX0 + id, reg);

    reg = 0;
    GX_SET_REG(reg, dualTexMtxIdx - 0x40, GX_XF_MTXIDX0_GEOM_ST, GX_XF_MTXIDX0_GEOM_END);
    GX_SET_REG(reg, normalize, GX_XF_DUALTEX_NORMALISE_ST, GX_XF_DUALTEX_NORMALISE_END);

    GX_XF_LOAD_REG(GX_XF_REG_DUALTEX0 + id, reg);

    switch (id) {
    case GX_TEXCOORD0:
        GX_SET_REG(__GXData->matIdxA, texMtxIdx, GX_XF_MTXIDX0_TEX0_ST, GX_XF_MTXIDX0_TEX0_END);
        break;
    case GX_TEXCOORD1:
        GX_SET_REG(__GXData->matIdxA, texMtxIdx, GX_XF_MTXIDX0_TEX1_ST, GX_XF_MTXIDX0_TEX1_END);
        break;
    case GX_TEXCOORD2:
        GX_SET_REG(__GXData->matIdxA, texMtxIdx, GX_XF_MTXIDX0_TEX2_ST, GX_XF_MTXIDX0_TEX2_END);
        break;
    case GX_TEXCOORD3:
        GX_SET_REG(__GXData->matIdxA, texMtxIdx, GX_XF_MTXIDX0_TEX3_ST, GX_XF_MTXIDX0_TEX3_END);
        break;
    case GX_TEXCOORD4:
        GX_SET_REG(__GXData->matIdxB, texMtxIdx, GX_XF_MTXIDX1_TEX4_ST, GX_XF_MTXIDX1_TEX4_END);
        break;
    case GX_TEXCOORD5:
        GX_SET_REG(__GXData->matIdxB, texMtxIdx, GX_XF_MTXIDX1_TEX5_ST, GX_XF_MTXIDX1_TEX5_END);
        break;
    case GX_TEXCOORD6:
        GX_SET_REG(__GXData->matIdxB, texMtxIdx, GX_XF_MTXIDX1_TEX6_ST, GX_XF_MTXIDX1_TEX6_END);
        break;
    default:
        GX_SET_REG(__GXData->matIdxB, texMtxIdx, GX_XF_MTXIDX1_TEX7_ST, GX_XF_MTXIDX1_TEX7_END);
        break;
    }
    __GXSetMatrixIndex(id + 1);
}

/* 8035BDFC-8035BE38 35673C 003C+00 0/0 59/59 6/6 .text            GXSetNumTexGens */
void GXSetNumTexGens(u8 count) {
    GX_SET_REG(__GXData->genMode, count, GX_BP_GENMODE_NUMTEX_ST, GX_BP_GENMODE_NUMTEX_END);
    GX_XF_LOAD_REG(GX_XF_REG_NUMTEX, count);
    __GXData->dirtyState |= GX_DIRTY_GEN_MODE;
}
