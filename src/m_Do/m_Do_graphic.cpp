/**
 * m_Do_graphic.cpp
 * Graphics Management Functions
 */

#include "d/dolzel.h"

#include "JSystem/J2DGraph/J2DOrthoGraph.h"
#include "JSystem/J2DGraph/J2DPrint.h"
#include "JSystem/JFramework/JFWSystem.h"
#include "JSystem/JParticle/JPADrawInfo.h"
#include "JSystem/JUtility/JUTConsole.h"
#include "JSystem/JUtility/JUTDbPrint.h"
#include "JSystem/JUtility/JUTProcBar.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_menu_collect.h"
#include "dolphin/base/PPCArch.h"
#include "f_ap/f_ap_game.h"
#include "m_Do/m_Do_controller_pad.h"
#include "m_Do/m_Do_graphic.h"
#include "m_Do/m_Do_machine.h"
#include "m_Do/m_Do_main.h"

/* 80007D9C-80007E44 0026DC 00A8+00 1/1 0/0 0/0 .text            createTimg__FUsUsUl */
static ResTIMG* createTimg(u16 width, u16 height, u32 format) {
    u32 bufferSize = GXGetTexBufferSize(width, height, format, GX_FALSE, 0) + 0x20;
    ResTIMG* timg;

    void* alloc_res = JKRHeap::alloc(bufferSize, 0x20, NULL);
    timg = (ResTIMG*)alloc_res;

    if (timg == NULL) {
        return NULL;
    }

    cLib_memSet(timg, 0, bufferSize);
    timg->format = format;
    timg->alphaEnabled = false;
    timg->width = width;
    timg->height = height;
    timg->minFilter = GX_LINEAR;
    timg->magFilter = GX_LINEAR;
    timg->mipmapCount = 1;
    timg->imageOffset = 0x20;
    return timg;
}

/* 80450590-80450594 000010 0004+00 2/2 1/1 0/0 .sdata           mBackColor__13mDoGph_gInf_c */
GXColor mDoGph_gInf_c::mBackColor = {0, 0, 0, 0};

/* 80450594-80450598 000014 0004+00 4/4 3/3 0/0 .sdata           mFadeColor__13mDoGph_gInf_c */
GXColor mDoGph_gInf_c::mFadeColor = {0, 0, 0, 0};

/* 80450BC8-80450BCC 0000C8 0004+00 2/2 38/38 1/1 .sbss            mFader__13mDoGph_gInf_c */
JUTFader* mDoGph_gInf_c::mFader;

/* 80450BCC-80450BD0 0000CC 0004+00 3/3 8/8 1/1 .sbss            mFrameBufferTimg__13mDoGph_gInf_c
 */
ResTIMG* mDoGph_gInf_c::mFrameBufferTimg;

/* 80450BD0-80450BD4 0000D0 0004+00 3/3 6/6 0/0 .sbss            mFrameBufferTex__13mDoGph_gInf_c */
void* mDoGph_gInf_c::mFrameBufferTex;

/* 80450BD4-80450BD8 0000D4 0004+00 1/1 1/1 0/0 .sbss            mZbufferTimg__13mDoGph_gInf_c */
ResTIMG* mDoGph_gInf_c::mZbufferTimg;

/* 80450BD8-80450BDC 0000D8 0004+00 3/3 1/1 0/0 .sbss            mZbufferTex__13mDoGph_gInf_c */
void* mDoGph_gInf_c::mZbufferTex;

/* 80450BDC-80450BE0 0000DC 0004+00 3/3 3/3 1/1 .sbss            mFadeRate__13mDoGph_gInf_c */
f32 mDoGph_gInf_c::mFadeRate;

/* 80450BE0-80450BE4 0000E0 0004+00 3/3 0/0 0/0 .sbss            mFadeSpeed__13mDoGph_gInf_c */
f32 mDoGph_gInf_c::mFadeSpeed;

/* 80450BE4-80450BE8 -00001 0004+00 8/8 9/9 11/11 .sbss            None */
/* 80450BE4 0001+00 data_80450BE4 None */
/* 80450BE5 0001+00 data_80450BE5 None */
/* 80450BE6 0001+00 mFade__13mDoGph_gInf_c None */
/* 80450BE7 0001+00 data_80450BE7 None */
bool mDoGph_gInf_c::mBlureFlag;

u8 mDoGph_gInf_c::mBlureRate;

u8 mDoGph_gInf_c::mFade;

bool data_80450BE7;

/* 80007E44-80007F90 002784 014C+00 1/1 0/0 0/0 .text            create__13mDoGph_gInf_cFv */
void mDoGph_gInf_c::create() {
    JFWDisplay::createManager(NULL, JKRHeap::sCurrentHeap, JUTXfb::UNK_2, true);
    JFWDisplay::getManager()->setDrawDoneMethod(JFWDisplay::UNK_METHOD_1);

    JUTFader* faderPtr = new JUTFader(0, 0, JUTVideo::getManager()->getRenderMode()->fbWidth,
                                      JUTVideo::getManager()->getRenderMode()->efbHeight,
                                      JUtility::TColor(0, 0, 0, 0));
    setFader(faderPtr);
    JFWDisplay::getManager()->setFader(faderPtr);
    JUTProcBar::getManager()->setVisibleHeapBar(false);
    JUTProcBar::getManager()->setVisible(false);
    JUTDbPrint::getManager()->setVisible(false);

    mFrameBufferTimg = createTimg(304, 224, 6);
    mFrameBufferTex = (char*)mFrameBufferTimg + sizeof(ResTIMG);

    mZbufferTimg = createTimg(304, 224, 3);
    mZbufferTex = (char*)mZbufferTimg + sizeof(ResTIMG);

    J2DPrint::setBuffer(0x400);
    mBlureFlag = false;
    mFade = 0;

    mBackColor = g_clearColor;
    mFadeColor = g_clearColor;

    VISetBlack(TRUE);
}

/* 80450BE8-80450BF0 0000E8 0008+00 1/1 0/0 0/0 .sbss            None */
static bool data_80450BE8;

/* 80007F90-80007FD8 0028D0 0048+00 1/1 2/2 0/0 .text            beginRender__13mDoGph_gInf_cFv */
void mDoGph_gInf_c::beginRender() {
    if (data_80450BE8) {
        JUTXfb::getManager()->setDrawingXfbIndex(-1);
    }

    JFWDisplay::getManager()->beginRender();
}

/* 80007FD8-80008028 002918 0050+00 1/1 6/4 15/15 .text fadeOut__13mDoGph_gInf_cFfR8_GXColor */
void mDoGph_gInf_c::fadeOut(f32 fadeSpeed, GXColor& fadeColor) {
    mFade = 1;
    mFadeSpeed = fadeSpeed;
    mFadeColor = fadeColor;

    if (fadeSpeed >= 0.0f) {
        mFadeRate = 0.0f;
    } else {
        mFadeRate = 1.0f;
    }
}

