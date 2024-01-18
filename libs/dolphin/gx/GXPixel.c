#include "dolphin/gx/GXPixel.h"
#include "dolphin/gx.h"

/* 8035F8B8-8035FACC 35A1F8 0214+00 0/0 20/20 2/2 .text            GXSetFog */
void GXSetFog(GXFogType type, f32 startz, f32 endz, f32 nearz, f32 farz, GXColor color) {
    f32 a, c;
    u32 a_bits, c_bits;

    u32 fogColorReg = 0;
    u32 fogParamReg0 = 0;
    u32 fogParamReg1 = 0;
    u32 fogParamReg2 = 0;
    u32 fogParamReg3 = 0;

    u32 fsel = type & 7;
    BOOL isOrtho = (type >> 3) & 1;
    u32 col;

    if (isOrtho) {
        if (farz == nearz || endz == startz) {
            a = 0.0f;
            c = 0.0f;
        } else {
            a = (1.0f / (endz - startz)) * (farz - nearz);
            c = (1.0f / (endz - startz)) * (startz - nearz);
        }
    } else {
        f32 tmpA, tmpB, tmpC;
        u32 expB, magB, shiftB;

        if (farz == nearz || endz == startz) {
            tmpA = 0.0f;
            tmpB = 0.5f;
            tmpC = 0.0f;
        } else {
            tmpA = (farz * nearz) / ((farz - nearz) * (endz - startz));
            tmpB = farz / (farz - nearz);
            tmpC = startz / (endz - startz);
        }

        expB = 0;
        while (tmpB > 1.0) {
            tmpB /= 2.0f;
            expB++;
        }
        while (tmpB > 0.0f && tmpB < 0.5) {
            tmpB *= 2.0f;
            expB--;
        }

        a = tmpA / (1 << expB + 1);
        magB = 8388638.0f * tmpB;
        shiftB = expB + 1;
        c = tmpC;

        GX_SET_REG(fogParamReg1, magB, GX_BP_FOGPARAM1_B_MAG_ST, GX_BP_FOGPARAM1_B_MAG_END);
        GX_SET_REG(fogParamReg2, shiftB, GX_BP_FOGPARAM2_B_SHIFT_ST, GX_BP_FOGPARAM2_B_SHIFT_END);

        GX_SET_REG(fogParamReg1, GX_BP_REG_FOGPARAM1, 0, 7);
        GX_SET_REG(fogParamReg2, GX_BP_REG_FOGPARAM2, 0, 7);
    }

    a_bits = *(u32*)&a;
    c_bits = *(u32*)&c;

    GX_SET_REG(fogParamReg0, a_bits >> 12, GX_BP_FOGPARAM0_A_MANT_ST, GX_BP_FOGPARAM0_A_MANT_END);
    GX_SET_REG(fogParamReg0, a_bits >> 23, GX_BP_FOGPARAM0_A_EXP_ST, GX_BP_FOGPARAM0_A_EXP_END);
    GX_SET_REG(fogParamReg0, a_bits >> 31, GX_BP_FOGPARAM0_A_SIGN_ST, GX_BP_FOGPARAM0_A_SIGN_END);
    GX_SET_REG(fogParamReg0, GX_BP_REG_FOGPARAM0, 0, 7);

    GX_SET_REG(fogParamReg3, c_bits >> 12, GX_BP_FOGPARAM3_C_MANT_ST, GX_BP_FOGPARAM3_C_MANT_END);
    GX_SET_REG(fogParamReg3, c_bits >> 23, GX_BP_FOGPARAM3_C_EXP_ST, GX_BP_FOGPARAM3_C_EXP_END);
    GX_SET_REG(fogParamReg3, c_bits >> 31, GX_BP_FOGPARAM3_C_SIGN_ST, GX_BP_FOGPARAM3_C_SIGN_END);
    GX_SET_REG(fogParamReg3, isOrtho, GX_BP_FOGPARAM3_PROJ_ST, GX_BP_FOGPARAM3_PROJ_END);
    GX_SET_REG(fogParamReg3, fsel, GX_BP_FOGPARAM3_FSEL_ST, GX_BP_FOGPARAM3_FSEL_END);
    GX_SET_REG(fogParamReg3, GX_BP_REG_FOGPARAM3, 0, 7);

    col = *(u32*)&color;
    GX_SET_REG(fogColorReg, col >> 8, GX_BP_FOGCOLOR_RGB_ST, GX_BP_FOGCOLOR_RGB_END);
    GX_SET_REG(fogColorReg, GX_BP_REG_FOGCOLOR, 0, 7);

    GX_BP_LOAD_REG(fogParamReg0);
    GX_BP_LOAD_REG(fogParamReg1);
    GX_BP_LOAD_REG(fogParamReg2);
    GX_BP_LOAD_REG(fogParamReg3);
    GX_BP_LOAD_REG(fogColorReg);

    __GXData->bpSentNot = GX_FALSE;
}

