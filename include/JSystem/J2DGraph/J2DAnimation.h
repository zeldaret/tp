#ifndef J2DANIMATION_H
#define J2DANIMATION_H

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "JSystem/JUtility/JUTNameTab.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "dolphin/gx/GX.h"
#include "dolphin/types.h"
#include "dolphin/os/OS.h"

struct VisibilityAnmTableStruct {
    u16 _0;
    u16 _2;
};  // Size = 0x4

struct UnkKeyColorAnmStruct {
    J3DAnmKeyTableBase _0;
    J3DAnmKeyTableBase _6;
    J3DAnmKeyTableBase _C;
    J3DAnmKeyTableBase _12;
};  // Size = 0x18

struct UnkAnmColorStruct {
    /* 0x00 */ u16 _0;
    /* 0x02 */ u16 _2;
    /* 0x04 */ u16 _4;
    /* 0x06 */ u16 _6;
    /* 0x08 */ u16 _8;
    /* 0x0A */ u16 _A;
    /* 0x0C */ u16 _C;
    /* 0x0E */ u16 _E;
};  // Size = 0x10

struct UnkKeyAnmStruct {
    J3DAnmKeyTableBase _0;
    J3DAnmKeyTableBase _6;
    J3DAnmKeyTableBase _C;
};  // Size = 0x12

struct UnkAnimInfo {
    /* 0x00 */ u16 _0;
    /* 0x02 */ u16 _2;
    /* 0x04 */ u16 _4;
    /* 0x06 */ u16 _6;
    /* 0x08 */ u16 _8;
    /* 0x0A */ u16 _A;
};  // Size = 0xC

struct AnmTableStruct {
    /* 0x00 */ u16 _0;
    /* 0x02 */ u16 _2;
    /* 0x04 */ u16 _4;
    /* 0x06 */ u16 _6;
};  // Size = 0x8

struct J2DAnmTevRegKeyData {
    /* 0x00 */ J3DAnmKeyTableBase _0;
    /* 0x06 */ J3DAnmKeyTableBase _6;
    /* 0x0C */ J3DAnmKeyTableBase _C;
    /* 0x12 */ J3DAnmKeyTableBase _12;
    /* 0x18 */ u8 _18[4];
};  // Size = 0x1C

class J2DScreen;

class J2DAnmBase {
public:
    /* 80053C94 */ virtual ~J2DAnmBase() {}
    /* 800569B0 */ virtual void searchUpdateMaterialID(J2DScreen*);

    s16 getFrameMax() const { return mFrameMax; }
    void setFrame(f32 frame) { mFrame = frame; }
    f32 getFrame() const { return mFrame; }
    s32 getKind() const { return mKind; }

private:
    /* 0x0 */  // vtable
    /* 0x4 */ u8 field_0x4[2];
    /* 0x6 */ s16 mFrameMax;
    /* 0x8 */ f32 mFrame;
    /* 0xC */ s32 mKind;
};  // Size: 0x10

class J2DAnmVtxColor : public J2DAnmBase {
public:
    /* 8030A358 */ virtual ~J2DAnmVtxColor() {}
    /* 8030363C */ virtual void getColor(u8, u16, _GXColor*) const;

private:
    /* 0x10 */ u16 mAnmTableNum[2];
    /* 0x14 */ void* mVtxColorIndexData[2];
    /* 0x1C */ void* mVtxColorIndexPointer[2];
};  // Size: 0x24

struct J3DTransformInfo;
struct J3DTextureSRTInfo;

class J2DAnmVtxColorKey : public J2DAnmVtxColor {
    /* 8030CC20 */ virtual ~J2DAnmVtxColorKey() {}
    /* 8030B704 */ virtual void getColor(u8, u16, _GXColor*) const;

private:
    /* 0x24 */ UnkKeyColorAnmStruct* field_0x24[2];
    /* 0x2C */ s16* field_0x2c;
    /* 0x30 */ s16* field_0x30;
    /* 0x34 */ s16* field_0x34;
    /* 0x38 */ s16* field_0x38;
};  // Size: 0x3C

