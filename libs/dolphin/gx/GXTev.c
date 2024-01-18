#include "dolphin/gx/GXTev.h"
#include "dolphin/gx.h"

/* ############################################################################################## */
/* 803D27C0-803D27D4 02F8E0 0014+00 1/1 0/0 0/0 .data            TEVCOpTableST0 */
static u32 TEVCOpTableST0[] = {
    0xC008F8AF,  // modulate
    0xC008A89F,  // decal
    0xC008AC8F,  // blend
    0xC008FFF8,  // replace
    0xC008FFFA,  // passclr
};

/* 803D27D4-803D27E8 02F8F4 0014+00 0/0 0/0 0/0 .data            TEVCOpTableST1 */
static u32 TEVCOpTableST1[] = {
    0xC008F80F,  // modulate
    0xC008089F,  // decal
    0xC0080C8F,  // blend
    0xC008FFF8,  // replace
    0xC008FFF0,  // passclr
};

/* 803D27E8-803D27FC 02F908 0014+00 0/0 0/0 0/0 .data            TEVAOpTableST0 */
static u32 TEVAOpTableST0[] = {
    0xC108F2F0,  // modulate
    0xC108FFD0,  // decal
    0xC108F2F0,  // blend
    0xC108FFC0,  // replace
    0xC108FFD0,  // passclr
};

/* 803D27FC-803D2810 02F91C 0014+00 0/0 0/0 0/0 .data            TEVAOpTableST1 */
static u32 TEVAOpTableST1[] = {
    0xC108F070,  // modulate
    0xC108FF80,  // decal
    0xC108F070,  // blend
    0xC108FFC0,  // replace
    0xC108FF80,  // passclr
};

/* 8035F198-8035F224 359AD8 008C+00 0/0 15/15 1/1 .text            GXSetTevOp */
void GXSetTevOp(GXTevStageID stage, GXTevMode mode) {
    u32* color;
    u32* alpha;
    u32 tevReg;

    if (stage == GX_TEVSTAGE0) {
        color = &TEVCOpTableST0[mode];
        alpha = &TEVAOpTableST0[mode];
    } else {
        color = &TEVCOpTableST1[mode];
        alpha = &TEVAOpTableST1[mode];
    }

    tevReg = __GXData->tevc[stage];
    tevReg = (*color & ~0xFF000000) | (tevReg & 0xFF000000);

    GX_WRITE_U8(0x61);
    GX_WRITE_U32(tevReg);

    __GXData->tevc[stage] = tevReg;

    tevReg = __GXData->teva[stage];
    tevReg = (*alpha & ~0xFF00000F) | (tevReg & 0xFF00000F);

    GX_WRITE_U8(0x61);
    GX_WRITE_U32(tevReg);

    __GXData->teva[stage] = tevReg;

    __GXData->bpSentNot = GX_FALSE;
}

/* 8035F224-8035F268 359B64 0044+00 0/0 49/49 5/5 .text            GXSetTevColorIn */
void GXSetTevColorIn(GXTevStageID stage, GXTevColorArg a, GXTevColorArg b, GXTevColorArg c,
                     GXTevColorArg d) {
    u32 tevReg;

    tevReg = __GXData->tevc[stage];

    FAST_FLAG_SET(tevReg, a, 12, 4);
    FAST_FLAG_SET(tevReg, b, 8, 4);
    FAST_FLAG_SET(tevReg, c, 4, 4);
    FAST_FLAG_SET(tevReg, d, 0, 4);

    GX_WRITE_U8(0x61);
    GX_WRITE_U32(tevReg);

    __GXData->tevc[stage] = tevReg;
    __GXData->bpSentNot = GX_FALSE;
}

