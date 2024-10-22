#include "dolphin/gx/GXFrameBuf.h"
#include "dolphin/gx.h"

GXRenderModeObj GXNtsc480IntDf = {
    VI_TVMODE_NTSC_INT,
    640,
    480,
    480,
    40,
    0,
    640,
    480,
    VI_XFBMODE_DF,
    GX_FALSE,
    GX_FALSE,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    8,
    8,
    10,
    12,
    10,
    8,
    8,
};

GXRenderModeObj GXNtsc480Int = {
    VI_TVMODE_NTSC_INT,
    640,
    480,
    480,
    40,
    0,
    640,
    480,
    VI_XFBMODE_DF,
    GX_FALSE,
    GX_FALSE,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    0,
    0,
    21,
    22,
    21,
    0,
    0,
};

GXRenderModeObj GXMpal480IntDf = {
    VI_TVMODE_MPAL_INT,
    640,
    480,
    480,
    40,
    0,
    640,
    480,
    VI_XFBMODE_DF,
    GX_FALSE,
    GX_FALSE,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    8,
    8,
    10,
    12,
    10,
    8,
    8,
};

GXRenderModeObj GXPal528IntDf = {
    VI_TVMODE_PAL_INT,
    640,
    528,
    528,
    40,
    23,
    640,
    528,
    VI_XFBMODE_DF,
    GX_FALSE,
    GX_FALSE,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    8,
    8,
    10,
    12,
    10,
    8,
    8,
};

GXRenderModeObj GXEurgb60Hz480IntDf = {
    VI_TVMODE_EURGB60_INT,
    640,
    480,
    480,
    40,
    0,
    640,
    480,
    VI_XFBMODE_DF,
    GX_FALSE,
    GX_FALSE,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    8,
    8,
    10,
    12,
    10,
    8,
    8,
};

/* 8035CA04-8035CA80 357344 007C+00 0/0 2/2 0/0 .text            GXSetDispCopySrc */
void GXSetDispCopySrc(u16 left, u16 top, u16 width, u16 height) {
    __GXData->cpDispSrc = 0;
    GX_BITFIELD_SET(__GXData->cpDispSrc, 22, 10, left);
    GX_BITFIELD_SET(__GXData->cpDispSrc, 12, 10, top);
    GX_BITFIELD_SET(__GXData->cpDispSrc, 0, 8, 73);

    __GXData->cpDispSize = 0;
    GX_BITFIELD_SET(__GXData->cpDispSize, 22, 10, width - 1);
    GX_BITFIELD_SET(__GXData->cpDispSize, 12, 10, height - 1);
    GX_BITFIELD_SET(__GXData->cpDispSize, 0, 8, 74);
}

/* 8035CA80-8035CAFC 3573C0 007C+00 0/0 9/9 0/0 .text            GXSetTexCopySrc */
void GXSetTexCopySrc(u16 left, u16 top, u16 width, u16 height) {
    __GXData->cpTexSrc = 0;
    GX_BITFIELD_SET(__GXData->cpTexSrc, 22, 10, left);
    GX_BITFIELD_SET(__GXData->cpTexSrc, 12, 10, top);
    GX_BITFIELD_SET(__GXData->cpTexSrc, 0, 8, 0x49);
    __GXData->cpTexSize = 0;
    GX_BITFIELD_SET(__GXData->cpTexSize, 22, 10, width - 1);
    GX_BITFIELD_SET(__GXData->cpTexSize, 12, 10, height - 1);
    GX_BITFIELD_SET(__GXData->cpTexSize, 0, 8, 0x4A);
}

/* 8035CAFC-8035CB30 35743C 0034+00 0/0 2/2 0/0 .text            GXSetDispCopyDst */
void GXSetDispCopyDst(u16 arg0, u16 arg1) {
    s32 val = (s32)((arg0 << 1) & 0xFFFE) >> 5;
    __GXData->cpDispStride = 0;
    GX_BITFIELD_SET(__GXData->cpDispStride, 22, 10, val);
    GX_BITFIELD_SET(__GXData->cpDispStride, 0, 8, 0x4D);
}

