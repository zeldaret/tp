#ifndef J2DTEVS_H
#define J2DTEVS_H

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
    /* 0x00 */ u8 field_0x0;
    /* 0x01 */ u8 field_0x1;
    /* 0x02 */ u8 field_0x2;  // padding ?
    /* 0x03 */ u8 field_0x3;  // padding ?
    /* 0x04 */ Vec field_0x4;
    /* 0x10 */ J2DTextureSRTInfo mTexSRTInfo;
};  // Size: 0x24

class J2DTexMtx {
public:
    /* 802E9C90 */ void load(u32);
    /* 802E9CC4 */ void calc();
    /* 802E9D2C */ void getTextureMtx(J2DTextureSRTInfo const&, Vec, f32 (*)[4]);
    /* 802E9EBC */ void getTextureMtxMaya(J2DTextureSRTInfo const&, f32 (*)[4]);

private:
    /* 0x00 */ J2DTexMtxInfo mTexMtxInfo;
    /* 0x24 */ Mtx mTexMtx;
};

struct J2DIndTexOrderInfo {
    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 field_0x1;
};

class J2DIndTexOrder {
public:
    /* 802EB378 */ J2DIndTexOrder();
    /* 802EA0FC */ void load(u8);

private:
    /* 0x0 */ J2DIndTexOrderInfo mIndTexOrderInfo;
};

struct J2DIndTexMtxInfo {
    /* 0x00 */ Mtx23 mMtx;
    /* 0x18 */ u8 field_0x18;
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
    /* 0x0 */ u8 field_0x0;
    /* 0x0 */ u8 field_0x1;
};

class J2DIndTexCoordScale {
public:
    /* 802EB290 */ ~J2DIndTexCoordScale();
    /* 802EB2CC */ J2DIndTexCoordScale();
    /* 802EA0CC */ void load(u8);

private:
    /* 0x0 */ J2DIndTexCoordScaleInfo mIndTexCoordScaleInfo;
};  // Size: 0x2

class J2DIndTevStage {
public:
    /* 802EA044 */ void load(u8);
    /* 802F18A0 */ J2DIndTevStage();

private:
    /* 0x0 */ u32 mFlags;
};

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

private:
    /* 0x0 */ J2DTevOrderInfo mTevOrderInfo;
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

class J2DTevStage {
public:
    /* 802F4110 */ J2DTevStage(J2DTevStageInfo const&);
    /* 802F1940 */ J2DTevStage();
    /* 802F19A8 */ void setTevStageInfo(J2DTevStageInfo const&);

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

struct J2DTevSwapModeInfo {};

class J2DTevSwapModeTable {
public:
    /* 802F1934 */ J2DTevSwapModeTable();

private:
    /* 0x0 */ u8 field_0x0;
};

#endif /* J2DTEVS_H */