/* 80008028-80008078 002968 0050+00 0/0 0/0 2/2 .text fadeOut_f__13mDoGph_gInf_cFfR8_GXColor */
void mDoGph_gInf_c::fadeOut_f(f32 fadeSpeed, GXColor& fadeColor) {
    mFade = 129;
    mFadeSpeed = fadeSpeed;
    mFadeColor = fadeColor;

    if (fadeSpeed >= 0.0f) {
        mFadeRate = 0.0f;
    } else {
        mFadeRate = 1.0f;
    }
}

/* 80008078-800080A0 0029B8 0028+00 0/0 1/1 8/8 .text            onBlure__13mDoGph_gInf_cFv */
void mDoGph_gInf_c::onBlure() {
    onBlure(g_mDoMtx_identity);
}

/* 803DD3E8-803DD408 00A108 0020+00 3/3 3/3 0/0 .bss             mFrameBufferTexObj__13mDoGph_gInf_c
 */
GXTexObj mDoGph_gInf_c::mFrameBufferTexObj;

/* 803DD408-803DD428 00A128 0020+00 1/1 0/0 0/0 .bss             mZbufferTexObj__13mDoGph_gInf_c */
GXTexObj mDoGph_gInf_c::mZbufferTexObj;

/* 803DD428-803DD43C 00A148 0014+00 2/2 3/3 0/0 .bss             m_bloom__13mDoGph_gInf_c */
mDoGph_gInf_c::bloom_c mDoGph_gInf_c::m_bloom;

/* 803DD43C-803DD470 00A15C 0030+04 2/2 0/0 0/0 .bss             mBlureMtx__13mDoGph_gInf_c */
Mtx mDoGph_gInf_c::mBlureMtx;

/* 800080A0-800080D0 0029E0 0030+00 1/1 1/1 0/0 .text            onBlure__13mDoGph_gInf_cFPA4_Cf */
void mDoGph_gInf_c::onBlure(const Mtx m) {
    mBlureFlag = true;
    MTXCopy(m, mBlureMtx);
}

/* 800080D0-800080F4 002A10 0024+00 0/0 3/3 7/7 .text            fadeOut__13mDoGph_gInf_cFf */
void mDoGph_gInf_c::fadeOut(f32 fadeSpeed) {
    fadeOut(fadeSpeed, g_clearColor);
}

/* 800080F4-80008330 002A34 023C+00 1/1 0/0 0/0 .text            darwFilter__F8_GXColor */
static void darwFilter(GXColor matColor) {
    GXSetNumChans(1);
    GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE,
                  GX_AF_NONE);
    GXSetNumTexGens(0);
    GXSetNumTevStages(1);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_RASC);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_ENABLE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_RASA);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_ENABLE, GX_TEVPREV);
    GXSetZCompLoc(GX_ENABLE);
    GXSetZMode(GX_DISABLE, GX_ALWAYS, GX_DISABLE);
    GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_OR);
    GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
    GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 0.0f, g_clearColor);
    GXSetFogRangeAdj(GX_DISABLE, 0, NULL);
    GXSetCullMode(GX_CULL_NONE);
    GXSetDither(GX_ENABLE);
    GXSetNumIndStages(0);

    Mtx44 mtx;
    C_MTXOrtho(mtx, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 10.0f);
    GXSetProjection(mtx, GX_ORTHOGRAPHIC);
    GXLoadPosMtxImm(g_mDoMtx_identity, GX_PNMTX0);
    GXSetChanMatColor(GX_COLOR0A0, matColor);
    GXSetCurrentMtx(0);
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_RGB8, 0);
    GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    GXPosition3s8(0, 0, -5);
    GXPosition3s8(1, 0, -5);
    GXPosition3s8(1, 1, -5);
    GXPosition3s8(0, 1, -5);
    GXEnd();
}

/* 80008330-8000841C 002C70 00EC+00 1/1 0/0 0/0 .text            calcFade__13mDoGph_gInf_cFv */
void mDoGph_gInf_c::calcFade() {
    if (mDoGph_gInf_c::mFade != 0) {
        mFadeRate += mFadeSpeed;

        if (mFadeRate < 0.0f) {
            mFadeRate = 0.0f;
            mDoGph_gInf_c::mFade = 0;
        } else {
            if (mFadeRate > 1.0f) {
                mFadeRate = 1.0f;
            }
        }
        mFadeColor.a = 255.0f * mFadeRate;
    } else {
        if (dComIfG_getBrightness() != 255) {
            mFadeColor.r = 0;
            mFadeColor.g = 0;
            mFadeColor.b = 0;
            mFadeColor.a = 255 - dComIfG_getBrightness();
        } else {
            mFadeColor.a = 0;
        }
    }

    if (mFadeColor.a != 0) {
        darwFilter(mFadeColor);
    }
}

/* 8000841C-80008420 002D5C 0004+00 0/0 1/0 0/0 .text            mDoGph_BlankingON__Fv */
void mDoGph_BlankingON() {}

/* 80008420-80008424 002D60 0004+00 0/0 1/0 0/0 .text            mDoGph_BlankingOFF__Fv */
void mDoGph_BlankingOFF() {}

/* 80008424-80008450 002D64 002C+00 1/1 0/0 0/0 .text            dScnPly_BeforeOfPaint__Fv */
static void dScnPly_BeforeOfPaint() {
    dComIfGd_reset();
}

/* 80008450-80008474 002D90 0024+00 0/0 1/0 0/0 .text            mDoGph_BeforeOfDraw__Fv */
int mDoGph_BeforeOfDraw() {
    dScnPly_BeforeOfPaint();
    return 1;
}

/* 80008474-80008630 002DB4 01BC+00 0/0 1/0 0/0 .text            mDoGph_AfterOfDraw__Fv */
int mDoGph_AfterOfDraw() {
    if (fapGmHIO_isMenu()) {
        JUTProcBar::getManager()->setVisible(false);
        JUTProcBar::getManager()->setVisibleHeapBar(false);
        JUTDbPrint::getManager()->setVisible(true);
    } else {
        int sysConsole_visible = JFWSystem::getSystemConsole()->isVisible();
        s32 port3_connected = mDoCPd_c::isConnect(PAD_3);

        BOOL procBar_visible = port3_connected && fapGmHIO_getMeter() && !sysConsole_visible;
        BOOL console_visible = port3_connected && fapGmHIO_isPrint();

        // Dev mode check
        if (!mDoMain::developmentMode) {
            procBar_visible = false;
            console_visible = false;
        }

        JUTProcBar::getManager()->setVisible(procBar_visible);
        JUTProcBar::getManager()->setVisibleHeapBar(procBar_visible);
        JUTDbPrint::getManager()->setVisible(console_visible);
    }

    GXSetZCompLoc(GX_ENABLE);
    GXSetZMode(GX_DISABLE, GX_ALWAYS, GX_DISABLE);
    GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
    GXSetAlphaCompare(GX_GREATER, 0, GX_AOP_OR, GX_GREATER, 0);
    GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 0.0f, g_clearColor);
    GXSetFogRangeAdj(GX_DISABLE, 0, NULL);
    GXSetCoPlanar(GX_DISABLE);
    GXSetZTexture(GX_ZT_DISABLE, GX_TF_Z8, 0);
    GXSetDither(GX_ENABLE);
    GXSetClipMode(GX_CLIP_ENABLE);
    GXSetCullMode(GX_CULL_NONE);
    JUTVideo::getManager()->setRenderMode(mDoMch_render_c::getRenderModeObj());
    mDoGph_gInf_c::endFrame();
    return 1;
}