/* 8035CB30-8035CC60 357470 0130+00 0/0 9/9 0/0 .text            GXSetTexCopyDst */
void GXSetTexCopyDst(u16 width, u16 height, GXTexFmt format, GXBool useMIPmap) {
    u32 sp20, sp1C, sp18;
    u32 value;
    u8 depthRelated;

    __GXData->cpTexZ = GX_NONE;

    depthRelated = format & 0xf;
    if (format == GX_TF_Z16) {
        depthRelated = 0xb;
    }

    switch (format) {
    case GX_TF_I4:
    case GX_TF_I8:
    case GX_TF_IA4:
    case GX_TF_IA8:
    case GX_CTF_A8:
        GX_SET_REG(__GXData->cpTex, 3, 15, 16);
        break;
    default:
        GX_SET_REG(__GXData->cpTex, 2, 15, 16);
        break;
    }

    __GXData->cpTexZ = (format & 0x10) == 0x10;

    value = depthRelated >> 3;

    GX_SET_REG(__GXData->cpTex, value, 28, 28);

    depthRelated &= 7;

    __GetImageTileCount(format, width, height, &sp20, &sp1C, &sp18);

    __GXData->cpTexStride = GX_NONE;
    GX_SET_REG(__GXData->cpTexStride, sp20 * sp18, 22, 31);
    GX_SET_REG(__GXData->cpTexStride, 0x4D, 0, 7);

    GX_SET_REG(__GXData->cpTex, useMIPmap, 22, 22);
    GX_SET_REG(__GXData->cpTex, depthRelated, 25, 27);
}

/* 8035CC60-8035CC84 3575A0 0024+00 0/0 1/1 0/0 .text            GXSetDispCopyFrame2Field */
void GXSetDispCopyFrame2Field(GXCopyMode arg0) {
    GX_BITFIELD_SET(__GXData->cpDisp, 18, 2, arg0);
    GX_BITFIELD_SET(__GXData->cpTex, 18, 2, 0);
}

// clang-format off
#define INSERT_FIELD(reg, value, nbits, shift)                                 \
    (reg) = ((u32) (reg) & ~(((1 << (nbits)) - 1) << (shift))) |               \
            ((u32) (value) << (shift));
// clang-format on

/* 8035CC84-8035CCDC 3575C4 0058+00 0/0 2/2 0/0 .text            GXSetCopyClamp */
void GXSetCopyClamp(GXFBClamp clamp) {
    u8 isTop = (clamp & GX_CLAMP_TOP) == GX_CLAMP_TOP;
    u8 isBottom = (clamp & GX_CLAMP_BOTTOM) == GX_CLAMP_BOTTOM;
    __GXData->cpDisp = __rlwimi(__GXData->cpDisp, isTop, 0, 31, 31);
    __GXData->cpDisp = __rlwimi(__GXData->cpDisp, isBottom, 1, 30, 30);
    __GXData->cpTex = __rlwimi(__GXData->cpTex, isTop, 0, 31, 31);
    __GXData->cpTex = __rlwimi(__GXData->cpTex, isBottom, 1, 30, 30);
}

static u32 __GXGetNumXfbLines(u32 height, u32 scale) {
    u32 numLines;
    u32 actualHeight;
    u32 newScale;

    numLines = (height - 1) * 0x100;
    actualHeight = (numLines / scale) + 1;

    newScale = scale;

    if (newScale > 0x80 && newScale < 0x100) {
        while (newScale % 2 == 0) {
            newScale /= 2;
        }

        if (height % newScale == 0) {
            actualHeight++;
        }
    }

    if (actualHeight > 0x400) {
        actualHeight = 0x400;
    }

    return actualHeight;
}

/* 8035CCDC-8035CD6C 35761C 0090+00 0/0 2/2 0/0 .text            GXGetNumXfbLines */
u16 GXGetNumXfbLines(const u16 efbHeight, f32 yScale) {
    u32 scale = (u32)(256.0f / yScale) & 0x1FF;

    return __GXGetNumXfbLines(efbHeight, scale);
}

