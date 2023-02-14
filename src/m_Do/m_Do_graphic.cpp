/**
 * m_Do_graphic.cpp
 * Graphics Management Functions
 */

#include "m_Do/m_Do_graphic.h"
#include "JSystem/JFramework/JFWSystem.h"
#include "SSystem/SComponent/c_lib.h"
#include "d/com/d_com_inf_game.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "f_ap/f_ap_game.h"
#include "m_Do/m_Do_controller_pad.h"
#include "m_Do/m_Do_machine.h"
#include "m_Do/m_Do_mtx.h"

//
// Types:
//

struct J2DPrint {
    /* 802F4658 */ void setBuffer(u32);
};

struct J2DOrthoGraph {
    /* 8000B118 */ ~J2DOrthoGraph();
    /* 802E96D0 */ J2DOrthoGraph(f32, f32, f32, f32, f32, f32);
    /* 802E97B4 */ void setPort();
    /* 802E980C */ void setOrtho(JGeometry::TBox2<f32> const&, f32, f32);
};

//
// Forward References:
//

extern "C" static void createTimg__FUsUsUl();
extern "C" void create__13mDoGph_gInf_cFv();
extern "C" void beginRender__13mDoGph_gInf_cFv();
extern "C" void fadeOut__13mDoGph_gInf_cFfR8_GXColor();
extern "C" void fadeOut_f__13mDoGph_gInf_cFfR8_GXColor();
extern "C" void onBlure__13mDoGph_gInf_cFv();
extern "C" void onBlure__13mDoGph_gInf_cFPA4_Cf();
extern "C" void fadeOut__13mDoGph_gInf_cFf();
extern "C" static void darwFilter__F8_GXColor();
extern "C" void calcFade__13mDoGph_gInf_cFv();
extern "C" void mDoGph_BlankingON__Fv();
extern "C" void mDoGph_BlankingOFF__Fv();
extern "C" static void dScnPly_BeforeOfPaint__Fv();
extern "C" void mDoGph_BeforeOfDraw__Fv();
extern "C" void mDoGph_AfterOfDraw__Fv();
extern "C" static void drawDepth2__FP10view_classP15view_port_classi();
extern "C" void __dt__4cXyzFv();
extern "C" static void trimming__FP10view_classP15view_port_class();
extern "C" void mDoGph_drawFilterQuad__FScSc();
extern "C" void create__Q213mDoGph_gInf_c7bloom_cFv();
extern "C" void remove__Q213mDoGph_gInf_c7bloom_cFv();
extern "C" void draw__Q213mDoGph_gInf_c7bloom_cFv();
extern "C" static void retry_captue_frame__FP10view_classP15view_port_classi();
extern "C" static void motionBlure__FP10view_class();
extern "C" static void setLight__Fv();
extern "C" static void drawItem3D__Fv();
extern "C" void mDoGph_Painter__Fv();
extern "C" void __dt__13J2DOrthoGraphFv();
extern "C" void mDoGph_Create__Fv();
extern "C" void __sinit_m_Do_graphic_cpp();
extern "C" s32 getAtnActorID__9daPy_py_cCFv();
extern "C" extern char const* const m_Do_m_Do_graphic__stringBase0;
extern "C" u8 mFrameBufferTexObj__13mDoGph_gInf_c[32];
extern "C" u8 mZbufferTexObj__13mDoGph_gInf_c[32];
extern "C" u8 m_bloom__13mDoGph_gInf_c[20];
extern "C" u8 mBlureMtx__13mDoGph_gInf_c[48 + 4 /* padding */];
extern "C" u8 mBackColor__13mDoGph_gInf_c[4];
extern "C" u8 mFadeColor__13mDoGph_gInf_c[4];
extern "C" u8 mFader__13mDoGph_gInf_c[4];
extern "C" u8 mFrameBufferTimg__13mDoGph_gInf_c[4];
extern "C" u8 mFrameBufferTex__13mDoGph_gInf_c[4];
extern "C" u8 mZbufferTimg__13mDoGph_gInf_c[4];
extern "C" u8 mZbufferTex__13mDoGph_gInf_c[4];
extern "C" f32 mFadeRate__13mDoGph_gInf_c;
extern "C" f32 mFadeSpeed__13mDoGph_gInf_c;

