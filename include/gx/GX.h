#ifndef __GX_H__
#define __GX_H__

#include "dolphin/types.h"

struct GXRenderModeObj {
    s32 vi_tv_mode;
    u16 fb_width;
    u16 efb_height;
    u16 xfb_height;
    u16 vi_x_origin;
    u16 vi_y_origin;
    u16 vi_width;
    u16 vi_height;
    s32 xfb_mode;
    u8 field_rendering;
    u8 antialiasing;
    u8 sample_pattern[12][2];
    u8 vfilter[7];
};

extern "C" {
f32 GXGetYScaleFactor(u32 efb_height, u32 xfb_height);
u32 GXGetNumXfbLines(u32 efb_height, f32 y_scale);
}

#endif