/* 8035FACC-8035FBF0 35A40C 0124+00 0/0 9/9 2/2 .text            GXSetFogRangeAdj */
void GXSetFogRangeAdj(GXBool enable, u16 center, GXFogAdjTable* table) {
    u32 fogRangeReg;
    u32 fogRangeRegK;
    u32 i;

    if (enable) {
        for (i = 0; i < 10; i += 2) {
            fogRangeRegK = 0;
            GX_SET_REG(fogRangeRegK, table->fogVals[i], GX_BP_FOGRANGEK_HI_ST,
                       GX_BP_FOGRANGEK_HI_END);
            GX_SET_REG(fogRangeRegK, table->fogVals[i + 1], GX_BP_FOGRANGEK_LO_ST,
                       GX_BP_FOGRANGEK_LO_END);
            GX_SET_REG(fogRangeRegK, GX_BP_REG_FOGRANGEK0 + (i / 2), 0, 7);
            GX_BP_LOAD_REG(fogRangeRegK);
        }
    }

    fogRangeReg = 0;
    GX_SET_REG(fogRangeReg, center + 342, GX_BP_FOGRANGE_CENTER_ST, GX_BP_FOGRANGE_CENTER_END);
    GX_SET_REG(fogRangeReg, enable, GX_BP_FOGRANGE_ENABLED_ST, GX_BP_FOGRANGE_ENABLED_END);
    GX_SET_REG(fogRangeReg, GX_BP_REG_FOGRANGE, 0, 7);
    GX_BP_LOAD_REG(fogRangeReg);

    __GXData->bpSentNot = GX_FALSE;
}

/* 8035FBF0-8035FC44 35A530 0054+00 0/0 53/53 3/3 .text            GXSetBlendMode */
void GXSetBlendMode(GXBlendMode type, GXBlendFactor src_factor, GXBlendFactor dst_factor,
                    GXLogicOp op) {
    u32 blendModeReg = __GXData->cmode0;
    GX_SET_REG(blendModeReg, type == GX_BM_SUBTRACT, GX_BP_BLENDMODE_SUBTRACT_ST,
               GX_BP_BLENDMODE_SUBTRACT_END);
    GX_SET_REG(blendModeReg, type, GX_BP_BLENDMODE_ENABLE_ST, GX_BP_BLENDMODE_ENABLE_END);
    GX_SET_REG(blendModeReg, type == GX_BM_LOGIC, GX_BP_BLENDMODE_LOGIC_OP_ST,
               GX_BP_BLENDMODE_LOGIC_OP_END);
    GX_SET_REG(blendModeReg, op, GX_BP_BLENDMODE_LOGICMODE_ST, GX_BP_BLENDMODE_LOGICMODE_END);
    GX_SET_REG(blendModeReg, src_factor, GX_BP_BLENDMODE_SRCFACTOR_ST,
               GX_BP_BLENDMODE_SRCFACTOR_END);
    GX_SET_REG(blendModeReg, dst_factor, GX_BP_BLENDMODE_DSTFACTOR_ST,
               GX_BP_BLENDMODE_DSTFACTOR_END);

    GX_BP_LOAD_REG(blendModeReg);
    __GXData->cmode0 = blendModeReg;

    __GXData->bpSentNot = FALSE;
}

