#ifndef D_A_TAG_WATERFALL_H
#define D_A_TAG_WATERFALL_H

#include "f_op/f_op_actor_mng.h"

class daTagWaterFall_c : public fopAc_ac_c {
public:
    daTagWaterFall_c() {}

    /* 80D64680 */ int draw();
    /* 80D64724 */ f32 getEllipseY(f32);
    /* 80D64768 */ bool checkHitWaterFall(cXyz);
    /* 80D6486C */ bool checkHitWaterFallCamera();
    /* 80D648B4 */ int execute();
    /* 80D64AE0 */ int _delete();
    /* 80D64B20 */ cPhs__Step create();

private:
    /* 0x568 */ f32 mCylinderRadiusA;
    /* 0x56C */ f32 mCylinderRadiusB;
    /* 0x570 */ f32 mCylinderHeight;
    /* 0x574 */ f32 mFogNear;
    /* 0x578 */ f32 mFogFar;
    /* 0x57C */ f32 mColorBlend;
    /* 0x580 */ bool mPrevCameraInWaterfall;
    /* 0x581 */ u8 mFrameCountdown;
    /* 0x582 */ u8 mColpat;
    /* 0x583 */ u8 mIsMasterWaterfallTag;
};

struct daTagWaterFall_HIO_c {
public:
    /* 80D6462C */ daTagWaterFall_HIO_c();
    /* 80D64CDC */ virtual ~daTagWaterFall_HIO_c();

    /* 0x00 */ /* vtable */

    /* 0x04 */ s8 field_0x04;
    /* 0x05 */ bool mShouldModifyFog;
    /* 0x06 */ u8 pad0[2];
    /* 0x08 */ f32 mBaseFogNear;
    /* 0x0C */ f32 mBaseFogFar;
    /* 0x10 */ f32 mColorBlendStepDivisor;
    /* 0x14 */ u8 field_0x14;
    /* 0x15 */ u8 field_0x15;
    /* 0x16 */ u8 pad1[2];
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
};

#endif /* D_A_TAG_WATERFALL_H */