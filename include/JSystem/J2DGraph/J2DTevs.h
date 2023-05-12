#ifndef J2DTEVS_H
#define J2DTEVS_H

#include "dolphin/gx/GXEnum.h"
#include "dolphin/mtx/mtxvec.h"
#include "dolphin/types.h"

struct J2DTextureSRTInfo {
    /* 0x00 */ f32 field_0x0;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
};  // Size: 0x14

struct J2DTexMtxInfo {
    enum {
        /* 0x0 */ DCC_NONE,
        /* 0x1 */ DCC_MAYA,
    };

    /* 0x00 */ u8 mTexMtxType;
    /* 0x01 */ u8 mTexMtxDCC;
    /* 0x02 */ u8 field_0x2;  // padding ?
    /* 0x03 */ u8 field_0x3;  // padding ?
    /* 0x04 */ Vec mCenter;
    /* 0x10 */ J2DTextureSRTInfo mTexSRTInfo;

    GXTexMtxType getTexMtxType() const { return (GXTexMtxType)mTexMtxType; }
};  // Size: 0x24

class J2DTexMtx {
public:
    /* 802E9C90 */ void load(u32);
    /* 802E9CC4 */ void calc();
    /* 802E9D2C */ void getTextureMtx(J2DTextureSRTInfo const&, Vec, f32 (*)[4]);
    /* 802E9EBC */ void getTextureMtxMaya(J2DTextureSRTInfo const&, f32 (*)[4]);

private:
    /* 0x00 */ J2DTexMtxInfo mInfo;
    /* 0x24 */ Mtx mTexMtx;
};

struct J2DIndTexOrderInfo {
    /* 0x0 */ u8 mTexCoordID;
    /* 0x1 */ u8 mTexMapID;

    GXTexCoordID getTexCoordID() const { return (GXTexCoordID)mTexCoordID; }
    GXTexMapID getTexMapID() const { return (GXTexMapID)mTexMapID; }
};

class J2DIndTexOrder {
public:
    /* 802EB378 */ J2DIndTexOrder();
    /* 802EA0FC */ void load(u8);

private:
    /* 0x0 */ J2DIndTexOrderInfo mInfo;
};

struct J2DIndTexMtxInfo {
    /* 0x00 */ Mtx23 mMtx;
    /* 0x18 */ s8 mScaleExp;
};

class J2DIndTexMtx {
public:
    /* 802EB2E4 */ ~J2DIndTexMtx();
    /* 802EB320 */ J2DIndTexMtx();
    /* 802EA098 */ void load(u8);
    /* 802E9C90 */ void load(u32);
    /* 802E9CC4 */ void calc();

private:
    /* 0x0 */ J2DIndTexMtxInfo mIndTexMtxInfo;
};  // Size: 0x1C

struct J2DIndTexCoordScaleInfo {
    /* 0x0 */ u8 mScaleS;
    /* 0x0 */ u8 mScaleT;

    GXIndTexScale getScaleS() const { return (GXIndTexScale)mScaleS; }
    GXIndTexScale getScaleT() const { return (GXIndTexScale)mScaleT; }
};

class J2DIndTexCoordScale {
public:
    /* 802EB290 */ ~J2DIndTexCoordScale();
    /* 802EB2CC */ J2DIndTexCoordScale();
    /* 802EA0CC */ void load(u8);

private:
    /* 0x0 */ J2DIndTexCoordScaleInfo mInfo;
};  // Size: 0x2

class J2DIndTevStage {
public:
    /* 802EA044 */ void load(u8);
    /* 802F18A0 */ J2DIndTevStage();

private:
    /* 0x0 */ u32 mFlags;

    GXIndTexStageID getIndStage() const { return (GXIndTexStageID)(mFlags & 0x03); }
    GXIndTexFormat getIndFormat() const { return (GXIndTexFormat)((mFlags >> 2) & 0x03); }
    GXIndTexBiasSel getBiasSel() const { return (GXIndTexBiasSel)((mFlags >> 4) & 0x07); }
    GXIndTexWrap getWrapS() const { return (GXIndTexWrap)((mFlags >> 8) & 0x07); }
    GXIndTexWrap getWrapT() const { return (GXIndTexWrap)((mFlags >> 11) & 0x07); }
    GXIndTexMtxID getMtxSel() const { return (GXIndTexMtxID)((mFlags >> 16) & 0x0F); }
    GXBool getPrev() const { return (GXBool)((mFlags >> 20) & 0x01); }
    GXBool getLod() const { return (GXBool)((mFlags >> 21) & 0x01); }
    GXIndTexAlphaSel getAlphaSel() const { return (GXIndTexAlphaSel)((mFlags >> 22) & 0x03); }
};

