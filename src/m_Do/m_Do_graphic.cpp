#include "global.h"
#include "m_Do/m_Do_graphic/m_Do_graphic.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "m_Do/m_Do_main/m_Do_main.h"
#include "JSystem/JUtility/JUTGamePad/JUTGamePad.h"
#include "f/f_pc/f_pc_searcher.h"
#include "d/d_kankyo/d_kankyo.h"
#include "gx/GX.h"

extern "C" {
// createTimg__FUsUsUl
// createTimg(u16, u16, u32)
asm void createTimg(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_80007D9C.s"
}

// create__13mDoGph_gInf_cFv
// mDoGph_gInf_c::create(void)
asm void mDoGph_gInf_c_NS_create(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_80007E44.s"
}

// beginRender__13mDoGph_gInf_cFv
// mDoGph_gInf_c::beginRender(void)
asm void mDoGph_gInf_c_NS_beginRender(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_80007F90.s"
}

// fadeOut__13mDoGph_gInf_cFfR8_GXColor
// mDoGph_gInf_c::fadeOut(f32, _GXColor&)
asm void mDoGph_gInf_c_NS_fadeOut(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_80007FD8.s"
}

// fadeOut_f__13mDoGph_gInf_cFfR8_GXColor
// mDoGph_gInf_c::fadeOut_f(f32, _GXColor&)
asm void func_80008028(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_80008028.s"
}

// onBlure__13mDoGph_gInf_cFv
// mDoGph_gInf_c::onBlure(void)
asm void mDoGph_gInf_c_NS_onBlure(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_80008078.s"
}

// onBlure__13mDoGph_gInf_cFPA4_Cf
// mDoGph_gInf_c::onBlure(const f32 [][4])
asm void mDoGph_gInf_c_NS_onBlure_X1_(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_800080A0.s"
}

// fadeOut__13mDoGph_gInf_cFf
// mDoGph_gInf_c::fadeOut(f32)
asm void mDoGph_gInf_c_NS_fadeOut_X1_(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_800080D0.s"
}

// darwFilter__F8_GXColor
// darwFilter(_GXColor)
asm void darwFilter(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_800080F4.s"
}

// calcFade__13mDoGph_gInf_cFv
// mDoGph_gInf_c::calcFade(void)
asm void mDoGph_gInf_c_NS_calcFade(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_80008330.s"
}

// mDoGph_BlankingON__Fv
// mDoGph_BlankingON(void)
asm void func_8000841C(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_8000841C.s"
}

// mDoGph_BlankingOFF__Fv
// mDoGph_BlankingOFF(void)
asm void func_80008420(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_80008420.s"
}

// dScnPly_BeforeOfPaint__Fv
// dScnPly_BeforeOfPaint(void)
asm void dScnPly_BeforeOfPaint(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_80008424.s"
}

// mDoGph_BeforeOfDraw__Fv
// mDoGph_BeforeOfDraw(void)
asm void func_80008450(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_80008450.s"
}

// mDoGph_AfterOfDraw__Fv
// mDoGph_AfterOfDraw(void)
asm void func_80008474(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_80008474.s"
}

// drawDepth2__FP10view_classP15view_port_classi
// drawDepth2(view_class*, view_port_class*, int)
asm void drawDepth2(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_80008630.s"
}

// __dt__4cXyzFv
// cXyz::~cXyz(void)
asm void cXyz_NS_dtor(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_80009184.s"
}

// trimming__FP10view_classP15view_port_class
// trimming(view_class*, view_port_class*)
asm void trimming(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_800091C0.s"
}

// mDoGph_drawFilterQuad__FScSc
// mDoGph_drawFilterQuad(s8, s8)
asm void mDoGph_drawFilterQuad(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_800094B4.s"
}

// create__Q213mDoGph_gInf_c7bloom_cFv
// mDoGph_gInf_c::bloom_c::create(void)
asm void mDoGph_gInf_c_NS_bloom_c_NS_create(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_80009544.s"
}

// remove__Q213mDoGph_gInf_c7bloom_cFv
// mDoGph_gInf_c::bloom_c::remove(void)
asm void mDoGph_gInf_c_NS_bloom_c_NS_remove(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_800095F8.s"
}

// draw__Q213mDoGph_gInf_c7bloom_cFv
// mDoGph_gInf_c::bloom_c::draw(void)
asm void mDoGph_gInf_c_NS_bloom_c_NS_draw(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_80009650.s"
}

// retry_captue_frame__FP10view_classP15view_port_classi
// retry_captue_frame(view_class*, view_port_class*, int)
asm void retry_captue_frame(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_8000A160.s"
}

// motionBlure__FP10view_class
// motionBlure(view_class*)
asm void motionBlure(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_8000A290.s"
}

// setLight__Fv
// setLight(void)
asm void setLight(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_8000A504.s"
}

// drawItem3D__Fv
// drawItem3D(void)
asm void drawItem3D(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_8000A58C.s"
}

// mDoGph_Painter__Fv
// mDoGph_Painter(void)
asm void func_8000A604(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_8000A604.s"
}

// __dt__13J2DOrthoGraphFv
// J2DOrthoGraph::~J2DOrthoGraph(void)
asm void func_8000B118(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_8000B118.s"
}

// mDoGph_Create__Fv
// mDoGph_Create(void)
asm void mDoGph_Create(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_8000B174.s"
}

// __sinit_m_Do_graphic_cpp
// 
asm void func_8000B1D0(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_8000B1D0.s"
}

// getAtnActorID__9daPy_py_cCFv
// daPy_py_c::getAtnActorID(void) const
asm void func_8000B1E4(void) {
    nofralloc
    #include "m_Do/m_Do_graphic/asm/func_8000B1E4.s"
}

};