//
// External References:
//

extern "C" void mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs();
extern "C" void mDoExt_getArchiveHeap__Fv();
extern "C" void mDoExt_createSolidHeapToCurrent__FUlP7JKRHeapUl();
extern "C" void mDoExt_adjustSolidHeap__FP12JKRSolidHeap();
extern "C" void mDoExt_restoreCurrentHeap__Fv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void calcMenu__13dPa_control_cFv();
extern "C" void draw__13dPa_control_cFP11JPADrawInfoUc();
extern "C" void imageDraw__21dDlst_shadowControl_cFPA4_f();
extern "C" void draw__21dDlst_shadowControl_cFPA4_f();
extern "C" void init__12dDlst_list_cFv();
extern "C" void reset__12dDlst_list_cFv();
extern "C" void drawOpaDrawList__12dDlst_list_cFP13J3DDrawBuffer();
extern "C" void drawXluDrawList__12dDlst_list_cFP13J3DDrawBuffer();
extern "C" void drawOpaListItem3d__12dDlst_list_cFv();
extern "C" void drawXluListItem3d__12dDlst_list_cFv();
extern "C" void draw__12dDlst_list_cFPP12dDlst_base_cPP12dDlst_base_c();
extern "C" void calcWipe__12dDlst_list_cFv();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void dCam_getBody__Fv();
extern "C" void dKy_setLight__Fv();
extern "C" void setupItem3D__17dMenu_Collect3D_cFPA4_f();
extern "C" void cLib_memSet__FPviUl();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void createManager__10JFWDisplayFPC16_GXRenderModeObjP7JKRHeapQ26JUTXfb10EXfbNumberb();
extern "C" void alloc__7JKRHeapFUliP7JKRHeap();
extern "C" void alloc__7JKRHeapFUli();
extern "C" void free__7JKRHeapFPv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void setRenderMode__8JUTVideoFPC16_GXRenderModeObj();
extern "C" void __ct__8JUTFaderFiiiiQ28JUtility6TColor();
extern "C" void __ct__13J2DOrthoGraphFffffff();
extern "C" void setPort__13J2DOrthoGraphFv();
extern "C" void func_802E980C();
extern "C" void setBuffer__8J2DPrintFUl();
extern "C" void drawInit__6J3DSysFv();
extern "C" void reinitGX__6J3DSysFv();
extern "C" void PPCSync();
extern "C" void GXClearVtxDesc();
extern "C" void GXPixModeSync();
extern "C" void GXInvalidateTexAll();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_17();
extern "C" void _savegpr_21();
extern "C" void _savegpr_24();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _restgpr_17();
extern "C" void _restgpr_21();
extern "C" void _restgpr_24();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" extern void* __vt__14J2DGrafContext[10];
extern "C" extern void* __vt__13J2DOrthoGraph[10];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 mPadStatus__10JUTGamePad[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern s8 data_80450580;
extern "C" extern s8 developmentMode__7mDoMain;
extern "C" void* mRenderModeObj__15mDoMch_render_c[1 + 1 /* padding */];
extern "C" u8 systemConsole__9JFWSystem[4];
extern "C" u8 sManager__10JFWDisplay[4];
extern "C" u8 sCurrentHeap__7JKRHeap[4];
extern "C" u8 sDebugPrint__10JUTDbPrint[4 + 4 /* padding */];
extern "C" u8 sManager__8JUTVideo[4];
extern "C" u8 sManager__6JUTXfb[4 + 4 /* padding */];
extern "C" u8 sManager__10JUTProcBar[4];

//
// Declarations:
//

/* 80007D9C-80007E44 0026DC 00A8+00 1/1 0/0 0/0 .text            createTimg__FUsUsUl */
// extra mr optimized out?
#ifdef NONMATCHING
static ResTIMG* createTimg(u16 width, u16 height, u32 format) {
    u32 bufferSize = GXGetTexBufferSize(width, height, format, GX_FALSE, 0) + 0x20;
    ResTIMG* timg;
    
    timg = (ResTIMG*)JKRHeap::alloc(bufferSize, 0x20, NULL);

    if (timg==NULL) {
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm ResTIMG* createTimg(u16 param_0, u16 param_1, u32 param_2) {
    nofralloc
#include "asm/m_Do/m_Do_graphic/createTimg__FUsUsUl.s"
}
#pragma pop
#endif

/* ############################################################################################## */
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

#pragma push
#pragma force_active on
static bool data_80450BE5;

u8 mDoGph_gInf_c::mFade;

bool data_80450BE7;
#pragma pop

/* 80007E44-80007F90 002784 014C+00 1/1 0/0 0/0 .text            create__13mDoGph_gInf_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoGph_gInf_c::create() {
    nofralloc
#include "asm/m_Do/m_Do_graphic/create__13mDoGph_gInf_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80450BE8-80450BF0 0000E8 0008+00 1/1 0/0 0/0 .sbss            None */
static bool data_80450BE8;

/* 80007F90-80007FD8 0028D0 0048+00 1/1 2/2 0/0 .text            beginRender__13mDoGph_gInf_cFv */
void mDoGph_gInf_c::beginRender() {
    if (data_80450BE8) {
        JUTXfb::getManager()->setDrawingXfbIndex(-1);
    }
    JFWDisplay::getManager()->beginRender();
}

/* ############################################################################################## */
/* 80451A38-80451A3C 000038 0004+00 11/11 0/0 0/0 .sdata2          @4062 */
SECTION_SDATA2 static u8 lit_4062[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80451A3C-80451A40 00003C 0004+00 8/8 0/0 0/0 .sdata2          @4063 */
SECTION_SDATA2 static f32 lit_4063 = 1.0f;

/* 80007FD8-80008028 002918 0050+00 1/1 6/4 15/15 .text fadeOut__13mDoGph_gInf_cFfR8_GXColor */
void mDoGph_gInf_c::fadeOut(f32 fadeSpeed, GXColor& fadeColor) {
    mFade = 1;
    mFadeSpeed = fadeSpeed;
    mFadeColor = fadeColor;

    f32 tmp_0 = FLOAT_LABEL(lit_4062);
    if (fadeSpeed >= tmp_0) {
        mFadeRate = tmp_0;
    } else {
        mFadeRate = lit_4063;
    }
}

/* 80008028-80008078 002968 0050+00 0/0 0/0 2/2 .text fadeOut_f__13mDoGph_gInf_cFfR8_GXColor */
void mDoGph_gInf_c::fadeOut_f(f32 fadeSpeed, GXColor& fadeColor) {
    mFade = 129;
    mFadeSpeed = fadeSpeed;
    mFadeColor = fadeColor;

    f32 tmp_0 = FLOAT_LABEL(lit_4062);
    if (fadeSpeed >= tmp_0) {
        mFadeRate = tmp_0;
    } else {
        mFadeRate = lit_4063;
    }
}

/* 80008078-800080A0 0029B8 0028+00 0/0 1/1 8/8 .text            onBlure__13mDoGph_gInf_cFv */
void mDoGph_gInf_c::onBlure() {
    onBlure(g_mDoMtx_identity);
}

/* ############################################################################################## */
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
    PSMTXCopy(m, mBlureMtx);
}

/* 800080D0-800080F4 002A10 0024+00 0/0 3/3 7/7 .text            fadeOut__13mDoGph_gInf_cFf */
void mDoGph_gInf_c::fadeOut(f32 fadeSpeed) {
    fadeOut(fadeSpeed, g_clearColor);
}

/* ############################################################################################## */
/* 80451A40-80451A44 000040 0004+00 5/5 0/0 0/0 .sdata2          @4105 */
SECTION_SDATA2 static f32 lit_4105 = 10.0f;

/* 800080F4-80008330 002A34 023C+00 1/1 0/0 0/0 .text            darwFilter__F8_GXColor */
// matches with literals
#ifdef NONMATCHING
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
    GXSetBlendMode(GX_BM_BLEND, GX_BL_SRC_ALPHA, GX_BL_INV_SRC_ALPHA, GX_LO_OR);
    GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
    f32 tmp_0 = FLOAT_LABEL(lit_4062);
    GXSetFog(GX_FOG_NONE, tmp_0, tmp_0, tmp_0, tmp_0, g_clearColor);
    GXSetFogRangeAdj(GX_DISABLE, 0, NULL);
    GXSetCullMode(GX_CULL_NONE);
    GXSetDither(GX_ENABLE);
    GXSetNumIndStages(0);

    Mtx44 mtx;
    f32 tmp_0_2 = FLOAT_LABEL(lit_4062);
    C_MTXOrtho(mtx, tmp_0_2, lit_4063, tmp_0_2, lit_4063, tmp_0_2, lit_4105);
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
    i_GXEnd();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void darwFilter(_GXColor param_0) {
    nofralloc
#include "asm/m_Do/m_Do_graphic/darwFilter__F8_GXColor.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80451A44-80451A48 000044 0004+00 1/1 0/0 0/0 .sdata2          @4131 */
SECTION_SDATA2 static f32 lit_4131 = 255.0f;

/* 80008330-8000841C 002C70 00EC+00 1/1 0/0 0/0 .text            calcFade__13mDoGph_gInf_cFv */
// li instead of addi
#ifdef NONMATCHING
void mDoGph_gInf_c::calcFade() {
    if (mDoGph_gInf_c::mFade == 1) {
        mFadeRate += mFadeSpeed;

        if (mFadeRate < 0.0f) {
            mFadeRate = 0.0f;
            mDoGph_gInf_c::mFade = 0;
        } else {
            if (mFadeRate > 1.0f) {
                mFadeRate = 1.0f;
            }
        }
        mFadeColor.a = lit_4131 * mFadeRate;
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoGph_gInf_c::calcFade() {
    nofralloc
#include "asm/m_Do/m_Do_graphic/calcFade__13mDoGph_gInf_cFv.s"
}
#pragma pop
#endif

/* 8000841C-80008420 002D5C 0004+00 0/0 1/0 0/0 .text            mDoGph_BlankingON__Fv */
void mDoGph_BlankingON() {
    /* empty function */
}

/* 80008420-80008424 002D60 0004+00 0/0 1/0 0/0 .text            mDoGph_BlankingOFF__Fv */
void mDoGph_BlankingOFF() {
    /* empty function */
}

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
// r6 / r7 swapped
#ifdef NONMATCHING
int mDoGph_AfterOfDraw() {
    if (fapGmHIO_isMenu()) {
        JUTProcBar::getManager()->setVisible(false);
        JUTProcBar::getManager()->setVisibleHeapBar(false);
        JUTDbPrint::getManager()->setVisible(true);
    } else {
        int sysConsole_visible = JFWSystem::getSystemConsole()->isVisible();
        int port3_connected = mDoCPd_c::isConnect(PAD_3);

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
    GXSetBlendMode(GX_BM_BLEND, GX_BL_SRC_ALPHA, GX_BL_INV_SRC_ALPHA, GX_LO_CLEAR);
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoGph_AfterOfDraw() {
    nofralloc
#include "asm/m_Do/m_Do_graphic/mDoGph_AfterOfDraw__Fv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80450598-8045059C 000018 0004+00 1/1 0/0 0/0 .sdata           l_tevColor0$4208 */
SECTION_SDATA static u8 l_tevColor0[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 8045059C-804505A0 00001C 0004+00 1/1 0/0 0/0 .sdata           None */
SECTION_SDATA static u8 data_8045059C[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80451A48-80451A4C 000048 0004+00 1/1 0/0 0/0 .sdata2          @4422 */
SECTION_SDATA2 static f32 lit_4422 = -255.0f;

/* 80451A4C-80451A50 00004C 0004+00 2/2 0/0 0/0 .sdata2          @4423 */
SECTION_SDATA2 static f32 lit_4423 = 60.0f;

/* 80451A50-80451A54 000050 0004+00 1/1 0/0 0/0 .sdata2          @4424 */
SECTION_SDATA2 static f32 lit_4424 = 48.0f;

/* 80451A54-80451A58 000054 0004+00 1/1 0/0 0/0 .sdata2          @4425 */
SECTION_SDATA2 static f32 lit_4425 = 400.0f;

/* 80451A58-80451A60 000058 0008+00 1/1 0/0 0/0 .sdata2          @4426 */
SECTION_SDATA2 static f64 lit_4426 = 0.5;

/* 80451A60-80451A68 000060 0008+00 1/1 0/0 0/0 .sdata2          @4427 */
SECTION_SDATA2 static f64 lit_4427 = 3.0;

/* 80451A68-80451A70 000068 0008+00 1/1 0/0 0/0 .sdata2          @4428 */
SECTION_SDATA2 static u8 lit_4428[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80451A70-80451A74 000070 0004+00 1/1 0/0 0/0 .sdata2          @4429 */
SECTION_SDATA2 static f32 lit_4429 = 280.0f;

/* 80451A74-80451A78 000074 0004+00 1/1 0/0 0/0 .sdata2          @4430 */
SECTION_SDATA2 static f32 lit_4430 = 4.0f / 5.0f;

/* 80451A78-80451A7C 000078 0004+00 1/1 0/0 0/0 .sdata2          @4431 */
SECTION_SDATA2 static f32 lit_4431 = -180.0f;

/* 80451A7C-80451A80 00007C 0004+00 1/1 0/0 0/0 .sdata2          @4432 */
SECTION_SDATA2 static f32 lit_4432 = 75.0f;

/* 80451A80-80451A84 000080 0004+00 1/1 0/0 0/0 .sdata2          @4433 */
SECTION_SDATA2 static f32 lit_4433 = 3.0f;

/* 80451A84-80451A88 000084 0004+00 1/1 0/0 0/0 .sdata2          @4434 */
SECTION_SDATA2 static f32 lit_4434 = 999999.0f;

/* 80451A88-80451A8C 000088 0004+00 1/1 0/0 0/0 .sdata2          @4435 */
SECTION_SDATA2 static f32 lit_4435 = 80.0f;

/* 80451A8C-80451A90 00008C 0004+00 1/1 0/0 0/0 .sdata2          @4436 */
SECTION_SDATA2 static f32 lit_4436 = 1.0f / 10.0f;

/* 80451A90-80451A94 000090 0004+00 1/1 0/0 0/0 .sdata2          @4437 */
SECTION_SDATA2 static f32 lit_4437 = 100.0f;

/* 80451A94-80451A98 000094 0004+00 1/1 0/0 0/0 .sdata2          @4438 */
SECTION_SDATA2 static f32 lit_4438 = 9.999999747378752e-05f;

/* 80451A98-80451A9C 000098 0004+00 1/1 0/0 0/0 .sdata2          @4439 */
SECTION_SDATA2 static f32 lit_4439 = -254.0f;

/* 80451A9C-80451AA0 00009C 0004+00 1/1 0/0 0/0 .sdata2          @4440 */
SECTION_SDATA2 static f32 lit_4440 = 509.0f;

/* 80451AA0-80451AA4 0000A0 0004+00 1/1 0/0 0/0 .sdata2          @4441 */
SECTION_SDATA2 static f32 lit_4441 = 0.0024999999441206455f;

/* 80451AA4-80451AA8 0000A4 0004+00 1/1 0/0 0/0 .sdata2          @4442 */
SECTION_SDATA2 static f32 lit_4442 = -0.0024999999441206455f;

/* 80008630-80009184 002F70 0B54+00 1/1 0/0 0/0 .text
 * drawDepth2__FP10view_classP15view_port_classi                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void drawDepth2(view_class* param_0, view_port_class* param_1, int param_2) {
    nofralloc
#include "asm/m_Do/m_Do_graphic/drawDepth2__FP10view_classP15view_port_classi.s"
}
#pragma pop

/* 80009184-800091C0 003AC4 003C+00 0/0 53/53 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/m_Do/m_Do_graphic/__dt__4cXyzFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80451AA8-80451AAC 0000A8 0004+00 3/3 0/0 0/0 .sdata2          @4480 */
SECTION_SDATA2 static f32 lit_4480 = 448.0f;

/* 80451AAC-80451AB0 0000AC 0004+00 3/3 0/0 0/0 .sdata2          @4481 */
SECTION_SDATA2 static f32 lit_4481 = 608.0f;

/* 800091C0-800094B4 003B00 02F4+00 1/1 0/0 0/0 .text trimming__FP10view_classP15view_port_class
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void trimming(view_class* param_0, view_port_class* param_1) {
    nofralloc
#include "asm/m_Do/m_Do_graphic/trimming__FP10view_classP15view_port_class.s"
}
#pragma pop

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
    i_GXEnd();
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

/* ############################################################################################## */
/* 80451AB4-80451AB8 0000B4 0004+00 1/1 0/0 0/0 .sdata2          @4528 */
SECTION_SDATA2 static u8 lit_4528[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80451AB8-80451ABC 0000B8 0004+00 1/1 0/0 0/0 .sdata2          None */
SECTION_SDATA2 static u32 data_80451AB8 = 0x00000040;

/* 80451ABC-80451AC0 0000BC 0004+00 1/1 0/0 0/0 .sdata2          @4592 */
SECTION_SDATA2 static f32 lit_4592 = 4.0f;

/* 80451AC0-80451AC8 0000C0 0004+04 1/1 0/0 0/0 .sdata2          @4593 */
SECTION_SDATA2 static f32 lit_4593[1 + 1 /* padding */] = {
    0.00015624999650754035f,
    /* padding */
    0.0f,
};

/* 80451AC8-80451AD0 0000C8 0008+00 1/1 0/0 0/0 .sdata2          @4595 */
SECTION_SDATA2 static f64 lit_4595 = 4503599627370496.0 /* cast u32 to float */;

/* 80456B60-80456B68 000000 0004+04 1/1 0/0 0/0 .sbss2           @4530 */
SECTION_SBSS2 static u8 lit_4530[4 + 4 /* padding */];

/* 80009650-8000A160 003F90 0B10+00 1/1 0/0 0/0 .text            draw__Q213mDoGph_gInf_c7bloom_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoGph_gInf_c::bloom_c::draw() {
    nofralloc
#include "asm/m_Do/m_Do_graphic/draw__Q213mDoGph_gInf_c7bloom_cFv.s"
}
#pragma pop

/* 8000A160-8000A290 004AA0 0130+00 1/1 0/0 0/0 .text
 * retry_captue_frame__FP10view_classP15view_port_classi        */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void retry_captue_frame(view_class* param_0, view_port_class* param_1, int param_2) {
    nofralloc
#include "asm/m_Do/m_Do_graphic/retry_captue_frame__FP10view_classP15view_port_classi.s"
}
#pragma pop

/* 8000A290-8000A504 004BD0 0274+00 1/1 0/0 0/0 .text            motionBlure__FP10view_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void motionBlure(view_class* param_0) {
    nofralloc
#include "asm/m_Do/m_Do_graphic/motionBlure__FP10view_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80451AD0-80451AD4 0000D0 0004+00 1/1 0/0 0/0 .sdata2          @4641 */
SECTION_SDATA2 static f32 lit_4641 = -35000.0f;

/* 80451AD4-80451AD8 0000D4 0004+00 1/1 0/0 0/0 .sdata2          @4642 */
SECTION_SDATA2 static f32 lit_4642 = -30000.0f;

/* 8000A504-8000A58C 004E44 0088+00 1/1 0/0 0/0 .text            setLight__Fv */
// matches with literals
#ifdef NONMATCHING
static void setLight() {
    GXLightObj obj;

    GXInitLightPos(&obj, -35000.0f, 0.0f, -30000.0f);
    GXInitLightDir(&obj, 0.0f, 0.0f, 0.0f);
    GXInitLightColor(&obj, g_whiteColor);
    GXInitLightDistAttn(&obj, 0.0f, 0.0f, GX_DA_GENTLE);
    GXInitLightSpot(&obj, 0.0f, GX_SP_FLAT);
    GXLoadLightObjImm(&obj, GX_LIGHT0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void setLight() {
    nofralloc
#include "asm/m_Do/m_Do_graphic/setLight__Fv.s"
}
#pragma pop
#endif

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

/* ############################################################################################## */
/* 80373DD0-80373DD0 000430 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80373DD0 = "F_SP124";
SECTION_DEAD static char const* const stringBase_80373DD8 = "D_MN08";
SECTION_DEAD static char const* const stringBase_80373DDF = "F_SP127";
/* @stringBase0 padding */
SECTION_DEAD static char const* const pad_80373DE7 = "";
#pragma pop

/* 80451AD8-80451ADC 0000D8 0004+00 1/1 0/0 0/0 .sdata2          @5023 */
SECTION_SDATA2 static f32 lit_5023 = -1.0f;

/* 80451ADC-80451AE0 0000DC 0004+00 1/1 0/0 0/0 .sdata2          @5024 */
SECTION_SDATA2 static f32 lit_5024 = 0.5f;

/* 80451AE0-80451AE4 0000E0 0004+00 1/1 0/0 0/0 .sdata2          @5025 */
SECTION_SDATA2 static f32 lit_5025 = -0.5f;

/* 80451AE4-80451AE8 0000E4 0004+00 1/1 0/0 0/0 .sdata2          @5026 */
SECTION_SDATA2 static f32 lit_5026 = 19.0f / 14.0f;

/* 80451AE8-80451AEC 0000E8 0004+00 1/1 0/0 0/0 .sdata2          @5027 */
SECTION_SDATA2 static f32 lit_5027 = 100000.0f;

/* 80451AEC-80451AF0 0000EC 0004+00 1/1 0/0 0/0 .sdata2          @5028 */
SECTION_SDATA2 static f32 lit_5028 = -2.0f;

/* 80451AF0-80451AF4 0000F0 0004+00 1/1 0/0 0/0 .sdata2          @5029 */
SECTION_SDATA2 static f32 lit_5029 = -100000.0f;

/* 80451AF4-80451AF8 0000F4 0004+00 1/1 0/0 0/0 .sdata2          @5030 */
SECTION_SDATA2 static f32 lit_5030 = 304.0f;

/* 80451AF8-80451B00 0000F8 0004+04 1/1 0/0 0/0 .sdata2          @5031 */
SECTION_SDATA2 static f32 lit_5031[1 + 1 /* padding */] = {
    224.0f,
    /* padding */
    0.0f,
};

/* 8000A604-8000B118 004F44 0B14+00 0/0 1/0 0/0 .text            mDoGph_Painter__Fv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void mDoGph_Painter() {
    nofralloc
#include "asm/m_Do/m_Do_graphic/mDoGph_Painter__Fv.s"
}
#pragma pop

/* 8000B118-8000B174 005A58 005C+00 0/0 1/0 0/0 .text            __dt__13J2DOrthoGraphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J2DOrthoGraph::~J2DOrthoGraph() {
    nofralloc
#include "asm/m_Do/m_Do_graphic/__dt__13J2DOrthoGraphFv.s"
}
#pragma pop

/* 8000B174-8000B1D0 005AB4 005C+00 0/0 2/1 0/0 .text            mDoGph_Create__Fv */
int mDoGph_Create() {
    JKRSolidHeap* heap = mDoExt_createSolidHeapToCurrent(0, NULL, 0);
    mDoGph_gInf_c::create();
    dComIfGd_init();
    mDoExt_adjustSolidHeap(heap);
    mDoExt_restoreCurrentHeap();
    return 1;
}

/* 8000B1D0-8000B1E4 005B10 0014+00 0/0 1/0 0/0 .text            __sinit_m_Do_graphic_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_m_Do_graphic_cpp() {
    nofralloc
#include "asm/m_Do/m_Do_graphic/__sinit_m_Do_graphic_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8000B1D0, __sinit_m_Do_graphic_cpp);
#pragma pop

/* 8000B1E4-8000B1EC 005B24 0008+00 0/0 1/0 0/0 .text            getAtnActorID__9daPy_py_cCFv */
s32 daPy_py_c::getAtnActorID() const {
    return -1;
}

/* 80373DD0-80373DD0 000430 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
