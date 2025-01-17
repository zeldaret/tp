#ifndef GXSTRUCT_H
#define GXSTRUCT_H

#include "global.h"
#include "dolphin/gx/GXEnum.h"
#include "dolphin/vi.h"

typedef struct _GXColor {
    /* 0x0 */ u8 r;
    /* 0x1 */ u8 g;
    /* 0x2 */ u8 b;
    /* 0x3 */ u8 a;
} GXColor;

typedef struct _GXColorS10 {
    /* 0x0 */ s16 r;
    /* 0x2 */ s16 g;
    /* 0x4 */ s16 b;
    /* 0x6 */ s16 a;
} GXColorS10;

typedef struct _GXRenderModeObj {
    /* 0x00 */ VITVMode vi_tv_mode;
    /* 0x04 */ u16 fb_width;
    /* 0x06 */ u16 efb_height;
    /* 0x08 */ u16 xfb_height;
    /* 0x0A */ u16 vi_x_origin;
    /* 0x0C */ u16 vi_y_origin;
    /* 0x0E */ u16 vi_width;
    /* 0x10 */ u16 vi_height;
    /* 0x14 */ VIXFBMode xfb_mode;
    /* 0x18 */ u8 field_rendering;
    /* 0x19 */ u8 antialiasing;
    /* 0x1A */ u8 sample_pattern[12][2];
    /* 0x32 */ u8 vfilter[7];
} GXRenderModeObj;

STATIC_ASSERT(sizeof(GXRenderModeObj) == 60);

typedef struct _GXTexObj {
    /* 0x00 */ u32 texture_filter;
    /* 0x04 */ u32 texture_lod;
    /* 0x08 */ u32 texture_size;
    /* 0x0C */ u32 texture_address;
    /* 0x10 */ u32 user_data;
    /* 0x14 */ u32 texture_format;
    /* 0x18 */ u32 tlut_name;
    /* 0x1C */ u16 texture_time_count;
    /* 0x1E */ u8 texture_tile_type;
    /* 0x1F */ u8 texture_flags;
} GXTexObj;

typedef struct _GXTlutObj {
    /* 0x0 */ u32 format;
    /* 0x4 */ u32 address;
    /* 0x8 */ u16 numEntries;
} GXTlutObj;

typedef struct _GXLightObj {
    /* 0x00 */ u32 field_0x0[2];
    /* 0x08 */ u8 field_0x8[4];
    /* 0x0C */ GXColor color;
    /* 0x10 */ f32 a0;
    /* 0x14 */ f32 a1;
    /* 0x18 */ f32 a2;
    /* 0x1C */ f32 k0;
    /* 0x20 */ f32 k1;
    /* 0x24 */ f32 k2;
    /* 0x28 */ f32 posX;
    /* 0x2C */ f32 posY;
    /* 0x30 */ f32 posZ;
    /* 0x34 */ f32 dirX;
    /* 0x38 */ f32 dirY;
    /* 0x3C */ f32 dirZ;
} GXLightObj;

typedef struct _GXFogAdjTable {
    /* 0x0 */ u16 fogVals[10];
} GXFogAdjTable;

typedef struct _GXFifoObj {
    /* 0x00 */ void* base;
    /* 0x04 */ void* end;
    /* 0x08 */ u32 size;
    /* 0x0C */ u32 high_wtrmark;
    /* 0x10 */ u32 low_wtrmark;
    /* 0x14 */ void* read_ptr;
    /* 0x18 */ void* write_ptr;
    /* 0x1C */ s32 rw_dst;
    /* 0x20 */ u8 fifo_wrap;
    /* 0x21 */ u8 cpu_fifo_ready;
    /* 0x22 */ u8 gp_fifo_ready;
    /* 0x23 */ u8 field_0x23[93];
} GXFifoObj;  // Size: 0x80

typedef struct _GXTexRegion {
    u32 unk0;      // _00
	u32 unk4;      // _04
	u32 unk8;      // _08
	u8 unkC;       // _0C
	u8 unkD;       // _0D
} GXTexRegion;  // Size: 0x10

typedef struct _GXTlutRegion {
    /* 0x00 */ u32 unk0;
    /* 0x04 */ GXTlutObj tlutObj;
} GXTlutRegion;  // Size: 0x10

#endif /* GXSTRUCT_H */
