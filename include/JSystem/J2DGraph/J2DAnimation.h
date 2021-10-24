#ifndef J2DANIMATION_H
#define J2DANIMATION_H

#include "JSystem/JUtility/JUTNameTab.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "dolphin/gx/GX.h"
#include "dolphin/types.h"

class J2DScreen;

class J2DAnmBase {
public:
    /* 80053C94 */ virtual ~J2DAnmBase();
    /* 800569B0 */ virtual void searchUpdateMaterialID(J2DScreen*);

    s16 getFrameMax() const { return mFrameMax; }
    void setFrame(f32 frame) { mFrame = frame; }

private:
    /* 0x0 */  // vtable
    /* 0x4 */ u8 field_0x4[2];
    /* 0x6 */ s16 mFrameMax;
    /* 0x8 */ f32 mFrame;
    /* 0xC */ s32 mKind;
};  // Size: 0x10

class J2DAnmVtxColor : public J2DAnmBase {
public:
    /* 8030A358 */ virtual ~J2DAnmVtxColor();
    /* 8030363C */ virtual void getColor(u8, u16, _GXColor*) const;

private:
    /* 0x10 */ u16 mAnmTableNum[2];
    /* 0x14 */ void* mVtxColorIndexData[2];
    /* 0x1C */ void* mVtxColorIndexPointer[2];
};  // Size: 0x24

struct J3DTransformInfo;
struct J3DTextureSRTInfo;

class J2DAnmVtxColorKey : public J2DAnmVtxColor {
    /* 8030CC20 */ virtual ~J2DAnmVtxColorKey();
    /* 8030B704 */ virtual void getColor(u8, u16, _GXColor*) const;

private:
    /* 0x24 */ void* field_0x24[2];
    /* 0x2C */ void* field_0x2c;
    /* 0x30 */ void* field_0x30;
    /* 0x34 */ void* field_0x34;
    /* 0x38 */ void* field_0x38;
};  // Size: 0x3C

class J2DAnmVtxColorFull : public J2DAnmVtxColor {
public:
    /* 8030CC8C */ virtual ~J2DAnmVtxColorFull();
    /* 8030B4C4 */ virtual void getColor(u8, u16, _GXColor*) const;

private:
    /* 0x24 */ void* field_0x24[2];
    /* 0x2C */ void* field_0x2c;
    /* 0x30 */ void* field_0x30;
    /* 0x34 */ void* field_0x34;
    /* 0x38 */ void* field_0x38;
};  // Size: 0x3C

class J2DAnmVisibilityFull : public J2DAnmBase {
public:
    /* 8030A3B4 */ virtual ~J2DAnmVisibilityFull();
    /* 8030C048 */ void getVisibility(u16, u8*) const;

private:
    /* 0x10 */ u16 field_0x10;
    /* 0x12 */ u16 field_0x12;
    /* 0x14 */ void* field_0x14;
    /* 0x18 */ void* field_0x18;
};  // Size: 0x1C

class J2DAnmTransform : public J2DAnmBase {
public:
    /* 80184370 */ virtual ~J2DAnmTransform();
    /* 80191130 */ virtual void getTransform(u16, J3DTransformInfo*) const;

private:
    /* 0x10 */ f32* field_0x10;
    /* 0x14 */ s16* field_0x14;
    /* 0x18 */ f32* field_0x18;
};  // Size: 0x1C

class J2DAnmTransformKey : public J2DAnmTransform {
public:
    /* 801959C0 */ virtual ~J2DAnmTransformKey();
    /* 8030CD7C */ virtual void getTransform(u16, J3DTransformInfo*) const;
    /* 8030AAFC */ virtual void calcTransform(f32, u16, J3DTransformInfo*) const;

private:
    /* 0x1C */ u8 field_0x1c[8];
    /* 0x24 */ void* field_0x24;
    /* 0x28 */ void* field_0x28;
};