class J2DAnmVtxColorFull : public J2DAnmVtxColor {
public:
    /* 8030CC8C */ virtual ~J2DAnmVtxColorFull() {}
    /* 8030B4C4 */ virtual void getColor(u8, u16, _GXColor*) const;

private:
    /* 0x24 */ UnkAnmColorStruct* field_0x24[2];
    /* 0x2C */ u8* field_0x2c;
    /* 0x30 */ u8* field_0x30;
    /* 0x34 */ u8* field_0x34;
    /* 0x38 */ u8* field_0x38;
};  // Size: 0x3C

class J2DAnmVisibilityFull : public J2DAnmBase {
public:
    /* 8030A3B4 */ virtual ~J2DAnmVisibilityFull();
    /* 8030C048 */ void getVisibility(u16, u8*) const;

private:
    /* 0x10 */ u16 field_0x10;
    /* 0x12 */ u16 field_0x12;
    /* 0x14 */ VisibilityAnmTableStruct* field_0x14;
    /* 0x18 */ u8* field_0x18;
};  // Size: 0x1C

class J2DAnmTransform : public J2DAnmBase {
public:
    /* 80184370 */ virtual ~J2DAnmTransform() {}
    /* 80191130 */ virtual void getTransform(u16, J3DTransformInfo*) const;

protected:
    /* 0x10 */ f32* field_0x10;
    /* 0x14 */ s16* field_0x14;
    /* 0x18 */ f32* field_0x18;
};  // Size: 0x1C

class J2DAnmTransformKey : public J2DAnmTransform {
public:
    /* 801959C0 */ virtual ~J2DAnmTransformKey() {}
    /* 8030CD7C */ virtual void getTransform(u16 p1, J3DTransformInfo* pInfo) const {
        this->calcTransform(getFrame(), p1, pInfo);
    }
    /* 8030AAFC */ virtual void calcTransform(f32, u16, J3DTransformInfo*) const;

private:
    /* 0x1C */ u8 field_0x1c[8];
    /* 0x24 */ u32 field_0x24;
    /* 0x28 */ UnkKeyAnmStruct* field_0x28;
};

class J2DAnmTransformFull : public J2DAnmTransform {
public:
    /* 8030CDAC */ virtual ~J2DAnmTransformFull() {}
    /* 8030A590 */ virtual void getTransform(u16, J3DTransformInfo*) const;

private:
    /* 0x1C */ u8 field_0x1c[6];
    /* 0x22 */ u16 field_0x22;
    /* 0x24 */ UnkAnimInfo* field_0x24;
};

class J2DAnmTextureSRTKey : public J2DAnmBase {
public:
    /* 8030B9F0 */ void calcTransform(f32, u16, J3DTextureSRTInfo*) const;

    /* 80184274 */ virtual ~J2DAnmTextureSRTKey() {}
    /* 8030BC60 */ virtual void searchUpdateMaterialID(J2DScreen*);
    u16 getUpdateMaterialNum() const { return mUpdateMaterialNum / 3; }

private:
    /* 0x10 */ int field_0x10;
    /* 0x14 */ UnkKeyAnmStruct* field_0x14;
    /* 0x18 */ u16 mUpdateMaterialNum;
    /* 0x1A */ u16 field_0x1a;
    /* 0x1C */ u16 field_0x1c;
    /* 0x20 */ f32* field_0x20;
    /* 0x24 */ s16* field_0x24;
    /* 0x28 */ f32* field_0x28;
    /* 0x2C */ u8* mUpdateTexMtxID;
    /* 0x30 */ u16* mUpdateMaterialID;
    /* 0x34 */ JUTNameTab field_0x34;
    /* 0x44 */ u8 field_0x44[4];
    /* 0x48 */ u16 field_0x48;
    /* 0x4A */ u16 field_0x4a;
    /* 0x4C */ u16 field_0x4c;
    /* 0x4E */ u16 field_0x4e;
    /* 0x50 */ int field_0x50;
    /* 0x54 */ int field_0x54;
    /* 0x58 */ int field_0x58;
    /* 0x5C */ int field_0x5c;
    /* 0x60 */ u8 field_0x60[8];
    /* 0x68 */ JUTNameTab field_0x68;
    /* 0x78 */ u8 field_0x78[4];
    /* 0x7C */ int field_0x7c;
};

