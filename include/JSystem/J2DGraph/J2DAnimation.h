#ifndef J2DANIMATION_H
#define J2DANIMATION_H

#include "dolphin/gx/GXTexture.h"
#include "dolphin/types.h"

struct J3DTransformInfo;
struct J3DTextureSRTInfo;
class J2DScreen;

struct J2DAnmVtxColorKey {
    /* 8030B704 */ void getColor(u8, u16, _GXColor*) const;
    /* 8030CC20 */ ~J2DAnmVtxColorKey();
};

struct J2DAnmVtxColorFull {
    /* 8030B4C4 */ void getColor(u8, u16, _GXColor*) const;
    /* 8030CC8C */ ~J2DAnmVtxColorFull();
};

struct J2DAnmVisibilityFull {
    /* 8030C048 */ void getVisibility(u16, u8*) const;
};

struct J2DAnmTransformKey {
    /* 801959C0 */ ~J2DAnmTransformKey();
    /* 8030AAFC */ void calcTransform(f32, u16, J3DTransformInfo*) const;
    /* 8030CD7C */ void getTransform(u16, J3DTransformInfo*) const;
};

struct J2DAnmTransformFull {
    /* 8030A590 */ void getTransform(u16, J3DTransformInfo*) const;
    /* 8030CDAC */ ~J2DAnmTransformFull();
};

struct J2DAnmTextureSRTKey {
    /* 80184274 */ ~J2DAnmTextureSRTKey();
    /* 8030B9F0 */ void calcTransform(f32, u16, J3DTextureSRTInfo*) const;
    /* 8030BC60 */ void searchUpdateMaterialID(J2DScreen*);
};

struct J2DAnmTexPattern {
    struct J2DAnmTexPatternTIMGPointer {
        /* 8030CB2C */ J2DAnmTexPatternTIMGPointer();
        /* 8030CB3C */ ~J2DAnmTexPatternTIMGPointer();
    };

    /* 8030BD10 */ void searchUpdateMaterialID(J2DScreen*);
    /* 8030BEE8 */ void getTexNo(u16, u16*) const;
    /* 8030BF9C */ void getResTIMG(u16) const;
    /* 8030BFF0 */ void getPalette(u16) const;
    /* 8030CB90 */ ~J2DAnmTexPattern();
};

struct J2DAnmTevRegKey {
    /* 801841EC */ ~J2DAnmTevRegKey();
    /* 8030C0F0 */ void getTevColorReg(u16, _GXColorS10*) const;
    /* 8030C3B4 */ void getTevKonstReg(u16, _GXColor*) const;
    /* 8030C678 */ void searchUpdateMaterialID(J2DScreen*);
};

struct J2DAnmColorKey {
    /* 80239BE0 */ ~J2DAnmColorKey();
    /* 8030B200 */ void getColor(u16, _GXColor*) const;
};

struct J2DAnmColorFull {
    /* 8030AFC8 */ void getColor(u16, _GXColor*) const;
    /* 8030CCF8 */ ~J2DAnmColorFull();
};

struct J2DAnmColor {
    /* 801842FC */ ~J2DAnmColor();
    /* 802EB390 */ void getColor(u16, _GXColor*) const;
    /* 8030AF24 */ void searchUpdateMaterialID(J2DScreen*);
};

struct J2DAnmBase {
    /* 80053C94 */ ~J2DAnmBase();
    /* 800569B0 */ void searchUpdateMaterialID(J2DScreen*);
};

struct J2DAnmVtxColor {};

struct J2DAnmTransform {};

#endif /* J2DANIMATION_H */
