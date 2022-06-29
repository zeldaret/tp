#ifndef J3DANIMATION_H
#define J3DANIMATION_H

#include "JSystem/J3DGraphAnimator/J3DMaterialAttach.h"
#include "JSystem/J3DGraphAnimator/J3DModelData.h"
#include "dolphin/gx/GX.h"
#include "dolphin/types.h"

struct J3DAnmKeyTableBase {
    /* 0x00 */ u16 mMaxFrame;
    /* 0x02 */ u16 mOffset;
    /* 0x04 */ u16 mType;
};  // Size = 0x6

struct J3DAnmColorKeyTable {
    J3DAnmKeyTableBase mRInfo;
    J3DAnmKeyTableBase mGInfo;
    J3DAnmKeyTableBase mBInfo;
    J3DAnmKeyTableBase mAInfo;
};  // Size = 0x18

struct J3DAnmVtxColorIndexData;

struct J3DAnmColorFullTable {
    /* 0x00 */ u16 mRMaxFrame;
    /* 0x02 */ u16 mROffset;
    /* 0x04 */ u16 mGMaxFrame;
    /* 0x06 */ u16 mGOffset;
    /* 0x08 */ u16 mBMaxFrame;
    /* 0x0A */ u16 mBOffset;
    /* 0x0C */ u16 mAMaxFrame;
    /* 0x0E */ u16 mAOffset;
};  // Size = 0x10

struct J3DAnmVisibilityFullTable {
    u16 _0;
    u16 _2;
};  // Size = 0x4

struct J3DAnmTransformKeyTable {
    J3DAnmKeyTableBase mScaleInfo;
    J3DAnmKeyTableBase mRotationInfo;
    J3DAnmKeyTableBase mTranslateInfo;
};  // Size = 0x12

struct J3DAnmTransformFullTable {
    /* 0x00 */ u16 mScaleMaxFrame;
    /* 0x02 */ u16 mScaleOffset;
    /* 0x04 */ u16 mRotationMaxFrame;
    /* 0x06 */ u16 mRotationOffset;
    /* 0x08 */ u16 mTranslateMaxFrame;
    /* 0x0A */ u16 mTranslateOffset;
};  // Size = 0xC

struct J3DAnmTexPatternFullTable {
    /* 0x00 */ u16 mMaxFrame;
    /* 0x02 */ u16 mOffset;
    /* 0x04 */ u8 _4;
    /* 0x06 */ u16 _6;
};  // Size = 0x8

struct J3DAnmCRegKeyTable {
    /* 0x00 */ J3DAnmKeyTableBase mRTable;
    /* 0x06 */ J3DAnmKeyTableBase mGTable;
    /* 0x0C */ J3DAnmKeyTableBase mBTable;
    /* 0x12 */ J3DAnmKeyTableBase mATable;
    /* 0x18 */ u8 _18;
    u8 padding[3];
};  // Size = 0x1C

struct J3DAnmKRegKeyTable {
    /* 0x00 */ J3DAnmKeyTableBase mRTable;
    /* 0x06 */ J3DAnmKeyTableBase mGTable;
    /* 0x0C */ J3DAnmKeyTableBase mBTable;
    /* 0x12 */ J3DAnmKeyTableBase mATable;
    /* 0x18 */ u8 _18;
    u8 padding[3];
};  // Size = 0x1C

struct J3DAnmDataBlockHeader {  // actual name unknown
    /* 0x0 */ u32 mType;
    /* 0x4 */ u32 mNextOffset;
};  // Size = 0x8

struct J3DAnmDataHeader {  // actual name unknown
    /* 0x00 */ u32 mMagic;
    /* 0x04 */ u32 mType;
    /* 0x08 */ u8 _8[4];
    /* 0x0C */ u32 mCount;
    /* 0x10 */ u8 _10[0x20 - 0x10];
    /* 0x20 */ J3DAnmDataBlockHeader mFirst;
};

struct J3DAnmVtxColorFullData {
    /* 0x00 */ J3DAnmDataBlockHeader mHeader;
    /* 0x08 */ u8 field_0x8;
    /* 0x09 */ u8 field_0x9;  // padding?
    /* 0x0A */ s16 mFrameMax;
    /* 0x0C */ u16 mAnmTableNum[2];
    /* 0x10 */ u8 field_0x10[0x18 - 0x10];
    /* 0x18 */ s32 mTableOffsets[2];
    /* 0x20 */ s32 mVtxColorIndexDataOffsets[2];
    /* 0x28 */ s32 mVtxColorIndexPointerOffsets[2];
    /* 0x30 */ s32 mRValuesOffset;
    /* 0x34 */ s32 mGValuesOffset;
    /* 0x38 */ s32 mBValuesOffset;
    /* 0x3C */ s32 mAValuesOffset;
};  // Size = 0x40