class J2DAnmTexPattern : public J2DAnmBase {
public:
    struct J2DAnmTexPatternTIMGPointer {
        /* 8030CB2C */ J2DAnmTexPatternTIMGPointer();
        /* 8030CB3C */ ~J2DAnmTexPatternTIMGPointer();

        /* 0x0 */ ResTIMG* mRes;
        /* 0x4 */ JUTPalette* mPalette;
    };  // Size: 0x8

    /* 8030BEE8 */ void getTexNo(u16, u16*) const;
    /* 8030BF9C */ ResTIMG* getResTIMG(u16) const;
    /* 8030BFF0 */ JUTPalette* getPalette(u16) const;

    /* 8030CB90 */ virtual ~J2DAnmTexPattern() { delete[] mTIMGPtrArray; }
    /* 8030BD10 */ virtual void searchUpdateMaterialID(J2DScreen*);
    u16 getUpdateMaterialNum() const { return mUpdateMaterialNum; }

private:
    /* 0x10 */ u16* field_0x10;
    /* 0x14 */ AnmTableStruct* mAnmTable;
    /* 0x18 */ u8 field_0x18[2];
    /* 0x1A */ u16 mUpdateMaterialNum;
    /* 0x1C */ u16* mUpdaterMaterialID;
    /* 0x20 */ JUTNameTab field_0x20;
    /* 0x30 */ J2DAnmTexPatternTIMGPointer* mTIMGPtrArray;
};

class J2DAnmTevRegKey : public J2DAnmBase {
public:
    /* 8030C0F0 */ void getTevColorReg(u16, _GXColorS10*) const;
    /* 8030C3B4 */ void getTevKonstReg(u16, _GXColor*) const;

    /* 801841EC */ virtual ~J2DAnmTevRegKey() {}
    /* 8030C678 */ virtual void searchUpdateMaterialID(J2DScreen* pScreen);

private:
    /* 0x10 */ u16 mCRegUpdateMaterialNum;
    /* 0x12 */ u16 mKRegUpdateMaterialNum;
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u16 field_0x16;
    /* 0x18 */ u16 field_0x18;
    /* 0x1A */ u16 field_0x1a;
    /* 0x1C */ u16 field_0x1c;
    /* 0x1E */ u16 field_0x1e;
    /* 0x20 */ u16 field_0x20;
    /* 0x22 */ u16 field_0x22;
    /* 0x24 */ u16* mCRegUpdateMaterialID;
    /* 0x28 */ JUTNameTab field_0x28;
    /* 0x38 */ u16* mKRegUpdateMaterialID;
    /* 0x3C */ JUTNameTab field_0x3c;
    /* 0x4C */ J2DAnmTevRegKeyData* mAnmCRegKeyTable;
    /* 0x50 */ J2DAnmTevRegKeyData* mAnmKRegKeyTable;
    /* 0x54 */ s16* field_0x54;
    /* 0x58 */ s16* field_0x58;
    /* 0x5C */ s16* field_0x5c;
    /* 0x60 */ s16* field_0x60;
    /* 0x64 */ s16* field_0x64;
    /* 0x68 */ s16* field_0x68;
    /* 0x6C */ s16* field_0x6c;
    /* 0x70 */ s16* field_0x70;
};

class J2DAnmColor : public J2DAnmBase {
public:
    /* 801842FC */ virtual ~J2DAnmColor() {}
    /* 8030AF24 */ virtual void searchUpdateMaterialID(J2DScreen*);
    /* 802EB390 */ virtual void getColor(u16, _GXColor*) const;
    u16 getUpdateMaterialNum() const { return mUpdateMaterialNum; }

private:
    /* 0x10 */ u16 field_0x10;
    /* 0x12 */ u16 field_0x12;
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u16 field_0x16;
    /* 0x18 */ u16 mUpdateMaterialNum;
    /* 0x1C */ u16* mUpdateMaterialID;
    /* 0x20 */ JUTNameTab field_0x20;
};  // Size: 0x30

