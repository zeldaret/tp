#ifndef J3DTEXTURE_H
#define J3DTEXTURE_H

#include "JSystem/J3DGraphBase/J3DStruct.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "dolphin/mtx/mtx.h"
#include "dolphin/types.h"

class J3DTexture {
private:
    /* 0x0 */ u16 mNum;
    /* 0x2 */ u16 field_0x2;
    /* 0x4 */ ResTIMG* mpRes;

public:
    J3DTexture(u16 num, ResTIMG* res) : mNum(num), field_0x2(0), mpRes(res) {}
    /* 8031204C */ void loadGX(u16, _GXTexMapID) const;
    /* 803121A4 */ void entryNum(u16);
    /* 8031221C */ void addResTIMG(u16, ResTIMG const*);
    /* 803366A4 */ virtual ~J3DTexture() {}

    u16 getNum() const { return mNum; }
    ResTIMG* getResTIMG(u16 entry) const { return &mpRes[entry]; }
    void setResTIMG(u16 entry, const ResTIMG& timg) {
        mpRes[entry] = timg;
        mpRes[entry].imageOffset = ((mpRes[entry].imageOffset + (u32)&timg - (u32)(mpRes + entry)));
        mpRes[entry].paletteOffset = ((mpRes[entry].paletteOffset + (u32)&timg - (u32)(mpRes + entry)));
    }
};

class J3DTexMtx {
public:
    J3DTexMtx(const J3DTexMtxInfo& info) {
        mTexMtxInfo = info;
    }
    /* 803238C4 */ void load(u32) const;
    /* 80323900 */ void calc(const Mtx);
    /* 80323920 */ void calcTexMtx(const Mtx);
    /* 80323C0C */ void calcPostTexMtx(const Mtx);
    /* 80324358 */ void loadTexMtx(u32) const;
    /* 803243BC */ void loadPostTexMtx(u32) const;

    J3DTexMtxInfo& getTexMtxInfo() { return mTexMtxInfo; }
    Mtx& getMtx() { return mMtx; }
    void setEffectMtx(Mtx effectMtx) { mTexMtxInfo.setEffectMtx(effectMtx); }

private:
    /* 0x00 */ J3DTexMtxInfo mTexMtxInfo;
    /* 0x64 */ Mtx mMtx;
};  // Size: 0x94

struct J3DTexCoordInfo {
    /* 0x0 */ u8 mTexGenType;
    /* 0x1 */ u8 mTexGenSrc;
    /* 0x2 */ u8 mTexGenMtx;
    /* 0x3 */ u8 pad;
};

extern J3DTexCoordInfo const j3dDefaultTexCoordInfo[8];

struct J3DTexCoord : public J3DTexCoordInfo {
    /* 8000E464 */ J3DTexCoord() {
        setTexCoordInfo(j3dDefaultTexCoordInfo[0]);
        resetTexMtxReg();
    }
    J3DTexCoord(J3DTexCoordInfo const& info) {
        setTexCoordInfo(info);
        resetTexMtxReg();
    }
    void setTexCoordInfo(J3DTexCoordInfo const& info) {
        __memcpy(this, &info, sizeof(J3DTexCoordInfo));
    }

    u8 getTexGenType() { return mTexGenType; }
    u8 getTexGenSrc() { return mTexGenSrc; }
    u8 getTexGenMtx() { return mTexGenMtx & 0xff; }
    u16 getTexMtxReg() { return mTexMtxReg & 0xff; }

    void resetTexMtxReg() {
        mTexMtxReg = mTexGenMtx;
    }

    /* 0x4 */ u16 mTexMtxReg;
};  // Size: 0x6

#endif /* J3DTEXTURE_H */