/* 80008630-80009184 002F70 0B54+00 1/1 0/0 0/0 .text
 * drawDepth2__FP10view_classP15view_port_classi                */
static void drawDepth2(view_class* param_0, view_port_class* param_1, int param_2) {
    static GXColorS10 l_tevColor0 = {0, 0, 0, 0};

    s16 x_orig;
    s16 y_orig_pos;
    s16 y_orig;
    void* zBufferTex;
    s16 width;
    void* frameBufferTex;
    u16 halfWidth;
    u16 halfHeight;
    s16 height;

    f32* temp_r20;

    if (daPy_getLinkPlayerActorClass() != NULL) {
        if (mDoGph_gInf_c::isAutoForcus()) {
            f32 sp4C[7];
            f32 sp34[6];
            f32 sp1C;
            f32 sp18;
            f32 sp14;
            GXGetProjectionv(sp4C);
            GXGetViewportv(sp34);
            GXProject(param_0->lookat.center.x, param_0->lookat.center.y,
                      param_0->lookat.center.z, param_0->viewMtx, sp4C, sp34, &sp1C, &sp18,
                      &sp14);
        }

        fopAc_ac_c* player_p = dComIfGp_getPlayer(0);
        camera_class* camera_p = (camera_class*)dComIfGp_getCamera(0);
        f32 var_f30 = -255.0f;

        if (dCam_getBody()->Mode() != 4 && dCam_getBody()->Mode() != 7) {
            camera_class* temp_r4 = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
            dAttention_c* attention = dComIfGp_getAttention();

            f32 temp_f31 = 60.0f / (temp_r4 ? fopCamM_GetFovy(temp_r4) : 48.0f);
            if (attention->LockonTruth()) {
                fopAc_ac_c* atn_actor =
                    fopAcM_SearchByID(daPy_getLinkPlayerActorClass()->getAtnActorID());

                if (atn_actor != NULL) {
                    cXyz sp28 = atn_actor->eyePos;
                    if (fabsf(sp28.y - camera_p->lookat.eye.y) < 400.0f) {
                        sp28.y = camera_p->lookat.eye.y;
                    }

                    f32 var_f2 =
                        (atn_actor->current.pos.abs(camera_p->lookat.eye)) / (280.0f * temp_f31);
                    var_f2 -= 0.8f;
                    if (var_f2 < 0.0f) {
                        var_f2 = 0.0f;
                    } else if (var_f2 > 1.0f) {
                        var_f2 = 1.0f;
                    }
                    var_f30 = -180.0f - 75.0f * var_f2;
                }
            } else if (dComIfGp_event_runCheck() && temp_f31 < 3.0f &&
                       g_env_light.field_0x126c < 999999.0f)
            {
                f32 var_f2 = g_env_light.field_0x126c / (80.0f * temp_f31);
                var_f2 -= 0.8f;
                if (var_f2 < 0.0f) {
                    var_f2 = 0.0f;
                } else if (var_f2 > 1.0f) {
                    var_f2 = 1.0f;
                }
                var_f30 = -180.0f - 75.0f * var_f2;
            }
        }

        cLib_addCalc(&g_env_light.field_0x1264, var_f30, 0.1f, 100.0f, 0.0001f);
        l_tevColor0.a = g_env_light.field_0x1264;
        if (l_tevColor0.a <= -254) {
            l_tevColor0.a = -255;
        }

        x_orig = (int)param_1->x_orig & ~7;
        y_orig = (int)param_1->y_orig & ~7;
        y_orig_pos = y_orig < 0 ? 0 : y_orig;
        width = (int)param_1->width & ~7;
        height = (int)param_1->height & ~7;
        zBufferTex = mDoGph_gInf_c::mZbufferTex;
        frameBufferTex = mDoGph_gInf_c::mFrameBufferTex;

        if (y_orig < 0) {
            height += y_orig;
            s16 tmp_y_orig = -y_orig >> 1;
            zBufferTex =
                (char*)zBufferTex + GXGetTexBufferSize(304, tmp_y_orig, GX_TF_IA8, GX_FALSE, 0);
            frameBufferTex =
                (char*)frameBufferTex +
                GXGetTexBufferSize(304, tmp_y_orig, mDoGph_gInf_c::getFrameBufferTimg()->format,
                                   GX_FALSE, 0);
        }

        halfWidth = width >> 1;
        halfHeight = height >> 1;
        GXSetCopyFilter(GX_FALSE, NULL, GX_TRUE, JUTGetVideoManager()->getRenderMode()->vfilter);
        GXSetTexCopySrc(x_orig, y_orig_pos, width, height);
        GXSetTexCopyDst(halfWidth, halfHeight, GX_TF_Z16, GX_TRUE);
        GXCopyTex(zBufferTex, GX_FALSE);
        GXSetTexCopySrc(x_orig, y_orig_pos, width, height);
        GXSetTexCopyDst(halfWidth, halfHeight,
                        (GXTexFmt)mDoGph_gInf_c::getFrameBufferTimg()->format, GX_TRUE);
        GXCopyTex(frameBufferTex, GX_FALSE);
        GXInitTexObj(mDoGph_gInf_c::getZbufferTexObj(), zBufferTex, halfWidth, halfHeight,
                     GX_TF_IA8, GX_CLAMP, GX_CLAMP, GX_FALSE);
        GXInitTexObjLOD(mDoGph_gInf_c::getZbufferTexObj(), GX_NEAR, GX_NEAR, 0.0f, 0.0f, 0.0f,
                        GX_FALSE, GX_FALSE, GX_ANISO_1);
        GXInitTexObj(mDoGph_gInf_c::getFrameBufferTexObj(), frameBufferTex, halfWidth, halfHeight,
                     (GXTexFmt)mDoGph_gInf_c::getFrameBufferTimg()->format, GX_CLAMP, GX_CLAMP,
                     GX_FALSE);
        GXInitTexObjLOD(mDoGph_gInf_c::getFrameBufferTexObj(), GX_LINEAR, GX_LINEAR, 0.0f, 0.0f,
                        0.0f, GX_FALSE, GX_FALSE, GX_ANISO_1);
        GXPixModeSync();
        GXInvalidateTexAll();
        GXLoadTexObj(mDoGph_gInf_c::getFrameBufferTexObj(), GX_TEXMAP1);
        GXLoadTexObj(mDoGph_gInf_c::getZbufferTexObj(), GX_TEXMAP0);

        if (0.0f != g_env_light.mDemoAttentionPoint) {
            if (g_env_light.mDemoAttentionPoint >= 0.0f) {
                l_tevColor0.a = -254.0f + 509.0f * g_env_light.mDemoAttentionPoint;
            } else {
                l_tevColor0.a = -254.0f + 509.0f * (1.0f + g_env_light.mDemoAttentionPoint);
            }
        }

        GXSetTevColorS10(GX_TEVREG0, l_tevColor0);
        GXSetTevSwapModeTable(GX_TEV_SWAP3, GX_CH_ALPHA, GX_CH_GREEN, GX_CH_BLUE, GX_CH_RED);
        GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP3);
        GXSetTevKAlphaSel(GX_TEVSTAGE0, GX_TEV_KASEL_1);
        GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO);
        GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_KONST, GX_CA_TEXA, GX_CA_KONST, GX_CA_ZERO);
        GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_COMP_A8_EQ, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                        GX_TEVPREV);

        GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
        GXSetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO);
        GXSetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        GXSetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_APREV, GX_CA_TEXA, GX_CA_A0);
        GXSetTevAlphaOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_4, GX_TRUE, GX_TEVPREV);

        GXSetTevOrder(GX_TEVSTAGE2, GX_TEXCOORD1, GX_TEXMAP1, GX_COLOR_NULL);
        GXSetTevColorIn(GX_TEVSTAGE2, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_TEXC);
        GXSetTevColorOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        GXSetTevAlphaIn(GX_TEVSTAGE2, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
        GXSetTevAlphaOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);

        GXSetTevOrder(GX_TEVSTAGE3, GX_TEXCOORD2, GX_TEXMAP1, GX_COLOR_NULL);
        GXSetTevColorIn(GX_TEVSTAGE3, GX_CC_CPREV, GX_CC_TEXC, GX_CC_HALF, GX_CC_ZERO);
        GXSetTevColorOp(GX_TEVSTAGE3, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        GXSetTevAlphaIn(GX_TEVSTAGE3, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
        GXSetTevAlphaOp(GX_TEVSTAGE3, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);

        GXSetZCompLoc(GX_TRUE);
        GXSetZMode(GX_FALSE, GX_ALWAYS, GX_FALSE);
        if (g_env_light.mDemoAttentionPoint >= 0.0f) {
            GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
            GXSetAlphaCompare(GX_GREATER, 0, GX_AOP_OR, GX_GREATER, 0);
        } else {
            GXSetBlendMode(GX_BM_BLEND, GX_BL_INVSRCALPHA, GX_BL_SRCALPHA, GX_LO_CLEAR);
            GXSetAlphaCompare(GX_LESS, 0xff, GX_AOP_OR, GX_LESS, 0xff);
        }

        GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 0.0f, g_clearColor);
        GXSetCullMode(GX_CULL_NONE);
        GXSetDither(GX_TRUE);
        GXSetNumIndStages(0);
        Mtx44 ortho;
        C_MTXOrtho(ortho, param_1->y_orig, param_1->y_orig + param_1->height, param_1->x_orig,
                   param_1->x_orig + param_1->width, 0.0f, 10.0f);
        GXLoadPosMtxImm(mDoMtx_getIdentity(), 0);
        mDoMtx_stack_c::transS(0.0025f, 0.0025f, 0.0f);
        GXLoadTexMtxImm(mDoMtx_stack_c::get(), 0x1e, GX_MTX2x4);
        mDoMtx_stack_c::transS(-0.0025f, -0.0025f, 0.0f);
        GXLoadTexMtxImm(mDoMtx_stack_c::get(), 0x21, GX_MTX2x4);
        GXClearVtxDesc();
        GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
        GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_S16, 0);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_POS_XYZ, GX_S8, 0);
        GXSetTexCoordGen2(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, 0x3c, GX_FALSE, 0x7d);
        GXSetTexCoordGen2(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_TEX0, 0x1e, GX_FALSE, 0x7d);
        GXSetTexCoordGen2(GX_TEXCOORD2, GX_TG_MTX2x4, GX_TG_TEX0, 0x21, GX_FALSE, 0x7d);
        GXSetNumChans(0);
        GXSetNumTexGens(3);
        GXSetNumTevStages(4);
        GXSetProjection(ortho, GX_ORTHOGRAPHIC);
        GXSetCurrentMtx(0);

        if (l_tevColor0.a > -255) {
            GXBegin(GX_QUADS, GX_VTXFMT0, 4);
            GXPosition3s16(x_orig, y_orig_pos, -5);
            GXTexCoord2s8(0, 0);
            GXPosition3s16(width, y_orig_pos, -5);
            GXTexCoord2s8(1, 0);
            GXPosition3s16(width, height, -5);
            GXTexCoord2s8(1, 1);
            GXPosition3s16(x_orig, height, -5);
            GXTexCoord2s8(0, 1);
            GXEnd();
        }

        GXSetTevSwapModeTable(GX_TEV_SWAP3, GX_CH_BLUE, GX_CH_BLUE, GX_CH_BLUE, GX_CH_ALPHA);
        GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
        GXSetProjection(param_0->projMtx, GX_PERSPECTIVE);
    }
}

