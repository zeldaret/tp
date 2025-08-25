#ifndef J3DMATBLOCK_H
#define J3DMATBLOCK_H

#include "JSystem/J3DGraphBase/J3DGD.h"
#include "JSystem/J3DGraphBase/J3DTevs.h"
#include "JSystem/J3DGraphBase/J3DTexture.h"
#include "JSystem/JUtility/JUTAssert.h"
#include "dolphin/types.h"
#include "global.h"

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DGXColorS10 : public GXColorS10 {
    /* 8000E460 */ J3DGXColorS10() {}
    J3DGXColorS10(J3DGXColorS10 const& other) { __memcpy(this, &other, sizeof(J3DGXColorS10)); }
    J3DGXColorS10(GXColorS10 const& color) : GXColorS10(color) {}
    J3DGXColorS10& operator=(const GXColorS10& color) {
        // FAKE match. __memcpy created issues in J3DTevBlockPatched::initialize
        ((u32*)this)[0] = ((u32*)&color)[0];
        ((u32*)this)[1] = ((u32*)&color)[1];
        return *this;
    }
};

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DGXColor : public GXColor {
    /* 8000E538 */ J3DGXColor() {}
    J3DGXColor(J3DGXColor const& other) { __memcpy(this, &other, sizeof(J3DGXColor)); }
    J3DGXColor(GXColor const& color) : GXColor(color) {}
    // making color a reference breaks J3DColorBlockLightOff::initialize et al
    J3DGXColor& operator=(GXColor color) {
        *(GXColor*)this = color;
        return *this;
    }
    J3DGXColor& operator=(const J3DGXColor& other) {
        r = other.r;
        g = other.g;
        b = other.b;
        a = other.a;
        return *this;
    }
};

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DNBTScale : public J3DNBTScaleInfo {
    J3DNBTScale() {}
    J3DNBTScale(J3DNBTScaleInfo const& info) {
        mbHasScale = info.mbHasScale;
        mScale = info.mScale;
    }
    Vec* getScale() { return &mScale; }
};

extern const J3DNBTScaleInfo j3dDefaultNBTScaleInfo;

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DColorChanInfo {
    /* 0x0 */ u8 mEnable;
    /* 0x1 */ u8 mMatSrc;
    /* 0x2 */ u8 mLightMask;
    /* 0x3 */ u8 mDiffuseFn;
    /* 0x4 */ u8 mAttnFn;
    /* 0x5 */ u8 mAmbSrc;
    /* 0x6 */ u8 pad[2];
};

extern const J3DColorChanInfo j3dDefaultColorChanInfo;

static inline u32 setChanCtrlMacro(u8 enable, GXColorSrc ambSrc, GXColorSrc matSrc, u32 lightMask,
                                   GXDiffuseFn diffuseFn, GXAttnFn attnFn) {
    return matSrc << 0 | enable << 1 | (lightMask & 0x0F) << 2 | ambSrc << 6 |
           ((attnFn == GX_AF_SPEC) ? GX_DF_NONE : diffuseFn) << 7 | (attnFn != GX_AF_NONE) << 9 |
           (attnFn != GX_AF_SPEC) << 10 | (lightMask >> 4 & 0x0F) << 11;
}

inline u16 calcColorChanID(u16 enable, u8 matSrc, u8 lightMask, u8 diffuseFn, u8 attnFn, u8 ambSrc) {
    u32 reg = 0;
    reg = (reg & ~0x0002) | enable << 1;
    reg = (reg & ~0x0001) | matSrc;
    reg = (reg & ~0x0040) | ambSrc << 6;
    reg = (reg & ~0x0004) | bool(lightMask & 0x01) << 2;
    reg = (reg & ~0x0008) | bool(lightMask & 0x02) << 3;
    reg = (reg & ~0x0010) | bool(lightMask & 0x04) << 4;
    reg = (reg & ~0x0020) | bool(lightMask & 0x08) << 5;
    reg = (reg & ~0x0800) | bool(lightMask & 0x10) << 11;
    reg = (reg & ~0x1000) | bool(lightMask & 0x20) << 12;
    reg = (reg & ~0x2000) | bool(lightMask & 0x40) << 13;
    reg = (reg & ~0x4000) | bool(lightMask & 0x80) << 14;
    reg = (reg & ~0x0180) | (attnFn == GX_AF_SPEC ? 0 : diffuseFn) << 7;
    reg = (reg & ~0x0200) | (attnFn != GX_AF_NONE) << 9;
    reg = (reg & ~0x0400) | (attnFn != GX_AF_SPEC) << 10;
    return reg;
}

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DColorChan {
    /* 8000E47C */ J3DColorChan() {
        setColorChanInfo(j3dDefaultColorChanInfo);
    }
    J3DColorChan(J3DColorChanInfo const& info) {
        u32 ambSrc = info.mAmbSrc == 0xFF ? 0 : info.mAmbSrc;
        mColorChanID = calcColorChanID(info.mEnable, info.mMatSrc, info.mLightMask,
            info.mDiffuseFn, info.mAttnFn, ambSrc);
    }
    void setColorChanInfo(J3DColorChanInfo const& info) {
        // Bug: It compares info.mAmbSrc (an 8 bit integer) with 0xFFFF instead of 0xFF.
        // This inline is only called by the default constructor J3DColorChan().
        // The J3DColorChan(const J3DColorChanInfo&) constructor does not call this inline, and instead duplicates the
        // same logic but without the bug.
        // See J3DMaterialFactory::newColorChan - both the bugged and correct behavior are present there, as it calls
        // both constructors.
        u32 ambSrc = info.mAmbSrc == 0xFFFF ? 0 : info.mAmbSrc;
        mColorChanID = calcColorChanID(info.mEnable, info.mMatSrc, info.mLightMask,
            info.mDiffuseFn, info.mAttnFn, ambSrc);
    }
    u8 getLightMask() const { return ((mColorChanID >> 2) & 0xf) | ((mColorChanID >> 11) & 0xf) << 4; }
    void setLightMask(u8 param_1) {
        mColorChanID = (mColorChanID & ~0x3c) | ((param_1 & 0xf) << 2);
        mColorChanID = (mColorChanID & ~0x7800) | ((param_1 & 0xf0) << 7);
    }

    u8 getEnable() const { return (u32)(mColorChanID & 0x2) >> 1; }
    u8 getAmbSrc() const { return (GXColorSrc)((u32)(mColorChanID & (1 << 6)) >> 6); }
    u8 getMatSrc() const { return (GXColorSrc)(mColorChanID & 1); }
    u8 getDiffuseFn() const { return ((u32)(mColorChanID & (3 << 7)) >> 7); }
    u8 getAttnFn() const {
        u8 AttnArr[] = {2,0,2,1};
        return AttnArr[(u32)(mColorChanID & (3 << 9)) >> 9];
    }

    void load() const {
        J3DGDWrite_u32(setChanCtrlMacro(getEnable(), (GXColorSrc)getAmbSrc(), (GXColorSrc)getMatSrc(), getLightMask(),
                                        (GXDiffuseFn)getDiffuseFn(), (GXAttnFn)getAttnFn()));
    }

    /* 0x0 */ u16 mColorChanID;
};

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DColorBlock {
public:
    /* 80317324 */ virtual void load() {}
    /* 80317358 */ virtual void reset(J3DColorBlock*) {}
    /* 8031733C */ virtual void patch() {}
    /* 80317434 */ virtual void patchMatColor() {}
    /* 8000DBD0 */ virtual void patchLight() {}
    /* 80317340 */ virtual void diff(u32) {}
    /* 80317438 */ virtual void diffAmbColor() {}
    /* 8031743C */ virtual void diffMatColor() {}
    /* 80317440 */ virtual void diffColorChan() {}
    /* 80317444 */ virtual void diffLightObj(u32) {}
    /* 80317304 */ virtual s32 countDLSize() { return 0; }
    virtual u32 getType() = 0;
    /* 80317448 */ virtual void setMatColor(u32, J3DGXColor const*) {}
    /* 8000E0DC */ virtual void setMatColor(u32, J3DGXColor) {}
    /* 8000E000 */ virtual J3DGXColor* getMatColor(u32) { return NULL; }
    /* 801A4C0C */ virtual void setAmbColor(u32, J3DGXColor const*) {}
    /* 8000E0D4 */ virtual void setAmbColor(u32, J3DGXColor) {}
    /* 8000DFF0 */ virtual J3DGXColor* getAmbColor(u32) { return NULL; }
    /* 8000E0E0 */ virtual void setColorChanNum(u8) {}
    /* 8031744C */ virtual void setColorChanNum(u8 const*) {}
    /* 8000E008 */ virtual u8 getColorChanNum() const { return 0; }
    /* 8000E0D8 */ virtual void setColorChan(u32, J3DColorChan const&) {}
    /* 80317450 */ virtual void setColorChan(u32, J3DColorChan const*) {}
    /* 8000DFF8 */ virtual J3DColorChan* getColorChan(u32) { return NULL; }
    /* 801A4C08 */ virtual void setLight(u32, J3DLightObj*) {}
    /* 80317454 */ virtual J3DLightObj* getLight(u32) { return NULL; }
    /* 80317460 */ virtual void setCullMode(u8 const*) {}
    /* 8031745C */ virtual void setCullMode(u8) {}
    /* 80317328 */ virtual u8 getCullMode() const { return 2; }
    /* 80317464 */ virtual u32 getMatColorOffset() const { return 0; }
    /* 8031746C */ virtual u32 getColorChanOffset() const { return 0; }
    /* 80317474 */ virtual void setMatColorOffset(u32) {}
    /* 80317478 */ virtual void setColorChanOffset(u32) {}
    /* 80317138 */ virtual ~J3DColorBlock() {}
};

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DColorBlockLightOff : public J3DColorBlock {
public:
    J3DColorBlockLightOff() {
        initialize();
    }
    /* 8031747C */ void initialize();

    /* 80317B84 */ virtual s32 countDLSize();
    /* 80317C0C */ virtual void load();
    /* 8031FD08 */ virtual void reset(J3DColorBlock*);
    /* 80318EB4 */ virtual void patch();
    /* 80318F00 */ virtual void patchMatColor();
    /* 803190AC */ virtual void patchLight();
    /* 80319B4C */ virtual void diff(u32);
    /* 80319BB4 */ virtual void diffMatColor();
    /* 80319D30 */ virtual void diffColorChan();
    /* 80323560 */ virtual u32 getType() { return 'CLOF'; }
    /* 80323184 */ virtual void setMatColor(u32 idx, J3DGXColor const* color) {
        J3D_ASSERT(0x121, idx >= 0 && idx < ARRAY_SIZE(mMatColor), "Error : range over.");
        J3D_ASSERT(0x122, color != 0, "Error : null pointer.");
        mMatColor[idx] = *color;
    }
    /* 80323158 */ virtual void setMatColor(u32 idx, J3DGXColor color) {
        J3D_ASSERT(0x128, idx >= 0 && idx < ARRAY_SIZE(mMatColor), "Error : range over.");
        mMatColor[idx] = color;
    }
    /* 803231B0 */ virtual J3DGXColor* getMatColor(u32 idx) {
        J3D_ASSERT(0x12d, idx >= 0 && idx < ARRAY_SIZE(mMatColor), "Error : range over.");
        return &mMatColor[idx];
    }
    /* 803231D0 */ virtual void setColorChanNum(u8 num) { mColorChanNum = num; }
    /* 803231C4 */ virtual void setColorChanNum(u8 const* num) {
        J3D_ASSERT(0x137, num != 0, "Error : null pointer.");
        mColorChanNum = *num;
    }
    /* 803231D8 */ virtual u8 getColorChanNum() const { return mColorChanNum; }
    /* 803231F4 */ virtual void setColorChan(u32 idx, J3DColorChan const& chan) {
        J3D_ASSERT(0x142, idx >= 0 && idx < ARRAY_SIZE(mColorChan), "Error : range over.");
        mColorChan[idx] = chan;
    }
    /* 803231E0 */ virtual void setColorChan(u32 idx, J3DColorChan const* chan) {
        J3D_ASSERT(0x148, idx >= 0 && idx < ARRAY_SIZE(mColorChan), "Error : range over.");
        J3D_ASSERT(0x149, chan != 0, "Error : null pointer.");
        mColorChan[idx] = *chan;
    }
    /* 80323208 */ virtual J3DColorChan* getColorChan(u32 idx) {
        J3D_ASSERT(0x14e, idx >= 0 && idx < ARRAY_SIZE(mColorChan), "Error : range over.");
        return &mColorChan[idx];
    }
    /* 80323224 */ virtual void setCullMode(u8 const* mode) {
        J3D_ASSERT(0x154, mode != 0, "Error : null pointer.");
        mCullMode = *mode;
    }
    /* 8032321C */ virtual void setCullMode(u8 mode) { mCullMode = mode; }
    /* 80323230 */ virtual u8 getCullMode() const { return mCullMode; }
    /* 80323238 */ virtual u32 getMatColorOffset() const { return mMatColorOffset; }
    /* 80323240 */ virtual u32 getColorChanOffset() const { return mColorChanOffset; }
    /* 80323248 */ virtual void setMatColorOffset(u32 offset) { mMatColorOffset = offset; }
    /* 80323250 */ virtual void setColorChanOffset(u32 offset) { mColorChanOffset = offset; }
    /* 803170DC */ virtual ~J3DColorBlockLightOff() {}

    /* 0x04 */ J3DGXColor mMatColor[2];
    /* 0x0C */ u8 mColorChanNum;
    /* 0x0E */ J3DColorChan mColorChan[4];
    /* 0x16 */ u8 mCullMode;
    /* 0x18 */ u32 mMatColorOffset;
    /* 0x1C */ u32 mColorChanOffset;
};  // Size: 0x20

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DColorBlockAmbientOn : public J3DColorBlockLightOff {
public:
    J3DColorBlockAmbientOn() {
        initialize();
    }
    /* 803174DC */ void initialize();

    /* 8031816C */ virtual void load();
    /* 8031FDE4 */ virtual void reset(J3DColorBlock*);
    /* 80317B8C */ virtual s32 countDLSize();
    /* 80323074 */ virtual u32 getType() { return 'CLAB'; }
    /* 803230AC */ virtual void setAmbColor(u32 idx, J3DGXColor const* color) {
        J3D_ASSERT(0x1a3, idx >= 0 && idx < ARRAY_SIZE(mAmbColor), "Error : range over.");
        J3D_ASSERT(0x1a4, color != 0, "Error : null pointer.");
        mAmbColor[idx] = *color;
    }
    /* 80323080 */ virtual void setAmbColor(u32 idx, J3DGXColor color) {
        J3D_ASSERT(0x1aa, idx >= 0 && idx < ARRAY_SIZE(mAmbColor), "Error : range over.");
        mAmbColor[idx] = color;
    }
    /* 803230D8 */ virtual J3DGXColor* getAmbColor(u32 idx) {
        J3D_ASSERT(0x1af, idx >= 0 && idx < ARRAY_SIZE(mAmbColor), "Error : range over.");
        return &mAmbColor[idx];
    }
    /* 803230EC */ virtual ~J3DColorBlockAmbientOn() {}

    /* 0x20 */ J3DGXColor mAmbColor[2];
};  // Size: 0x28

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DColorBlockLightOn : public J3DColorBlock {
public:
    J3DColorBlockLightOn() {
        initialize();
    }
    /* 80317580 */ void initialize();

    /* 803187F4 */ virtual void load();
    /* 8031FF34 */ virtual void reset(J3DColorBlock*);
    /* 803194E8 */ virtual void patch();
    /* 80319534 */ virtual void patchMatColor();
    /* 803196E0 */ virtual void patchLight();
    /* 8031A13C */ virtual void diff(u32);
    /* 8031A1DC */ virtual void diffAmbColor();
    /* 8031A358 */ virtual void diffMatColor();
    /* 8031A4D4 */ virtual void diffColorChan();
    /* 8031A8E0 */ virtual void diffLightObj(u32);
    /* 80317B94 */ virtual s32 countDLSize();
    /* 80322E80 */ virtual u32 getType() { return 'CLON'; }
    /* 80322EB8 */ virtual void setMatColor(u32 idx, J3DGXColor const* color) {
        J3D_ASSERT(0x1e9, idx >= 0 && idx < ARRAY_SIZE(mMatColor), "Error : range over.");
        J3D_ASSERT(0x1ea, color != 0, "Error : null pointer.");
        mMatColor[idx] = *color;
    }
    /* 80322E8C */ virtual void setMatColor(u32 idx, J3DGXColor color) {
        J3D_ASSERT(0x1f0, idx >= 0 && idx < ARRAY_SIZE(mMatColor), "Error : range over.");
        mMatColor[idx] = color;
    }
    /* 80322EE4 */ virtual J3DGXColor* getMatColor(u32 idx) {
        J3D_ASSERT(0x1f5, idx >= 0 && idx < ARRAY_SIZE(mMatColor), "Error : range over.");
        return &mMatColor[idx];
    }
    /* 80322F24 */ virtual void setAmbColor(u32 idx, J3DGXColor const* color) {
        J3D_ASSERT(0x1fc, idx >= 0 && idx < ARRAY_SIZE(mAmbColor), "Error : range over.");
        J3D_ASSERT(0x1fd, color != 0, "Error : null pointer.");
        mAmbColor[idx] = *color;
    }
    /* 80322EF8 */ virtual void setAmbColor(u32 idx, J3DGXColor color) {
        J3D_ASSERT(0x203, idx >= 0 && idx < ARRAY_SIZE(mAmbColor), "Error : range over.");
        mAmbColor[idx] = color;
    }
    /* 80322F50 */ virtual J3DGXColor* getAmbColor(u32 idx) {
        J3D_ASSERT(0x208, idx >= 0 && idx < ARRAY_SIZE(mAmbColor), "Error : range over.");
        return &mAmbColor[idx];
    }
    /* 80322F70 */ virtual void setColorChanNum(u8 num) { mColorChanNum = num; }
    /* 80322F64 */ virtual void setColorChanNum(u8 const* num) {
        J3D_ASSERT(0x212, num != 0, "Error : null pointer.");
        mColorChanNum = *num;
    }
    /* 80322F78 */ virtual u8 getColorChanNum() const { return mColorChanNum; }
    /* 80322F94 */ virtual void setColorChan(u32 idx, J3DColorChan const& chan) {
        J3D_ASSERT(0x21d, idx >= 0 && idx < ARRAY_SIZE(mColorChan), "Error : range over.");
        mColorChan[idx] = chan;
    }
    /* 80322F80 */ virtual void setColorChan(u32 idx, J3DColorChan const* chan) {
        J3D_ASSERT(0x223, idx >= 0 && idx < ARRAY_SIZE(mColorChan), "Error : range over.");
        J3D_ASSERT(0x224, chan != 0, "Error : null pointer.");
        mColorChan[idx] = *chan;
    }
    /* 80322FA8 */ virtual J3DColorChan* getColorChan(u32 idx) {
        J3D_ASSERT(0x229, idx >= 0 && idx < ARRAY_SIZE(mColorChan), "Error : range over.");
        return &mColorChan[idx];
    }
    /* 80322FBC */ virtual void setLight(u32 idx, J3DLightObj* light) {
        J3D_ASSERT(0x230, idx >= 0 && idx < ARRAY_SIZE(mLight), "Error : range over.");
        mLight[idx] = light;
    }
    /* 80322FCC */ virtual J3DLightObj* getLight(u32 idx) {
        J3D_ASSERT(0x235, idx >= 0 && idx < ARRAY_SIZE(mLight), "Error : range over.");
        return mLight[idx];
    }
    /* 80322FE4 */ virtual void setCullMode(u8 const* mode) {
        J3D_ASSERT(0x23b, mode != 0, "Error : null pointer.");
        mCullMode = *mode;
    }
    /* 80322FDC */ virtual void setCullMode(u8 mode) {
        mCullMode = mode;
    }
    /* 80322FF0 */ virtual u8 getCullMode() const {
        return mCullMode;
    }
    /* 80322FF8 */ virtual u32 getMatColorOffset() const { return mMatColorOffset; }
    /* 80323000 */ virtual u32 getColorChanOffset() const { return mColorChanOffset; }
    /* 80323008 */ virtual void setMatColorOffset(u32 offset) { mMatColorOffset = offset; }
    /* 80323010 */ virtual void setColorChanOffset(u32 offset) { mColorChanOffset = offset; }
    /* 80323018 */ virtual ~J3DColorBlockLightOn() {}

    /* 0x04 */ J3DGXColor mMatColor[2];
    /* 0x0C */ J3DGXColor mAmbColor[2];
    /* 0x14 */ u8 mColorChanNum;
    /* 0x16 */ J3DColorChan mColorChan[4];
    /* 0x20 */ J3DLightObj* mLight[8];
    /* 0x40 */ u8 mCullMode;
    /* 0x44 */ u32 mMatColorOffset;
    /* 0x48 */ u32 mColorChanOffset;
};  // Size: 0x4C

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DTexGenBlock {
public:
    /* 80317354 */ virtual void reset(J3DTexGenBlock*) {}
    virtual void calc(f32 const (*)[4]) = 0;
    virtual void calcWithoutViewMtx(f32 const (*)[4]) = 0;
    virtual void calcPostTexMtx(f32 const (*)[4]) = 0;
    virtual void calcPostTexMtxWithoutViewMtx(f32 const (*)[4]) = 0;
    virtual void load() = 0;
    virtual void patch() = 0;
    virtual void diff(u32) = 0;
    virtual void diffTexMtx() = 0;
    virtual void diffTexGen() = 0;
    /* 803172FC */ virtual s32 countDLSize() { return 0; }
    virtual u32 getType() = 0;
    /* 8031741C */ virtual void setTexGenNum(u32 const*) {}
    /* 8000E0D0 */ virtual void setTexGenNum(u32) {}
    /* 8000DFE8 */ virtual u32 getTexGenNum() const { return 0; }
    /* 8000E0CC */ virtual void setTexCoord(u32, J3DTexCoord const*) {}
    /* 8000DFE0 */ virtual J3DTexCoord* getTexCoord(u32) { return NULL; }
    /* 8003AB2C */ virtual void setTexMtx(u32, J3DTexMtx*) {}
    /* 8000DFD8 */ virtual J3DTexMtx* getTexMtx(u32) { return NULL; }
    /* 80317424 */ virtual void setNBTScale(J3DNBTScale const* scale) {}
    /* 80317420 */ virtual void setNBTScale(J3DNBTScale) {}
    /* 80317334 */ virtual J3DNBTScale* getNBTScale() { return NULL; }
    /* 80317428 */ virtual u32 getTexMtxOffset() const { return 0; }
    /* 80317430 */ virtual void setTexMtxOffset(u32) {}
    /* 803171DC */ virtual ~J3DTexGenBlock() {}
};