/* 8035CD6C-8035CFA4 3576AC 0238+00 0/0 2/2 0/0 .text            GXGetYScaleFactor */
f32 GXGetYScaleFactor(u16 efbHeight, u16 xfbHeight) {
    u32 scale;
    u32 height1;
    u32 height2;
    f32 scale2;
    f32 scale1;

    height1 = xfbHeight;
    scale1 = (f32)xfbHeight / (f32)efbHeight;
    scale = (u32)(256.0f / scale1) & 0x1FF;
    height2 = __GXGetNumXfbLines(efbHeight, scale);

    while (height2 > xfbHeight) {
        height1--;
        scale1 = (f32)height1 / (f32)efbHeight;
        scale = (u32)(256.0f / scale1) & 0x1FF;
        height2 = __GXGetNumXfbLines(efbHeight, scale);
    }

    scale2 = scale1;
    while (height2 < xfbHeight) {
        scale2 = scale1;
        height1++;
        scale1 = (f32)height1 / (f32)efbHeight;
        scale = (u32)(256.0f / scale1) & 0x1FF;
        height2 = __GXGetNumXfbLines(efbHeight, scale);
    }

    return scale2;
}

/* 8035CFA4-8035D070 3578E4 00CC+00 0/0 2/2 0/0 .text            GXSetDispCopyYScale */
u32 GXSetDispCopyYScale(f32 vertScale) {
    u32 scale;
    GXBool check;
    u32 height;
    u32 reg;

    scale = (u32)(256.0f / vertScale) & 0x1FF;
    check = (scale != 0x100);

    reg = 0;
    GX_SET_REG(reg, scale, 23, 31);
    GX_SET_REG(reg, 0x4E, 0, 7);
    GX_BP_LOAD_REG(reg);
    __GXData->bpSentNot = GX_FALSE;

    GX_SET_REG(__GXData->cpDisp, check, 21, 21);

    height = (__GXData->cpDispSize >> 10 & 0x3FF) + 1;

    return __GXGetNumXfbLines(height, scale);
}

/* 8035D070-8035D0E8 3579B0 0078+00 0/0 2/2 0/0 .text            GXSetCopyClear */
void GXSetCopyClear(GXColor color, u32 clear_z) {
    u32 r6 = 0;
    GX_BITFIELD_SET(r6, 24, 8, color.r);
    GX_BITFIELD_SET(r6, 16, 8, color.a);
    GX_BITFIELD_SET(r6, 0, 8, 0x4f);
    GXWGFifo.u8 = 0x61;
    GXWGFifo.u32 = r6;

    r6 = 0;
    GX_BITFIELD_SET(r6, 24, 8, color.b);
    GX_BITFIELD_SET(r6, 16, 8, color.g);
    GX_BITFIELD_SET(r6, 0, 8, 0x50);
    GXWGFifo.u8 = 0x61;
    GXWGFifo.u32 = r6;

    r6 = 0;
    GX_BITFIELD_SET(r6, 8, 24, clear_z);
    GX_BITFIELD_SET(r6, 0, 8, 0x51);
    GXWGFifo.u8 = 0x61;
    GXWGFifo.u32 = r6;

    __GXData->bpSentNot = 0;
}