/* 800091C0-800094B4 003B00 02F4+00 1/1 0/0 0/0 .text trimming__FP10view_classP15view_port_class
 */
static void trimming(view_class* param_0, view_port_class* param_1) {
    s16 y_orig = (int)param_1->y_orig & ~7;
    s16 y_orig_pos = y_orig < 0 ? 0 : y_orig;
    if ((y_orig_pos == 0) && (param_1->scissor.y_orig != param_1->y_orig ||
                              (param_1->scissor.height != param_1->height)))
    {
        s32 sc_top = (int)param_1->scissor.y_orig;
        s32 sc_bottom = param_1->scissor.y_orig + param_1->scissor.height;
        GXSetNumChans(1);
        GXSetChanCtrl(GX_ALPHA0, GX_FALSE, GX_SRC_REG, GX_SRC_REG, 0, GX_DF_NONE, GX_AF_NONE);
        GXSetNumTexGens(0);
        GXSetNumTevStages(1);
        GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO);
        GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
        GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        GXSetZCompLoc(1);
        GXSetZMode(GX_FALSE, GX_ALWAYS, GX_FALSE);
        GXSetBlendMode(GX_BM_NONE, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
        GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
        GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 0.0f, g_clearColor);
        GXSetCullMode(GX_CULL_NONE);
        GXSetDither(GX_TRUE);
        GXSetNumIndStages(0);
        Mtx44 ortho;
        C_MTXOrtho(ortho, 0.0f, 448.0f, 0.0f, 608.0f, 0.0f, 10.0f);
        GXLoadPosMtxImm(mDoMtx_getIdentity(), 0);
        GXClearVtxDesc();
        GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_RGBA4, 0);
        GXSetProjection(ortho, GX_ORTHOGRAPHIC);
        GXSetCurrentMtx(0);
        GXBegin(GX_QUADS, GX_VTXFMT0, 8);
        GXPosition3s16(0, 0, -5);
        GXPosition3s16(0x260, 0, -5);
        GXPosition3s16(0x260, sc_top, -5);
        GXPosition3s16(0, sc_top, -5);
        GXPosition3s16(0, sc_bottom, -5);
        GXPosition3s16(0x260, sc_bottom, -5);
        GXPosition3s16(0x260, 0x1c0, -5);
        GXPosition3s16(0, 0x1c0, -5);
        GXEnd();
    }
    GXSetScissor(param_1->scissor.x_orig, param_1->scissor.y_orig, param_1->scissor.width,
                 param_1->scissor.height);
}