struct J2DIndTevStageInfo {
    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 field_0x1;
    /* 0x2 */ u8 field_0x2;
    /* 0x3 */ u8 field_0x3;
    /* 0x4 */ u8 field_0x4;
    /* 0x5 */ u8 field_0x5;
    /* 0x6 */ u8 field_0x6;
    /* 0x7 */ u8 field_0x7;
    /* 0x8 */ int field_0x8;
};

inline u32 J2DCalcIndTevStage(J2DIndTevStageInfo info) {    
    return (info.field_0x8 << 22) | (info.field_0x7 << 21) | (info.field_0x6 << 20) |
           (info.field_0x3 << 16) | (info.field_0x5 << 11) | (info.field_0x4 << 8) |
           (info.field_0x2 << 4)  | (info.field_0x1 << 2)  | info.field_0x0;
}

struct J2DTexCoordInfo {
    /* 0x0 */ u8 mTexGenType;
    /* 0x1 */ u8 mTexGenSrc;
    /* 0x2 */ u8 mTexGenMtx;
    u8 padding;  // ?
};

class J2DTexCoord {
public:
    /* 802EB260 */ J2DTexCoord();

private:
    /* 0x0 */ J2DTexCoordInfo mTexCoordInfo;
};

struct J2DTevOrderInfo {
    /* 0x0 */ u8 mTexCoord;
    /* 0x1 */ u8 mTexMap;
    /* 0x2 */ u8 mColor;
};

class J2DTevOrder {
public:
    /* 802F1B70 */ J2DTevOrder();

    GXChannelID getColor() const { return (GXChannelID)mTevOrderInfo.mColor; }
    GXTexMapID getTexMap() const { return (GXTexMapID)mTevOrderInfo.mTexMap; }
    GXTexCoordID getTexCoord() const { return (GXTexCoordID)mTevOrderInfo.mTexCoord; }

    /* 0x0 */ J2DTevOrderInfo mTevOrderInfo;
    /* 0x4 */ u8 field_0x4;
};

struct J2DTevStageInfo {
    /* 0x00 */ u8 field_0x0;
    /* 0x01 */ u8 field_0x1;
    /* 0x02 */ u8 field_0x2;
    /* 0x03 */ u8 field_0x3;
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 field_0x5;
    /* 0x06 */ u8 field_0x6;
    /* 0x07 */ u8 field_0x7;
    /* 0x08 */ u8 field_0x8;
    /* 0x09 */ u8 field_0x9;
    /* 0x0A */ u8 field_0xa;
    /* 0x0B */ u8 field_0xb;
    /* 0x0C */ u8 field_0xc;
    /* 0x0D */ u8 field_0xd;
    /* 0x0E */ u8 field_0xe;
    /* 0x0F */ u8 field_0xf;
    /* 0x10 */ u8 field_0x10;
    /* 0x11 */ u8 field_0x11;
    /* 0x12 */ u8 field_0x12;
};

struct J2DTevSwapModeInfo {
    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 field_0x1;
    /* 0x2 */ u8 field_0x2;
    /* 0x3 */ u8 field_0x3;
};

class J2DTevStage {
public:
    /* 802F4110 */ J2DTevStage(J2DTevStageInfo const&);
    /* 802F1940 */ J2DTevStage();
    /* 802F19A8 */ void setTevStageInfo(J2DTevStageInfo const&);

    void setTevSwapModeInfo(const J2DTevSwapModeInfo& swapInfo) {
        setTexSel(swapInfo.field_0x1);
        setRasSel(swapInfo.field_0x0);
    }

    void setTexSel(u8 param_0) {
        field_0x7 = (field_0x7 & ~12) | (param_0 * 4);
    }

    void setRasSel(u8 param_0) {
        field_0x7 = (field_0x7 & ~3) | param_0;
    }

    void operator=(J2DTevStage const& other) {
        field_0x1 = other.field_0x1;
        field_0x2 = other.field_0x2;
        field_0x3 = other.field_0x3;
        field_0x5 = other.field_0x5;
        field_0x6 = other.field_0x6;
        field_0x7 = other.field_0x7;
    }

private:
    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 field_0x1;
    /* 0x2 */ u8 field_0x2;
    /* 0x3 */ u8 field_0x3;
    /* 0x4 */ u8 field_0x4;
    /* 0x5 */ u8 field_0x5;
    /* 0x6 */ u8 field_0x6;
    /* 0x7 */ u8 field_0x7;
};

class J2DTevSwapModeTable {
public:
    /* 802F1934 */ J2DTevSwapModeTable();

private:
    /* 0x0 */ u8 field_0x0;
};

#endif /* J2DTEVS_H */
