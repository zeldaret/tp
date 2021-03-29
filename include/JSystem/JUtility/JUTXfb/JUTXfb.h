#ifndef JUTILITY_JUTXFB_JUTXFB_H_
#define JUTILITY_JUTXFB_JUTXFB_H_

#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "dolphin/types.h"
#include "gx/GX.h"

class JUTXfb {
public:
    enum EXfbNumber {  // TODO: placeholder
        UNK_0 = 0,
        UNK_1 = 1,
        UNK_2 = 2,
        UNK_3 = 3,
    };
    JUTXfb(GXRenderModeObj* obj, JKRHeap* heap, EXfbNumber xfb_number);
    ~JUTXfb();

    void clearIndex();
    void common_init(int xfb_number);
    void delXfb(int index);
    static JUTXfb* createManager(JKRHeap* heap, EXfbNumber xfb_number);
    static void destroyManager();
    void initiate(u16 width, u16 height, JKRHeap* heap, JUTXfb::EXfbNumber xfb_number);

private:
    void* xfb_buffer[3];
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