/* 800094B4-80009544 003DF4 0090+00 2/2 1/1 0/0 .text            mDoGph_drawFilterQuad__FScSc */
void mDoGph_drawFilterQuad(s8 param_0, s8 param_1) {
    GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    GXPosition2s8(0, 0);
    GXTexCoord2s8(0, 0);
    GXPosition2s8(param_0, 0);
    GXTexCoord2s8(1, 0);
    GXPosition2s8(param_0, param_1);
    GXTexCoord2s8(1, 1);
    GXPosition2s8(0, param_1);
    GXTexCoord2s8(0, 1);
    GXEnd();
}

/* 80009544-800095F8 003E84 00B4+00 0/0 1/1 0/0 .text            create__Q213mDoGph_gInf_c7bloom_cFv
 */
void mDoGph_gInf_c::bloom_c::create() {
    if (m_buffer == NULL) {
        u32 size = GXGetTexBufferSize(304, 224, 6, GX_FALSE, 0);
        m_buffer = mDoExt_getArchiveHeap()->alloc(size, -32);
        mEnable = false;
        mMode = 0;
        mPoint = 128;
        mBlureSize = 64;
        mBlureRatio = 128;
        mBlendColor = (GXColor){255, 255, 255, 255};
    }
}

/* 800095F8-80009650 003F38 0058+00 0/0 1/1 0/0 .text            remove__Q213mDoGph_gInf_c7bloom_cFv
 */
void mDoGph_gInf_c::bloom_c::remove() {
    if (m_buffer != NULL) {
        mDoExt_getArchiveHeap()->free(m_buffer);
        m_buffer = NULL;
    }
    mMonoColor.a = 0;
}

/* 80009650-8000A160 003F90 0B10+00 1/1 0/0 0/0 .text            draw__Q213mDoGph_gInf_c7bloom_cFv
 */
