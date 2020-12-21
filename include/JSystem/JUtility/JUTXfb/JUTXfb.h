#ifndef __JUTILITY_JUTXFB_JUTXFB_H__
#define __JUTILITY_JUTXFB_JUTXFB_H__

#include "dolphin/types.h"
#include "gx/GX.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"

class JUTXfb {
public:
    typedef s32 EXfbNumber;
    JUTXfb(GXRenderModeObj* obj, JKRHeap* heap, EXfbNumber xfb_number);
    ~JUTXfb();

    void clearIndex();
    void common_init(s32 xfb_number);
    void delXfb(s32 index);
    void createManager(JKRHeap* heap, EXfbNumber xfb_number);
    void destroyManager();
    void initiate(u16 width, u16 height, JKRHeap* heap, JUTXfb::EXfbNumber xfb_number);

private:
    void * xfb_buffer[3];
    bool is_xfb_allocated[3];
    u8 padding_1;
    s32 num_xfbs;
    s16 active_xfb_index;
    s16 last_drawn_xfb_index;
    s16 next_xfb_buffer;
    u8 padding_2[2];
    s32 field_0x1c;
};

extern JUTXfb* lbl_80451550;

#endif