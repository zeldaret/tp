#ifndef GX_H_
#define GX_H_

#include "dolphin/gx/GXInit.h"
#include "dolphin/gx/GXAttr.h"
#include "dolphin/gx/GXBump.h"
#include "dolphin/gx/GXDisplayList.h"
#include "dolphin/gx/GXFifo.h"
#include "dolphin/gx/GXFrameBuf.h"
#include "dolphin/gx/GXGeometry.h"
#include "dolphin/gx/GXLight.h"
#include "dolphin/gx/GXMisc.h"
#include "dolphin/gx/GXPerf.h"
#include "dolphin/gx/GXPixel.h"
#include "dolphin/gx/GXTev.h"
#include "dolphin/gx/GXTexture.h"
#include "dolphin/gx/GXTransform.h"

#ifdef __cplusplus
extern "C" {
#endif

// Pack value into bitfield
// Pack value into bitfield
#define GX_BITFIELD_SET(field, pos, size, value) (field) = __rlwimi((field), (value), 31 - (pos) - (size) + 1, (pos), (pos) + (size)-1)

#define GX_LOAD_BP_REG 0x61
#define GX_NOP 0

typedef union {
	u8 u8;
	u16 u16;
	u32 u32;
	u64 u64;
	s8 s8;
	s16 s16;
	s32 s32;
	s64 s64;
	f32 f32;
	f64 f64;
} PPCWGPipe;

volatile PPCWGPipe GXFIFO : 0xCC008000;

#define GFX_FIFO(T) (*(volatile T*)0xCC008000)

inline void GXPosition3f32(f32 x, f32 y, f32 z) {
    GFX_FIFO(f32) = x;
    GFX_FIFO(f32) = y;
    GFX_FIFO(f32) = z;
}

inline void GXColor1u32(u32 c) {
    GFX_FIFO(u32) = c;
}

inline void GXTexCoord2f32(f32 s, f32 t) {
    GFX_FIFO(f32) = s;
    GFX_FIFO(f32) = t;
}

inline void GXTexCoord2u8(u8 s, u8 t) {
    GFX_FIFO(u8) = s;
    GFX_FIFO(u8) = t;
}

inline void GXPosition2u16(u16 x, u16 y) {
    GFX_FIFO(u16) = x;
    GFX_FIFO(u16) = y;
}

inline void GXPosition1x16(u16 x) {
    GFX_FIFO(u16) = x;
}

inline void GXPosition3s8(s8 x, s8 y, s8 z) {
    GFX_FIFO(s8) = x;
    GFX_FIFO(s8) = y;
    GFX_FIFO(s8) = z;
}

inline void GXPosition2s8(s8 x, s8 y) {
    GFX_FIFO(s8) = x;
    GFX_FIFO(s8) = y;
}

inline void i_GXPosition3s16(s16 x, s16 y, s16 z) {
    GFX_FIFO(s16) = x;
    GFX_FIFO(s16) = y;
    GFX_FIFO(s16) = z;
}

inline void GXTexCoord2s8(s8 x, s8 y) {
    GFX_FIFO(s8) = x;
    GFX_FIFO(s8) = y;
}

inline void i_GXEnd() {}

#ifdef __cplusplus
};
#endif

#endif
