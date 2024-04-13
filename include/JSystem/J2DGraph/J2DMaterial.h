#ifndef J2DMATERIAL_H
#define J2DMATERIAL_H

#include "JSystem/J2DGraph/J2DAnimation.h"
#include "JSystem/J2DGraph/J2DMatBlock.h"

/**
 * @ingroup jsystem-j2d
 * 
 */
class J2DMaterial {
public:
    struct J2DMaterialAnmPointer {
        /* 802EA79C */ J2DMaterialAnmPointer();

        /* 0x00 */ J2DAnmBase* field_0x0;
        /* 0x04 */ J2DAnmBase* field_0x4;
        /* 0x08 */ J2DAnmBase* field_0x8;
        /* 0x0C */ J2DAnmBase* field_0xc;
        /* 0x10 */ u16 field_0x10;
        /* 0x12 */ u16 field_0x12[8];
        /* 0x22 */ u16 field_0x22[8];
        /* 0x32 */ u16 field_0x32[4];
        /* 0x3A */ u16 field_0x3a[4];
    };  // Size: 0x44

    /* 802EA1AC */ J2DMaterial();
    /* 802EA38C */ void setGX();
    /* 802EA410 */ static J2DTevBlock* createTevBlock(int, bool);
    /* 802EA5C4 */ static J2DIndBlock* createIndBlock(int, bool);
    /* 802EA84C */ void makeAnmPointer();
    /* 802EA94C */ void setAnimation(J2DAnmTextureSRTKey*);
    /* 802EAA2C */ void setAnimation(J2DAnmTexPattern*);
    /* 802EAB0C */ void setAnimation(J2DAnmTevRegKey*);
    /* 802EA89C */ void setAnimation(J2DAnmColor*);
    /* 802EAC78 */ void animation();

    /* 802EA2CC */ virtual ~J2DMaterial();

    u16 getIndex() const { return mIndex; }
    J2DColorBlock* getColorBlock() { return &mColorBlock; }
    J2DTexGenBlock* getTexGenBlock() { return &mTexGenBlock; }
    J2DPEBlock* getPEBlock() { return &mPEBlock; }
    J2DTevBlock* getTevBlock() { return mTevBlock; }
    J2DIndBlock* getIndBlock() { return mIndBlock; }
    bool isVisible() const { return mVisible; }
    int getMaterialAlphaCalc() const { return mMaterialAlphaCalc; }

// private:
    /* 0x04 */ void* field_0x4;
    /* 0x08 */ int field_0x8;
    /* 0x0C */ u16 mIndex;
    /* 0x0E */ bool mVisible;
    /* 0x0F */ u8 mMaterialAlphaCalc;
    /* 0x10 */ J2DColorBlock mColorBlock;
    /* 0x28 */ J2DTexGenBlock mTexGenBlock;
    /* 0x70 */ J2DTevBlock* mTevBlock;
    /* 0x74 */ J2DIndBlock* mIndBlock;
    /* 0x78 */ J2DPEBlock mPEBlock;
    /* 0x84 */ J2DMaterialAnmPointer* mAnmPointer;
};

#endif /* J2DMATERIAL_H */