STATIC_ASSERT(sizeof(J3DAnmVtxColorFullData) == 0x40);

struct J3DAnmVisibilityFullData {
    /* 0x00 */ J3DAnmDataBlockHeader mHeader;
    /* 0x08 */ u8 field_0x8;
    /* 0x09 */ u8 field_0x9;  // padding?
    /* 0x0A */ s16 mFrameMax;
    /* 0x0C */ u16 field_0xc;
    /* 0x0E */ u16 field_0xe;
    /* 0x10 */ s32 mTableOffset;
    /* 0x14 */ s32 mValuesOffset;
};  // Size = 0x18

STATIC_ASSERT(sizeof(J3DAnmVisibilityFullData) == 0x18);

struct J3DAnmTransformFullData {
    /* 0x00 */ J3DAnmDataBlockHeader mHeader;
    /* 0x08 */ u8 field_0x8;
    /* 0x09 */ u8 field_0x9;
    /* 0x0A */ s16 mFrameMax;
    /* 0x0C */ u16 field_0xc;
    /* 0x0E */ u8 field_0xe[0x14 - 0xe];
    /* 0x14 */ s32 mTableOffset;
    /* 0x18 */ s32 mScaleValOffset;
    /* 0x1C */ s32 mRotValOffset;
    /* 0x20 */ s32 mTransValOffset;
};  // Size = 0x24

STATIC_ASSERT(sizeof(J3DAnmTransformFullData) == 0x24);

struct J3DAnmColorKeyData {
    /* 0x00 */ J3DAnmDataBlockHeader mHeader;
    /* 0x08 */ u8 field_0x8;
    /* 0x09 */ u8 field_0x9[3];
    /* 0x0C */ s16 mFrameMax;
    /* 0x0E */ u16 mUpdateMaterialNum;
    /* 0x10 */ u16 field_0x10;
    /* 0x12 */ u16 field_0x12;
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u16 field_0x16;
    /* 0x18 */ s32 mTableOffset; /* Created by retype action */
    /* 0x1C */ s32 mUpdateMaterialIDOffset;
    /* 0x20 */ s32 mNameTabOffset; /* Created by retype action */
    /* 0x24 */ s32 mRValOffset;
    /* 0x28 */ s32 mGValOffset;
    /* 0x2C */ s32 mBValOffset;
    /* 0x30 */ s32 mAValOffset;
};  // Size = 0x34

STATIC_ASSERT(sizeof(J3DAnmColorKeyData) == 0x34);

struct J3DAnmTextureSRTKeyData {
    /* 0x00 */ J3DAnmDataBlockHeader mHeader;
    /* 0x08 */ u8 field_0x8;
    /* 0x09 */ u8 field_0x9;
    /* 0x0A */ s16 field_0xa;
    /* 0x0C */ u16 field_0xc;
    /* 0x0E */ u16 field_0xe;
    /* 0x10 */ u16 field_0x10;
    /* 0x12 */ u16 field_0x12;
    /* 0x14 */ s32 mTableOffset;
    /* 0x18 */ s32 mUpdateMatIDOffset;
    /* 0x1C */ s32 mNameTab1Offset;
    /* 0x20 */ s32 mUpdateTexMtxIDOffset;
    /* 0x24 */ s32 unkOffset;
    /* 0x28 */ s32 mScaleValOffset;
    /* 0x2C */ s32 mRotValOffset;
    /* 0x30 */ s32 mTransValOffset;
    /* 0x34 */ u16 field_0x34;
    /* 0x36 */ u16 field_0x36;
    /* 0x38 */ u16 field_0x38;
    /* 0x3A */ u16 field_0x3a;
    /* 0x3C */ s32 mInfoTable2Offset;
    /* 0x40 */ s32 field_0x40;
    /* 0x44 */ u32 mNameTab2Offset;
    /* 0x48 */ s32 field_0x48;
    /* 0x4C */ s32 field_0x4c;
    /* 0x50 */ s32 field_0x50;
    /* 0x54 */ s32 field_0x54;
    /* 0x58 */ s32 field_0x58;
    /* 0x5C */ s32 field_0x5c;
};  // Size = 0x60