void mDoGph_gInf_c::bloom_c::draw() {
    bool enabled = false;
    enabled = mEnable && m_buffer != NULL;
    if (mMonoColor.a != 0 || enabled) {
        GXSetViewport(0.0f, 0.0f, 608.0f, 448.0f, 0.0f, 1.0f);
        GXSetScissor(0, 0, 0x260, 0x1c0);
        GXLoadTexObj(getFrameBufferTexObj(), GX_TEXMAP0);
        GXSetNumChans(0);
        GXSetNumTexGens(1);
        GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, 0x3c);
        GXSetTevSwapModeTable(GX_TEV_SWAP1, GX_CH_RED, GX_CH_RED, GX_CH_RED, GX_CH_GREEN);
        GXSetTevSwapModeTable(GX_TEV_SWAP3, GX_CH_BLUE, GX_CH_BLUE, GX_CH_BLUE, GX_CH_ALPHA);
        GXSetZCompLoc(1);
        GXSetZMode(0, GX_ALWAYS, 0);
        GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
        GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 0.0f, g_clearColor);
        GXSetFogRangeAdj(0, 0, 0);
        GXSetCullMode(GX_CULL_NONE);
        GXSetDither(1);
        Mtx44 ortho;
        C_MTXOrtho(ortho, 0.0f, 4.0f, 0.0f, 4.0f, 0.0f, 10.0f);
        GXLoadPosMtxImm(mDoMtx_getIdentity(), 0);
        GXSetProjection(ortho, GX_ORTHOGRAPHIC);
        GXSetCurrentMtx(0);
        GXClearVtxDesc();
        GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
        GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGB, GX_RGB8, 0);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_RGB8, 0);
        if (mMonoColor.a != 0) {
            GXSetNumTevStages(1);
            GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
            GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_C2, GX_CC_ZERO);
            GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_A2);
            GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP1, GX_TEV_SWAP1);
            GXSetTevColor(GX_TEVREG2, mMonoColor);
            GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_OR);
            mDoGph_drawFilterQuad(4, 4);
        }
        if (enabled) {
            GXSetTexCopySrc(0, 0, 0x130, 0xe0);
            GXSetTexCopyDst(0x130, 0xe0, GX_TF_RGBA8, 0);
            GXCopyTex(m_buffer, 0);
            GXSetNumTevStages(3);
            GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
            GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_TEXC, GX_CC_TEXA, GX_CC_HALF, GX_CC_ZERO);
            GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
            GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP1, GX_TEV_SWAP1);
            GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
            GXSetTevColorIn(GX_TEVSTAGE1, GX_CC_TEXC, GX_CC_CPREV, GX_CC_HALF, GX_CC_C0);
            GXSetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            GXSetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
            GXSetTevAlphaOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP3, GX_TEV_SWAP3);
            GXSetTevOrder(GX_TEVSTAGE2, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
            GXSetTevColorIn(GX_TEVSTAGE2, GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV, GX_CC_ZERO);
            GXSetTevColorOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            GXSetTevAlphaIn(GX_TEVSTAGE2, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
            GXSetTevAlphaOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            GXSetBlendMode(GX_BM_NONE, GX_BL_ZERO, GX_BL_ZERO, GX_LO_OR);
            GXColorS10 tevColor0 = {-mPoint, -mPoint, -mPoint, 0x40};
            GXSetTevColorS10(GX_TEVREG0, tevColor0);
            GXColor tevColor1 = {mBlureRatio, mBlureRatio, mBlureRatio, mBlureRatio};
            GXSetTevColor(GX_TEVREG1, tevColor1);
            GXPixModeSync();
            mDoGph_drawFilterQuad(2, 2);
            GXSetTevSwapModeTable(GX_TEV_SWAP1, GX_CH_RED, GX_CH_RED, GX_CH_RED, GX_CH_ALPHA);
            GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
            GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP0, GX_TEV_SWAP0);
            void* zBufferTex = getZbufferTex();
            GXSetTexCopySrc(0, 0, 0x130, 0xe0);
            GXSetTexCopyDst(0x98, 0x70, GX_TF_RGBA8, GX_TRUE);
            GXCopyTex(zBufferTex, 0);
            GXTexObj auStack_c0;
            GXInitTexObj(&auStack_c0, zBufferTex, 0x98, 0x70, GX_TF_RGBA8, GX_CLAMP, GX_CLAMP,
                         GX_FALSE);
            GXInitTexObjLOD(&auStack_c0, GX_LINEAR, GX_LINEAR, 0.0f, 0.0f, 0.0f, GX_FALSE, GX_FALSE,
                            GX_ANISO_1);
            GXLoadTexObj(&auStack_c0, GX_TEXMAP0);
            GXSetNumTexGens(8);
            u32 iVar11 = 0x1e;
            s16 sVar10 = 0;
            GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, 0x3c);
            for (int texCoord = (int)GX_TEXCOORD1; texCoord < (int)GX_MAX_TEXCOORD;
                 texCoord++, iVar11 += 3, sVar10 += 0x2492)
            {
                GXSetTexCoordGen((GXTexCoordID)texCoord, GX_TG_MTX2x4, GX_TG_TEX0, iVar11);
                f32 dVar15 = mBlureSize * (1.0f / 6400.0f);
                mDoMtx_stack_c::transS((dVar15 * cM_scos(sVar10)) * getInvScale(),
                                       dVar15 * cM_ssin(sVar10), 0.0f);
                GXLoadTexMtxImm(mDoMtx_stack_c::get(), iVar11, GX_MTX2x4);
            }
            GXSetNumTevStages(8);
            GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
            GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_A1, GX_CC_ZERO);
            GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
            GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            for (int tevStage = (int)GX_TEVSTAGE1; tevStage < 8; tevStage++) {
                GXSetTevOrder((GXTevStageID)tevStage, (GXTexCoordID)tevStage, GX_TEXMAP0,
                              GX_COLOR_NULL);
                GXSetTevColorIn((GXTevStageID)tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_A1,
                                GX_CC_CPREV);
                GXSetTevColorOp((GXTevStageID)tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1,
                                GX_TRUE, GX_TEVPREV);
                GXSetTevAlphaIn((GXTevStageID)tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,
                                GX_CA_A0);
                GXSetTevAlphaOp((GXTevStageID)tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1,
                                GX_TRUE, GX_TEVPREV);
            }
            GXPixModeSync();
            mDoGph_drawFilterQuad(1, 1);
            GXSetTexCopySrc(0, 0, 0x98, 0x70);
            GXSetTexCopyDst(0x4c, 0x38, GX_TF_RGBA8, GX_TRUE);
            GXCopyTex(zBufferTex, GX_FALSE);
            GXTexObj auStack_e0;
            GXInitTexObj(&auStack_e0, zBufferTex, 0x4c, 0x38, GX_TF_RGBA8, GX_CLAMP, GX_CLAMP,
                         GX_FALSE);
            GXInitTexObjLOD(&auStack_c0, GX_LINEAR, GX_LINEAR, 0.0f, 0.0f, 0.0f, GX_FALSE, GX_FALSE,
                            GX_ANISO_1);
            GXLoadTexObj(&auStack_e0, GX_TEXMAP0);
            GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_OR);
            GXPixModeSync();
            GXInvalidateTexAll();
            mDoGph_drawFilterQuad(1, 1);
            GXSetTexCopySrc(0, 0, 0x98, 0x70);
            GXSetTexCopyDst(0x98, 0x70, GX_TF_RGBA8, GX_FALSE);
            GXCopyTex(zBufferTex, GX_FALSE);
            GXInitTexObj(&auStack_e0, m_buffer, 0x130, 0xe0, GX_TF_RGBA8, GX_CLAMP, GX_CLAMP,
                         GX_FALSE);
            GXInitTexObjLOD(&auStack_e0, GX_LINEAR, GX_LINEAR, 0.0f, 0.0f, 0.0f, GX_FALSE, GX_FALSE,
                            GX_ANISO_1);
            GXLoadTexObj(&auStack_e0, GX_TEXMAP0);
            GXSetNumTexGens(1);
            GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, 0x3c);
            GXSetNumTevStages(1);
            GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
            GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_TEXC);
            GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
            GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            GXSetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ONE, GX_LO_OR);
            mDoGph_drawFilterQuad(2, 2);
            GXLoadTexObj(&auStack_c0, GX_TEXMAP0);
            GXSetTevColor(GX_TEVREG0, mBlendColor);
            GXSetNumTevStages(1);
            GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
            GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_C0, GX_CC_ZERO);
            GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_A0);
            GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
            GXBlendFactor blendFactor;
            if (mMode == 1) {
                blendFactor = GX_BL_INVDSTCLR;
            } else {
                blendFactor = GX_BL_ONE;
            }
            GXSetBlendMode(GX_BM_BLEND, blendFactor, GX_BL_SRCALPHA, GX_LO_OR);
            GXPixModeSync();
            GXInvalidateTexAll();
            mDoGph_drawFilterQuad(4, 4);
        }
    }
}

/* 8000A160-8000A290 004AA0 0130+00 1/1 0/0 0/0 .text
 * retry_captue_frame__FP10view_classP15view_port_classi        */
static void retry_captue_frame(view_class* param_0, view_port_class* param_1, int param_2) {
    s16 x_orig;
    s16 y_orig;
    s16 y_orig_pos;
    s16 width;
    s16 height;
    void* tex;

    x_orig = (int)param_1->x_orig & 0xFFFFFFF8;
    y_orig = (int)param_1->y_orig & 0xFFFFFFF8;
    y_orig_pos = y_orig < 0 ? 0 : y_orig;
    width = (int)param_1->width & 0xFFFFFFF8;
    height = (int)param_1->height & 0xFFFFFFF8;
    tex = mDoGph_gInf_c::mFrameBufferTex;

    if (!dComIfGp_isPauseFlag()) {
        if (y_orig < 0) {
            height += y_orig;
            y_orig = -y_orig >> 1;
            tex = (char*)tex + GXGetTexBufferSize(304, y_orig,
                                                  mDoGph_gInf_c::getFrameBufferTimg()->format,
                                                  GX_FALSE, 0);
        }

        GXSetTexCopySrc(x_orig, y_orig_pos, width, height);
        GXSetTexCopyDst(width >> 1, height >> 1,
                        (GXTexFmt)mDoGph_gInf_c::getFrameBufferTimg()->format, GX_TRUE);
        GXCopyTex(tex, GX_FALSE);
        GXPixModeSync();
        GXInvalidateTexAll();
    }
}