/* 8035F268-8035F2AC 359BA8 0044+00 0/0 49/49 6/6 .text            GXSetTevAlphaIn */
void GXSetTevAlphaIn(GXTevStageID stage, GXTevAlphaArg a, GXTevAlphaArg b, GXTevAlphaArg c,
                     GXTevAlphaArg d) {
    u32 tevReg;

    tevReg = __GXData->teva[stage];

    FAST_FLAG_SET(tevReg, a, 13, 3);
    FAST_FLAG_SET(tevReg, b, 10, 3);
    FAST_FLAG_SET(tevReg, c, 7, 3);
    FAST_FLAG_SET(tevReg, d, 4, 3);

    GX_WRITE_U8(0x61);
    GX_WRITE_U32(tevReg);

    __GXData->teva[stage] = tevReg;
    __GXData->bpSentNot = GX_FALSE;
}

/* 8035F2AC-8035F314 359BEC 0068+00 0/0 50/50 5/5 .text            GXSetTevColorOp */
void GXSetTevColorOp(GXTevStageID stage, GXTevOp op, GXTevBias bias, GXTevScale scale,
                     GXBool doClamp, GXTevRegID outReg) {
    u32 tevReg;

    tevReg = __GXData->tevc[stage];
    FAST_FLAG_SET(tevReg, op & 1, 18, 1);

    if (op <= 1) {
        FAST_FLAG_SET(tevReg, scale, 20, 2);
        FAST_FLAG_SET(tevReg, bias, 16, 2);
    } else {
        FAST_FLAG_SET(tevReg, (op >> 1) & 3, 20, 2);
        FAST_FLAG_SET(tevReg, 3, 16, 2);
    }

    FAST_FLAG_SET(tevReg, doClamp, 19, 1);
    FAST_FLAG_SET(tevReg, outReg, 22, 2);

    GX_WRITE_U8(0x61);
    GX_WRITE_U32(tevReg);
    __GXData->tevc[stage] = tevReg;
    __GXData->bpSentNot = GX_FALSE;
}

/* 8035F314-8035F37C 359C54 0068+00 0/0 50/50 5/5 .text            GXSetTevAlphaOp */
void GXSetTevAlphaOp(GXTevStageID stage, GXTevOp op, GXTevBias bias, GXTevScale scale,
                     GXBool doClamp, GXTevRegID outReg) {
    u32 tevReg;

    tevReg = __GXData->teva[stage];
    FAST_FLAG_SET(tevReg, op & 1, 18, 1);

    if (op <= 1) {
        FAST_FLAG_SET(tevReg, scale, 20, 2);
        FAST_FLAG_SET(tevReg, bias, 16, 2);
    } else {
        FAST_FLAG_SET(tevReg, (op >> 1) & 3, 20, 2);
        FAST_FLAG_SET(tevReg, 3, 16, 2);
    }

    FAST_FLAG_SET(tevReg, doClamp, 19, 1);
    FAST_FLAG_SET(tevReg, outReg, 22, 2);

    GX_WRITE_U8(0x61);
    GX_WRITE_U32(tevReg);
    __GXData->teva[stage] = tevReg;
    __GXData->bpSentNot = GX_FALSE;
}

/* 8035F37C-8035F3DC 359CBC 0060+00 0/0 54/54 4/4 .text            GXSetTevColor */
void GXSetTevColor(GXTevRegID reg, GXColor color) {
    u32 col = *(u32*)&color;
    u32 ra = (0xE0 + reg * 2) << 24;
    u32 bg = (0xE1 + reg * 2) << 24;

    GX_SET_REG(ra, col >> 24, 24, 31);
    GX_SET_REG(bg, col >> 8, 24, 31);
    GX_SET_REG(bg, col >> 16, 12, 19);
    GX_SET_REG(ra, col & 0xFF, 12, 19);

    GX_BP_LOAD_REG(ra);
    GX_BP_LOAD_REG(bg);
    GX_BP_LOAD_REG(bg);
    GX_BP_LOAD_REG(bg);

    __GXData->bpSentNot = GX_FALSE;
}