STATIC_ASSERT(sizeof(J3DAnmTextureSRTKeyData) == 0x60);

struct J3DAnmVtxColorKeyData {
    /* 0x00 */ J3DAnmDataBlockHeader mHeader;
    /* 0x08 */ u8 field_0x8;
    /* 0x09 */ u8 field_0x9;
    /* 0x0A */ s16 mFrameMax;
    /* 0x0C */ u16 mAnmTableNum[2];
    /* 0x10 */ u8 field_0x10[0x18 - 0x10];
    /* 0x18 */ s32 mTableOffsets[2];
    /* 0x20 */ s32 mVtxColoIndexDataOffset[2];
    /* 0x28 */ s32 mVtxColoIndexPointerOffset[2];
    /* 0x30 */ s32 mRValOffset;
    /* 0x34 */ s32 mGValOffset;
    /* 0x38 */ s32 mBValOffset;
    /* 0x3C */ s32 mAValOffset;
};  // Size = 0x40

STATIC_ASSERT(sizeof(J3DAnmVtxColorKeyData) == 0x40);

struct J3DAnmTexPatternFullData {
    /* 0x00 */ J3DAnmDataBlockHeader mHeader;
    /* 0x08 */ u8 field_0x8;
    /* 0x09 */ u8 field_0x9;
    /* 0x0A */ s16 mFrameMax;
    /* 0x0C */ u16 field_0xc;
    /* 0x0E */ u16 field_0xe;
    /* 0x10 */ s32 mTableOffset;
    /* 0x14 */ s32 mValuesOffset;
    /* 0x18 */ s32 mUpdateMaterialIDOffset;
    /* 0x1C */ s32 mNameTabOffset;
};  // Size = 0x20

STATIC_ASSERT(sizeof(J3DAnmTexPatternFullData) == 0x20);

struct J3DAnmTevRegKeyData {
    /* 0x00 */ J3DAnmDataBlockHeader mHeader;
    /* 0x08 */ u8 field_0x8;
    /* 0x09 */ u8 field_0x9;  // maybe padding
    /* 0x0A */ s16 mFrameMax;
    /* 0x0C */ u16 mCRegUpdateMaterialNum;
    /* 0x0E */ u16 mKRegUpdateMaterialNum;
    /* 0x10 */ u16 field_0x10;
    /* 0x12 */ u16 field_0x12;
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u16 field_0x16;
    /* 0x18 */ u16 field_0x18;
    /* 0x1A */ u16 field_0x1a;
    /* 0x1C */ u16 field_0x1c;
    /* 0x1E */ u16 field_0x1e;
    /* 0x20 */ s32 mCRegTableOffset;
    /* 0x24 */ s32 mKRegTableOffset;
    /* 0x28 */ s32 mCRegUpdateMaterialIDOffset;
    /* 0x2C */ s32 mKRegUpdateMaterialIDOffset;
    /* 0x30 */ s32 mCRegNameTabOffset;
    /* 0x34 */ s32 mKRegNameTabOffset;
    /* 0x38 */ s32 mCRValuesOffset;
    /* 0x3C */ s32 mCGValuesOffset;
    /* 0x40 */ s32 mCBValuesOffset;
    /* 0x44 */ s32 mCAValuesOffset;
    /* 0x48 */ s32 mKRValuesOffset;
    /* 0x4C */ s32 mKGValuesOffset;
    /* 0x50 */ s32 mKBValuesOffset;
    /* 0x54 */ s32 mKAValuesOffset;
};  // Size = 0x58

STATIC_ASSERT(sizeof(J3DAnmTevRegKeyData) == 0x58);

struct J3DAnmColorFullData { /* PlaceHolder Structure */
    /* 0x00 */ J3DAnmDataBlockHeader mHeader;
    /* 0x08 */ u8 field_0x8;
    /* 0x09 */ u8 field_0x9[3];
    /* 0x0C */ s16 mFrameMax;
    /* 0x0E */ u16 mUpdateMaterialNum;
    /* 0x10 */ u8 field_0x10[0x18 - 0x10];
    /* 0x18 */ s32 mTableOffset;
    /* 0x1C */ s32 mUpdateMaterialIDOffset;
    /* 0x20 */ s32 mNameTabOffset;
    /* 0x24 */ s32 mRValuesOffset;
    /* 0x28 */ s32 mGValuesOffset;
    /* 0x2C */ s32 mBValuesOffset;
    /* 0x30 */ s32 mAValuesOffset;
};  // Size = 0x34