struct J3DTexGenBlockNull : public J3DTexGenBlock {
    /* 80332AA0 */ virtual void calc(f32 const (*)[4]) {}
    /* 80332AA4 */ virtual void calcWithoutViewMtx(f32 const (*)[4]) {}
    /* 80332AA8 */ virtual void calcPostTexMtx(f32 const (*)[4]) {}
    /* 80332AAC */ virtual void calcPostTexMtxWithoutViewMtx(f32 const (*)[4]) {}
    /* 80332AB0 */ virtual void load() {}
    /* 80332AB4 */ virtual void patch() {}
    /* 80332AB8 */ virtual void diff(u32) {}
    /* 80332ABC */ virtual void diffTexMtx() {}
    /* 80332AC0 */ virtual void diffTexGen() {}
    /* 80332AC4 */ virtual u32 getType() { return 'TGNL'; }
    /* 80332AD0 */ virtual ~J3DTexGenBlockNull() {}
};

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DTexGenBlockPatched : public J3DTexGenBlock {
public:
    J3DTexGenBlockPatched() {
        initialize();
    }
    /* 80317644 */ void initialize();

    /* 80320084 */ virtual void reset(J3DTexGenBlock*);
    /* 803213C0 */ virtual void calc(f32 const (*)[4]);
    /* 80321584 */ virtual void calcWithoutViewMtx(f32 const (*)[4]);
    /* 803216D8 */ virtual void calcPostTexMtx(f32 const (*)[4]);
    /* 8032181C */ virtual void calcPostTexMtxWithoutViewMtx(f32 const (*)[4]);
    /* 80322E70 */ virtual void load() {}
    /* 8031AA88 */ virtual void patch();
    /* 8031AC68 */ virtual void diff(u32);
    /* 8031ACD0 */ virtual void diffTexMtx();
    /* 8031AD30 */ virtual void diffTexGen();
    /* 80317B9C */ virtual s32 countDLSize();
    /* 80322E74 */ virtual u32 getType() { return 'TGPT'; }
    /* 80322D3C */ virtual void setTexGenNum(u32 const* num) {
        J3D_ASSERT(0x335, num != 0, "Error : null pointer.");
        mTexGenNum = *num;
    }
    /* 80322D34 */ virtual void setTexGenNum(u32 num) { mTexGenNum = num; }
    /* 80322D48 */ virtual u32 getTexGenNum() const { return mTexGenNum; }
    /* 80322D50 */ virtual void setTexCoord(u32 idx, J3DTexCoord const* coord) {
        J3D_ASSERT(0x344, idx >= 0 && idx < ARRAY_SIZE(mTexCoord), "Error : range over.");
        J3D_ASSERT(0x345, coord != 0, "Error : null pointer.");
        mTexCoord[idx] = *coord;
    }
    /* 80322D64 */ virtual J3DTexCoord* getTexCoord(u32 idx) {
        J3D_ASSERT(0x34a, idx >= 0 && idx < ARRAY_SIZE(mTexCoord), "Error : range over.");
        return &mTexCoord[idx];
    }
    /* 80322D78 */ virtual void setTexMtx(u32 idx, J3DTexMtx* mtx) {
        J3D_ASSERT(0x351, idx >= 0 && idx < ARRAY_SIZE(mTexMtx), "Error : range over.");
        mTexMtx[idx] = mtx;
    }
    /* 80322D88 */ virtual J3DTexMtx* getTexMtx(u32 idx) {
        J3D_ASSERT(0x356, idx >= 0 && idx < ARRAY_SIZE(mTexMtx), "Error : range over.");
        return mTexMtx[idx];
    }
    /* 80322D98 */ virtual u32 getTexMtxOffset() const { return mTexMtxOffset; }
    /* 80322DA0 */ virtual void setTexMtxOffset(u32 offset) { mTexMtxOffset = offset; }
    /* 80317180 */ virtual ~J3DTexGenBlockPatched() {}

    /* 0x04 */ u32 mTexGenNum;
    /* 0x08 */ J3DTexCoord mTexCoord[8];
    /* 0x38 */ J3DTexMtx* mTexMtx[8];
    /* 0x58 */ u32 mTexMtxOffset;
};  // Size: 0x5C

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DTexGenBlock4 : public J3DTexGenBlockPatched {
public:
    J3DTexGenBlock4() : mNBTScale(j3dDefaultNBTScaleInfo) {
        initialize();
    }
    /* 80317674 */ void initialize();

    /* 803201A0 */ virtual void reset(J3DTexGenBlock*);
    /* 8031A948 */ virtual void load();
    /* 8031AB18 */ virtual void patch();
    /* 80317BA4 */ virtual s32 countDLSize();
    /* 80322DA8 */ virtual u32 getType() { return 'TGB4'; }
    /* 80322DD8 */ virtual void setNBTScale(J3DNBTScale const* scale) {
        J3D_ASSERT(0x393, scale != 0, "Error : null pointer.");
        mNBTScale = *scale;
    }
    /* 80322DB4 */ virtual void setNBTScale(J3DNBTScale scale) { mNBTScale = scale; }
    /* 80322DFC */ virtual J3DNBTScale* getNBTScale() { return &mNBTScale; }
    /* 80322E04 */ virtual ~J3DTexGenBlock4() {}

    /* 0x5C */ J3DNBTScale mNBTScale;
};  // Size: 0x6C

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DTexGenBlockBasic : public J3DTexGenBlockPatched {
public:
    J3DTexGenBlockBasic() : mNBTScale(j3dDefaultNBTScaleInfo) {
        initialize();
    }
    /* 803176A4 */ void initialize();

    /* 803202DC */ virtual void reset(J3DTexGenBlock*);
    /* 8031A9E8 */ virtual void load();
    /* 8031ABC0 */ virtual void patch();
    /* 80317BAC */ virtual s32 countDLSize();
    /* 80322C6C */ virtual u32 getType() { return 'TGBC'; }
    /* 80322C9C */ virtual void setNBTScale(J3DNBTScale const* scale) {
        J3D_ASSERT(0x3ca, scale != 0, "Error : null pointer.");
        mNBTScale = *scale;
    }
    /* 80322C78 */ virtual void setNBTScale(J3DNBTScale scale) { mNBTScale = scale; }
    /* 80322CC0 */ virtual J3DNBTScale* getNBTScale() { return &mNBTScale; }
    /* 80322CC8 */ virtual ~J3DTexGenBlockBasic() {}

    /* 0x5C */ J3DNBTScale mNBTScale;
};  // Size: 0x6C

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DTevBlock {
public:
    /* 80317350 */ virtual void reset(J3DTevBlock*) {}
    /* 80317330 */ virtual void load() {}
    /* 8031CD44 */ virtual void diff(u32);
    /* 80321948 */ virtual void diffTexNo();
    /* 80321938 */ virtual void diffTevReg();
    /* 80321944 */ virtual void diffTexCoordScale();
    /* 80321940 */ virtual void diffTevStage();
    /* 8032193C */ virtual void diffTevStageIndirect();
    /* 8000DBD4 */ virtual void patch() {}
    /* 8032353C */ virtual void patchTexNo() {}
    /* 80323540 */ virtual void patchTevReg() {}
    /* 8000DBC8 */ virtual void patchTexNoAndTexCoordScale() {}
    virtual void ptrToIndex() = 0;
    virtual void indexToPtr() = 0;
    virtual u32 getType() = 0;
    /* 8031730C */ virtual s32 countDLSize() { return 0; }
    /* 80323544 */ virtual void setTexNo(u32, u16 const*) {}
    /* 8000E0AC */ virtual void setTexNo(u32, u16) {}
    /* 8000DF94 */ virtual u16 getTexNo(u32) const { return 0xffff; }
    /* 80323548 */ virtual void setTevOrder(u32, J3DTevOrder const*) {}
    /* 8000E0BC */ virtual void setTevOrder(u32, J3DTevOrder) {}
    /* 8000DFB8 */ virtual J3DTevOrder* getTevOrder(u32) { return NULL; }
    /* 80110E80 */ virtual void setTevColor(u32, J3DGXColorS10 const*) {}
    /* 8000E0C4 */ virtual void setTevColor(u32, J3DGXColorS10) {}
    /* 8000DFC8 */ virtual J3DGXColorS10* getTevColor(u32) { return NULL; }
    /* 800732AC */ virtual void setTevKColor(u32, J3DGXColor const*) {}
    /* 8000E0C0 */ virtual void setTevKColor(u32, J3DGXColor) {}
    /* 8000DFC0 */ virtual J3DGXColor* getTevKColor(u32) { return NULL; }
    /* 80322950 */ virtual void setTevKColorSel(u32, u8 const*) {}
    /* 8000E0B8 */ virtual void setTevKColorSel(u32, u8) {}
    /* 8000DFB0 */ virtual u8 getTevKColorSel(u32) { return false; }
    /* 80322954 */ virtual void setTevKAlphaSel(u32, u8 const*) {}
    /* 8000E0B4 */ virtual void setTevKAlphaSel(u32, u8) {}
    /* 8000DFA8 */ virtual u8 getTevKAlphaSel(u32) { return false; }
    /* 8032354C */ virtual void setTevStageNum(u8 const*) {}
    /* 8000E0C8 */ virtual void setTevStageNum(u8) {}
    /* 8000DFD0 */ virtual u8 getTevStageNum() const { return 1; }
    /* 80323550 */ virtual void setTevStage(u32, J3DTevStage const*) {}
    /* 8000E0A8 */ virtual void setTevStage(u32, J3DTevStage) {}
    /* 8000DF8C */ virtual J3DTevStage* getTevStage(u32) { return NULL; }
    /* 8032295C */ virtual void setTevSwapModeInfo(u32, J3DTevSwapModeInfo const*) {}
    /* 80322958 */ virtual void setTevSwapModeInfo(u32, J3DTevSwapModeInfo) {}
    /* 80322960 */ virtual void setTevSwapModeTable(u32, J3DTevSwapModeTable const*) {}
    /* 8000E0B0 */ virtual void setTevSwapModeTable(u32, J3DTevSwapModeTable) {}
    /* 8000DFA0 */ virtual J3DTevSwapModeTable* getTevSwapModeTable(u32) { return NULL; }
    /* 80323554 */ virtual void setIndTevStage(u32, J3DIndTevStage const*) {}
    /* 8000E0A4 */ virtual void setIndTevStage(u32, J3DIndTevStage) {}
    /* 8000DF84 */ virtual J3DIndTevStage* getIndTevStage(u32) { return NULL; }
    /* 80323558 */ virtual u32 getTexNoOffset() const { return 0; }
    /* 80322964 */ virtual u32 getTevRegOffset() const { return 0; }
    /* 80321FE0 */ virtual void setTexNoOffset(u32 offset) { mTexNoOffset = offset; }
    /* 8032296C */ virtual void setTevRegOffset(u32) {}
    /* 80317224 */ virtual ~J3DTevBlock() {}

protected:
    /* 8031E098 */ void indexToPtr_private(u32);

    /* 0x4 */ u32 mTexNoOffset;
};

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DTevBlockNull : public J3DTevBlock {
public:
    J3DTevBlockNull() { initialize(); }
    /* 803176D4 */ void initialize();
    /* 80332A0C */ virtual void reset(J3DTevBlock*) {}
    /* 80332A10 */ virtual void ptrToIndex() {}
    /* 80332A14 */ virtual void indexToPtr() { indexToPtr_private(mTexNoOffset); }
    /* 80332A38 */ virtual u32 getType() { return 'TVNL'; }
    /* 80332A44 */ virtual ~J3DTevBlockNull() {}
};

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DTevBlockPatched : public J3DTevBlock {
public:
    J3DTevBlockPatched() {
        initialize();
    }
    /* 803176E0 */ void initialize();

    /* 80320418 */ virtual void reset(J3DTevBlock*);
    /* 80322970 */ virtual void load() {}
    /* 8031CE00 */ virtual void diffTexNo();
    /* 8031D028 */ virtual void diffTevReg();
    /* 8031D0C4 */ virtual void diffTexCoordScale();
    /* 8031CE64 */ virtual void diffTevStage();
    /* 8031CF78 */ virtual void diffTevStageIndirect();
    /* 8031C228 */ virtual void patch();
    /* 8031BF4C */ virtual void patchTexNo();
    /* 8031BFE0 */ virtual void patchTevReg();
    /* 8031C0AC */ virtual void patchTexNoAndTexCoordScale();
    /* 8031DFB4 */ virtual void ptrToIndex();
    /* 80322974 */ virtual void indexToPtr() { indexToPtr_private(mTexNoOffset); }
    /* 80322998 */ virtual u32 getType() { return 'TVPT'; }
    /* 803229AC */ virtual void setTevStageNum(u8 const* num) {
        J3D_ASSERT(0x52c, num != 0, "Error : null pointer.");
        mTevStageNum = *num;
    }
    /* 803229A4 */ virtual void setTevStageNum(u8 num) { mTevStageNum = num; }
    /* 803229B8 */ virtual u8 getTevStageNum() const { return mTevStageNum; }
    /* 80317BB4 */ virtual s32 countDLSize();
    /* 803229D0 */ virtual void setTexNo(u32 idx, u16 const* texNo) {
        J3D_ASSERT(0x53b, idx >= 0 && idx < ARRAY_SIZE(mTexNo), "Error : range over.");
        J3D_ASSERT(0x53c, texNo != 0, "Error : null pointer.");
        mTexNo[idx] = *texNo;
    }
    /* 803229C0 */ virtual void setTexNo(u32 idx, u16 texNo) {
        J3D_ASSERT(0x542, idx >= 0 && idx < ARRAY_SIZE(mTexNo), "Error : range over.");
        mTexNo[idx] = texNo;
    }
    /* 803229E4 */ virtual u16 getTexNo(u32 idx) const {
        J3D_ASSERT(1353, idx >= 0 && idx < 8, "Error : range over.");
        return mTexNo[idx];
    }
    /* 80322A08 */ virtual void setTevOrder(u32 idx, J3DTevOrder const* order) {
        J3D_ASSERT(0x550, idx >= 0 && idx < ARRAY_SIZE(mTevOrder), "Error : range over.");
        J3D_ASSERT(0x551, order != 0, "Error : null pointer.");
        mTevOrder[idx] = *order;
    }
    /* 803229F4 */ virtual void setTevOrder(u32 idx, J3DTevOrder order) {
        J3D_ASSERT(0x557, idx >= 0 && idx < ARRAY_SIZE(mTevOrder), "Error : range over.");
        mTevOrder[idx] = order;
    }
    /* 80322A1C */ virtual J3DTevOrder* getTevOrder(u32 idx) {
        J3D_ASSERT(0x55c, idx >= 0 && idx < ARRAY_SIZE(mTevOrder), "Error : range over.");
        return &mTevOrder[idx];
    }
    /* 80322A6C */ virtual void setTevStage(u32 idx, J3DTevStage const* stage) {
        J3D_ASSERT(0x563, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        J3D_ASSERT(0x564, stage != 0, "Error : null pointer.");
        mTevStage[idx] = *stage;
    }
    /* 80322A30 */ virtual void setTevStage(u32 idx, J3DTevStage stage) {
        J3D_ASSERT(0x56a, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        mTevStage[idx] = stage;
    }
    /* 80322AA8 */ virtual J3DTevStage* getTevStage(u32 idx) {
        J3D_ASSERT(0x56f, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        return &mTevStage[idx];
    }
    /* 80322AD0 */ virtual void setIndTevStage(u32 idx, J3DIndTevStage const* stage) {
        J3D_ASSERT(0x576, idx >= 0 && idx < ARRAY_SIZE(mIndTevStage), "Error : range over.");
        J3D_ASSERT(0x577, stage != 0, "Error : null pointer.");
        mIndTevStage[idx] = *stage;
    }
    /* 80322ABC */ virtual void setIndTevStage(u32 idx, J3DIndTevStage stage) {
        J3D_ASSERT(0x57d, idx >= 0 && idx < ARRAY_SIZE(mIndTevStage), "Error : range over.");
        mIndTevStage[idx] = stage;
    }
    /* 80322AE4 */ virtual J3DIndTevStage* getIndTevStage(u32 idx) {
        J3D_ASSERT(0x582, idx >= 0 && idx < ARRAY_SIZE(mIndTevStage), "Error : range over.");
        return &mIndTevStage[idx];
    }
    /* 80322B24 */ virtual void setTevColor(u32 idx, J3DGXColorS10 const* color) {
        J3D_ASSERT(0x589, idx >= 0 && idx < ARRAY_SIZE(mTevColor), "Error : range over.");
        J3D_ASSERT(0x58a, color != 0, "Error : null pointer.");
        mTevColor[idx] = *color;
    }
    /* 80322AF8 */ virtual void setTevColor(u32 idx, J3DGXColorS10 color) {
        J3D_ASSERT(0x590, idx >= 0 && idx < ARRAY_SIZE(mTevColor), "Error : range over.");
        mTevColor[idx] = color;
    }
    /* 80322B50 */ virtual J3DGXColorS10* getTevColor(u32 idx) {
        J3D_ASSERT(0x595, idx >= 0 && idx < ARRAY_SIZE(mTevColor), "Error : range over.");
        return &mTevColor[idx];
    }
    /* 80322B90 */ virtual void setTevKColor(u32 idx, J3DGXColor const* color) {
        J3D_ASSERT(0x59c, idx >= 0 && idx < ARRAY_SIZE(mTevKColor), "Error : range over.");
        J3D_ASSERT(0x59d, color != 0, "Error : null pointer.");
        mTevKColor[idx] = *color;
    }
    /* 80322B64 */ virtual void setTevKColor(u32 idx, J3DGXColor color) {
        J3D_ASSERT(0x5a3, idx >= 0 && idx < ARRAY_SIZE(mTevKColor), "Error : range over.");
        mTevKColor[idx] = color;
    }
    /* 80322BBC */ virtual J3DGXColor* getTevKColor(u32 idx) {
        J3D_ASSERT(0x5a8, idx >= 0 && idx < ARRAY_SIZE(mTevKColor), "Error : range over.");
        return &mTevKColor[idx];
    }
    /* 80322BDC */ virtual void setTevKColorSel(u32 idx, u8 const* sel) {
        J3D_ASSERT(0x5af, idx >= 0 && idx < ARRAY_SIZE(mTevKColorSel), "Error : range over.");
        J3D_ASSERT(0x5b0, sel != 0, "Error : null pointer.");
        mTevKColorSel[idx] = *sel;
    }
    /* 80322BD0 */ virtual void setTevKColorSel(u32 idx, u8 sel) {
        J3D_ASSERT(0x5b6, idx >= 0 && idx < ARRAY_SIZE(mTevKColorSel), "Error : range over.");
        mTevKColorSel[idx] = sel;
    }
    /* 80322BEC */ virtual u8 getTevKColorSel(u32 idx) {
        J3D_ASSERT(0x5bb, idx >= 0 && idx < ARRAY_SIZE(mTevKColorSel), "Error : range over.");
        return mTevKColorSel[idx];
    }
    /* 80322BF8 */ virtual u32 getTexNoOffset() const { return mTexNoOffset; }
    /* 80322C00 */ virtual u32 getTevRegOffset() const { return mTevRegOffset; }
    /* 80322C08 */ virtual void setTevRegOffset(u32 offset) {
        J3D_ASSERT(0x53b, offset >= 0, "Error : range over.");
        mTevRegOffset = offset;
    }
    /* 80322C10 */ virtual ~J3DTevBlockPatched() {}

    /* 0x08 */ u16 mTexNo[8];
    /* 0x18 */ J3DTevOrder mTevOrder[8];
    /* 0x38 */ J3DTevStage mTevStage[8];
    /* 0x78 */ J3DIndTevStage mIndTevStage[8];
    /* 0x98 */ J3DGXColorS10 mTevColor[4];
    /* 0xB8 */ J3DGXColor mTevKColor[4];
    /* 0xC8 */ u8 mTevKColorSel[8];
    /* 0xD0 */ u8 mTevStageNum;
    /* 0xD4 */ u32 mTevRegOffset;
};  // Size: 0xD8

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DTevBlock1 : public J3DTevBlock {
public:
    J3DTevBlock1() {
        initialize();
    }
    /* 803177E8 */ void initialize();

    /* 803205D4 */ virtual void reset(J3DTevBlock*);
    /* 8031AD64 */ virtual void load();
    /* 8031D1BC */ virtual void diffTexNo();
    /* 8031D1F4 */ virtual void diffTevReg();
    /* 8031D368 */ virtual void diffTexCoordScale();
    /* 8031D1F8 */ virtual void diffTevStage();
    /* 8031D2E8 */ virtual void diffTevStageIndirect();
    /* 8031C3CC */ virtual void patch();
    /* 8031C274 */ virtual void patchTexNo();
    /* 8031C2E4 */ virtual void patchTevReg();
    /* 8031C2E8 */ virtual void patchTexNoAndTexCoordScale();
    /* 80322770 */ virtual void ptrToIndex() {}
    /* 80322774 */ virtual void indexToPtr() { indexToPtr_private(mTexNoOffset); }
    /* 80322798 */ virtual u32 getType() { return 'TVB1'; }
    /* 80317BBC */ virtual s32 countDLSize();
    /* 803227B4 */ virtual void setTexNo(u32 idx, u16 const* no) {
        J3D_ASSERT(0x618, idx >= 0 && idx < ARRAY_SIZE(mTexNo), "Error : range over.");
        J3D_ASSERT(0x619, no != 0, "Error : null pointer.");
        mTexNo[idx] = *no;
    }
    /* 803227A4 */ virtual void setTexNo(u32 idx, u16 no) {
        J3D_ASSERT(0x61f, idx >= 0 && idx < ARRAY_SIZE(mTexNo), "Error : range over.");
        mTexNo[idx] = no;
    }
    /* 803227C8 */ virtual u16 getTexNo(u32 idx) const {
        J3D_ASSERT(1574, idx >= 0 && idx < 1, "Error : range over.");
        return mTexNo[idx];
    }
    /* 803227EC */ virtual void setTevOrder(u32 idx, J3DTevOrder const* order) {
        J3D_ASSERT(0x62d, idx >= 0 && idx < ARRAY_SIZE(mTevOrder), "Error : range over.");
        J3D_ASSERT(0x62e, order != 0, "Error : null pointer.");
        mTevOrder[idx] = *order;
    }
    /* 803227D8 */ virtual void setTevOrder(u32 idx, J3DTevOrder order) {
        J3D_ASSERT(0x634, idx >= 0 && idx < ARRAY_SIZE(mTevOrder), "Error : range over.");
        mTevOrder[idx] = order;
    }
    /* 80322800 */ virtual J3DTevOrder* getTevOrder(u32 idx) {
        J3D_ASSERT(0x639, idx >= 0 && idx < ARRAY_SIZE(mTevOrder), "Error : range over.");
        return &mTevOrder[idx];
    }
    /* 80322818 */ virtual void setTevStageNum(u8 const* num) {}
    /* 80322814 */ virtual void setTevStageNum(u8 num) {}
    /* 8032281C */ virtual u8 getTevStageNum() const { return 1; }
    /* 80322860 */ virtual void setTevStage(u32 idx, J3DTevStage const* stage) {
        J3D_ASSERT(0x64b, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        J3D_ASSERT(0x64c, stage != 0, "Error : null pointer.");
        mTevStage[idx] = *stage;
    }
    /* 80322824 */ virtual void setTevStage(u32 idx, J3DTevStage stage) {
        J3D_ASSERT(0x652, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        mTevStage[idx] = stage;
    }
    /* 8032289C */ virtual J3DTevStage* getTevStage(u32 idx) {
        J3D_ASSERT(0x657, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        return &mTevStage[idx];
    }
    /* 803228C4 */ virtual void setIndTevStage(u32 idx, J3DIndTevStage const* stage) {
        J3D_ASSERT(0x65e, idx >= 0 && idx < ARRAY_SIZE(mIndTevStage), "Error : range over.");
        J3D_ASSERT(0x65f, stage != 0, "Error : null pointer.");
        mIndTevStage[idx] = *stage;
    }
    /* 803228B0 */ virtual void setIndTevStage(u32 idx, J3DIndTevStage stage) {
        J3D_ASSERT(0x665, idx >= 0 && idx < ARRAY_SIZE(mIndTevStage), "Error : range over.");
        mIndTevStage[idx] = stage;
    }
    /* 803228D8 */ virtual J3DIndTevStage* getIndTevStage(u32 idx) {
        J3D_ASSERT(0x66a, idx >= 0 && idx < ARRAY_SIZE(mIndTevStage), "Error : range over.");
        return &mIndTevStage[idx];
    }
    /* 803228EC */ virtual u32 getTexNoOffset() const { return mTexNoOffset; }
    /* 803228F4 */ virtual ~J3DTevBlock1() {}

    /* 0x08 */ u16 mTexNo[1];
    /* 0x0A */ J3DTevOrder mTevOrder[1];
    /* 0x0E */ J3DTevStage mTevStage[1];
    /* 0x18 */ J3DIndTevStage mIndTevStage[1];
};  // Size: 0x1C

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DTevBlock2 : public J3DTevBlock {
public:
    J3DTevBlock2() {
        initialize();
    }
    /* 80317810 */ void initialize();

    /* 803206AC */ virtual void reset(J3DTevBlock*);
    /* 8031AFA4 */ virtual void load();
    /* 8031D3D0 */ virtual void diffTexNo();
    /* 8031D434 */ virtual void diffTevReg();
    /* 8031D694 */ virtual void diffTexCoordScale();
    /* 8031D4D0 */ virtual void diffTevStage();
    /* 8031D5E4 */ virtual void diffTevStageIndirect();
    /* 8031C6A8 */ virtual void patch();
    /* 8031C3F8 */ virtual void patchTexNo();
    /* 8031C48C */ virtual void patchTevReg();
    /* 8031C558 */ virtual void patchTexNoAndTexCoordScale();
    /* 803223AC */ virtual void ptrToIndex() {}
    /* 803223B0 */ virtual void indexToPtr() { indexToPtr_private(mTexNoOffset); }
    /* 803223D4 */ virtual u32 getType() { return 'TVB2'; }
    /* 80317BC4 */ virtual s32 countDLSize();
    /* 803223F0 */ virtual void setTexNo(u32 idx, u16 const* texNo) {
        J3D_ASSERT(0x6b4, idx >= 0 && idx < ARRAY_SIZE(mTexNo), "Error : range over.");
        J3D_ASSERT(0x6b5, texNo != 0, "Error : null pointer.");
        mTexNo[idx] = *texNo;
    }
    /* 803223E0 */ virtual void setTexNo(u32 idx, u16 texNo) {
        J3D_ASSERT(0x6bb, idx >= 0 && idx < ARRAY_SIZE(mTexNo), "Error : range over.");
        mTexNo[idx] = texNo;
    }
    /* 80322404 */ virtual u16 getTexNo(u32 idx) const {
        J3D_ASSERT(0x6c2, idx >= 0 && idx < ARRAY_SIZE(mTexNo), "Error : range over.");
        return mTexNo[idx];
    }
    /* 80322428 */ virtual void setTevOrder(u32 idx, J3DTevOrder const* order) {
        J3D_ASSERT(0x6c9, idx >= 0 && idx < ARRAY_SIZE(mTevOrder), "Error : range over.");
        J3D_ASSERT(0x6ca, order != 0, "Error : null pointer.");
        mTevOrder[idx] = *order;
    }
    /* 80322414 */ virtual void setTevOrder(u32 idx, J3DTevOrder order) {
        J3D_ASSERT(0x6d0, idx >= 0 && idx < ARRAY_SIZE(mTevOrder), "Error : range over.");
        mTevOrder[idx] = order;
    }
    /* 8032243C */ virtual J3DTevOrder* getTevOrder(u32 idx) {
        J3D_ASSERT(0x6d5, idx >= 0 && idx < ARRAY_SIZE(mTevOrder), "Error : range over.");
        return &mTevOrder[idx];
    }
    /* 8032247C */ virtual void setTevColor(u32 idx, J3DGXColorS10 const* color) {
        J3D_ASSERT(0x6dc, idx >= 0 && idx < ARRAY_SIZE(mTevColor), "Error : range over.");
        J3D_ASSERT(0x6dd, color != 0, "Error : null pointer.");
        mTevColor[idx] = *color;
    }
    /* 80322450 */ virtual void setTevColor(u32 idx, J3DGXColorS10 color) {
        J3D_ASSERT(0x6e3, idx >= 0 && idx < ARRAY_SIZE(mTevColor), "Error : range over.");
        mTevColor[idx] = color;
    }
    /* 803224A8 */ virtual J3DGXColorS10* getTevColor(u32 idx) {
        J3D_ASSERT(0x6e8, idx >= 0 && idx < ARRAY_SIZE(mTevColor), "Error : range over.");
        return &mTevColor[idx];
    }
    /* 803224E8 */ virtual void setTevKColor(u32 idx, J3DGXColor const* color) {
        J3D_ASSERT(0x6ef, idx >= 0 && idx < ARRAY_SIZE(mTevKColor), "Error : range over.");
        J3D_ASSERT(0x6f0, color != 0, "Error : null pointer.");
        mTevKColor[idx] = *color;
    }
    /* 803224BC */ virtual void setTevKColor(u32 idx, J3DGXColor color) {
        J3D_ASSERT(0x6f6, idx >= 0 && idx < ARRAY_SIZE(mTevKColor), "Error : range over.");
        mTevKColor[idx] = color;
    }
    /* 80322514 */ virtual J3DGXColor* getTevKColor(u32 idx) {
        J3D_ASSERT(0x6fb, idx >= 0 && idx < ARRAY_SIZE(mTevKColor), "Error : range over.");
        return &mTevKColor[idx];
    }
    /* 80322534 */ virtual void setTevKColorSel(u32 idx, u8 const* sel) {
        J3D_ASSERT(0x702, idx >= 0 && idx < ARRAY_SIZE(mTevKColorSel), "Error : range over.");
        J3D_ASSERT(0x703, sel != 0, "Error : null pointer.");
        mTevKColorSel[idx] = *sel;
    }
    /* 80322528 */ virtual void setTevKColorSel(u32 idx, u8 sel) {
        J3D_ASSERT(0x709, idx >= 0 && idx < ARRAY_SIZE(mTevKColorSel), "Error : range over.");
        mTevKColorSel[idx] = sel;
    }
    /* 80322544 */ virtual u8 getTevKColorSel(u32 idx) {
        J3D_ASSERT(0x70e, idx >= 0 && idx < ARRAY_SIZE(mTevKColorSel), "Error : range over.");
        return mTevKColorSel[idx];
    }
    /* 8032255C */ virtual void setTevKAlphaSel(u32 idx, u8 const* sel) {
        J3D_ASSERT(0x715, idx >= 0 && idx < ARRAY_SIZE(mTevKAlphaSel), "Error : range over.");
        J3D_ASSERT(0x716, sel != 0, "Error : null pointer.");
        mTevKAlphaSel[idx] = *sel;
    }
    /* 80322550 */ virtual void setTevKAlphaSel(u32 idx, u8 sel) {
        J3D_ASSERT(0x71c, idx >= 0 && idx < ARRAY_SIZE(mTevKAlphaSel), "Error : range over.");
        mTevKAlphaSel[idx] = sel;
    }
    /* 8032256C */ virtual u8 getTevKAlphaSel(u32 idx) {
        J3D_ASSERT(0x721, idx >= 0 && idx < ARRAY_SIZE(mTevKAlphaSel), "Error : range over.");
        return mTevKAlphaSel[idx];
    }
    /* 80322580 */ virtual void setTevStageNum(u8 const* num) {
        J3D_ASSERT(0x727, num != 0, "Error : null pointer.");
        mTevStageNum = *num;
    }
    /* 80322578 */ virtual void setTevStageNum(u8 num) { mTevStageNum = num; }
    /* 8032258C */ virtual u8 getTevStageNum() const { return mTevStageNum; }
    /* 803225D0 */ virtual void setTevStage(u32 idx, J3DTevStage const* stage) {
        J3D_ASSERT(0x736, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        J3D_ASSERT(0x737, stage != 0, "Error : null pointer.");
        mTevStage[idx] = *stage;
    }
    /* 80322594 */ virtual void setTevStage(u32 idx, J3DTevStage stage) {
        J3D_ASSERT(0x73d, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        mTevStage[idx] = stage;
    }
    /* 8032260C */ virtual J3DTevStage* getTevStage(u32 idx) {
        J3D_ASSERT(0x742, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        return &mTevStage[idx];
    }
    /* 80322658 */ virtual void setTevSwapModeInfo(u32 idx, J3DTevSwapModeInfo const* info) {
        J3D_ASSERT(0x749, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        J3D_ASSERT(0x74a, info != 0, "Error : null pointer.");
        mTevStage[idx].setTevSwapModeInfo(*info);
    }
    /* 80322620 */ virtual void setTevSwapModeInfo(u32 idx, J3DTevSwapModeInfo info) {
        J3D_ASSERT(0x750, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        mTevStage[idx].setTevSwapModeInfo(info);
    }
    /* 803226A0 */ virtual void setTevSwapModeTable(u32 idx, J3DTevSwapModeTable const* table) {
        J3D_ASSERT(0x757, idx >= 0 && idx < ARRAY_SIZE(mTevSwapModeTable), "Error : range over.");
        J3D_ASSERT(0x758, table != 0, "Error : null pointer.");
        mTevSwapModeTable[idx] = *table;
    }
    /* 80322690 */ virtual void setTevSwapModeTable(u32 idx, J3DTevSwapModeTable table) {
        J3D_ASSERT(0x75e, idx >= 0 && idx < ARRAY_SIZE(mTevSwapModeTable), "Error : range over.");
        mTevSwapModeTable[idx] = table;
    }
    /* 803226B0 */ virtual J3DTevSwapModeTable* getTevSwapModeTable(u32 idx) {
        J3D_ASSERT(0x763, idx >= 0 && idx < ARRAY_SIZE(mTevSwapModeTable), "Error : range over.");
        return &mTevSwapModeTable[idx];
    }
    /* 803226D4 */ virtual void setIndTevStage(u32 idx, J3DIndTevStage const* stage) {
        J3D_ASSERT(0x76a, idx >= 0 && idx < ARRAY_SIZE(mIndTevStage), "Error : range over.");
        J3D_ASSERT(0x76b, stage != 0, "Error : null pointer.");
        mIndTevStage[idx] = *stage;
    }
    /* 803226C0 */ virtual void setIndTevStage(u32 idx, J3DIndTevStage stage) {
        J3D_ASSERT(0x771, idx >= 0 && idx < ARRAY_SIZE(mIndTevStage), "Error : range over.");
        mIndTevStage[idx] = stage;
    }
    /* 803226E8 */ virtual J3DIndTevStage* getIndTevStage(u32 idx) {
        J3D_ASSERT(0x776, idx >= 0 && idx < ARRAY_SIZE(mIndTevStage), "Error : range over.");
        return &mIndTevStage[idx];
    }
    /* 803226FC */ virtual u32 getTexNoOffset() const { return mTexNoOffset; }
    /* 80322704 */ virtual u32 getTevRegOffset() const { return mTevRegOffset; }
    /* 8032270C */ virtual void setTevRegOffset(u32 offset) { mTevRegOffset = offset; }
    /* 80322714 */ virtual ~J3DTevBlock2() {}

    /* 0x08 */ u16 mTexNo[2];
    /* 0x0C */ J3DTevOrder mTevOrder[2];
    /* 0x14 */ J3DGXColorS10 mTevColor[4];
    /* 0x34 */ u8 mTevStageNum;
    /* 0x35 */ J3DTevStage mTevStage[2];
    /* 0x45 */ J3DGXColor mTevKColor[4];
    /* 0x55 */ u8 mTevKColorSel[2];
    /* 0x57 */ u8 mTevKAlphaSel[2];
    /* 0x59 */ J3DTevSwapModeTable mTevSwapModeTable[4];
    /* 0x60 */ J3DIndTevStage mIndTevStage[2];
    /* 0x68 */ u32 mTevRegOffset;
};  // Size: 0x6C

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DTevBlock4 : public J3DTevBlock {
public:
    J3DTevBlock4() {
        initialize();
    }
    /* 803178EC */ void initialize();

    /* 8032098C */ virtual void reset(J3DTevBlock*);
    /* 8031B4C0 */ virtual void load();
    /* 8031D758 */ virtual void diffTexNo();
    /* 8031D7BC */ virtual void diffTevReg();
    /* 8031DA1C */ virtual void diffTexCoordScale();
    /* 8031D858 */ virtual void diffTevStage();
    /* 8031D96C */ virtual void diffTevStageIndirect();
    /* 8031C9D0 */ virtual void patch();
    /* 8031C6F4 */ virtual void patchTexNo();
    /* 8031C788 */ virtual void patchTevReg();
    /* 8031C854 */ virtual void patchTexNoAndTexCoordScale();
    /* 80321FE8 */ virtual void ptrToIndex() {}
    /* 80321FEC */ virtual void indexToPtr() { indexToPtr_private(mTexNoOffset); }
    /* 80322010 */ virtual u32 getType() { return 'TVB4'; }
    /* 80317BCC */ virtual s32 countDLSize();
    /* 8032202C */ virtual void setTexNo(u32 idx, u16 const* texNo) {
        J3D_ASSERT(0x7d5, idx >= 0 && idx < ARRAY_SIZE(mTexNo), "Error : range over.");
        J3D_ASSERT(0x7d6, texNo != 0, "Error : null pointer.");
        mTexNo[idx] = *texNo;
    }
    /* 8032201C */ virtual void setTexNo(u32 idx, u16 texNo) {
        J3D_ASSERT(0x7dc, idx >= 0 && idx < ARRAY_SIZE(mTexNo), "Error : range over.");
        mTexNo[idx] = texNo;
    }
    /* 80322040 */ virtual u16 getTexNo(u32 idx) const {
        J3D_ASSERT(2019, idx >= 0 && idx < 4, "Error : range over.");
        return mTexNo[idx];
    }
    /* 80322064 */ virtual void setTevOrder(u32 idx, J3DTevOrder const* order) {
        J3D_ASSERT(0x7ea, idx >= 0 && idx < ARRAY_SIZE(mTevOrder), "Error : range over.");
        J3D_ASSERT(0x7eb, order != 0, "Error : null pointer.");
        mTevOrder[idx] = *order;
    }
    /* 80322050 */ virtual void setTevOrder(u32 idx, J3DTevOrder order) {
        J3D_ASSERT(0x7f1, idx >= 0 && idx < ARRAY_SIZE(mTevOrder), "Error : range over.");
        mTevOrder[idx] = order;
    }
    /* 80322078 */ virtual J3DTevOrder* getTevOrder(u32 idx) {
        J3D_ASSERT(0x7f6, idx >= 0 && idx < ARRAY_SIZE(mTevOrder), "Error : range over.");
        return &mTevOrder[idx];
    }
    /* 803220B8 */ virtual void setTevColor(u32 idx, J3DGXColorS10 const* color) {
        J3D_ASSERT(0x7fd, idx >= 0 && idx < ARRAY_SIZE(mTevColor), "Error : range over.");
        J3D_ASSERT(0x7fe, color != 0, "Error : null pointer.");
        mTevColor[idx] = *color;
    }
    /* 8032208C */ virtual void setTevColor(u32 idx, J3DGXColorS10 color) {
        J3D_ASSERT(0x804, idx >= 0 && idx < ARRAY_SIZE(mTevColor), "Error : range over.");
        mTevColor[idx] = color;
    }
    /* 803220E4 */ virtual J3DGXColorS10* getTevColor(u32 idx) {
        J3D_ASSERT(0x809, idx >= 0 && idx < ARRAY_SIZE(mTevColor), "Error : range over.");
        return &mTevColor[idx];
    }
    /* 80322124 */ virtual void setTevKColor(u32 idx, J3DGXColor const* color) {
        J3D_ASSERT(0x810, idx >= 0 && idx < ARRAY_SIZE(mTevKColor), "Error : range over.");
        J3D_ASSERT(0x811, color != 0, "Error : null pointer.");
        mTevKColor[idx] = *color;
    }
    /* 803220F8 */ virtual void setTevKColor(u32 idx, J3DGXColor color) {
        J3D_ASSERT(0x817, idx >= 0 && idx < ARRAY_SIZE(mTevKColor), "Error : range over.");
        mTevKColor[idx] = color;
    }
    /* 80322150 */ virtual J3DGXColor* getTevKColor(u32 idx) {
        J3D_ASSERT(0x81c, idx >= 0 && idx < ARRAY_SIZE(mTevKColor), "Error : range over.");
        return &mTevKColor[idx];
    }
    /* 80322170 */ virtual void setTevKColorSel(u32 idx, u8 const* sel) {
        J3D_ASSERT(0x823, idx >= 0 && idx < ARRAY_SIZE(mTevKColorSel), "Error : range over.");
        J3D_ASSERT(0x824, sel != 0, "Error : null pointer.");
        mTevKColorSel[idx] = *sel;
    }
    /* 80322164 */ virtual void setTevKColorSel(u32 idx, u8 sel) {
        J3D_ASSERT(0x82a, idx >= 0 && idx < ARRAY_SIZE(mTevKColorSel), "Error : range over.");
        mTevKColorSel[idx] = sel;
    }
    /* 80322180 */ virtual u8 getTevKColorSel(u32 idx) {
        J3D_ASSERT(0x82f, idx >= 0 && idx < ARRAY_SIZE(mTevKColorSel), "Error : range over.");
        return mTevKColorSel[idx];
    }
    /* 80322198 */ virtual void setTevKAlphaSel(u32 idx, u8 const* sel) {
        J3D_ASSERT(0x836, idx >= 0 && idx < ARRAY_SIZE(mTevKAlphaSel), "Error : range over.");
        J3D_ASSERT(0x837, sel != 0, "Error : null pointer.");
        mTevKAlphaSel[idx] = *sel;
    }
    /* 8032218C */ virtual void setTevKAlphaSel(u32 idx, u8 sel) {
        J3D_ASSERT(0x83d, idx >= 0 && idx < ARRAY_SIZE(mTevKAlphaSel), "Error : range over.");
        mTevKAlphaSel[idx] = sel;
    }
    /* 803221A8 */ virtual u8 getTevKAlphaSel(u32 idx) {
        J3D_ASSERT(0x842, idx >= 0 && idx < ARRAY_SIZE(mTevKAlphaSel), "Error : range over.");
        return mTevKAlphaSel[idx];
    }
    /* 803221BC */ virtual void setTevStageNum(u8 const* num) {
        J3D_ASSERT(0x848, num != 0, "Error : null pointer.");
        mTevStageNum = *num;
    }
    /* 803221B4 */ virtual void setTevStageNum(u8 num) { mTevStageNum = num; }
    /* 803221C8 */ virtual u8 getTevStageNum() const { return mTevStageNum; }
    /* 8032220C */ virtual void setTevStage(u32 idx, J3DTevStage const* stage) {
        J3D_ASSERT(0x857, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        J3D_ASSERT(0x858, stage != 0, "Error : null pointer.");
        mTevStage[idx] = *stage;
    }
    /* 803221D0 */ virtual void setTevStage(u32 idx, J3DTevStage stage) {
        J3D_ASSERT(0x85e, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        mTevStage[idx] = stage;
    }
    /* 80322248 */ virtual J3DTevStage* getTevStage(u32 idx) {
        J3D_ASSERT(0x863, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        return &mTevStage[idx];
    }
    /* 80322294 */ virtual void setTevSwapModeInfo(u32 idx, J3DTevSwapModeInfo const* info) {
        J3D_ASSERT(0x86a, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        J3D_ASSERT(0x86b, info != 0, "Error : null pointer.");
        mTevStage[idx].setTevSwapModeInfo(*info);
    }
    /* 8032225C */ virtual void setTevSwapModeInfo(u32 idx, J3DTevSwapModeInfo info) {
        J3D_ASSERT(0x871, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        mTevStage[idx].setTevSwapModeInfo(info);
    }
    /* 803222DC */ virtual void setTevSwapModeTable(u32 idx, J3DTevSwapModeTable const* table) {
        J3D_ASSERT(0x878, idx >= 0 && idx < ARRAY_SIZE(mTevSwapModeTable), "Error : range over.");
        J3D_ASSERT(0x879, table != 0, "Error : null pointer.");
        mTevSwapModeTable[idx] = *table;
    }
    /* 803222CC */ virtual void setTevSwapModeTable(u32 idx, J3DTevSwapModeTable table) {
        J3D_ASSERT(0x87f, idx >= 0 && idx < ARRAY_SIZE(mTevSwapModeTable), "Error : range over.");
        mTevSwapModeTable[idx] = table;
    }
    /* 803222EC */ virtual J3DTevSwapModeTable* getTevSwapModeTable(u32 idx) {
        J3D_ASSERT(0x884, idx >= 0 && idx < ARRAY_SIZE(mTevSwapModeTable), "Error : range over.");
        return &mTevSwapModeTable[idx];
    }
    /* 80322310 */ virtual void setIndTevStage(u32 idx, J3DIndTevStage const* stage) {
        J3D_ASSERT(0x88b, idx >= 0 && idx < ARRAY_SIZE(mIndTevStage), "Error : range over.");
        J3D_ASSERT(0x88c, stage != 0, "Error : null pointer.");
        mIndTevStage[idx] = *stage;
    }
    /* 803222FC */ virtual void setIndTevStage(u32 idx, J3DIndTevStage stage) {
        J3D_ASSERT(0x892, idx >= 0 && idx < ARRAY_SIZE(mIndTevStage), "Error : range over.");
        mIndTevStage[idx] = stage;
    }
    /* 80322324 */ virtual J3DIndTevStage* getIndTevStage(u32 idx) {
        J3D_ASSERT(0x897, idx >= 0 && idx < ARRAY_SIZE(mIndTevStage), "Error : range over.");
        return &mIndTevStage[idx];
    }
    /* 80322338 */ virtual u32 getTexNoOffset() const { return mTexNoOffset; }
    /* 80322340 */ virtual u32 getTevRegOffset() const { return mTevRegOffset; }
    /* 80322348 */ virtual void setTevRegOffset(u32 offset) { mTevRegOffset = offset; }
    /* 80322350 */ virtual ~J3DTevBlock4() {}

    /* 0x08 */ u16 mTexNo[4];
    /* 0x10 */ J3DTevOrder mTevOrder[4];
    /* 0x20 */ u8 mTevStageNum;
    /* 0x21 */ J3DTevStage mTevStage[4];
    /* 0x42 */ J3DGXColorS10 mTevColor[4];
    /* 0x62 */ J3DGXColor mTevKColor[4];
    /* 0x72 */ u8 mTevKColorSel[4];
    /* 0x76 */ u8 mTevKAlphaSel[4];
    /* 0x7A */ J3DTevSwapModeTable mTevSwapModeTable[4];
    /* 0x80 */ J3DIndTevStage mIndTevStage[4];
    /* 0x90 */ u32 mTevRegOffset;
};  // Size: 0x94

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DTevBlock16 : public J3DTevBlock {
public:
    J3DTevBlock16() {
        initialize();
    }
    /* 80317A00 */ void initialize();

    /* 80320E24 */ virtual void reset(J3DTevBlock*);
    /* 8031BA04 */ virtual void load();
    /* 8031DB14 */ virtual void diffTexNo();
    /* 8031DB78 */ virtual void diffTevReg();
    /* 8031DDD8 */ virtual void diffTexCoordScale();
    /* 8031DC14 */ virtual void diffTevStage();
    /* 8031DD28 */ virtual void diffTevStageIndirect();
    /* 8031CCF8 */ virtual void patch();
    /* 8031CA1C */ virtual void patchTexNo();
    /* 8031CAB0 */ virtual void patchTevReg();
    /* 8031CB7C */ virtual void patchTexNoAndTexCoordScale();
    /* 8031DED0 */ virtual void ptrToIndex();
    /* 80321C20 */ virtual void indexToPtr() { indexToPtr_private(mTexNoOffset); }
    /* 80321C44 */ virtual u32 getType() { return 'TV16'; }
    /* 80317BD4 */ virtual s32 countDLSize();
    /* 80321C60 */ virtual void setTexNo(u32 idx, u16 const* texNo) {
        J3D_ASSERT(0x8f6, idx >= 0 && idx < ARRAY_SIZE(mTexNo), "Error : range over.");
        J3D_ASSERT(0x8f7, texNo != 0, "Error : null pointer.");
        mTexNo[idx] = *texNo;
    }
    /* 80321C50 */ virtual void setTexNo(u32 idx, u16 texNo) {
        J3D_ASSERT(0x8fd, idx >= 0 && idx < 8, "Error : range over.");
        mTexNo[idx] = texNo;
    }
    /* 80321C74 */ virtual u16 getTexNo(u32 idx) const {
        J3D_ASSERT(2308, idx >= 0 && idx < 8, "Error : range over.");
        return mTexNo[idx];
    }
    /* 80321C98 */ virtual void setTevOrder(u32 idx, J3DTevOrder const* order) {
        J3D_ASSERT(0x90b, idx >= 0 && idx < ARRAY_SIZE(mTevOrder), "Error : range over.");
        J3D_ASSERT(0x90c, order != 0, "Error : null pointer.");
        mTevOrder[idx] = *order;
    }
    /* 80321C84 */ virtual void setTevOrder(u32 idx, J3DTevOrder order) {
        J3D_ASSERT(0x912, idx >= 0 && idx < ARRAY_SIZE(mTevOrder), "Error : range over.");
        mTevOrder[idx] = order;
    }
    /* 80321CAC */ virtual J3DTevOrder* getTevOrder(u32 idx) {
        J3D_ASSERT(0x917, idx >= 0 && idx < ARRAY_SIZE(mTevOrder), "Error : range over.");
        return &mTevOrder[idx];
    }
    /* 80321CEC */ virtual void setTevColor(u32 idx, J3DGXColorS10 const* color) {
        J3D_ASSERT(0x91e, idx >= 0 && idx < ARRAY_SIZE(mTevColor), "Error : range over.");
        J3D_ASSERT(0x91f, color != 0, "Error : null pointer.");
        mTevColor[idx] = *color;
    }
    /* 80321CC0 */ virtual void setTevColor(u32 idx, J3DGXColorS10 color) {
        J3D_ASSERT(0x925, idx >= 0 && idx < ARRAY_SIZE(mTevColor), "Error : range over.");
        mTevColor[idx] = color;
    }
    /* 80321D18 */ virtual J3DGXColorS10* getTevColor(u32 idx) {
        J3D_ASSERT(0x92a, idx >= 0 && idx < ARRAY_SIZE(mTevColor), "Error : range over.");
        return &mTevColor[idx];
    }
    /* 80321D58 */ virtual void setTevKColor(u32 idx, J3DGXColor const* color) {
        J3D_ASSERT(0x931, idx >= 0 && idx < ARRAY_SIZE(mTevKColor), "Error : range over.");
        J3D_ASSERT(0x932, color != 0, "Error : null pointer.");
        mTevKColor[idx] = *color;
    }
    /* 80321D2C */ virtual void setTevKColor(u32 idx, J3DGXColor color) {
        J3D_ASSERT(0x938, idx >= 0 && idx < ARRAY_SIZE(mTevKColor), "Error : range over.");
        mTevKColor[idx] = color;
    }
    /* 80321D84 */ virtual J3DGXColor* getTevKColor(u32 idx) {
        J3D_ASSERT(0x93d, idx >= 0 && idx < ARRAY_SIZE(mTevKColor), "Error : range over.");
        return &mTevKColor[idx];
    }
    /* 80321DA4 */ virtual void setTevKColorSel(u32 idx, u8 const* sel) {
        J3D_ASSERT(0x944, idx >= 0 && idx < ARRAY_SIZE(mTevKColorSel), "Error : range over.");
        J3D_ASSERT(0x945, sel != 0, "Error : null pointer.");
        mTevKColorSel[idx] = *sel;
    }
    /* 80321D98 */ virtual void setTevKColorSel(u32 idx, u8 sel) {
        J3D_ASSERT(0x94b, idx >= 0 && idx < ARRAY_SIZE(mTevKColorSel), "Error : range over.");
        mTevKColorSel[idx] = sel;
    }
    /* 80321DB4 */ virtual u8 getTevKColorSel(u32 idx) {
        J3D_ASSERT(0x950, idx >= 0 && idx < ARRAY_SIZE(mTevKColorSel), "Error : range over.");
        return mTevKColorSel[idx];
    }
    /* 80321DCC */ virtual void setTevKAlphaSel(u32 idx, u8 const* sel) {
        J3D_ASSERT(0x957, idx >= 0 && idx < ARRAY_SIZE(mTevKAlphaSel), "Error : range over.");
        J3D_ASSERT(0x958, sel != 0, "Error : null pointer.");
        mTevKAlphaSel[idx] = *sel;
    }
    /* 80321DC0 */ virtual void setTevKAlphaSel(u32 idx, u8 sel) {
        J3D_ASSERT(0x95e, idx >= 0 && idx < ARRAY_SIZE(mTevKAlphaSel), "Error : range over.");
        mTevKAlphaSel[idx] = sel;
    }
    /* 80321DDC */ virtual u8 getTevKAlphaSel(u32 idx) {
        J3D_ASSERT(0x963, idx >= 0 && idx < ARRAY_SIZE(mTevKAlphaSel), "Error : range over.");
        return mTevKAlphaSel[idx];
    }
    /* 80321DF0 */ virtual void setTevStageNum(u8 const* num) {
        J3D_ASSERT(0x969, num != 0, "Error : null pointer.");
        mTevStageNum = *num;
    }
    /* 80321DE8 */ virtual void setTevStageNum(u8 num) { mTevStageNum = num; }
    /* 80321DFC */ virtual u8 getTevStageNum() const { return mTevStageNum; }
    /* 80321E40 */ virtual void setTevStage(u32 idx, J3DTevStage const* stage) {
        J3D_ASSERT(0x978, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        J3D_ASSERT(0x979, stage != 0, "Error : null pointer.");
        mTevStage[idx] = *stage;
    }
    /* 80321E04 */ virtual void setTevStage(u32 idx, J3DTevStage stage) {
        J3D_ASSERT(0x97f, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        mTevStage[idx] = stage;
    }
    /* 80321E7C */ virtual J3DTevStage* getTevStage(u32 idx) {
        J3D_ASSERT(0x984, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        return &mTevStage[idx];
    }
    /* 80321EC8 */ virtual void setTevSwapModeInfo(u32 idx, J3DTevSwapModeInfo const* info) {
        J3D_ASSERT(0x98b, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        J3D_ASSERT(0x98c, info != 0, "Error : null pointer.");
        mTevStage[idx].setTevSwapModeInfo(*info);
    }
    /* 80321E90 */ virtual void setTevSwapModeInfo(u32 idx, J3DTevSwapModeInfo info) {
        J3D_ASSERT(0x992, idx >= 0 && idx < ARRAY_SIZE(mTevStage), "Error : range over.");
        mTevStage[idx].setTevSwapModeInfo(info);
    }
    /* 80321F10 */ virtual void setTevSwapModeTable(u32 idx, J3DTevSwapModeTable const* table) {
        J3D_ASSERT(0x999, idx >= 0 && idx < ARRAY_SIZE(mTevSwapModeTable), "Error : range over.");
        J3D_ASSERT(0x99a, table != 0, "Error : null pointer.");
        mTevSwapModeTable[idx] = *table;
    }
    /* 80321F00 */ virtual void setTevSwapModeTable(u32 idx, J3DTevSwapModeTable table) {
        J3D_ASSERT(0x9a0, idx >= 0 && idx < ARRAY_SIZE(mTevSwapModeTable), "Error : range over.");
        mTevSwapModeTable[idx] = table;
    }
    /* 80321F20 */ virtual J3DTevSwapModeTable* getTevSwapModeTable(u32 idx) {
        J3D_ASSERT(0x9a5, idx >= 0 && idx < ARRAY_SIZE(mTevSwapModeTable), "Error : range over.");
        return &mTevSwapModeTable[idx];
    }
    /* 80321F44 */ virtual void setIndTevStage(u32 idx, J3DIndTevStage const* stage) {
        J3D_ASSERT(0x9ac, idx >= 0 && idx < ARRAY_SIZE(mIndTevStage), "Error : range over.");
        J3D_ASSERT(0x9ad, stage != 0, "Error : null pointer.");
        mIndTevStage[idx] = *stage;
    }
    /* 80321F30 */ virtual void setIndTevStage(u32 idx, J3DIndTevStage stage) {
        J3D_ASSERT(0x9b3, idx >= 0 && idx < ARRAY_SIZE(mIndTevStage), "Error : range over.");
        mIndTevStage[idx] = stage;
    }
    /* 80321F58 */ virtual J3DIndTevStage* getIndTevStage(u32 idx) {
        J3D_ASSERT(0x9b8, idx >= 0 && idx < ARRAY_SIZE(mIndTevStage), "Error : range over.");
        return &mIndTevStage[idx];
    }
    /* 80321F6C */ virtual u32 getTexNoOffset() const { return mTexNoOffset; }
    /* 80321F74 */ virtual u32 getTevRegOffset() const { return mTevRegOffset; }
    /* 80321F7C */ virtual void setTevRegOffset(u32 offset) { mTevRegOffset = offset; }
    /* 80321F84 */ virtual ~J3DTevBlock16() {}

    /* 0x008 */ u16 mTexNo[8];
    /* 0x018 */ J3DTevOrder mTevOrder[16];
    /* 0x058 */ u8 mTevStageNum;
    /* 0x059 */ J3DTevStage mTevStage[16];
    /* 0x0DA */ J3DGXColorS10 mTevColor[4];
    /* 0x0FA */ J3DGXColor mTevKColor[4];
    /* 0x10A */ u8 mTevKColorSel[16];
    /* 0x11A */ u8 mTevKAlphaSel[16];
    /* 0x12A */ J3DTevSwapModeTable mTevSwapModeTable[4];
    /* 0x130 */ J3DIndTevStage mIndTevStage[16];
    /* 0x170 */ u32 mTevRegOffset;
};  // Size: 0x174

extern const u16 j3dDefaultZModeID;

inline u16 calcZModeID(u8 param_0, u8 param_1, u8 param_2) {
    return param_1 * 2 + param_0 * 0x10 + param_2;
}

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DZModeInfo {
    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 field_0x1;
    /* 0x2 */ u8 field_0x2;
    /* 0x3 */ u8 pad;
};

extern u8 j3dZModeTable[96];

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DZMode {
    J3DZMode() : mZModeID(j3dDefaultZModeID) {}
    J3DZMode(J3DZModeInfo const& info) : mZModeID(calcZModeID(info.field_0x0, info.field_0x1, info.field_0x2)) {}

    J3DZMode& operator=(u16 zModeID) {
        mZModeID = zModeID;
        return *this;
    }

    void setZModeInfo(const J3DZModeInfo& info) {
        mZModeID = calcZModeID(info.field_0x0, info.field_0x1, info.field_0x2);
    }

    void setCompareEnable(u8 i_compare) {
        mZModeID = calcZModeID(i_compare, j3dZModeTable[mZModeID * 3 + 1], j3dZModeTable[mZModeID * 3 + 2]);
    }

    void setFunc(u8 i_func) {
        mZModeID = calcZModeID(j3dZModeTable[mZModeID * 3], i_func, j3dZModeTable[mZModeID * 3 + 2]);
    }

    void setUpdateEnable(u8 i_enable) {
        mZModeID = calcZModeID(j3dZModeTable[mZModeID * 3], j3dZModeTable[mZModeID * 3 + 1], i_enable);
    }

    void load() const {
        J3DGDSetZMode(getCompareEnable(), GXCompare(getFunc()), getUpdateEnable());
    }

    u8 getCompareEnable() const { return *(&j3dZModeTable[mZModeID * 3] + 0); }
    u8 getFunc() const { return *(&j3dZModeTable[mZModeID * 3] + 1); }
    u8 getUpdateEnable() const { return *(&j3dZModeTable[mZModeID * 3] + 2); }

    /* 0x0 */ u16 mZModeID;
};

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DBlendInfo {
    void operator=(J3DBlendInfo const& other) {
        *(int*)&mType = *(int*)&other.mType;
    }
    /* 0x0 */ u8 mType;
    /* 0x1 */ u8 mSrcFactor;
    /* 0x2 */ u8 mDstFactor;
    /* 0x3 */ u8 mOp;
};

extern const J3DBlendInfo j3dDefaultBlendInfo;

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DBlend : public J3DBlendInfo {
    J3DBlend() : J3DBlendInfo(j3dDefaultBlendInfo) {}
    J3DBlend(J3DBlendInfo const& info) : J3DBlendInfo(info) {}

    void setType(u8 i_type) { mType = i_type; }
    void setSrcFactor(u8 i_factor) { mSrcFactor = i_factor; }
    void setDstFactor(u8 i_factor) { mDstFactor = i_factor; }

    GXBlendMode getBlendMode() const { return (GXBlendMode)mType; }
    GXBlendFactor getSrcFactor() const { return (GXBlendFactor)mSrcFactor; }
    GXBlendFactor getDstFactor() const { return (GXBlendFactor)mDstFactor; }
    GXLogicOp getLogicOp() const { return (GXLogicOp)mOp; }

    void load(u8 ditherEnable) const {
        J3DGDSetBlendMode((GXBlendMode)mType, (GXBlendFactor)mSrcFactor, (GXBlendFactor)mDstFactor, (GXLogicOp)mOp, ditherEnable);
    }

    void setBlendInfo(const J3DBlendInfo& i_blendInfo) { *static_cast<J3DBlendInfo*>(this) = i_blendInfo; }
};

extern const J3DFogInfo j3dDefaultFogInfo;

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DFog : public J3DFogInfo {
    J3DFog() { *(J3DFogInfo*)this = j3dDefaultFogInfo; }
    ~J3DFog() {}
    J3DFogInfo* getFogInfo() { return this; }
    void setFogInfo(J3DFogInfo info) { *(J3DFogInfo*)this = info; }
    void setFogInfo(const J3DFogInfo* info) { *(J3DFogInfo*)this = *info; }

    void load() const {
        J3DGDSetFog(GXFogType(mType), mStartZ, mEndZ, mNearZ, mFarZ, mColor);
        J3DGDSetFogRangeAdj(mAdjEnable, mCenter, (GXFogAdjTable*)&mFogAdjTable);
    }
};

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DAlphaCompInfo {
    /* 0x0 */ u8 mComp0;
    /* 0x1 */ u8 mRef0;
    /* 0x2 */ u8 mOp;
    /* 0x3 */ u8 mComp1;
    /* 0x4 */ u8 mRef1;
    /* 0x5 */ u8 field_0x5;
    /* 0x6 */ u8 field_0x6;
    /* 0x7 */ u8 field_0x7;
};

extern const u16 j3dDefaultAlphaCmpID;

inline u16 calcAlphaCmpID(u8 comp0, u8 op, u8 comp1) {
    return (comp0 << 5) + (op << 3) + (comp1);
}

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DAlphaComp {
    J3DAlphaComp() : mID(j3dDefaultAlphaCmpID), mRef0(0), mRef1(0) {}
    J3DAlphaComp(u16 id) : mID(id), mRef0(0), mRef1(0) {}

    explicit J3DAlphaComp(const J3DAlphaCompInfo& info) {
        mID = calcAlphaCmpID(info.mComp0, info.mOp, info.mComp1);
        mRef0 = info.mRef0;
        mRef1 = info.mRef1;
    }

    J3DAlphaComp& operator=(u16 id) { mID = id; return *this; }

    J3DAlphaComp& operator=(const J3DAlphaComp& rhs) {
        mID = rhs.mID;
        mRef0 = rhs.mRef0;
        mRef1 = rhs.mRef1;
        return *this;
    }

    void setAlphaCompInfo(const J3DAlphaCompInfo& info) {
        mRef0 = info.mRef0;
        mRef1 = info.mRef1;
        mID = calcAlphaCmpID(info.mComp0, info.mOp, info.mComp1);
    }

    GXCompare getComp0() const { return GXCompare(*(&j3dAlphaCmpTable[mID * 3] + 0)); }
    GXAlphaOp getOp() const { return GXAlphaOp(*(&j3dAlphaCmpTable[mID * 3] + 1)); }
    GXCompare getComp1() const { return GXCompare(*(&j3dAlphaCmpTable[mID * 3] + 2)); }
    u8 getRef0() const { return mRef0; }
    u8 getRef1() const { return mRef1; }

    void load() const {
        J3DGDSetAlphaCompare(getComp0(), mRef0, getOp(), getComp1(), mRef1);
    }

    /* 0x00 */ u16 mID;
    /* 0x02 */ u8 mRef0;
    /* 0x03 */ u8 mRef1;
};  // Size: 0x4

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DIndTexOrderInfo {
    /* 0x0 */ u8 mCoord;
    /* 0x1 */ u8 mMap;
    /* 0x2 */ u8 field_0x2;
    /* 0x3 */ u8 field_0x3;
};  // Size: 0x04

extern const J3DIndTexOrderInfo j3dDefaultIndTexOrderNull;

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DIndTexOrder : public J3DIndTexOrderInfo {
    /* 8000E128 */ J3DIndTexOrder() : J3DIndTexOrderInfo(j3dDefaultIndTexOrderNull) {}
    J3DIndTexOrder& operator=(J3DIndTexOrder const& other) {
        *(u32*)this = *(u32*)&other;
        return *this;
    }
    J3DIndTexOrder(J3DIndTexOrderInfo const& info) : J3DIndTexOrderInfo(info) {}
    u8 getMap() const { return (GXTexMapID)mMap; }
    u8 getCoord() const { return (GXTexCoordID)mCoord; }
};  // Size: 0x04

extern J3DIndTexMtxInfo const j3dDefaultIndTexMtxInfo;

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DIndTexMtx : public J3DIndTexMtxInfo {
    /* 8000E0F0 */ J3DIndTexMtx() { *(J3DIndTexMtxInfo*)this = j3dDefaultIndTexMtxInfo; }
    J3DIndTexMtx(J3DIndTexMtxInfo const& info) { *(J3DIndTexMtxInfo*)this = info; }
    /* 8000E064 */ ~J3DIndTexMtx() {}
    void load(u32 param_1) const {
        J3DGDSetIndTexMtx((GXIndTexMtxID)(param_1 + 1), (Mtx3P)field_0x0, field_0x18);
    }
};  // Size: 0x1C

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DIndTexCoordScaleInfo {
    /* 0x0 */ u8 mScaleS;
    /* 0x1 */ u8 mScaleT;
    /* 0x2 */ u8 field_0x2;
    /* 0x3 */ u8 field_0x3;
};  // Size: 0x4

extern const J3DIndTexCoordScaleInfo j3dDefaultIndTexCoordScaleInfo;

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DIndTexCoordScale : public J3DIndTexCoordScaleInfo {
    /* 8000E0E4 */ J3DIndTexCoordScale() : J3DIndTexCoordScaleInfo(j3dDefaultIndTexCoordScaleInfo) {}
    J3DIndTexCoordScale(J3DIndTexCoordScaleInfo const& info) : J3DIndTexCoordScaleInfo(info) {}
    /* 8000E024 */ ~J3DIndTexCoordScale() {}
    u8 getScaleS() { return mScaleS; }
    u8 getScaleT() { return mScaleT; }

    J3DIndTexCoordScale& operator=(const J3DIndTexCoordScale& other) {
        //__memcpy(this, &other, sizeof(J3DIndTexCoordScaleInfo));
        *(u32*)this = *(u32*)&other;
        return *this;
    }
};  // Size: 0x4

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DIndBlock {
public:
    /* 8031734C */ virtual void reset(J3DIndBlock*) {}
    virtual void diff(u32) = 0;
    virtual void load() = 0;
    /* 80317314 */ virtual s32 countDLSize() { return 0; }
    virtual u32 getType() = 0;
    /* 8000E0A0 */ virtual void setIndTexStageNum(u8) {}
    /* 8000DF7C */ virtual u8 getIndTexStageNum() const { return 0; }
    /* 80317410 */ virtual void setIndTexOrder(u32, J3DIndTexOrder) {}
    /* 8031740C */ virtual void setIndTexOrder(u32, J3DIndTexOrder const*) {}
    /* 8000DF74 */ virtual J3DIndTexOrder* getIndTexOrder(u32) { return NULL; }
    /* 80317414 */ virtual void setIndTexMtx(u32, J3DIndTexMtx const*) {}
    /* 8000E060 */ virtual void setIndTexMtx(u32, J3DIndTexMtx) {}
    /* 8000DF6C */ virtual J3DIndTexMtx* getIndTexMtx(u32) { return NULL; }
    /* 80317418 */ virtual void setIndTexCoordScale(u32, J3DIndTexCoordScale const*) {}
    /* 8000E020 */ virtual void setIndTexCoordScale(u32, J3DIndTexCoordScale) {}
    /* 8000DF64 */ virtual J3DIndTexCoordScale* getIndTexCoordScale(u32) { return NULL; }
    /* 8031726C */ virtual ~J3DIndBlock() {}
};

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DIndBlockNull : public J3DIndBlock {
public:
    /* 80317398 */ virtual void diff(u32) {}
    /* 8031739C */ virtual void load() {}
    /* 803173A0 */ virtual void reset(J3DIndBlock*) {}
    /* 803173A4 */ virtual u32 getType() { return 'IBLN'; }
    /* 803173B0 */ virtual ~J3DIndBlockNull() {}
};

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DIndBlockFull : public J3DIndBlock {
public:
    J3DIndBlockFull() {
        initialize();
    }
    /* 80317B28 */ void initialize();

    /* 80317BDC */ virtual s32 countDLSize();
    /* 803210B0 */ virtual void reset(J3DIndBlock*);
    /* 8031E328 */ virtual void diff(u32);
    /* 8031E12C */ virtual void load();
    /* 80323390 */ virtual u32 getType() { return 'IBLF'; }
    /* 8032339C */ virtual void setIndTexStageNum(u8 num) { mIndTexStageNum = num; }
    /* 803233A4 */ virtual u8 getIndTexStageNum() const { return mIndTexStageNum; }
    /* 803233C0 */ virtual void setIndTexOrder(u32 idx, J3DIndTexOrder const* order) {
        J3D_ASSERT(0xa94, order != 0, "Error : null pointer.");
        J3D_ASSERT(0xa95, idx >= 0 && idx < ARRAY_SIZE(mIndTexOrder), "Error : range over.");
        mIndTexOrder[idx] = *order;
    }
    /* 803233AC */ virtual void setIndTexOrder(u32 idx, J3DIndTexOrder order) {
        J3D_ASSERT(0xa9b, idx >= 0 && idx < ARRAY_SIZE(mIndTexOrder), "Error : range over.");
        mIndTexOrder[idx] = order;
    }
    /* 803233D4 */ virtual J3DIndTexOrder* getIndTexOrder(u32 idx) {
        J3D_ASSERT(0xaa0, idx >= 0 && idx < ARRAY_SIZE(mIndTexOrder), "Error : range over.");
        return &mIndTexOrder[idx];
    }
    /* 8032341C */ virtual void setIndTexMtx(u32 idx, J3DIndTexMtx const* mtx) {
        J3D_ASSERT(0xaa7, mtx != 0, "Error : null pointer.");
        J3D_ASSERT(0xaa8, idx >= 0 && idx < ARRAY_SIZE(mIndTexMtx), "Error : range over.");
        mIndTexMtx[idx] = *mtx;
    }
    /* 803233E8 */ virtual void setIndTexMtx(u32 idx, J3DIndTexMtx mtx) {
        J3D_ASSERT(0xaae, idx >= 0 && idx < ARRAY_SIZE(mIndTexMtx), "Error : range over.");
        mIndTexMtx[idx] = mtx;
    }
    /* 80323450 */ virtual J3DIndTexMtx* getIndTexMtx(u32 idx) {
        J3D_ASSERT(0xab3, idx >= 0 && idx < ARRAY_SIZE(mIndTexMtx), "Error : range over.");
        return &mIndTexMtx[idx];
    }
    /* 80323478 */ virtual void setIndTexCoordScale(u32 idx, J3DIndTexCoordScale const* scale) {
        J3D_ASSERT(0xaba, scale != 0, "Error : null pointer.");
        J3D_ASSERT(0xabb, idx >= 0 && idx < ARRAY_SIZE(mIndTexCoordScale), "Error : range over.");
        mIndTexCoordScale[idx] = *scale;
    }
    /* 80323464 */ virtual void setIndTexCoordScale(u32 idx, J3DIndTexCoordScale scale) {
        J3D_ASSERT(0xac1, idx >= 0 && idx < ARRAY_SIZE(mIndTexCoordScale), "Error : range over.");
        mIndTexCoordScale[idx] = scale;
    }
    /* 8032348C */ virtual J3DIndTexCoordScale* getIndTexCoordScale(u32 idx) {
        J3D_ASSERT(0xac6, idx >= 0 && idx < ARRAY_SIZE(mIndTexCoordScale), "Error : range over.");
        return &mIndTexCoordScale[idx];
    }
    /* 803234A0 */ virtual ~J3DIndBlockFull() {}

    /* 0x04 */ u8 mIndTexStageNum;
    /* 0x05 */ J3DIndTexOrder mIndTexOrder[4];
    /* 0x18 */ J3DIndTexMtx mIndTexMtx[3];
    /* 0x6C */ J3DIndTexCoordScale mIndTexCoordScale[4];
};  // Size: 0x7C

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DPEBlock {
public:
    /* 80317348 */ virtual void reset(J3DPEBlock*) {}
    virtual void load() = 0;
    /* 8000DBCC */ virtual void patch() {}
    /* 80317344 */ virtual void diff(u32) {}
    /* 8031735C */ virtual void diffFog() {}
    /* 80317360 */ virtual void diffBlend() {}
    /* 8031731C */ virtual s32 countDLSize() { return 0; }
    virtual u32 getType() = 0;
    /* 80317368 */ virtual void setFog(J3DFog) {}
    /* 80317364 */ virtual void setFog(J3DFog*) {}
    /* 8000DF5C */ virtual J3DFog* getFog() { return NULL; }
    /* 8031736C */ virtual void setAlphaComp(J3DAlphaComp const*) {}
    /* 8000E01C */ virtual void setAlphaComp(J3DAlphaComp const&) {}
    /* 8000DF54 */ virtual J3DAlphaComp* getAlphaComp() { return NULL; }
    /* 80317370 */ virtual void setBlend(J3DBlend const*) {}
    /* 8000E018 */ virtual void setBlend(J3DBlend const&) {}
    /* 8000DF4C */ virtual J3DBlend* getBlend() { return NULL; }
    /* 80317374 */ virtual void setZMode(J3DZMode const*) {}
    /* 8000E014 */ virtual void setZMode(J3DZMode) {}
    /* 8000DF44 */ virtual J3DZMode* getZMode() { return NULL; }
    /* 80317378 */ virtual void setZCompLoc(u8 const*) {}
    /* 8000E010 */ virtual void setZCompLoc(u8) {}
    /* 8000DF3C */ virtual u8 getZCompLoc() const { return 0; }
    /* 80317380 */ virtual void setDither(u8 const*) {}
    /* 8031737C */ virtual void setDither(u8) {}
    /* 80317384 */ virtual u8 getDither() const { return 0; }
    /* 8031738C */ virtual u32 getFogOffset() const { return 0; }
    /* 80317394 */ virtual void setFogOffset(u32) {}
    /* 803172B4 */ virtual ~J3DPEBlock() {}
};

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DPEBlockNull : public J3DPEBlock {
    /* 803329A0 */ virtual void load() {}
    /* 803329A4 */ virtual u32 getType() { return 'PENL'; }
    /* 803329B0 */ virtual ~J3DPEBlockNull() {}
};

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DPEBlockOpa : public J3DPEBlock {
public:
    /* 80317BE4 */ virtual s32 countDLSize();
    /* 8031E408 */ virtual void load();
    /* 80323328 */ virtual u32 getType() { return 'PEOP'; }
    /* 80323334 */ virtual ~J3DPEBlockOpa() {}
};

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DPEBlockTexEdge : public J3DPEBlock {
public:
    /* 80317BEC */ virtual s32 countDLSize();
    /* 8031E6C8 */ virtual void load();
    /* 803232C0 */ virtual u32 getType() { return 'PEED'; }
    /* 803232CC */ virtual ~J3DPEBlockTexEdge() {}
};

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DPEBlockXlu : public J3DPEBlock {
public:
    /* 80317BF4 */ virtual s32 countDLSize();
    /* 8031E98C */ virtual void load();
    /* 80323258 */ virtual u32 getType() { return 'PEXL'; }
    /* 80323264 */ virtual ~J3DPEBlockXlu() {}
};

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DPEBlockFogOff : public J3DPEBlock {
public:
    J3DPEBlockFogOff() {
        initialize();
    }
    /* 80317B34 */ void initialize();

    /* 803211B4 */ virtual void reset(J3DPEBlock*);
    /* 8031EC50 */ virtual void load();
    /* 80321ACC */ virtual void diff(u32 param_0) { if (param_0 & 0x20000000) diffBlend(); };
    /* 8031F0D8 */ virtual void diffBlend();
    /* 80317BFC */ virtual s32 countDLSize();
    /* 80321B00 */ virtual u32 getType() { return 'PEFG'; }
    /* 80321B28 */ virtual void setAlphaComp(J3DAlphaComp const* alphaComp) {
        J3D_ASSERT(0xbf9, alphaComp != 0, "Error : null pointer.");
        mAlphaComp = *alphaComp;
    }
    /* 80321B0C */ virtual void setAlphaComp(J3DAlphaComp const& alphaComp) { mAlphaComp = alphaComp; }
    /* 80321B44 */ virtual J3DAlphaComp* getAlphaComp() { return &mAlphaComp; }
    /* 80321B58 */ virtual void setBlend(J3DBlend const* blend) {
        J3D_ASSERT(0xc07, blend != 0, "Error : null pointer.");
        mBlend = *blend;
    }
    /* 80321B4C */ virtual void setBlend(J3DBlend const& blend) { mBlend = blend; }
    /* 80321B64 */ virtual J3DBlend* getBlend() { return &mBlend; }
    /* 80321B78 */ virtual void setZMode(J3DZMode const* zMode) {
        J3D_ASSERT(0xc15, zMode != 0, "Error : null pointer.");
        mZMode = *zMode;
    }
    /* 80321B6C */ virtual void setZMode(J3DZMode zMode) { mZMode = zMode; }
    /* 80321B84 */ virtual J3DZMode* getZMode() { return &mZMode; }
    /* 80321B94 */ virtual void setZCompLoc(u8 const* zCompLoc) {
        J3D_ASSERT(0xc23, zCompLoc != 0, "Error : null pointer.");
        mZCompLoc = *zCompLoc;
    }
    /* 80321B8C */ virtual void setZCompLoc(u8 zCompLoc) { mZCompLoc = zCompLoc; }
    /* 80321BA0 */ virtual u8 getZCompLoc() const { return mZCompLoc; }
    /* 80321BB0 */ virtual void setDither(u8 const* dither) {
        J3D_ASSERT(0xc31, dither != 0, "Error : null pointer.");
        mDither = *dither;
    }
    /* 80321BA8 */ virtual void setDither(u8 dither) { mDither = dither; }
    /* 80321BBC */ virtual u8 getDither() const { return mDither; }
    /* 80321BC4 */ virtual ~J3DPEBlockFogOff() {}

    /* 0x04 */ J3DAlphaComp mAlphaComp;
    /* 0x08 */ J3DBlend mBlend;
    /* 0x0C */ J3DZMode mZMode;
    /* 0x0E */ u8 mZCompLoc;
    /* 0x0F */ u8 mDither;
};  // Size: 0x10

/**
 * @ingroup jsystem-j3d
 *
 */
class J3DPEBlockFull : public J3DPEBlock {
public:
    J3DPEBlockFull() {
        initialize();
    }
    /* 80317B58 */ void initialize();

    /* 8032129C */ virtual void reset(J3DPEBlock*);
    /* 8031F3C0 */ virtual void load();
    /* 8031F890 */ virtual void patch();
    /* 8031FCA0 */ virtual void diff(u32);
    /* 8031F940 */ virtual void diffFog();
    /* 8031F9B8 */ virtual void diffBlend();
    /* 80317C04 */ virtual s32 countDLSize();
    /* 8032194C */ virtual u32 getType() { return 'PEFL'; }
    /* 8032197C */ virtual void setFog(J3DFog fog) { mFog.setFogInfo(fog.getFogInfo()); }
    /* 80321958 */ virtual void setFog(J3DFog* pFog) { mFog.setFogInfo(pFog->getFogInfo()); }
    /* 803219A0 */ virtual J3DFog* getFog() { return &mFog; }
    /* 803219C4 */ virtual void setAlphaComp(J3DAlphaComp const* alphaComp) {
        J3D_ASSERT(0xc7d, alphaComp != 0, "Error : null pointer.");
        mAlphaComp = *alphaComp;
    }
    /* 803219A8 */ virtual void setAlphaComp(J3DAlphaComp const& alphaComp) { mAlphaComp = alphaComp; }
    /* 803219E0 */ virtual J3DAlphaComp* getAlphaComp() { return &mAlphaComp; }
    /* 803219F4 */ virtual void setBlend(J3DBlend const* blend) {
        J3D_ASSERT(0xc8b, blend != 0, "Error : null pointer.");
        mBlend = *blend;
    }
    /* 803219E8 */ virtual void setBlend(J3DBlend const& blend) { mBlend = blend; }
    /* 80321A00 */ virtual J3DBlend* getBlend() { return &mBlend; }
    /* 80321A14 */ virtual void setZMode(J3DZMode const* zMode) {
        J3D_ASSERT(0xc99, zMode != 0, "Error : null pointer.");
        mZMode = *zMode;
    }
    /* 80321A08 */ virtual void setZMode(J3DZMode zMode) { mZMode = zMode; }
    /* 80321A20 */ virtual J3DZMode* getZMode() { return &mZMode; }
    /* 80321A30 */ virtual void setZCompLoc(u8 const* zCompLoc) {
        J3D_ASSERT(0xca7, zCompLoc != 0, "Error : null pointer.");
        mZCompLoc = *zCompLoc;
    }
    /* 80321A28 */ virtual void setZCompLoc(u8 zCompLoc) { mZCompLoc = zCompLoc; }
    /* 80321A3C */ virtual u8 getZCompLoc() const { return mZCompLoc; }
    /* 80321A4C */ virtual void setDither(u8 const* dither) {
        J3D_ASSERT(0xcb5, dither != 0, "Error : null pointer.");
        mDither = *dither;
    }
    /* 80321A44 */ virtual void setDither(u8 dither) { mDither = dither; }
    /* 80321A58 */ virtual u8 getDither() const { return mDither; }
    /* 80321A60 */ virtual u32 getFogOffset() const { return mFogOffset; }
    /* 80321A68 */ virtual void setFogOffset(u32 fogOffset) { mFogOffset = fogOffset; }
    /* 80321A70 */ virtual ~J3DPEBlockFull() {}

    /* 0x04 */ J3DFog mFog;
    /* 0x30 */ J3DAlphaComp mAlphaComp;
    /* 0x34 */ J3DBlend mBlend;
    /* 0x38 */ J3DZMode mZMode;
    /* 0x3A */ u8 mZCompLoc;
    /* 0x3B */ u8 mDither;
    /* 0x3C */ u32 mFogOffset;
};  // Size: 0x40

/**
 * @ingroup jsystem-j3d
 *
 */
struct J3DColorBlockNull : public J3DColorBlock {
    /* 80332B2C */ virtual u32 getType() { return 'CLNL'; }
    /* 80332B38 */ virtual ~J3DColorBlockNull() {}
};

#endif /* J3DMATBLOCK_H */