/* 8035F3DC-8035F440 359D1C 0064+00 0/0 8/8 2/2 .text            GXSetTevColorS10 */
void GXSetTevColorS10(GXTevRegID reg, GXColorS10 color) {
    u32 col = *(u32*)&color;
    u32 col1 = ((u32*)&color)[1];
    u32 ra = (0xE0 + reg * 2) << 24;
    u32 bg = (0xE1 + reg * 2) << 24;

    GX_SET_REG(ra, col >> 16, 21, 31);
    GX_SET_REG(bg, col1 >> 16, 21, 31);
    GX_SET_REG(bg, col & 0x7FF, 9, 19);
    GX_SET_REG(ra, col1 & 0x7FF, 9, 19);

    GX_BP_LOAD_REG(ra);
    GX_BP_LOAD_REG(bg);
    GX_BP_LOAD_REG(bg);
    GX_BP_LOAD_REG(bg);

    __GXData->bpSentNot = GX_FALSE;
}

/* 8035F440-8035F4A4 359D80 0064+00 0/0 8/8 4/4 .text            GXSetTevKColor */
void GXSetTevKColor(GXTevKColorID id, GXColor color) {
    u32 col = *(u32*)&color;
    u32 ra;
    u32 bg;

    ra = (0xE0 + id * 2) << 24;
    GX_SET_REG(ra, col >> 24, 24, 31);
    GX_SET_REG(ra, col & 0xFF, 12, 19);
    GX_SET_REG(ra, 8, 8, 11);

    bg = (0xE1 + id * 2) << 24;
    GX_SET_REG(bg, col >> 8, 24, 31);
    GX_SET_REG(bg, col >> 16, 12, 19);
    GX_SET_REG(bg, 8, 8, 11);

    GX_BP_LOAD_REG(ra);
    GX_BP_LOAD_REG(bg);

    __GXData->bpSentNot = GX_FALSE;
}

/* 8035F4A4-8035F500 359DE4 005C+00 0/0 9/9 4/4 .text            GXSetTevKColorSel */
void GXSetTevKColorSel(GXTevStageID stage, GXTevKColorSel sel) {
    u32* reg;

    reg = &__GXData->tevKsel[stage >> 1];

    if (stage & 1) {
        GX_SET_REG(*reg, sel, 13, 17);
    } else {
        GX_SET_REG(*reg, sel, 23, 27);
    }

    GX_BP_LOAD_REG(*reg);

    __GXData->bpSentNot = GX_FALSE;
}

/* 8035F500-8035F55C 359E40 005C+00 0/0 9/9 4/4 .text            GXSetTevKAlphaSel */
void GXSetTevKAlphaSel(GXTevStageID stage, GXTevKAlphaSel sel) {
    u32* reg;

    reg = &__GXData->tevKsel[stage >> 1];

    if (stage & 1) {
        GX_SET_REG(*reg, sel, 8, 12);
    } else {
        GX_SET_REG(*reg, sel, 18, 22);
    }

    GX_BP_LOAD_REG(*reg);

    __GXData->bpSentNot = GX_FALSE;
}

/* 8035F55C-8035F5A4 359E9C 0048+00 0/0 10/10 5/5 .text            GXSetTevSwapMode */
void GXSetTevSwapMode(GXTevStageID stage, GXTevSwapSel rasSel, GXTevSwapSel texSel) {
    u32* reg = &__GXData->teva[stage];
    GX_SET_REG(*reg, rasSel, 30, 31);
    GX_SET_REG(*reg, texSel, 28, 29);

    GX_BP_LOAD_REG(*reg);

    __GXData->bpSentNot = GX_FALSE;
}

/* 8035F5A4-8035F624 359EE4 0080+00 0/0 17/17 2/2 .text            GXSetTevSwapModeTable */
void GXSetTevSwapModeTable(GXTevSwapSel table, GXTevColor red, GXTevColor green, GXTevColor blue,
                           GXTevColor alpha) {
    u32* reg;

    reg = &__GXData->tevKsel[table << 1];
    GX_SET_REG(*reg, red, 30, 31);
    GX_SET_REG(*reg, green, 28, 29);

    GX_BP_LOAD_REG(*reg);

    reg = &__GXData->tevKsel[(table << 1) + 1];
    GX_SET_REG(*reg, blue, 30, 31);
    GX_SET_REG(*reg, alpha, 28, 29);

    GX_BP_LOAD_REG(*reg);

    __GXData->bpSentNot = GX_FALSE;
}