STATIC_ASSERT(sizeof(J3DAnmColorFullData) == 0x34);

class J3DAnmBase {
public:
    virtual ~J3DAnmBase();

    u8 getAttribute() const { return mAttribute; }
    s16 getFrameMax() const { return mFrameMax; }
    f32 getFrame() const { return mFrame; }
    void setFrame(f32 frame) { mFrame = frame; }

private:
    /* 0x4 */ u8 mAttribute;
    /* 0x6 */ s16 mFrameMax;
    /* 0x8 */ f32 mFrame;
};  // Size: 0xC

class J3DAnmTransform : public J3DAnmBase {
public:
    /* 80328E40 */ J3DAnmTransform(s16, f32*, s16*, f32*);

    /* 8003B93C */ virtual ~J3DAnmTransform();
    /* 8003C77C */ virtual s32 getKind() const;
    virtual void getTransform(u16, J3DTransformInfo*) const = 0;

private:
    /* 0x0C */ f32* field_0xc;
    /* 0x10 */ s16* field_0x10;
    /* 0x14 */ f32* field_0x14;
    /* 0x18 */ s16 field_0x18;
    /* 0x1A */ s16 field_0x1a;
    /* 0x1C */ s16 field_0x1c;
    /* 0x1E */ s16 field_0x1e;
};  // Size: 0x20

class J3DAnmTransformKey : public J3DAnmTransform {
public:
    J3DAnmTransformKey() : J3DAnmTransform(0, NULL, NULL, NULL) {
        field_0x20 = 0;
        field_0x24 = 0;
    }

    /* 80329A34 */ void calcTransform(f32, u16, J3DTransformInfo*) const;

    /* 8003B8D0 */ virtual ~J3DAnmTransformKey();
    /* 8003C800 */ virtual s32 getKind() const;
    /* 8003C808 */ virtual void getTransform(u16, J3DTransformInfo*) const;

private:
    /* 0x20 */ int field_0x20;
    /* 0x24 */ int field_0x24;
};  // Size: 0x28

class J3DAnmTransformFull : public J3DAnmTransform {
    /* 8032C2AC */ virtual ~J3DAnmTransformFull();
    /* 8032C318 */ virtual s32 getKind() const;
    /* 80328E90 */ virtual void getTransform(u16, J3DTransformInfo*) const;

private:
    /* 0x20 */ int field_0x20;
};  // Size: 0x24

class J3DAnmTransformFullWithLerp : public J3DAnmTransformFull {
    /* 8032C228 */ virtual ~J3DAnmTransformFullWithLerp();
    /* 8032C2A4 */ virtual s32 getKind() const;
    /* 803291F0 */ virtual void getTransform(u16, J3DTransformInfo*) const;
};  // Size: 0x24

struct J3DTextureSRTInfo;
struct J3DModelData;
struct J3DMaterialTable;

class J3DAnmTextureSRTKey : public J3DAnmBase {
public:
    /* 80329E5C */ J3DAnmTextureSRTKey();
    /* 80329F14 */ void calcTransform(f32, u16, J3DTextureSRTInfo*) const;
    /* 8032B0C0 */ void searchUpdateMaterialID(J3DMaterialTable*);
    /* 8032B1D4 */ void searchUpdateMaterialID(J3DModelData*);

    /* 8032C198 */ virtual ~J3DAnmTextureSRTKey();
    /* 8032C220 */ virtual s32 getKind() const;

    void getTransform(u16 param_0, J3DTextureSRTInfo* pSRTInfo) const {
        calcTransform(getFrame(), param_0, pSRTInfo);
    }

private:
    /* 0x0C */ int field_0xc;
    /* 0x10 */ int field_0x10;
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u16 field_0x16;
    /* 0x18 */ u16 field_0x18;
    /* 0x1A */ u16 field_0x1a;
    /* 0x1C */ int field_0x1c;
    /* 0x20 */ int field_0x20;
    /* 0x24 */ int field_0x24;
    /* 0x28 */ u8 mUpdateTexMtxID[4];
    /* 0x2C */ u16 mUpdateMaterialID[2];
    /* 0x30 */ JUTNameTab field_0x30;
    /* 0x40 */ int field_0x40;
    /* 0x44 */ u16 field_0x44;
    /* 0x46 */ u16 field_0x46;
    /* 0x48 */ u16 field_0x48;
    /* 0x4A */ u16 field_0x4a;
    /* 0x4C */ int field_0x4c;
    /* 0x50 */ int field_0x50;
    /* 0x54 */ int field_0x54;
    /* 0x58 */ int field_0x58;
    /* 0x5C */ u8 field_0x5c[4];
    /* 0x60 */ u16 field_0x60[2];
    /* 0x64 */ JUTNameTab field_0x64;
    /* 0x74 */ u8 field_0x74[4];
    /* 0x78 */ u32 mTexMtxCalcType;
};  // Size: 0x7C

