#ifndef J2DANMLOADER_H
#define J2DANMLOADER_H

#include "JSystem/J2DGraph/J2DAnimation.h"
#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "dolphin/types.h"

struct J2DAnmLoaderDataBase {
    /* 80308A6C */ static void* load(void const*);
};

class J2DAnmLoader {
public:
    virtual void *load(void const*) = 0;
    virtual void setResource(J2DAnmBase*, void const*) = 0;
    /* 8030A410 */ virtual ~J2DAnmLoader() {}
};

struct J3DAnmTransformKeyData {
    /* 0x00 */ u8 _0[0x8];
    /* 0x08 */ u8 _8;
    /* 0x09 */ u8 _9;
    /* 0x0A */ s16 mFrameMax;
    /* 0x0C */ u16 _C;
    /* 0x0E */ u8 _E[0x14-0xE];
    /* 0x14 */ s32 mTableOffset;
    /* 0x18 */ s32 mScaleOffset;
    /* 0x1C */ s32 mRotationOffset;
    /* 0x20 */ s32 mTranslateOffset;

};
struct J3DAnmTextureSRTKeyData;
struct J3DAnmColorKeyData;
struct J3DAnmVtxColorKeyData;
struct J3DAnmTevRegKeyData;
struct J3DAnmTransformFullData;
struct J3DAnmColorFullData;
struct J3DAnmTexPatternFullData;
struct J3DAnmVisibilityFullData;
struct J3DAnmVtxColorFullData;

class J2DAnmKeyLoader_v15 : public J2DAnmLoader {
public:
    /* 80309290 */ J2DAnmKeyLoader_v15();
    /* 80309570 */ void readAnmTransform(J3DAnmTransformKeyData const*);
    /* 80309598 */ void setAnmTransform(J2DAnmTransformKey*, J3DAnmTransformKeyData const*);
    /* 80309634 */ void readAnmTextureSRT(J3DAnmTextureSRTKeyData const*);
    /* 8030965C */ void setAnmTextureSRT(J2DAnmTextureSRTKey*, J3DAnmTextureSRTKeyData const*);
    /* 80309848 */ void readAnmColor(J3DAnmColorKeyData const*);
    /* 80309870 */ void setAnmColor(J2DAnmColorKey*, J3DAnmColorKeyData const*);
    /* 8030995C */ void readAnmVtxColor(J3DAnmVtxColorKeyData const*);
    /* 80309984 */ void setAnmVtxColor(J2DAnmVtxColorKey*, J3DAnmVtxColorKeyData const*);
    /* 80309FDC */ void readAnmTevReg(J3DAnmTevRegKeyData const*);
    /* 8030A004 */ void setAnmTevReg(J2DAnmTevRegKey*, J3DAnmTevRegKeyData const*);

    /* 80309308 */ virtual void *load(void const*);
    /* 80309414 */ virtual void setResource(J2DAnmBase*, void const*);
    /* 803092AC */ virtual ~J2DAnmKeyLoader_v15();

    /* 0x04 */ void* _4;
};

class J2DAnmFullLoader_v15 : public J2DAnmLoader {
public:
    /* 80309CE8 */ J2DAnmFullLoader_v15();
    /* 80309D60 */ void readAnmTransform(J3DAnmTransformFullData const*);
    /* 80309D88 */ void setAnmTransform(J2DAnmTransformFull*, J3DAnmTransformFullData const*);
    /* 80309E1C */ void readAnmColor(J3DAnmColorFullData const*);
    /* 80309E44 */ void setAnmColor(J2DAnmColorFull*, J3DAnmColorFullData const*);
    /* 80309F10 */ void readAnmTexPattern(J3DAnmTexPatternFullData const*);
    /* 80309F38 */ void setAnmTexPattern(J2DAnmTexPattern*, J3DAnmTexPatternFullData const*);
    /* 8030A190 */ void readAnmVisibility(J3DAnmVisibilityFullData const*);
    /* 8030A1B8 */ void setAnmVisibility(J2DAnmVisibilityFull*, J3DAnmVisibilityFullData const*);
    /* 8030A234 */ void readAnmVtxColor(J3DAnmVtxColorFullData const*);
    /* 8030A25C */ void setAnmVtxColor(J2DAnmVtxColorFull*, J3DAnmVtxColorFullData const*);

    /* 80309A80 */ virtual void load(void const*);
    /* 80309B8C */ virtual void setResource(J2DAnmBase*, void const*);
    /* 80309D04 */ virtual ~J2DAnmFullLoader_v15();
};

#endif /* J2DANMLOADER_H */
