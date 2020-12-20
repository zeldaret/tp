#ifndef __JUTILITY_JUTXFB_JUTXFB_H__
#define __JUTILITY_JUTXFB_JUTXFB_H__

#include "dolphin/types.h"

class JUTXfb {
public:
    void clearIndex();
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

#endif