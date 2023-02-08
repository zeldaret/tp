#ifndef GXINIT_H
#define GXINIT_H

#include "dolphin/gx/GXEnum.h"
#include "dolphin/gx/GXStruct.h"
#include "dolphin/mtx/mtx.h"
#include "global.h"

typedef GXTexRegion (*GXTexRegionCallback)(GXTexObj* obj);
typedef GXTlutRegion* (*GXTlutRegionCallback)(u32 name);

typedef struct _GXData {
    /* 0x000 */ u16 field_0x0;
    /* 0x002 */ u16 field_0x2;
    /* 0x004 */ u16 field_0x4;
    /* 0x006 */ u16 field_0x6;
    /* 0x008 */ u32 field_0x8;
    /* 0x00C */ u32 field_0xc;
    /* 0x010 */ u32 field_0x10;
    /* 0x014 */ u32 field_0x14;
    /* 0x018 */ GXAttrType field_0x18;
    /* 0x01C */ GXCompCnt field_0x1c[8];
    /* 0x03C */ GXCompCnt field_0x3c[8];
    /* 0x05C */ u32 field_0x5c[8];
    /* 0x07C */ u32 field_0x7c;
    /* 0x080 */ u32 field_0x80;
    /* 0x084 */ u32 field_0x84;
    /* 0x088 */ u8 field_0x88[0xA8 - 0x88];
    /* 0x0A8 */ GXColor ambColors[2];
    /* 0x0B0 */ GXColor matColors[2];
    /* 0x0B8 */ u32 field_0xb8[8];  // GX_MAX_TEXCOORD
    /* 0x0D8 */ u32 field_0xd8[8];  // GX_MAX_TEXCOORD
    /* 0x0F8 */ u32 field_0xf8;
    /* 0x0FC */ u32 field_0xfc;
    /* 0x100 */ u32 field_0x100[GX_MAX_TEVSTAGE / 2];
    /* 0x120 */ u32 field_0x120;
    /* 0x124 */ u32 field_0x124;
    /* 0x128 */ u32 field_0x128;
    /* 0x12C */ u32 field_0x12c;
    /* 0x130 */ u32 field_0x130[GX_MAX_TEVSTAGE];
    /* 0x170 */ u32 field_0x170[GX_MAX_TEVSTAGE];
    /* 0x1B0 */ u32 field_0x1b0[GX_MAX_TEVSTAGE / 2];
    /* 0x1D0 */ u32 field_0x1d0;
    /* 0x1D4 */ u32 field_0x1d4;
    /* 0x1D8 */ u32 field_0x1d8;
    /* 0x1DC */ u32 field_0x1dc;
    /* 0x1E0 */ u32 field_0x1e0;
    /* 0x1E4 */ u32 field_0x1e4;
    /* 0x1E8 */ u32 field_0x1e8;
    /* 0x1EC */ u32 field_0x1ec;
    /* 0x1F0 */ u32 field_0x1f0;
    /* 0x1F4 */ u32 field_0x1f4;
    /* 0x1F8 */ u32 field_0x1f8;
    /* 0x1FC */ u32 field_0x1fc;
    /* 0x200 */ u8 field_0x200;
    /* 0x204 */ u32 field_0x204;
    /* 0x208 */ GXTexRegion field_0x208[8];
    /* 0x288 */ GXTexRegion field_0x288[8];
    /* 0x308 */ GXTexRegion field_0x308[8];
    /* 0x388 */ GXTlutRegion field_0x388[16]; 
    /* 0x488 */ GXTlutRegion field_0x488[4]; 
    /* 0x4C8 */ GXTexRegionCallback field_0x4c8;
    /* 0x4CC */ GXTlutRegionCallback field_0x4cc;
    /* 0x4D0 */ GXAttrType field_0x4d0;
    /* 0x4D4 */ u8 field_0x4d4;
    /* 0x4D5 */ u8 field_0x4d5;
    /* 0x4D8 */ GXProjectionType field_0x4d8;
    /* 0x4DC */ Mtx field_0x4dc;
    /* 0x50C */ f32 field_0x50c;
    /* 0x510 */ f32 field_0x510;
    /* 0x514 */ u32 field_0x514[8];
    /* 0x534 */ u32 field_0x534[8];
    /* 0x554 */ u32 field_0x554;
    /* 0x558 */ u32 field_0x558[8];
    /* 0x578 */ u8 field_0x578[0x594 - 0x578];
    /* 0x594 */ u32 field_0x594;
    /* 0x598 */ u32 field_0x598;
    /* 0x59C */ u32 field_0x59c;
    /* 0x5A0 */ u8 field_0x5a0[4];
    /* 0x5A4 */ u32 field_0x5a4;
    /* 0x5A8 */ u8 field_0x5a8;
    /* 0x5A9 */ u8 field_0x5a9;
    /* 0x5AA */ u8 field_0x5aa;
    /* 0x5AB */ u8 field_0x5ab;
    /* 0x5AC */ u32 field_0x5ac;
} GXData;  // Size: 0x5B0

STATIC_ASSERT(sizeof(GXData) == 0x5B0);

extern GXData* const __GXData;

extern u32* __piReg;
extern u16* __cpReg;
extern u8 __peReg[4];
extern u8 __memReg[4];

inline void GXSetWasteFlags() {
	GXData* data = __GXData;
	data->field_0x5ac |= 0x3;
	data->field_0x2 = 0;
}

static inline void set_x2(u16 value)
{
    __GXData->field_0x2 = value;
}

#ifdef __cplusplus
extern "C" {
#endif

GXTexRegion* __GXDefaultTexRegionCallback(GXTexObj* obj, GXTexMapID mapID);
GXTlutRegion* __GXDefaultTlutRegionCallback(u32 tlut);
void __GXShutdown(s32);
void __GXInitRevisionBits(void);
GXFifoObj* GXInit(void* base, u32 size);
void __GXInitGX(void);

#ifdef __cplusplus
};
#endif

#endif /* GXINIT_H */
