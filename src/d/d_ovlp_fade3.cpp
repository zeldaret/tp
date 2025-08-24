/**
 * d_ovlp_fade3.cpp
 *
 */

#include "d/dolzel.h"

#include "JSystem/J2DGraph/J2DOrthoGraph.h"
#include "d/d_ovlp_fade3.h"
#include "d/d_s_play.h"
#include "m_Do/m_Do_audio.h"
#include "m_Do/m_Do_graphic.h"

/* 80252ED4-80252F28 24D814 0054+00 1/0 0/0 0/0 .text            draw__16dDlst_snapShot_cFv */
void dDlst_snapShot_c::draw() {
    GXSetTexCopySrc(0, 0, 608, 448);
    GXSetTexCopyDst(608 / 2, 448 / 2, GX_TF_RGBA8, GX_TRUE);
    GXCopyTex(mDoGph_gInf_c::getFrameBufferTex(), GX_FALSE);
    GXPixModeSync();
}

/* 80252F28-8025343C 24D868 0514+00 1/0 0/0 0/0 .text            draw__15dOvlpFd3_dlst_cFv */
void dOvlpFd3_dlst_c::draw() {
    GXSetViewport(0.0f, 0.0f, 608.0f, 448.0f, 0.0f, 1.0f);
    GXSetScissor(0, 0, 608, 448);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGB, GX_RGBA4, 0);
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetNumChans(1);
    GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE,
                  GX_AF_NONE);
    GXSetNumTexGens(0);
    GXSetNumTevStages(1);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetZCompLoc(GX_TRUE);
    GXSetZMode(GX_FALSE, GX_ALWAYS, GX_FALSE);
    GXSetBlendMode(GX_BM_NONE, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
    GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
    GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 0.0f, g_clearColor);
    GXSetCullMode(GX_CULL_NONE);
    GXSetDither(GX_ENABLE);
    GXSetClipMode(GX_CLIP_DISABLE);
    GXLoadPosMtxImm(g_mDoMtx_identity, GX_PNMTX0);
    GXSetCurrentMtx(0);

    GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    GXPosition2s16(mDoGph_gInf_c::getMinX(), mDoGph_gInf_c::getMinY());
    GXPosition2s16(mDoGph_gInf_c::getMaxX(), mDoGph_gInf_c::getMinY());
    GXPosition2s16(mDoGph_gInf_c::getMaxX(), mDoGph_gInf_c::getMaxY());
    GXPosition2s16(mDoGph_gInf_c::getMinX(), mDoGph_gInf_c::getMaxY());
    GXEnd();

    Mtx44 m;
    C_MTXPerspective(m, 60.0f, mDoGph_gInf_c::getWidthF() / mDoGph_gInf_c::getHeightF(), 100.0f,
                     100000.0f);
    GXSetProjection(m, GX_PERSPECTIVE);
    GXInitTexObj(mDoGph_gInf_c::getFrameBufferTexObj(), mDoGph_gInf_c::getFrameBufferTex(), 304,
                 224, GX_TF_RGBA8, GX_CLAMP, GX_CLAMP, GX_FALSE);
    GXInitTexObjLOD(mDoGph_gInf_c::getFrameBufferTexObj(), GX_LINEAR, GX_LINEAR, 0.0f, 0.0f, 0.0f,
                    GX_FALSE, GX_FALSE, GX_ANISO_1);
    GXLoadTexObj(mDoGph_gInf_c::getFrameBufferTexObj(), GX_TEXMAP0);

    GXSetNumChans(1);
    GXSetChanCtrl(GX_COLOR0, 0, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
    GXColor color = {255, 255, 255, 255};
    GXSetChanMatColor(GX_COLOR0, color);
    GXSetNumTexGens(1);
    GXSetTexCoordGen2(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, 60, GX_FALSE, 125);
    GXSetNumTevStages(1);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_RASC, GX_CC_TEXC, GX_CC_ZERO);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetZCompLoc(GX_TRUE);
    GXSetZMode(GX_FALSE, GX_ALWAYS, GX_FALSE);
    GXSetBlendMode(GX_BM_NONE, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
    GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
    GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 0.0f, g_clearColor);
    GXSetCullMode(GX_CULL_NONE);
    GXSetDither(1);
    GXSetClipMode(GX_CLIP_ENABLE);
    GXLoadPosMtxImm(mMtx, GX_PNMTX0);
    GXSetCurrentMtx(0);
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGB, GX_RGBA4, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_RGB8, 0);

    GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    GXPosition2s16(-mDoGph_gInf_c::getWidth() / 2, mDoGph_gInf_c::getHeight() / 2);
    GXTexCoord2s8(0, 0);

    GXPosition2s16(mDoGph_gInf_c::getWidth() / 2, mDoGph_gInf_c::getHeight() / 2);
    GXTexCoord2s8(1, 0);

    GXPosition2s16(mDoGph_gInf_c::getWidth() / 2, -mDoGph_gInf_c::getHeight() / 2);
    GXTexCoord2s8(1, 1);

    GXPosition2s16(-mDoGph_gInf_c::getWidth() / 2, -mDoGph_gInf_c::getHeight() / 2);
    GXTexCoord2s8(0, 1);
    GXEnd();

    J2DOrthoGraph* graf_ctx = (J2DOrthoGraph*)dComIfGp_getCurrentGrafPort();
    graf_ctx->setOrtho(mDoGph_gInf_c::getMinXF(), mDoGph_gInf_c::getMinYF(),
                       mDoGph_gInf_c::getWidthF(), mDoGph_gInf_c::getHeightF(), -1.0f, 1.0f);
    graf_ctx->setup2D();
}