/* 8000A290-8000A504 004BD0 0274+00 1/1 0/0 0/0 .text            motionBlure__FP10view_class */
static void motionBlure(view_class* param_0) {
    if (g_env_light.is_blure) {
        GXLoadTexObj(mDoGph_gInf_c::getFrameBufferTexObj(), GX_TEXMAP0);
        GXColor local_60;
        local_60.a = mDoGph_gInf_c::getBlureRate();
        GXSetNumChans(0);
        GXSetNumTexGens(1);
        GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, 0x1e);
        GXSetNumTevStages(1);
        GXSetTevColor(GX_TEVREG0, local_60);
        GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_TEXC);
        GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_A0);
        GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        GXSetZCompLoc(1);
        GXSetZMode(GX_FALSE, GX_ALWAYS, GX_FALSE);
        GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
        GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
        GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 0.0f, g_clearColor);
        GXSetCullMode(GX_CULL_NONE);
        GXSetDither(GX_TRUE);
        Mtx44 ortho;
        C_MTXOrtho(ortho, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 10.0f);
        GXLoadPosMtxImm(mDoMtx_getIdentity(), 0);
        GXLoadTexMtxImm(mDoGph_gInf_c::getBlureMtx(), 0x1e, GX_MTX2x4);
        GXSetProjection(ortho, GX_ORTHOGRAPHIC);
        GXSetCurrentMtx(0);
        GXClearVtxDesc();
        GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
        GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGB, GX_RGB8, 0);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_RGB8, 0);
        mDoGph_drawFilterQuad(1, 1);
        GXSetProjection(param_0->projMtx, GX_PERSPECTIVE);
    }
    if (mDoGph_gInf_c::isBlure()) {
        g_env_light.is_blure = 1;
    } else {
        g_env_light.is_blure = 0;
    }
}

/* 8000A504-8000A58C 004E44 0088+00 1/1 0/0 0/0 .text            setLight__Fv */
static void setLight() {
    GXLightObj obj;

    GXInitLightPos(&obj, -35000.0f, 0.0f, -30000.0f);
    GXInitLightDir(&obj, 0.0f, 0.0f, 0.0f);
    GXInitLightColor(&obj, g_whiteColor);
    GXInitLightDistAttn(&obj, 0.0f, 0.0f, GX_DA_GENTLE);
    GXInitLightSpot(&obj, 0.0f, GX_SP_FLAT);
    GXLoadLightObjImm(&obj, GX_LIGHT0);
}

/* 8000A58C-8000A604 004ECC 0078+00 1/1 0/0 0/0 .text            drawItem3D__Fv */
static void drawItem3D() {
    Mtx item_mtx;
    dMenu_Collect3D_c::setupItem3D(item_mtx);
    setLight();
    j3dSys.setViewMtx(item_mtx);
    GXSetClipMode(GX_CLIP_DISABLE);
    dComIfGd_drawListItem3d();
    GXSetClipMode(GX_CLIP_ENABLE);
    j3dSys.reinitGX();
}

