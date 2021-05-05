#ifndef F_OP_ACTOR_H_
#define F_OP_ACTOR_H_

#include "SSystem/SComponent/c_sxyz.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/mtx/mtx.h"
#include "f_pc/f_pc_base.h"

struct JKRSolidHeap;

struct actor_place {
    cXyz mPosition;
    csXyz mAngle;
    u8 mRoomNo;
    u8 field_0x13;
};

class fopAc_ac_c : public base_process_class {
public:
    /* 0x0B8 */ u8 unk_0x0B8[0xF0 - 0xB8];
    /* 0x0F0 */ JKRSolidHeap* unk_0x0F0;
    /* 0x0F4 */ u8 unk_0x0F4[0x496 - 0xF4];
    /* 0x496 */ u8 unk_0x496;
    /* 0x497 */ u8 unk_0x497[0x499 - 0x497];
    /* 0x499 */ s8 unk_0x499;
    /* 0x49A */ u8 unk_0x49A[0x4A8 - 0x49A];
    /* 0x4A8 */ actor_place mOrig;
    /* 0x4BC */ actor_place mNext;
    /* 0x4D0 */ actor_place mCurrent;
    /* 0x4E4 */ csXyz mCollisionRot;
    /* 0x4EA */ u8 unk_0x4EA[0x4F8 - 0x4EA];
    /* 0x4F8 */ cXyz mSpeed;
    /* 0x504 */ Mtx* unk_0x504;
    /* 0x508 */ cXyz mCullMin;
    /* 0x514 */ cXyz mCullMax;
    /* 0x520 */ u8 unk_0x520[0xC];
    /* 0x52C */ f32 mSpeedF;
    /* 0x530 */ f32 mGravity;
    /* 0x534 */ f32 mMaxFallSpeed;

    /* 80018B64 */ fopAc_ac_c();
    /* 80018C8C */ ~fopAc_ac_c();

    static u8 stopStatus[4];

    const cXyz& getPosition() const { return mCurrent.mPosition; }
    const csXyz& getAngle() const { return mCurrent.mAngle; }
};  // Size: unknown

#endif