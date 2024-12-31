#ifndef GX_H_
#define GX_H_

#include "dolphin/gx/GXAttr.h"
#include "dolphin/gx/GXBump.h"
#include "dolphin/gx/GXDisplayList.h"
#include "dolphin/gx/GXFifo.h"
#include "dolphin/gx/GXFrameBuf.h"
#include "dolphin/gx/GXGeometry.h"
#include "dolphin/gx/GXInit.h"
#include "dolphin/gx/GXLight.h"
#include "dolphin/gx/GXMisc.h"
#include "dolphin/gx/GXPerf.h"
#include "dolphin/gx/GXPixel.h"
#include "dolphin/gx/GXTev.h"
#include "dolphin/gx/GXTransform.h"

#ifdef __cplusplus
extern "C" {
#endif

// Pack value into bitfield
// clang-format off
#define GX_BITFIELD_SET(field, pos, size, value) (field) = __rlwimi((field), (value), 31 - (pos) - (size) + 1, (pos), (pos) + (size)-1)
#define GX_BITFIELD_TRUNC(field, pos, size, value) (__rlwimi((field), (value), 0, (pos), (pos) + (size)-1))

#define GX_BITGET(field, pos, size)              ((field) >> (31 - (pos) - (size) + 1) & ((1 << (size)) - 1))
#define GX_GET_REG(reg, st, end)    GX_BITGET(reg, st, (end - st + 1))
#define GX_SET_REG(reg, x, st, end) GX_BITFIELD_SET(reg, st, (end - st + 1), x)
#define GX_SET_TRUNC(reg, x, st, end) GX_BITFIELD_TRUNC((reg), (st), ((end) - (st) + 1), (x))

#define GXCOLOR_AS_U32(color) (*((u32*)&(color)))

#define INSERT_FIELD(reg, value, nbits, shift)                                 \
    (reg) = ((u32) (reg) & ~(((1 << (nbits)) - 1) << (shift))) |               \
            ((u32) (value) << (shift));

#define FAST_FLAG_SET(regOrg, newFlag, shift, size)                                                                \
	do {                                                                                                           \
		(regOrg) = (u32)__rlwimi((int)(regOrg), (int)(newFlag), (shift), (32 - (shift) - (size)), (31 - (shift))); \
	} while (0);
// clang-format on

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

#define GXFIFO_ADDR 0xCC008000
volatile PPCWGPipe GXWGFifo AT_ADDRESS(GXFIFO_ADDR);

#define GX_WRITE_U8(data) GXWGFifo.u8 = data;
#define GX_WRITE_U32(data) GXWGFifo.u32 = data;
#define GX_WRITE_F32(val) (GXWGFifo.f32 = (f32)val)

#define GX_CP_LOAD_REG(addr, data)                                                                 \
    GXWGFifo.s8 = GX_FIFO_CMD_LOAD_CP_REG;                                                         \
    GXWGFifo.s8 = (addr);                                                                          \
    GXWGFifo.s32 = (data);

/**
 * Header for an XF register load
 */
#define GX_XF_LOAD_REG_HDR(addr)                                                                   \
    GXWGFifo.s8 = GX_FIFO_CMD_LOAD_XF_REG;                                                         \
    GXWGFifo.s32 = (addr);

/**
 * Load immediate value into XF register
 */
#define GX_XF_LOAD_REG(addr, data)                                                                 \
    GX_XF_LOAD_REG_HDR(addr);                                                                      \
    GXWGFifo.s32 = (data);

/**
 * Load immediate value into BP register
 */
#define GX_BP_LOAD_REG(data)                                                                       \
    GXWGFifo.s8 = GX_FIFO_CMD_LOAD_BP_REG;                                                         \
    GXWGFifo.s32 = (data);

/**
 * Load immediate values into multiple XF registers
 */
#define GX_XF_LOAD_REGS(size, addr)                                                                \
    {                                                                                              \
        u32 cmd = (size) << 16 | addr;                                                             \
        GX_XF_LOAD_REG_HDR(cmd);                                                                   \
    }

static inline void GXPosition3f32(const f32 x, const f32 y, const f32 z) {
    GXWGFifo.f32 = x;
    GXWGFifo.f32 = y;
    GXWGFifo.f32 = z;
}

static inline void GXNormal3f32(const f32 x, const f32 y, const f32 z) {
    GXWGFifo.f32 = x;
    GXWGFifo.f32 = y;
    GXWGFifo.f32 = z;
}

static inline void GXNormal1x16(const u16 x) {
    GXWGFifo.u16 = x;
}

static inline void GXPosition2f32(const f32 x, const f32 z) {
    GXWGFifo.f32 = x;
    GXWGFifo.f32 = z;
}

static inline void GXColor1u32(const u32 c) {
    GXWGFifo.u32 = c;
}

static inline void GXColor4u8(const u8 r, const u8 g, const u8 b, const u8 a) {
    GXWGFifo.u8 = r;
    GXWGFifo.u8 = g;
    GXWGFifo.u8 = b;
    GXWGFifo.u8 = a;
}

static inline void GXTexCoord2f32(const f32 s, const f32 t) {
    GXWGFifo.f32 = s;
    GXWGFifo.f32 = t;
}

static inline void GXTexCoord2u8(const u8 s, const u8 t) {
    GXWGFifo.u8 = s;
    GXWGFifo.u8 = t;
}

static inline void GXTexCoord1x8(const u8 s) {
    GXWGFifo.u8 = s;
}

static inline void GXTexCoord1x16(const u16 s) {
    GXWGFifo.u16 = s;
}

static inline void GXPosition2u16(const u16 x, const u16 y) {
    GXWGFifo.u16 = x;
    GXWGFifo.u16 = y;
}

static inline void GXPosition1x16(const u16 x) {
    GXWGFifo.u16 = x;
}

static inline void GXPosition1x8(const u8 x) {
    GXWGFifo.u8 = x;
}

static inline void GXPosition3s8(const s8 x, const s8 y, const s8 z) {
    GXWGFifo.s8 = x;
    GXWGFifo.s8 = y;
    GXWGFifo.s8 = z;
}

static inline void GXPosition2s8(const s8 x, const s8 y) {
    GXWGFifo.s8 = x;
    GXWGFifo.s8 = y;
}

static inline void GXPosition2s16(const s16 x, const s16 y) {
    GXWGFifo.s16 = x;
    GXWGFifo.s16 = y;
}

static inline void GXPosition3s16(const s16 x, const s16 y, const s16 z) {
    GXWGFifo.s16 = x;
    GXWGFifo.s16 = y;
    GXWGFifo.s16 = z;
}

static inline void GXTexCoord2s8(const s8 x, const s8 y) {
    GXWGFifo.s8 = x;
    GXWGFifo.s8 = y;
}

static inline void GXTexCoord2u16(const u16 x, const u16 y) {
    GXWGFifo.u16 = x;
    GXWGFifo.u16 = y;
}

static inline void GXTexCoord2s16(const s16 u, const s16 v) {
    GXWGFifo.s16 = u;
    GXWGFifo.s16 = v;
}

static inline void GFWriteBPCmd(u32 param_1) {
    GXWGFifo.u8 = 0x61;
    GXWGFifo.u32 = param_1;
}

static inline u32 GXReadCPReg(u32 addrLo, u32 addrHi) {
    u32 hiStart, hiNew, lo;
    hiStart = GX_GET_CP_REG(addrHi);
    do {
        hiNew = hiStart;
        lo = GX_GET_CP_REG(addrLo);
        hiStart = GX_GET_CP_REG(addrHi);
    } while (hiStart != hiNew);

    return ((hiStart << 16) | lo);
}

inline void GFFill(u16 param_1, u32 param_2) {
    GXWGFifo.u8 = 0x10;
    GXWGFifo.u16 = 0;
    GXWGFifo.u16 = param_1;
    GXWGFifo.u32 = param_2;
}

static inline void GXEnd(void) {}

extern GXRenderModeObj GXNtsc480IntDf;
extern GXRenderModeObj GXNtsc480Int;
extern GXRenderModeObj GXMpal480IntDf;
extern GXRenderModeObj GXPal528IntDf;
extern GXRenderModeObj GXEurgb60Hz480IntDf;

#ifdef __cplusplus
};
#endif

#endif