/* 8000A604-8000B118 004F44 0B14+00 0/0 1/0 0/0 .text            mDoGph_Painter__Fv */
int mDoGph_Painter() {
    dComIfGp_particle_calcMenu();

    JFWDisplay::getManager()->setFader(mDoGph_gInf_c::getFader());
    mDoGph_gInf_c::setClearColor(mDoGph_gInf_c::getBackColor());
    mDoGph_gInf_c::beginRender();
    GXSetAlphaUpdate(GX_DISABLE);
    mDoGph_gInf_c::setBackColor(g_clearColor);

    j3dSys.drawInit();
    GXSetDither(GX_ENABLE);

    J2DOrthoGraph ortho(0.0f, 0.0f, 608.0f, 448.0f, -1.0f, 1.0f);
    ortho.setOrtho(JGeometry::TBox2<f32>(mDoGph_gInf_c::getMinXF(), mDoGph_gInf_c::getMinYF(),
                                         mDoGph_gInf_c::getWidthF(), mDoGph_gInf_c::getHeightF()),
                   -1.0f, 1.0f);
    ortho.setPort();

    dComIfGp_setCurrentGrafPort(&ortho);
    dComIfGd_drawCopy2D();

    if (dComIfGp_getWindowNum() != 0) {
        dDlst_window_c* window_p = dComIfGp_getWindow(0);
        int camera_id = window_p->getCameraID();
        camera_class* camera_p = dComIfGp_getCamera(camera_id);

        if (camera_p != NULL) {
            dComIfGd_imageDrawShadow(camera_p->viewMtx);
            view_port_class* view_port = window_p->getViewPort();

            if (view_port->x_orig != 0.0f || view_port->y_orig != 0.0f) {
                view_port_class new_port;
                new_port.x_orig = 0.0f;
                new_port.y_orig = 0.0f;
                new_port.width = 608.0f;
                new_port.height = 448.0f;
                new_port.near_z = view_port->near_z;
                new_port.far_z = view_port->far_z;
                new_port.scissor = view_port->scissor;

                view_port = &new_port;
            }

            GXSetViewport(view_port->x_orig, view_port->y_orig, view_port->width,
                          view_port->height, view_port->near_z, view_port->far_z);
            GXSetScissor(view_port->x_orig, view_port->y_orig, view_port->width,
                         view_port->height);

            JPADrawInfo draw_info(camera_p->viewMtx, camera_p->fovy, camera_p->aspect);

            dComIfGp_setCurrentWindow(window_p);
            dComIfGp_setCurrentView(camera_p);
            dComIfGp_setCurrentViewport(view_port);
            GXSetProjection(camera_p->projMtx, GX_PERSPECTIVE);
            PPCSync();

            j3dSys.setViewMtx(camera_p->viewMtx);
            dKy_setLight();
            dComIfGd_drawOpaListSky();
            dComIfGd_drawXluListSky();

            GXSetClipMode(GX_CLIP_ENABLE);
            dComIfGd_drawOpaListBG();
            dComIfGd_drawOpaListDarkBG();
            dComIfGd_drawOpaListMiddle();

            dComIfGp_particle_drawFogPri0_B(&draw_info);
            dComIfGp_particle_drawNormalPri0_B(&draw_info);

            dComIfGd_drawShadow(camera_p->viewMtx);

            dComIfGd_drawOpaList();
            dComIfGd_drawOpaListDark();
            dComIfGd_drawOpaListPacket();
            dComIfGd_drawXluListBG();
            dComIfGd_drawXluListDarkBG();

            dComIfGp_particle_drawFogPri0_A(&draw_info);
            dComIfGp_particle_drawNormalPri0_A(&draw_info);

            dComIfGd_drawXluList();
            dComIfGd_drawXluListDark();

            j3dSys.reinitGX();
            GXSetClipMode(GX_CLIP_ENABLE);

            if (!dComIfGp_isPauseFlag()) {
                motionBlure(camera_p);
                drawDepth2(camera_p, view_port, dComIfGp_getCameraZoomForcus(camera_id));
                GXInvalidateTexAll();
                GXSetClipMode(GX_CLIP_ENABLE);

                if (g_env_light.is_blure == 0) {
                    dComIfGd_drawOpaListInvisible();
                    dComIfGd_drawXluListInvisible();
                }

                dComIfGp_particle_drawFogPri4(&draw_info);
                dComIfGp_particle_drawProjection(&draw_info);

                dComIfGd_drawListZxlu();
                GXSetClipMode(GX_CLIP_ENABLE);

                dComIfGd_drawOpaListFilter();
                GXSetClipMode(GX_CLIP_ENABLE);

                dComIfGp_particle_drawFogPri1(&draw_info);
                dComIfGp_particle_draw(&draw_info);
                dComIfGp_particle_drawFogPri2(&draw_info);
                dComIfGp_particle_drawFog(&draw_info);
                dComIfGp_particle_drawFogPri3(&draw_info);
                dComIfGp_particle_drawP1(&draw_info);
                dComIfGp_particle_drawDarkworld(&draw_info);

                retry_captue_frame(camera_p, view_port, dComIfGp_getCameraZoomForcus(camera_id));
                GXSetClipMode(GX_CLIP_ENABLE);

                if (g_env_light.is_blure == 1) {
                    dComIfGd_drawOpaListInvisible();
                    dComIfGd_drawXluListInvisible();
                }

                dComIfGp_particle_drawScreen(&draw_info);
                GXSetClipMode(GX_CLIP_ENABLE);

                dComIfGd_drawIndScreen();

                if (!strcmp(dComIfGp_getStartStageName(), "F_SP124")) {
                    retry_captue_frame(camera_p, view_port,
                                       dComIfGp_getCameraZoomForcus(camera_id));
                }

                GXSetViewport(0.0f, 0.0f, 608.0f, 448.0f, 0.0f, 1.0f);

                Mtx m2;
                Mtx44 m;
                C_MTXPerspective(m, 60.0f, 1.3571428f, 1.0f, 100000.0f);
                GXSetProjection(m, GX_PERSPECTIVE);
                cXyz sp38c(0.0f, 0.0f, -2.0f);
                cXyz sp398(0.0f, 1.0f, 0.0f);

                mDoMtx_lookAt(m2, &sp38c, &cXyz::Zero, &sp398, 0);
                j3dSys.setViewMtx(m2);
                dComIfGd_drawXluList2DScreen();

                j3dSys.setViewMtx(camera_p->viewMtx);
                GXSetProjection(camera_p->projMtx, GX_PERSPECTIVE);
                j3dSys.reinitGX();

                if ((g_env_light.camera_water_in_status || !strcmp(dComIfGp_getStartStageName(), "D_MN08")))
                {
                    u8 enable = mDoGph_gInf_c::getBloom()->getEnable();
                    GXColor color = *mDoGph_gInf_c::getBloom()->getMonoColor();
                    if (color.a != 0 || enable) {
                        retry_captue_frame(camera_p, view_port,
                                           dComIfGp_getCameraZoomForcus(camera_id));
                    }
                }

                mDoGph_gInf_c::getBloom()->draw();
                j3dSys.setViewMtx(camera_p->viewMtx);
                GXSetProjection(camera_p->projMtx, GX_PERSPECTIVE);

                dComIfGd_drawOpaList3Dlast();
                ortho.setOrtho(
                    JGeometry::TBox2<f32>(mDoGph_gInf_c::getMinXF(), mDoGph_gInf_c::getMinYF(),
                                          mDoGph_gInf_c::getWidthF(), mDoGph_gInf_c::getHeightF()),
                    100000.0f, -100000.0f);
                ortho.setPort();

                Mtx m3;
                MTXTrans(m3, 304.0f, 224.0f, 0.0f);
                JPADrawInfo draw_info2(m3, 0.0f, 448.0f, 0.0f, 608.0f);
                dComIfGp_particle_draw2Dgame(&draw_info2);

                trimming(camera_p, view_port);

                if (strcmp(dComIfGp_getStartStageName(), "F_SP127") != 0 &&
                    (mDoGph_gInf_c::mFade & 0x80) == 0)
                {
                    mDoGph_gInf_c::calcFade();
                }
            }
        }
    }

    GXSetClipMode(GX_CLIP_ENABLE);
    dDlst_list_c::calcWipe();
    j3dSys.reinitGX();

    ortho.setOrtho(JGeometry::TBox2<f32>(mDoGph_gInf_c::getMinXF(), mDoGph_gInf_c::getMinYF(),
                                         mDoGph_gInf_c::getWidthF(), mDoGph_gInf_c::getHeightF()),
                   100000.0f, -100000.0f);
    ortho.setPort();

    Mtx m4;
    MTXCopy(j3dSys.getViewMtx(), m4);

    Mtx m5;
    MTXTrans(m5, 304.0f, 224.0f, 0.0f);

    JPADrawInfo draw_info3(m5, 0.0f, 448.0f, 0.0f, 608.0f);

    if (!dComIfGp_isPauseFlag()) {
        dComIfGp_particle_draw2Dback(&draw_info3);
    }

    dComIfGp_particle_draw2DmenuBack(&draw_info3);
    ortho.setPort();

    dComIfGd_draw2DOpa();
    drawItem3D();
    ortho.setPort();

    dComIfGd_draw2DOpaTop();
    dComIfGd_draw2DXlu();

    if (!dComIfGp_isPauseFlag()) {
        dComIfGp_particle_draw2Dfore(&draw_info3);
    }

    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 || (mDoGph_gInf_c::mFade & 0x80) != 0)
    {
        mDoGph_gInf_c::calcFade();
    }

    dComIfGp_particle_draw2DmenuFore(&draw_info3);
    j3dSys.setViewMtx(m4);

    mDoGph_gInf_c::endRender();
    return 1;
}

/* 8000B174-8000B1D0 005AB4 005C+00 0/0 2/1 0/0 .text            mDoGph_Create__Fv */
int mDoGph_Create() {
    JKRSolidHeap* heap = mDoExt_createSolidHeapToCurrent(0, NULL, 0);
    mDoGph_gInf_c::create();
    dComIfGd_init();
    mDoExt_adjustSolidHeap(heap);
    mDoExt_restoreCurrentHeap();
    return 1;
}