/* 8025343C-80253518 24DD7C 00DC+00 1/1 0/0 0/0 .text            __ct__10dOvlpFd3_cFv */
dOvlpFd3_c::dOvlpFd3_c() {
    setExecute(&execFirstSnap);
    dComIfGp_2dShowOff();

    mTimer = 2;
    field_0x11f = dComIfGp_getNextStageWipeSpeed();
    if (field_0x11f == 0) {
        field_0x11f = 1;
    }

    dCam_getBody()->Stop();
    mDoGph_gInf_c::startFadeOut(XREG_S(3) + (field_0x11f >> 1) + 90);
}

/* 80253518-802535AC 24DE58 0094+00 1/0 0/0 0/0 .text            execFirstSnap__10dOvlpFd3_cFv */
void dOvlpFd3_c::execFirstSnap() {
    if (cLib_calcTimer(&field_0x11f) == 0 && field_0x11c != 0) {
        if (cLib_calcTimer(&mTimer) == 0) {
            setExecute(&execFadeOut);
            fopOvlpM_Done(this);
            mTimer = 0xFF;
        }

        dComIfGp_setWindowNum(0);
    }
}

/* 802535AC-8025368C 24DEEC 00E0+00 1/0 0/0 0/0 .text            execFadeOut__10dOvlpFd3_cFv */
void dOvlpFd3_c::execFadeOut() {
    dComIfGp_setWindowNum(0);

    if (mTimer == 0) {
        if (fopOvlpM_IsOutReq(this)) {
            fopOvlpM_SceneIsStart();
            setExecute(&execNextSnap);
            field_0x110 = -0x4000;
            mTimer = 1;
        }
    }

    if (mTimer < 0) {
        if (++mTimer == 0) {
            mDoGph_gInf_c::startFadeOut(XREG_S(1) + 75);
            mTimer = XREG_S(2) + 90;
            mDoAud_setFadeOutStart(0);
        }
    } else {
        cLib_calcTimer(&mTimer);
    }
}

/* 8025368C-80253730 24DFCC 00A4+00 1/0 0/0 0/0 .text            execNextSnap__10dOvlpFd3_cFv */
void dOvlpFd3_c::execNextSnap() {
    if (cLib_calcTimer(&mTimer) == 0) {
        if (!JFWDisplay::getManager()->getFader()->startFadeIn(XREG_S(4) + 26)) {
            mDoAud_setFadeInStart(0);
            field_0x110 += field_0x112;

            dComIfGp_setWindowNum(1);
            setExecute(&execFadeIn);
        }
    }
}