/* 8035D0E8-8035D2F0 357A28 0208+00 0/0 4/4 0/0 .text            GXSetCopyFilter */
void GXSetCopyFilter(GXBool useAA, u8 samplePattern[12][2], GXBool doVertFilt, u8 vFilt[7]) {
    u32 vals[4];
    u32 unk1;
    u32 unk2;

    if (useAA) {
        vals[0] = 0;
        GX_SET_REG(vals[0], samplePattern[0][0], 28, 31);
        GX_SET_REG(vals[0], samplePattern[0][1], 24, 27);
        GX_SET_REG(vals[0], samplePattern[1][0], 20, 23);
        GX_SET_REG(vals[0], samplePattern[1][1], 16, 19);
        GX_SET_REG(vals[0], samplePattern[2][0], 12, 15);
        GX_SET_REG(vals[0], samplePattern[2][1], 8, 11);
        GX_SET_REG(vals[0], 1, 0, 7);

        vals[1] = 0;
        GX_SET_REG(vals[1], samplePattern[3][0], 28, 31);
        GX_SET_REG(vals[1], samplePattern[3][1], 24, 27);
        GX_SET_REG(vals[1], samplePattern[4][0], 20, 23);
        GX_SET_REG(vals[1], samplePattern[4][1], 16, 19);
        GX_SET_REG(vals[1], samplePattern[5][0], 12, 15);
        GX_SET_REG(vals[1], samplePattern[5][1], 8, 11);
        GX_SET_REG(vals[1], 2, 0, 7);

        vals[2] = 0;
        GX_SET_REG(vals[2], samplePattern[6][0], 28, 31);
        GX_SET_REG(vals[2], samplePattern[6][1], 24, 27);
        GX_SET_REG(vals[2], samplePattern[7][0], 20, 23);
        GX_SET_REG(vals[2], samplePattern[7][1], 16, 19);
        GX_SET_REG(vals[2], samplePattern[8][0], 12, 15);
        GX_SET_REG(vals[2], samplePattern[8][1], 8, 11);
        GX_SET_REG(vals[2], 3, 0, 7);

        vals[3] = 0;
        GX_SET_REG(vals[3], samplePattern[9][0], 28, 31);
        GX_SET_REG(vals[3], samplePattern[9][1], 24, 27);
        GX_SET_REG(vals[3], samplePattern[10][0], 20, 23);
        GX_SET_REG(vals[3], samplePattern[10][1], 16, 19);
        GX_SET_REG(vals[3], samplePattern[11][0], 12, 15);
        GX_SET_REG(vals[3], samplePattern[11][1], 8, 11);
        GX_SET_REG(vals[3], 4, 0, 7);
    } else {
        vals[0] = 0x01666666;
        vals[1] = 0x02666666;
        vals[2] = 0x03666666;
        vals[3] = 0x04666666;
    }

    GX_BP_LOAD_REG(vals[0]);
    GX_BP_LOAD_REG(vals[1]);
    GX_BP_LOAD_REG(vals[2]);
    GX_BP_LOAD_REG(vals[3]);

    unk1 = 0;
    GX_SET_REG(unk1, 0x53, 0, 7);
    unk2 = 0;
    GX_SET_REG(unk2, 0x54, 0, 7);

    if (doVertFilt) {
        GX_SET_REG(unk1, vFilt[0], 26, 31);
        GX_SET_REG(unk1, vFilt[1], 20, 25);
        GX_SET_REG(unk1, vFilt[2], 14, 19);
        GX_SET_REG(unk1, vFilt[3], 8, 13);
        GX_SET_REG(unk2, vFilt[4], 26, 31);
        GX_SET_REG(unk2, vFilt[5], 20, 25);
        GX_SET_REG(unk2, vFilt[6], 14, 19);

    } else {
        GX_SET_REG(unk1, 0, 26, 31);
        GX_SET_REG(unk1, 0, 20, 25);
        GX_SET_REG(unk1, 21, 14, 19);
        GX_SET_REG(unk1, 22, 8, 13);
        GX_SET_REG(unk2, 21, 26, 31);
        GX_SET_REG(unk2, 0, 20, 25);
        GX_SET_REG(unk2, 0, 14, 19);
    }

    GX_BP_LOAD_REG(unk1);
    GX_BP_LOAD_REG(unk2);

    __GXData->bpSentNot = GX_FALSE;
}

/* 8035D2F0-8035D304 357C30 0014+00 0/0 2/2 0/0 .text            GXSetDispCopyGamma */
void GXSetDispCopyGamma(GXGamma gamma) {
    GX_BITFIELD_SET(__GXData->cpDisp, 23, 2, gamma);
}

