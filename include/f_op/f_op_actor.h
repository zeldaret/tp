#ifndef F_OP_ACTOR_H_
#define F_OP_ACTOR_H_

#include "SSystem/SComponent/c_sxyz.h"
#include "SSystem/SComponent/c_xyz.h"
#include "f_pc/f_pc_base.h"

struct JKRSolidHeap;

class fopAc_ac_c : public base_process_class {
public:
    /* 0x0B8 */ u8 unk_0x0B8[0xF0 - 0xB8];
    /* 0x0F0 */ JKRSolidHeap* unk_0x0F0;
    /* 0x0F4 */ u8 unk_0x0F4[0x496 - 0xF4];
    /* 0x496 */ u8 unk_0x496;
    /* 0x497 */ u8 unk_0x497[0x499 - 0x497];
    /* 0x499 */ s8 unk_0x499;
    /* 0x497 */ u8 unk_0x49A[0x4D0 - 0x49A];
    /* 0x4D0 */ cXyz mPosition;
    /* 0x4DC */ csXyz mAngle;
    /* 0x4E2 */ s8 mRoomNo;
    /* 0x4E3 */ u8 unk_0x4E3[0x4E6 - 0x4E3];
    /* 0x4E6 */ s16 unk_0x4E6;
    /* 0x4E8 */ u8 unk_0x4E8[0x4F8 - 0x4E8];
    /* 0x4F8 */ cXyz mSpeed;
    /* 0x504 */ u8 unk_0x504[4];
    /* 0x508 */ cXyz mCullMin;
    /* 0x514 */ cXyz mCullMax;
    /* 0x520 */ u8 unk_0x520[0xC];
    /* 0x52C */ f32 mSpeedF;
    /* 0x530 */ f32 mGravity;
    /* 0x534 */ f32 mMaxFallSpeed;

    /* 80018B64 */ fopAc_ac_c();
    /* 80018C8C */ ~fopAc_ac_c();

    static u8 stopStatus[4];

    const cXyz& getPosition() const { return mPosition; }
    const csXyz& getAngle() const { return mAngle; }
};  // Size: unknown

#endif