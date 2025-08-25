/**
 * d_ovlp_fade2.cpp
 *
 */

#include "d/dolzel.h"

#include "d/d_ovlp_fade2.h"
#include "JSystem/J2DGraph/J2DOrthoGraph.h"
#include "d/d_s_play.h"
#include "m_Do/m_Do_audio.h"
#include "m_Do/m_Do_graphic.h"

/* 8025247C-80252990 24CDBC 0514+00 1/0 0/0 0/0 .text            draw__15dOvlpFd2_dlst_cFv */
void dOvlpFd2_dlst_c::draw() {
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

/* 80252990-802529F4 24D2D0 0064+00 1/1 0/0 0/0 .text            __ct__10dOvlpFd2_cFv */
dOvlpFd2_c::dOvlpFd2_c() {
    setExecute(&execFirstSnap);
    dComIfGp_2dShowOff();
    mTimer = 2;
}

/* 802529F4-80252A78 24D334 0084+00 1/0 0/0 0/0 .text            execFirstSnap__10dOvlpFd2_cFv */
void dOvlpFd2_c::execFirstSnap() {
    if (field_0x11c != 0) {
        if (cLib_calcTimer<s8>(&mTimer) == 0) {
            setExecute(&execFadeOut);
            fopOvlpM_Done(this);
            mTimer = -12;
        }

        dComIfGp_setWindowNum(0);
    }
}

/* 80252A78-80252BC0 24D3B8 0148+00 1/0 0/0 0/0 .text            execFadeOut__10dOvlpFd2_cFv */
void dOvlpFd2_c::execFadeOut() {
    dComIfGp_setWindowNum(0);
    cLib_chaseAngleS(&field_0x112, 2000, 100);

    // fake match?
    s16 temp_r5 = ((((field_0x110 + 0x4000) & 0x8000) | 0x4000) - field_0x112);

    field_0x110 += field_0x112;

    if (field_0x112 * (s16)(temp_r5 - field_0x110) < 0) {
        if (mTimer == 0) {
            if (fopOvlpM_IsOutReq(this)) {
                fopOvlpM_SceneIsStart();
                setExecute(&execNextSnap);
                field_0x110 = -0x4000;
                mTimer = 15;
            }
        }
    }

    if (mTimer < 0) {
        if (++mTimer == 0) {
            mDoGph_gInf_c::startFadeOut(16);
            mTimer = TREG_S(1) + 20;
        }
    } else {
        cLib_calcTimer<s8>(&mTimer);
    }

    field_0x114 += TREG_S(0) + 0x800;
    cLib_addCalc2(&field_0x118, TREG_F(1) + 1.0f, 1.0f, TREG_F(2) + 0.05f);
}

/* 80252BC0-80252C68 24D500 00A8+00 1/0 0/0 0/0 .text            execNextSnap__10dOvlpFd2_cFv */
void dOvlpFd2_c::execNextSnap() {
    if (cLib_calcTimer<s8>(&mTimer) == 0) {
        if (!JFWDisplay::getManager()->getFader()->startFadeIn(16)) {
            field_0x110 += field_0x112;
            field_0x11c = 0;

            dComIfGp_setWindowNum(1);
            dComIfGp_2dShowOff();
            setExecute(&execFadeIn);
        }
    }
}

/* 80252C68-80252D0C 24D5A8 00A4+00 1/0 0/0 0/0 .text            execFadeIn__10dOvlpFd2_cFv */
void dOvlpFd2_c::execFadeIn() {
    field_0x114 -= TREG_S(0) + 0x800;

    cLib_addCalc0(&field_0x118, 1.0f, TREG_F(3) + 0.03f);
    if (field_0x118 < 0.001f) {
        if (field_0x11e == 0) {
            fopOvlpM_SceneIsStart();
            field_0x11e = 1;
        } else {
            fopOvlpM_Done(this);
            dComIfGp_setWindowNum(1);
            dComIfGp_2dShowOn();
        }
    } else {
        dComIfGp_setWindowNum(0);
        fopOvlpM_SceneIsStop();
    }
}

void dOvlpFd2_c::draw() {
    if (field_0x11c == 0) {
        dComIfGd_set2DXlu(&mSnapshot_c);
        field_0x11c = 1;
    } else if (dComIfGp_getWindowNum() == 0) {
        mDoMtx_stack_c::transS(0.0f, 0.0f, TREG_F(0) + -420.0f);
        mDoMtx_stack_c::ZrotM(field_0x114);
        mDoMtx_stack_c::scaleM(1.0f, field_0x118 + 1.0f, 1.0f);
        mDoMtx_stack_c::ZrotM(-field_0x114);

        cMtx_copy(mDoMtx_stack_c::get(), mDlst_c.getMtx());
        mDlst_c.entry();
    }

    mDoGph_gInf_c::offBlure();
}

/* 80252D0C-80252E08 24D64C 00FC+00 1/0 0/0 0/0 .text            dOvlpFd2_Draw__FP10dOvlpFd2_c */
static int dOvlpFd2_Draw(dOvlpFd2_c* i_this) {
    i_this->draw();
    return 1;
}

void dOvlpFd2_c::execute() {
    (this->*mExecuteFn)();
}

/* 80252E08-80252E34 24D748 002C+00 1/0 0/0 0/0 .text            dOvlpFd2_Execute__FP10dOvlpFd2_c */
static int dOvlpFd2_Execute(dOvlpFd2_c* i_this) {
    i_this->execute();
    return 1;
}

/* 80252E34-80252E3C 24D774 0008+00 1/0 0/0 0/0 .text            dOvlpFd2_IsDelete__FP10dOvlpFd2_c
 */
static int dOvlpFd2_IsDelete(dOvlpFd2_c* i_this) {
    return 1;
}

/* 80252E3C-80252E44 24D77C 0008+00 1/0 0/0 0/0 .text            dOvlpFd2_Delete__FP10dOvlpFd2_c */
static int dOvlpFd2_Delete(dOvlpFd2_c* i_this) {
    return 1;
}

/* 80252E44-80252E70 24D784 002C+00 1/0 0/0 0/0 .text            dOvlpFd2_Create__FPv */
static int dOvlpFd2_Create(void* i_this) {
    new (i_this) dOvlpFd2_c();
    return cPhs_COMPLEATE_e;
}

/* 803C2D20-803C2D34 -00001 0014+00 1/0 0/0 0/0 .data            l_dOvlpFd2_Method */
static leafdraw_method_class l_dOvlpFd2_Method = {
    (process_method_func)dOvlpFd2_Create,  (process_method_func)dOvlpFd2_Delete,
    (process_method_func)dOvlpFd2_Execute, (process_method_func)dOvlpFd2_IsDelete,
    (process_method_func)dOvlpFd2_Draw,
};

/* 803C2D34-803C2D5C -00001 0028+00 0/0 0/0 1/0 .data            g_profile_OVERLAP2 */
extern overlap_process_profile_definition g_profile_OVERLAP2 = {
    fpcLy_ROOT_e,
    2,
    fpcPi_CURRENT_e,
    PROC_OVERLAP2,
    &g_fpcLf_Method.base,
    sizeof(dOvlpFd2_c),
    0,
    0,
    &g_fopOvlp_Method,
    775,
    &l_dOvlpFd2_Method,
};