/* 8035D304-8035D46C 357C44 0168+00 0/0 3/3 0/0 .text            GXCopyDisp */
void GXCopyDisp(void* dest, GXBool doClear) {
    u32 reg;
    u32 newDest;
    GXBool check;

    if (doClear) {
        reg = __GXData->zmode;
        GX_SET_REG(reg, 1, 31, 31);
        GX_SET_REG(reg, 7, 28, 30);
        GX_BP_LOAD_REG(reg);

        reg = __GXData->cmode0;
        GX_SET_REG(reg, 0, 31, 31);
        GX_SET_REG(reg, 0, 30, 30);
        GX_BP_LOAD_REG(reg);
    }

    check = GX_FALSE;
    if ((doClear || (__GXData->peCtrl & 0x7) == 3) && (__GXData->peCtrl >> 6 & 0x1) == 1) {
        check = GX_TRUE;
        reg = __GXData->peCtrl;
        GX_SET_REG(reg, 0, 25, 25);
        GX_BP_LOAD_REG(reg);
    }

    GX_BP_LOAD_REG(__GXData->cpDispSrc);
    GX_BP_LOAD_REG(__GXData->cpDispSize);
    GX_BP_LOAD_REG(__GXData->cpDispStride);

    newDest = (u32)dest & 0x3FFFFFFF;
    reg = 0;
    GX_SET_REG(reg, newDest >> 5, 11, 31);
    GX_SET_REG(reg, 0x4B, 0, 7);
    GX_BP_LOAD_REG(reg);

    GX_SET_REG(__GXData->cpDisp, doClear, 20, 20);
    GX_SET_REG(__GXData->cpDisp, 1, 17, 17);
    GX_SET_REG(__GXData->cpDisp, 0x52, 0, 7);
    GX_BP_LOAD_REG(__GXData->cpDisp);

    if (doClear) {
        GX_BP_LOAD_REG(__GXData->zmode);
        GX_BP_LOAD_REG(__GXData->cmode0);
    }

    if (check) {
        GX_BP_LOAD_REG(__GXData->peCtrl);
    }

    __GXData->bpSentNot = GX_FALSE;
}

/* 8035D46C-8035D5F8 357DAC 018C+00 0/0 9/9 0/0 .text            GXCopyTex */
void GXCopyTex(void* dest, GXBool doClear) {
    u32 reg;
    u32 reg2;
    u32 newDest;
    GXBool check;

    if (doClear) {
        reg = __GXData->zmode;
        GX_SET_REG(reg, 1, 31, 31);
        GX_SET_REG(reg, 7, 28, 30);
        GX_BP_LOAD_REG(reg);

        reg = __GXData->cmode0;
        GX_SET_REG(reg, 0, 31, 31);
        GX_SET_REG(reg, 0, 30, 30);
        GX_BP_LOAD_REG(reg);
    }

    check = GX_FALSE;
    reg2 = __GXData->peCtrl;
    if (__GXData->cpTexZ && (reg2 & 0x7) != 3) {
        check = GX_TRUE;
        GX_SET_REG(reg2, 3, 29, 31);
    }

    if ((doClear || (reg2 & 0x7) == 3) && (reg2 >> 6 & 0x1) == 1) {
        check = GX_TRUE;
        GX_SET_REG(reg2, 0, 25, 25);
    }

    if (check) {
        GX_BP_LOAD_REG(reg2);
    }

    GX_BP_LOAD_REG(__GXData->cpTexSrc);
    GX_BP_LOAD_REG(__GXData->cpTexSize);
    GX_BP_LOAD_REG(__GXData->cpTexStride);

    newDest = (u32)dest & 0x3FFFFFFF;
    reg = 0;
    GX_SET_REG(reg, newDest >> 5, 11, 31);
    GX_SET_REG(reg, 0x4B, 0, 7);
    GX_BP_LOAD_REG(reg);

    GX_SET_REG(__GXData->cpTex, doClear, 20, 20);
    GX_SET_REG(__GXData->cpTex, 0, 17, 17);
    GX_SET_REG(__GXData->cpTex, 0x52, 0, 7);
    GX_BP_LOAD_REG(__GXData->cpTex);

    if (doClear) {
        GX_BP_LOAD_REG(__GXData->zmode);
        GX_BP_LOAD_REG(__GXData->cmode0);
    }

    if (check) {
        GX_BP_LOAD_REG(__GXData->peCtrl);
    }

    __GXData->bpSentNot = GX_FALSE;
}

/* 8035D5F8-8035D630 357F38 0038+00 0/0 1/1 0/0 .text            GXClearBoundingBox */
void GXClearBoundingBox(void) {
    GXWGFifo.u8 = GX_LOAD_BP_REG;
    GXWGFifo.u32 = 0x550003FF;
    GXWGFifo.u8 = GX_LOAD_BP_REG;
    GXWGFifo.u32 = 0x560003FF;
    set_x2(GX_FALSE);
}