class J2DAnmColorKey : public J2DAnmColor {
public:
    /* 80239BE0 */ virtual ~J2DAnmColorKey() {}
    /* 8030B200 */ virtual void getColor(u16, _GXColor*) const;

private:
    /* 0x30 */ s16* field_0x30;
    /* 0x34 */ s16* field_0x34;
    /* 0x38 */ s16* field_0x38;
    /* 0x3C */ s16* field_0x3c;
    /* 0x40 */ UnkKeyColorAnmStruct* field_0x40;
};

class J2DAnmColorFull : public J2DAnmColor {
public:
    /* 8030CCF8 */ virtual ~J2DAnmColorFull() {}
    /* 8030AFC8 */ virtual void getColor(u16, _GXColor*) const;

private:
    /* 0x30 */ u8* field_0x30;
    /* 0x34 */ u8* field_0x34;
    /* 0x38 */ u8* field_0x38;
    /* 0x3C */ u8* field_0x3c;
    /* 0x40 */ UnkAnmColorStruct* field_0x40;
};

template <typename T>
inline f32 J2DHermiteInterpolation(f32, T*, T*, T*, T*, T*, T*);

inline f32 JMAHermiteInterpolation(register f32 p1, register f32 p2, register f32 p3,
                                   register f32 p4, register f32 p5, register f32 p6,
                                   register f32 p7) {
    register f32 ff25;
    register f32 ff31;
    register f32 ff30;
    register f32 ff29;
    register f32 ff28;
    register f32 ff27;
    register f32 ff26;
    // clang-format off
    asm {
        fsubs   ff31, p1, p2
        fsubs   ff30, p5, p2
        fdivs   ff29, ff31, ff30
        fmuls   ff28,ff29,ff29
        fadds   ff25,ff29,ff29
        fsubs   ff27,ff28,ff29
        fsubs   ff30, p3, p6
        fmsubs  ff26,ff25,ff27,ff28
        fmadds  ff25,p4,ff27,p4
        fmadds  ff26,ff26,ff30,p3
        fmadds  ff25,p7,ff27,ff25
        fmsubs  ff25,ff29,p4,ff25
        fnmsubs ff25,ff31,ff25,ff26

    }
    // clang-format on
    return ff25;
}

template <>
inline f32 J2DHermiteInterpolation<f32>(f32 f1, f32* f2, f32* f3, f32* f4, f32* f5, f32* f6,
                                        f32* f7) {
    return JMAHermiteInterpolation(f1, *f2, *f3, *f4, *f5, *f6, *f7);
}

template <>
inline f32 J2DHermiteInterpolation<s16>(register f32 pp1, register s16* pp2, register s16* pp3,
                                        register s16* pp4, register s16* pp5, register s16* pp6,
                                        register s16* pp7) {
    register f32 p1 = pp1;
    register f32 ff8;
    register f32 ff7;
    register f32 ff6;
    register f32 ff5;
    register f32 ff4;
    register f32 ff3;
    register f32 ff2;
    register f32 ff0;
    register f32 fout;
    register s16* p2 = pp2;
    register s16* p3 = pp3;
    register s16* p4 = pp4;
    register s16* p5 = pp5;
    register s16* p6 = pp6;
    register s16* p7 = pp7;
    // clang-format off
    asm {
        psq_l ff2, 0(p2), 0x1, 5
        psq_l ff0, 0(p5), 0x1, 5
        psq_l ff7, 0(p3), 0x1, 5
        fsubs ff5, ff0, ff2
        psq_l ff6, 0(p6), 0x1, 5
        fsubs ff3, p1, ff2
        psq_l ff0, 0(p7), 0x1, 5
        fsubs ff4, ff6, ff7
        fdivs ff3, ff3, ff5
        psq_l fout, 0(p4), 0x1, 5
        fmadds ff0, ff0, ff5, ff7
        fmuls ff2, ff3, ff3
        fnmsubs ff4, ff5, fout, ff4
        fsubs ff0, ff0, ff6
        fsubs ff0, ff0, ff4
        fmuls ff0, ff2, ff0
        fmadds fout, ff5, fout, ff0
        fmadds fout, fout, ff3, ff7
        fmadds fout, ff4, ff2, fout
        fsubs fout, fout, ff0
    }
    // clang-format on
    return fout;
}

#endif /* J2DANIMATION_H */