class J3DAnmTexPattern : public J3DAnmBase {
public:
    /* 8032AED8 */ J3DAnmTexPattern();
    /* 8032AF50 */ void getTexNo(u16, u16*) const;
    /* 8032B004 */ void searchUpdateMaterialID(J3DMaterialTable*);
    /* 8032B09C */ void searchUpdateMaterialID(J3DModelData*);

    /* 8032BD20 */ virtual ~J3DAnmTexPattern();
    /* 8032BD94 */ virtual s32 getKind() const;

private:
    /* 0x0C */ void* field_0xc;
    /* 0x10 */ void* mAnmTable;
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u16 mUpdateMaterialNum;
    /* 0x18 */ void* field_0x18;
    /* 0x1C */ JUTNameTab field_0x1c;
};  // Size: 0x2C

class J3DAnmTevRegKey : public J3DAnmBase {
public:
    /* 8032AE18 */ J3DAnmTevRegKey();
    /* 8032B1F8 */ void getTevColorReg(u16, _GXColorS10*) const;
    /* 8032B4BC */ void getTevKonstReg(u16, _GXColor*) const;
    /* 8032B780 */ void searchUpdateMaterialID(J3DMaterialTable*);
    /* 8032B87C */ void searchUpdateMaterialID(J3DModelData*);

    /* 8032BD9C */ virtual ~J3DAnmTevRegKey();
    /* 8032BE24 */ virtual s32 getKind() const;

private:
    /* 0x0C */ u16 mCRegUpdateMaterialNum;
    /* 0x0E */ u16 mKRegUpdateMaterialNum;
    /* 0x10 */ u16 field_0x10;
    /* 0x12 */ u16 field_0x12;
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u16 field_0x16;
    /* 0x18 */ u16 field_0x18;
    /* 0x1A */ u16 field_0x1a;
    /* 0x1C */ u16 field_0x1c;
    /* 0x1E */ u16 field_0x1e;
    /* 0x20 */ u16 mCRegUpdateMaterialID[20];
    /* 0x34 */ u16 mKRegUpdateMaterialID[20];
    /* 0x48 */ void* field_0x48;
    /* 0x4C */ void* field_0x4c;
    /* 0x50 */ int field_0x50;
    /* 0x54 */ int field_0x54;
    /* 0x58 */ int field_0x58;
    /* 0x5C */ int field_0x5c;
    /* 0x60 */ int field_0x60;
    /* 0x64 */ int field_0x64;
    /* 0x68 */ int field_0x68;
    /* 0x6C */ int field_0x6c;
};  // Size: 0x70

class J3DAnmColor : public J3DAnmBase {
public:
    /* 8032A828 */ J3DAnmColor();
    /* 8032A8A4 */ void searchUpdateMaterialID(J3DMaterialTable*);

    /* 8032BCAC */ virtual ~J3DAnmColor();
    /* 8032BF44 */ virtual bool getKind() const;
    /* 8032BF4C */ virtual void getColor(u16, _GXColor*) const;

    u16 getUpdateMaterialNum() const { return mUpdateMaterialNum; }
    bool isValidUpdateMaterialID(u16 id) const { return mUpdateMaterialID[id] != 0xFFFF; }
    u16 getUpdateMaterialID(u16 idx) const { return mUpdateMaterialID[idx]; }

private:
    /* 0x0C */ u16 field_0xc;
    /* 0x0E */ u16 field_0xe;
    /* 0x10 */ u16 field_0x10;
    /* 0x12 */ u16 field_0x12;
    /* 0x14 */ u16 mUpdateMaterialNum;
    /* 0x18 */ u16* mUpdateMaterialID;
    /* 0x1C */ JUTNameTab field_0x1c;
};  // Size: 0x2C

class J3DAnmColorKey : public J3DAnmColor {
public:
    /* 8032AB00 */ J3DAnmColorKey();