/* 80253730-802537AC 24E070 007C+00 1/0 0/0 0/0 .text            execFadeIn__10dOvlpFd3_cFv */
void dOvlpFd3_c::execFadeIn() {
    field_0x114 -= TREG_S(0) + 0x800;

    cLib_addCalc0(&field_0x118, 1.0f, TREG_F(3) + 0.03f);
    if (field_0x11e == 0) {
        fopOvlpM_SceneIsStart();
        field_0x11e = 1;
    } else {
        fopOvlpM_Done(this);
        dComIfGp_setWindowNum(1);
        dComIfGp_2dShowOn();
    }
}

void dOvlpFd3_c::draw() {
    if (field_0x11f == 0) {
        if (field_0x11c == 0) {
            dComIfGd_set2DXlu(&mSnapshot_c);
            field_0x11c = 1;
        } else if (dComIfGp_getWindowNum() == 0) {
            mDoMtx_stack_c::transS(0.0f, 0.0f, TREG_F(0) + -388.0f);
            mDoMtx_stack_c::scaleM(1.0f, 1.0f, 1.0f);

            cMtx_copy(mDoMtx_stack_c::get(), mDlst_c.getMtx());
            mDlst_c.entry();
        }
    }
}

/* 802537AC-80253880 24E0EC 00D4+00 1/0 0/0 0/0 .text            dOvlpFd3_Draw__FP10dOvlpFd3_c */
static int dOvlpFd3_Draw(dOvlpFd3_c* i_this) {
    i_this->draw();
    return 1;
}

void dOvlpFd3_c::execute() {
    (this->*mExecuteFn)();
}

/* 80253880-802538AC 24E1C0 002C+00 1/0 0/0 0/0 .text            dOvlpFd3_Execute__FP10dOvlpFd3_c */
static int dOvlpFd3_Execute(dOvlpFd3_c* i_this) {
    i_this->execute();
    return 1;
}

/* 802538AC-802538B4 24E1EC 0008+00 1/0 0/0 0/0 .text            dOvlpFd3_IsDelete__FP10dOvlpFd3_c
 */
static int dOvlpFd3_IsDelete(dOvlpFd3_c* i_this) {
    return 1;
}

/* 802538B4-802538BC 24E1F4 0008+00 1/0 0/0 0/0 .text            dOvlpFd3_Delete__FP10dOvlpFd3_c */
static int dOvlpFd3_Delete(dOvlpFd3_c* i_this) {
    return 1;
}

/* 802538BC-802538E8 24E1FC 002C+00 1/0 0/0 0/0 .text            dOvlpFd3_Create__FPv */
static int dOvlpFd3_Create(void* i_this) {
    new (i_this) dOvlpFd3_c();
    return cPhs_COMPLEATE_e;
}

/* 803C2DA0-803C2DB4 -00001 0014+00 1/0 0/0 0/0 .data            l_dOvlpFd3_Method */
static leafdraw_method_class l_dOvlpFd3_Method = {
    (process_method_func)dOvlpFd3_Create,  (process_method_func)dOvlpFd3_Delete,
    (process_method_func)dOvlpFd3_Execute, (process_method_func)dOvlpFd3_IsDelete,
    (process_method_func)dOvlpFd3_Draw,
};

/* 803C2DB4-803C2DDC -00001 0028+00 0/0 0/0 1/0 .data            g_profile_OVERLAP3 */
extern overlap_process_profile_definition g_profile_OVERLAP3 = {
    fpcLy_ROOT_e,
    0,
    fpcPi_CURRENT_e,
    PROC_OVERLAP3,
    &g_fpcLf_Method.base,
    sizeof(dOvlpFd3_c),
    0,
    0,
    &g_fopOvlp_Method,
    776,
    &l_dOvlpFd3_Method,
};
