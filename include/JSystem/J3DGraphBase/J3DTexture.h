#ifndef J3DTEXTURE_H
#define J3DTEXTURE_H

#include "JSystem/JUtility/JUTTexture.h"
#include "dolphin/mtx/mtx.h"
#include "dolphin/types.h"

class J3DTexture {
private:
    /* 0x0 */ u16 mNum;
    /* 0x4 */ ResTIMG** mpRes;

public:
    /* 8031204C */ void loadGX(u16, _GXTexMapID) const;
    /* 803121A4 */ void entryNum(u16);
    /* 8031221C */ void addResTIMG(u16, ResTIMG const*);
    /* 803366A4 */ virtual ~J3DTexture();
};

struct J3DTextureSRTInfo {
    /* 0x00 */ f32 field_0x0;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ s16 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
};  // Size: 0x14

struct J3DTexMtxInfo {
    /* 80325718 */ void operator=(J3DTexMtxInfo const&);

    /* 0x00 */ u8 field_0x0;
    /* 0x01 */ u8 field_0x1;
    /* 0x04 */ f32 field_0x04;
    /* 0x08 */ f32 field_0x08;
    /* 0x0C */ f32 field_0x0c;
    /* 0x10 */ J3DTextureSRTInfo field_0x10;
    /* 0x24 */ Mtx mEffectMtx;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 field_0x5c;
    /* 0x60 */ f32 field_0x60;
};  // Size: 0x64

class J3DTexMtx {
public:
    /* 803238C4 */ void load(u32) const;
    /* 80323900 */ void calc(f32 const (*)[4]);
    /* 80323920 */ void calcTexMtx(f32 const (*)[4]);
    /* 80323C0C */ void calcPostTexMtx(f32 const (*)[4]);
    /* 80324358 */ void loadTexMtx(u32) const;
    /* 803243BC */ void loadPostTexMtx(u32) const;

    J3DTexMtxInfo& getTexMtxInfo() { return mTexMtxInfo; }

private:
    /* 0x00 */ J3DTexMtxInfo mTexMtxInfo;
    /* 0x64 */ Mtx mMtx;
};  // Size: 0x94

struct J3DTexCoordInfo {
    /* 0x0 */ u8 mTexGenType;
    /* 0x1 */ u8 mTexGenSrc;
    /* 0x2 */ u8 mTexGenMtx;
};

struct J3DTexCoord : public J3DTexCoordInfo {
    /* 8000E464 */ J3DTexCoord();

    /* 0x4 */ u16 mTexMtxReg;
};  // Size: 0x6

#endif /* J3DTEXTURE_H */