/* 8035F624-8035F668 359F64 0044+00 0/0 43/43 5/5 .text            GXSetAlphaCompare */
void GXSetAlphaCompare(GXCompare comp0, u8 ref0, GXAlphaOp op, GXCompare comp1, u8 ref1) {
    u32 reg = 0xF3000000;

    GX_SET_REG(reg, ref0, 24, 31);
    GX_SET_REG(reg, ref1, 16, 23);
    GX_SET_REG(reg, comp0, 13, 15);
    GX_SET_REG(reg, comp1, 10, 12);
    GX_SET_REG(reg, op, 8, 9);

    GX_BP_LOAD_REG(reg);

    __GXData->bpSentNot = GX_FALSE;
}

/* 8035F668-8035F6F4 359FA8 008C+00 0/0 3/3 0/0 .text            GXSetZTexture */
void GXSetZTexture(GXZTexOp op, GXTexFmt format, u32 bias) {
    u32 val1;
    u32 val2;
    u32 val3;

    val1 = 0;
    GX_SET_REG(val1, bias, 8, 31);
    GX_SET_REG(val1, 0xF4, 0, 7);

    val2 = 0;
    switch (format) {
    case GX_TF_Z8:
        val3 = 0;
        break;
    case GX_TF_Z16:
        val3 = 1;
        break;
    case GX_TF_Z24X8:
        val3 = 2;
        break;
    default:
        val3 = 2;
        break;
    }

    GX_SET_REG(val2, val3, 30, 31);
    GX_SET_REG(val2, op, 28, 29);
    GX_SET_REG(val2, 0xF5, 0, 7);

    GX_BP_LOAD_REG(val1);

    GX_BP_LOAD_REG(val2);

    __GXData->bpSentNot = GX_FALSE;
}

/* 8035F6F4-8035F890 35A034 019C+00 0/0 65/65 6/6 .text            GXSetTevOrder */
void GXSetTevOrder(GXTevStageID stage, GXTexCoordID coord, GXTexMapID map, GXChannelID color) {
    static int c2r[] = {0, 1, 0, 1, 0, 1, 7, 5, 6};

    u32* reg;
    u32 tempMap;
    u32 tempCoord;

    reg = &__GXData->tref[stage / 2];
    __GXData->texmapId[stage] = map;

    tempMap = map & ~0x100;
    tempMap = (tempMap >= GX_MAX_TEXMAP) ? GX_TEXMAP0 : tempMap;

    if (coord >= GX_MAXCOORD) {
        tempCoord = GX_TEXCOORD0;
        __GXData->tevTcEnab = __GXData->tevTcEnab & ~(1 << stage);
    } else {
        tempCoord = coord;
        __GXData->tevTcEnab = __GXData->tevTcEnab | (1 << stage);
    }

    if (stage & 1) {
        GX_SET_REG(*reg, tempMap, 17, 19);
        GX_SET_REG(*reg, tempCoord, 14, 16);
        GX_SET_REG(*reg, (color == GX_COLOR_NULL ? 7 : c2r[color]), 10, 12);
        GX_SET_REG(*reg, ((map != GX_TEXMAP_NULL) && !(map & 0x100)), 13, 13);

    } else {
        GX_SET_REG(*reg, tempMap, 29, 31);
        GX_SET_REG(*reg, tempCoord, 26, 28);
        GX_SET_REG(*reg, (color == GX_COLOR_NULL ? 7 : c2r[color]), 22, 24);
        GX_SET_REG(*reg, ((map != GX_TEXMAP_NULL) && !(map & 0x100)), 25, 25);
    }

    GX_BP_LOAD_REG(*reg);

    __GXData->bpSentNot = GX_FALSE;
    __GXData->dirtyState |= 1;
}

/* 8035F890-8035F8B8 35A1D0 0028+00 0/0 63/63 6/6 .text            GXSetNumTevStages */
void GXSetNumTevStages(u8 count) {
    GX_SET_REG(__GXData->genMode, count - 1, 18, 21);

    __GXData->dirtyState |= 0x4;
}
