#include "JSystem/JUtility/JUTXfb/JUTXfb.h"
#include "JSystem/JUtility/JUTVideo/JUTVideo.h"
#include "global.h"

void JUTXfb::clearIndex() {
    this->active_xfb_index = -1;
    this->last_drawn_xfb_index = -1;
    this->next_xfb_buffer = -1;
    return;
}

void JUTXfb::common_init(s32 p1) {
    this->num_xfbs = p1;
    this->clearIndex();
    this->field_0x1c = 99;
}

#ifdef NONMATCHING
JUTXfb::JUTXfb(GXRenderModeObj* obj, JKRHeap* heap, JUTXfb::EXfbNumber xfb_number) {
    this->common_init(xfb_number);
    if (obj != NULL) {
        this->initiate(obj->fb_width, obj->xfb_height, heap, xfb_number);
    } else {
        GXRenderModeObj* render_obj = /* JUTVideo::sManager */ lbl_80451538->render_object;
        u16 fb_width = render_obj->fb_width;
        u16 efb_height = render_obj->efb_height;
        u16 xfb_height = render_obj->xfb_height;
        f32 scale_factor = GXGetYScaleFactor(efb_height, xfb_height);
        this->initiate(fb_width, GXGetNumXfbLines(efb_height, scale_factor), heap, xfb_number);
    }
}
#else
asm JUTXfb::JUTXfb(GXRenderModeObj* obj, JKRHeap* heap, JUTXfb::EXfbNumber xfb_number) {
    nofralloc
#include "JSystem/JUtility/JUTXfb/asm/func_802E5260.s"
}
#endif

JUTXfb::~JUTXfb() {
    for (int i = 0; i < 3; i++) {
        this->delXfb(i);
    }
    /* sManager */ lbl_80451550 = NULL;
}

void JUTXfb::delXfb(s32 index) {
    if ((this->is_xfb_allocated[index] != false) && (this->xfb_buffer[index] != NULL)) {
        delete this->xfb_buffer[index];
    }
}

JUTXfb* JUTXfb::createManager(JKRHeap* heap, JUTXfb::EXfbNumber xfb_number) {
    if (/* sManager */ lbl_80451550 == NULL) {
        lbl_80451550 = new JUTXfb(NULL, heap, xfb_number);
    }

    return lbl_80451550;
}

void JUTXfb::destroyManager() {
    delete lbl_80451550;
    lbl_80451550 = NULL;
}

void JUTXfb::initiate(u16 width, u16 height, JKRHeap* heap, JUTXfb::EXfbNumber xfb_number) {
    if (heap == NULL) {
        heap = /* sSystemHeap */ lbl_80451370;
    }

    int size = ((u32)width + 0xf & 0xfff0) * (u32)height * 2;

    void* pvVar1 = ::operator new[](size, heap, 0x20);
    this->xfb_buffer[0] = pvVar1;
    this->is_xfb_allocated[0] = true;
    if (xfb_number >= 2) {
        pvVar1 = ::operator new[](size, heap, 0x20);
        this->xfb_buffer[1] = pvVar1;
        this->is_xfb_allocated[1] = true;
    } else {
        this->xfb_buffer[1] = NULL;
        this->is_xfb_allocated[1] = false;
    }

    if (xfb_number >= 3) {
        pvVar1 = ::operator new[](size, heap, 0x20);
        this->xfb_buffer[2] = pvVar1;
        this->is_xfb_allocated[2] = true;
    } else {
        this->xfb_buffer[2] = NULL;
        this->is_xfb_allocated[2] = false;
    }
}