class J2DAnmTransformFull : public J2DAnmTransform {
public:
    /* 8030CDAC */ virtual ~J2DAnmTransformFull();
    /* 8030A590 */ virtual void getTransform(u16, J3DTransformInfo*) const;

private:
    /* 0x1C */ u8 field_0x1c[6];
    /* 0x22 */ u16 field_0x22;
    /* 0x24 */ void* field_0x24;
};

class J2DAnmTextureSRTKey : public J2DAnmBase {
public:
    /* 8030B9F0 */ void calcTransform(f32, u16, J3DTextureSRTInfo*) const;

    /* 80184274 */ virtual ~J2DAnmTextureSRTKey();
    /* 8030BC60 */ virtual void searchUpdateMaterialID(J2DScreen*);

private:
    /* 0x10 */ int field_0x10;
    /* 0x14 */ int field_0x14;
    /* 0x18 */ u16 mUpdateMaterialNum;
    /* 0x1A */ u16 field_0x1a;
    /* 0x1C */ u16 field_0x1c;
    /* 0x20 */ int field_0x20;
    /* 0x24 */ int field_0x24;
    /* 0x28 */ int field_0x28;
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
    /* 8030BF9C */ void getResTIMG(u16) const;
    /* 8030BFF0 */ void getPalette(u16) const;

    /* 8030CB90 */ virtual ~J2DAnmTexPattern();
    /* 8030BD10 */ virtual void searchUpdateMaterialID(J2DScreen*);

private:
    /* 0x10 */ int field_0x10;
    /* 0x14 */ void* mAnmTable;
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

    /* 801841EC */ virtual ~J2DAnmTevRegKey();
    /* 8030C678 */ virtual void searchUpdateMaterialID(J2DScreen*);

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
    /* 0x4C */ void* mAnmCRegKeyTable;
    /* 0x50 */ void* mAnmKRegKeyTable;
    /* 0x54 */ int field_0x54;
    /* 0x58 */ int field_0x58;
    /* 0x5C */ int field_0x5c;
    /* 0x60 */ int field_0x60;
    /* 0x64 */ int field_0x64;
    /* 0x68 */ int field_0x68;
    /* 0x6C */ int field_0x6c;
    /* 0x70 */ int field_0x70;
};

class J2DAnmColor : public J2DAnmBase {
public:
    /* 801842FC */ virtual ~J2DAnmColor();
    /* 8030AF24 */ virtual void searchUpdateMaterialID(J2DScreen*);
    /* 802EB390 */ virtual void getColor(u16, _GXColor*) const;

private:
    /* 0x10 */ u16 field_0x10;
    /* 0x10 */ u16 field_0x12;
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u16 field_0x16;
    /* 0x18 */ u16 mUpdateMaterialNum;
    /* 0x1C */ u16* mUpdateMaterialID;
    /* 0x20 */ JUTNameTab field_0x20;
};  // Size: 0x30

class J2DAnmColorKey : public J2DAnmColor {
public:
    /* 80239BE0 */ virtual ~J2DAnmColorKey();
    /* 8030B200 */ virtual void getColor(u16, _GXColor*) const;

private:
    /* 0x30 */ int field_0x30;
    /* 0x34 */ int field_0x34;
    /* 0x38 */ int field_0x38;
    /* 0x3C */ int field_0x3c;
    /* 0x40 */ int field_0x40;
};

class J2DAnmColorFull : public J2DAnmColor {
public:
    /* 8030CCF8 */ virtual ~J2DAnmColorFull();
    /* 8030AFC8 */ virtual void getColor(u16, _GXColor*) const;

private:
    /* 0x30 */ int field_0x30;
    /* 0x34 */ int field_0x34;
    /* 0x38 */ int field_0x38;
    /* 0x3C */ int field_0x3c;
    /* 0x40 */ int field_0x40;
};

#endif /* J2DANIMATION_H */
