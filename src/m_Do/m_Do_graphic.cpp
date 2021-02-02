#include "m_Do/m_Do_graphic/m_Do_graphic.h"
#include "JSystem/J2DSys.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "JSystem/JUtility/JUTGamePad/JUTGamePad.h"
#include "SComponent/c_lib.h"
#include "d/d_a/d_a_player/d_a_player.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "d/d_drawlist/d_drawlist.h"
#include "d/d_kankyo/d_kankyo.h"
#include "f/f_pc/f_pc_searcher.h"
#include "global.h"
#include "gx/GX.h"
#include "m_Do/m_Do_main/m_Do_main.h"
#include "JSystem/JMath/JMath.h"
#include "f/f_op/f_op_actor_iter.h"

#ifdef NONMATCHING  // mr and addi swapped
ResTIMG* createTimg(u16 width, u16 height, u32 format) {
    u32 data_offset = 32;

    u32 texture_buffer_size = GXGetTexBufferSize(width, height, format, 0, 0);
    u32 alloc_size = texture_buffer_size + data_offset;
    void* ptr = JKRHeap::alloc(alloc_size, data_offset, NULL);
    ResTIMG* timg_ptr = (ResTIMG*)ptr;
    if (timg_ptr == NULL) {
        return NULL;
    }
    cLib_memSet(timg_ptr, 0, texture_buffer_size);
    timg_ptr->texture_format = format;
    timg_ptr->is_alpha_enabled = false;
    timg_ptr->texture_width = width;
    timg_ptr->texture_height = height;
    timg_ptr->min_filter = GX_LINEAR;
    timg_ptr->mag_filter = GX_LINEAR;
    timg_ptr->num_mipmaps = 1;
    timg_ptr->texture_data_offset = data_offset;
    return timg_ptr;
}
#else
asm ResTIMG* createTimg(u16 width, u16 height, u32 format) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_80007D9C.s"
}
#endif

asm void mDoGph_gInf_c::create(void) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_80007E44.s"
}

asm void mDoGph_gInf_c::beginRender(void) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_80007F90.s"
}

#ifdef NONMATCHING  // need to figure out float stuff
void mDoGph_gInf_c::fadeOut(f32 fadeSpeed, _GXColor& color) {
    lbl_80450BE6 = true;

    lbl_80450BDC = lbl_80451A38;
    // lbl_80450594 = color;

    lbl_80450594.r = color.r;
    lbl_80450594.g = color.g;
    lbl_80450594.b = color.b;
    lbl_80450594.a = color.a;

    // lbl_80450BE0 = fadeSpeed;

    if (fadeSpeed < 0.0f) {
        lbl_80450BDC = 1.0f;
    }
}
#else
asm void mDoGph_gInf_c::fadeOut(f32 fadeSpeed, _GXColor& color) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_80007FD8.s"
}
#endif

asm void mDoGph_gInf_c::fadeOut_f(f32 speed, _GXColor& color) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_80008028.s"
}

void mDoGph_gInf_c::onBlure(void) {
    onBlure(lbl_803A2FD8);
}

void mDoGph_gInf_c::onBlure(const Mtx InMtx) {
    lbl_80450BE4 = true;
    PSMTXCopy((Mtx*)InMtx, &lbl_803DD43C);
}

void mDoGph_gInf_c::fadeOut(f32 speed) {
    fadeOut(speed, lbl_80450600);
}

asm void darwFilter(_GXColor color) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_800080F4.s"
}

asm void mDoGph_gInf_c::calcFade(void) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_80008330.s"
}

void mDoGph_BlankingON(void) {
    return;
}

void mDoGph_BlankingOFF(void) {
    return;
}
#ifdef NONMATCHING  // Matching but gameinfo is screwed up at the moment
void dScnPly_BeforeOfPaint(void) {
    dComIfGd_reset();
}
#else
asm void dScnPly_BeforeOfPaint(void) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_80008424.s"
}
#endif

bool mDoGph_BeforeOfDraw(void) {
    dScnPly_BeforeOfPaint();
    return true;
}

asm bool mDoGph_AfterOfDraw(void) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_80008474.s"
}

asm void drawDepth2(view_class* view_class_ptr, view_port_class* view_port_class_ptr, int param_3) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_80008630.s"
}

// __dt__4cXyzFv
// cXyz::~cXyz(void)
extern "C" {  // everything gets shifted when this is an actual destructor??
asm void cXyz_NS_dtor(void) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_80009184.s"
}
};

asm void trimming(view_class* view_class_ptr, view_port_class* view_port_class_ptr) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_800091C0.s"
}

asm void mDoGph_drawFilterQuad(s8 param_1, s8 param_2) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_800094B4.s"
}

asm void mDoGph_gInf_c::bloom_c::create(void) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_80009544.s"
}

asm int mDoGph_gInf_c::bloom_c::remove(void) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_800095F8.s"
}

asm void mDoGph_gInf_c::bloom_c::draw(void) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_80009650.s"
}

asm void retry_captue_frame(view_class* view_class_ptr, view_port_class* view_port_class_ptr,
                            int param_3) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_8000A160.s"
}

asm void motionBlure(view_class* view_class_ptr) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_8000A290.s"
}

asm void setLight(void) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_8000A504.s"
}

asm void drawItem3D(void) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_8000A58C.s"
}

asm bool mDoGph_Painter(void) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_8000A604.s"
}

extern "C" {
// __dt__13J2DOrthoGraphFv
// J2DOrthoGraph::~J2DOrthoGraph(void)
asm void __dt__13J2DOrthoGraphFv(void) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_8000B118.s"
}
};

asm void mDoGph_Create(void) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_8000B174.s"
}

extern "C" {
asm void __sinit_m_Do_graphic_cpp(void) {
    nofralloc
#include "m_Do/m_Do_graphic/asm/func_8000B1D0.s"
}
};

int daPy_py_c::getAtnActorID(void) const {
    return -1;
}