/* 8035FC44-8035FC70 35A584 002C+00 0/0 10/10 2/2 .text            GXSetColorUpdate */
void GXSetColorUpdate(GXBool updateEnable) {
    u32 blendModeReg = __GXData->cmode0;
    GX_SET_REG(blendModeReg, updateEnable, GX_BP_BLENDMODE_COLOR_UPDATE_ST,
               GX_BP_BLENDMODE_COLOR_UPDATE_END);
    GX_BP_LOAD_REG(blendModeReg);
    __GXData->cmode0 = blendModeReg;
    __GXData->bpSentNot = GX_FALSE;
}

/* 8035FC70-8035FC9C 35A5B0 002C+00 0/0 10/10 2/2 .text            GXSetAlphaUpdate */
void GXSetAlphaUpdate(GXBool updateEnable) {
    u32 blendModeReg = __GXData->cmode0;
    GX_SET_REG(blendModeReg, updateEnable, GX_BP_BLENDMODE_ALPHA_UPDATE_ST,
               GX_BP_BLENDMODE_ALPHA_UPDATE_END);
    GX_BP_LOAD_REG(blendModeReg);
    __GXData->cmode0 = blendModeReg;
    __GXData->bpSentNot = GX_FALSE;
}

/* 8035FC9C-8035FCD0 35A5DC 0034+00 0/0 40/40 6/6 .text            GXSetZMode */
void GXSetZMode(GXBool compareEnable, GXCompare func, GXBool updateEnable) {
    u32 zModeReg = __GXData->zmode;
    GX_SET_REG(zModeReg, compareEnable, GX_BP_ZMODE_TEST_ENABLE_ST, GX_BP_ZMODE_TEST_ENABLE_END);
    GX_SET_REG(zModeReg, func, GX_BP_ZMODE_COMPARE_ST, GX_BP_ZMODE_COMPARE_END);
    GX_SET_REG(zModeReg, updateEnable, GX_BP_ZMODE_UPDATE_ENABLE_ST, GX_BP_ZMODE_UPDATE_ENABLE_END);
    GX_BP_LOAD_REG(zModeReg);
    __GXData->zmode = zModeReg;
    __GXData->bpSentNot = GX_FALSE;
}

/* 8035FCD0-8035FD04 35A610 0034+00 0/0 29/29 5/5 .text            GXSetZCompLoc */
void GXSetZCompLoc(GXBool beforeTex) {
    GX_SET_REG(__GXData->peCtrl, beforeTex, GX_BP_ZCONTROL_BEFORE_TEX_ST,
               GX_BP_ZCONTROL_BEFORE_TEX_END);
    GX_BP_LOAD_REG(__GXData->peCtrl);
    __GXData->bpSentNot = GX_FALSE;
}

