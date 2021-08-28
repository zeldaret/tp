#ifndef D_METER_D_METER_HIO_H
#define D_METER_D_METER_HIO_H

#include "JSystem/JUtility.h"
#include "SSystem/SComponent/c_Xyz.h"
#include "SSystem/SComponent/c_sXyz.h"
#include "dolphin/types.h"

class dMeter_drawCollectHIO_c {
public:
    dMeter_drawCollectHIO_c();
    virtual ~dMeter_drawCollectHIO_c();

private:
    /* 0x00 */  // vtable
    /* 0x04 */ u8 field_0x04[4];
    /* 0x08 */ f32 mItemScaleSmall;
    /* 0x0C */ f32 mItemScaleLarge;
    /* 0x10 */ f32 mSaveOptionItemScaleSmall;
    /* 0x14 */ f32 mSaveOptionItemScaleLarge;
    /* 0x18 */ f32 mBlueFuzzPosX;
    /* 0x1C */ f32 mBlueFuzzPosY;
    /* 0x20 */ f32 mBlueFuzzScale;
    /* 0x24 */ f32 mBlueFuzzAlpha;
    /* 0x28 */ cXyz mMaskMirrorPos;
    /* 0x34 */ f32 mMaskMirrorScale;
    /* 0x38 */ f32 mMaskMirrorAnimation;
    /* 0x3C */ f32 mHeartVesselPosX;
    /* 0x40 */ f32 mHeartVesselPosY;
    /* 0x44 */ f32 mHeartVesselScale;
    /* 0x48 */ f32 mAButtonPosX;
    /* 0x4C */ f32 mAButtonPosY;
    /* 0x50 */ f32 mAButtonScale;
    /* 0x54 */ f32 mBButtonPosX;
    /* 0x58 */ f32 mBButtonPosY;
    /* 0x5C */ f32 mBButtonScale;
    /* 0x60 */ f32 mAButtonTextPosX;
    /* 0x64 */ f32 mAButtonTextPosY;
    /* 0x68 */ f32 mAButtonTextScale;
    /* 0x6C */ f32 mBButtonTextPosX;
    /* 0x70 */ f32 mBButtonTextPosY;
    /* 0x74 */ f32 mBButtonTextScale;
    /* 0x78 */ JUtility::TColor mBasBlack[2];  // ht_n_bas, h_kaz_n
    /* 0x80 */ JUtility::TColor mBasWhite[2];  // same as above
    /* 0x88 */ f32 mHeartPiecePosX;
    /* 0x8C */ f32 mHeartPiecePosY;
    /* 0x90 */ f32 mHeartPieceScale;
    /* 0x94 */ csXyz mMaskMirrorAngle;
    /* 0x9A */ bool field_0x9a;
    /* 0x9B */ bool mColorDebugON;
    /* 0x9C */ bool mButtonDebugON;
};  // Size = 0xA0

#endif /* D_METER_D_METER_HIO_H */