    /* 8032BE2C */ virtual ~J3DAnmColorKey();
    /* 8032BEB0 */ virtual s32 getKind() const;
    /* 8032AB54 */ virtual void getColor(u16, _GXColor*) const;

private:
    /* 0x2C */ int field_0x2c;
    /* 0x30 */ int field_0x30;
    /* 0x34 */ int field_0x34;
    /* 0x38 */ int field_0x38;
    /* 0x3C */ int field_0x3c;
};

class J3DAnmColorFull : public J3DAnmColor {
public:
    /* 8032AB00 */ J3DAnmColorFull();

    /* 8032BE2C */ virtual ~J3DAnmColorFull();
    /* 8032BEB0 */ virtual s32 getKind() const;
    /* 8032AB54 */ virtual void getColor(u16, _GXColor*) const;

private:
    /* 0x2C */ int field_0x2c;
    /* 0x30 */ int field_0x30;
    /* 0x34 */ int field_0x34;
    /* 0x38 */ int field_0x38;
    /* 0x3C */ int field_0x3c;
};

class J3DAnmVtxColor : public J3DAnmBase {
public:
    J3DAnmVtxColor();

    virtual ~J3DAnmVtxColor();
    virtual s32 getKind() const;
    virtual void getColor(u8, u16, _GXColor*) const;

private:
    /* 0x0C */ s16 mAnmTableNum[2];
    /* 0x10 */ int mAnmVtxColorIndexData[2];
};  // Size: 0x18

class J3DAnmVtxColorKey : public J3DAnmVtxColor {
public:
    /* 8032A4E0 */ J3DAnmVtxColorKey();

    /* 8032BF50 */ virtual ~J3DAnmVtxColorKey();
    /* 8032BFBC */ virtual s32 getKind() const;
    /* 8032A53C */ virtual void getColor(u8, u16, _GXColor*) const;

private:
    /* 0x18 */ int field_0x18[2];
};

class J3DAnmVtxColorFull : public J3DAnmVtxColor {
    /* 8032A30C */ J3DAnmVtxColorFull();

    /* 8032BFC4 */ virtual ~J3DAnmVtxColorFull();
    /* 8032C030 */ virtual s32 getKind() const;
    /* 8032A368 */ virtual void getColor(u8, u16, _GXColor*) const;

private:
    /* 0x18 */ int field_0x18[2];
};

class J3DAnmCluster : public J3DAnmBase {
public:
    /* 8032BCAC */ virtual ~J3DAnmCluster();
    /* 8032BF44 */ virtual s32 getKind() const;
    /* 8032BF4C */ virtual void getWeight(u16) const;

private:
    /* 0x0C */ f32* field_0xc;
};  // Size: 0x10

class J3DAnmClusterFull : public J3DAnmCluster {
public:
    /* 8032BCAC */ virtual ~J3DAnmClusterFull();
    /* 8032BF44 */ virtual s32 getKind() const;
    /* 8032BF4C */ virtual void getWeight(u16) const;

private:
    /* 0x10 */ int field_0x10;
};

class J3DAnmClusterKey : public J3DAnmCluster {
public:
    /* 8032C044 */ virtual ~J3DAnmClusterKey();
    /* 8032C0B0 */ virtual s32 getKind() const;
    /* 8032A218 */ virtual void getWeight(u16) const;

private:
    /* 0x10 */ int field_0x10;
};

class J3DFrameCtrl {
public:
    J3DFrameCtrl() { this->init(0); }
    void init(s16);
    BOOL checkPass(f32);
    void update();
    virtual ~J3DFrameCtrl() {}

    f32 getRate() const { return mRate; }
    f32 getFrame() const { return mFrame; }
    s16 getEnd() const { return mEnd; }
    u8 getAttribute() const { return mAttribute; }
    void setAttribute(u8 attr) { mAttribute = attr; }
    void setEnd(s16 end) { mEnd = end; }
    void setRate(f32 rate) { mRate = rate; }
    void setStart(s16 start) {
        mStart = start;
        mFrame = start;
    }
    void setFrame(f32 frame) { mFrame = frame; }
    void setLoop(s16 loop) { mLoop = loop; }
    bool checkState(u8 state) const { return mState & state; }

private:
    /* 0x04 */ u8 mAttribute;
    /* 0x05 */ u8 mState;
    /* 0x06 */ s16 mStart;
    /* 0x08 */ s16 mEnd;
    /* 0x0A */ s16 mLoop;
    /* 0x0C */ f32 mRate;
    /* 0x10 */ f32 mFrame;
};  // Size: 0x14

#endif /* J3DANIMATION_H */