/* 8035FD04-8035FDD8 35A644 00D4+00 0/0 2/2 1/1 .text            GXSetPixelFmt */
void GXSetPixelFmt(GXPixelFmt pixelFmt, GXZFmt16 zFmt) {
    GXBool isZ16;
    static u32 p2f[GX_PF_MAX] = {GX_PF_RGB8_Z24, GX_PF_RGBA6_Z24, GX_PF_RGB565_Z16, GX_PF_Z24,
                                 GX_PF_Y8,       GX_PF_Y8,        GX_PF_Y8,         GX_PF_U8};

    const u32 zControlRegOld = __GXData->peCtrl;

    GX_SET_REG(__GXData->peCtrl, p2f[pixelFmt], GX_BP_ZCONTROL_PIXEL_FMT_ST,
               GX_BP_ZCONTROL_PIXEL_FMT_END);
    GX_SET_REG(__GXData->peCtrl, zFmt, GX_BP_ZCONTROL_Z_FMT_ST, GX_BP_ZCONTROL_Z_FMT_END);

    if (zControlRegOld != __GXData->peCtrl) {
        GX_BP_LOAD_REG(__GXData->peCtrl);
        isZ16 = (pixelFmt == GX_PF_RGB565_Z16) ? GX_TRUE : GX_FALSE;
        GX_SET_REG(__GXData->genMode, isZ16, GX_BP_GENMODE_MULTISAMPLE_ST,
                   GX_BP_GENMODE_MULTISAMPLE_END);
        __GXData->dirtyState |= GX_DIRTY_GEN_MODE;
    }

    if (p2f[pixelFmt] == GX_PF_Y8) {
        GX_SET_REG(__GXData->cmode1, pixelFmt - GX_PF_Y8, GX_BP_DSTALPHA_YUV_FMT_ST,
                   GX_BP_DSTALPHA_YUV_FMT_END);
        GX_SET_REG(__GXData->cmode1, GX_BP_REG_DSTALPHA, 0, 7);
        GX_BP_LOAD_REG(__GXData->cmode1);
    }

    __GXData->bpSentNot = FALSE;
}

/* 8035FDD8-8035FE04 35A718 002C+00 0/0 22/22 1/1 .text            GXSetDither */
void GXSetDither(GXBool dither) {
    u32 blendModeReg = __GXData->cmode0;
    GX_SET_REG(blendModeReg, dither, GX_BP_BLENDMODE_DITHER_ST, GX_BP_BLENDMODE_DITHER_END);
    GX_BP_LOAD_REG(blendModeReg);
    __GXData->cmode0 = blendModeReg;
    __GXData->bpSentNot = GX_FALSE;
}

/* 8035FE04-8035FE40 35A744 003C+00 0/0 2/2 0/0 .text            GXSetDstAlpha */
void GXSetDstAlpha(GXBool enable, u8 alpha) {
    u32 dstAlpha = __GXData->cmode1;
    GX_SET_REG(dstAlpha, alpha, GX_BP_DSTALPHA_ALPHA_ST, GX_BP_DSTALPHA_ALPHA_END);
    GX_SET_REG(dstAlpha, enable, GX_BP_DSTALPHA_ENABLE_ST, GX_BP_DSTALPHA_ENABLE_END);
    GX_BP_LOAD_REG(dstAlpha);
    __GXData->cmode1 = dstAlpha;
    __GXData->bpSentNot = GX_FALSE;
}

/* 8035FE40-8035FE78 35A780 0038+00 0/0 1/1 0/0 .text            GXSetFieldMask */
void GXSetFieldMask(GXBool enableEven, GXBool enableOdd) {
    u32 fieldMaskReg = 0;
    GX_SET_REG(fieldMaskReg, enableOdd, GX_BP_FIELDMASK_ODD_ST, GX_BP_FIELDMASK_ODD_END);
    GX_SET_REG(fieldMaskReg, enableEven, GX_BP_FIELDMASK_EVEN_ST, GX_BP_FIELDMASK_EVEN_END);
    GX_SET_REG(fieldMaskReg, GX_BP_REG_FIELDMASK, 0, 7);

    GX_BP_LOAD_REG(fieldMaskReg);
    __GXData->bpSentNot = GX_FALSE;
}

/* 8035FE78-8035FEF0 35A7B8 0078+00 0/0 1/1 0/0 .text            GXSetFieldMode */
void GXSetFieldMode(GXBool texLOD, GXBool adjustAR) {
    GX_SET_REG(__GXData->lpSize, adjustAR, GX_BP_LINEPTWIDTH_ADJUST_ST,
               GX_BP_LINEPTWIDTH_ADJUST_END);
    GX_BP_LOAD_REG(__GXData->lpSize);

    __GXFlushTextureState();
    GX_BP_LOAD_REG(GX_BP_REG_FIELDMODE << 24 | texLOD);
    __GXFlushTextureState();
}
