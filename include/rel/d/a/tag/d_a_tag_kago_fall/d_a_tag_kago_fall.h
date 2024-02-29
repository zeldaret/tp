#ifndef D_A_TAG_KAGO_FALL_H
#define D_A_TAG_KAGO_FALL_H

#include "d/msg/d_msg_flow.h"
#include "f_op/f_op_actor.h"
#include "dolphin/types.h"

class daTagKagoFall_c : public fopAc_ac_c {
public:
    /* 80D59C58 */ int create();
    /* 80D59DE0 */ int execute();
    /* 80D59E18 */ void setActionMode(u8, u8);
    /* 80D59E24 */ void actionWaitRiver();
    /* 80D5A218 */ void actionWaitFall();
    /* 80D5A67C */ int _delete();

    /* 0x568 */ dMsgFlow_c mMsgFlow;
    /* 0x5b4 */ Mtx mMtx;
    /* 0x5e4 */ cXyz mOriginalEye;
    /* 0x5f0 */ s16 field_0x5f0;
    /* 0x5f2 */ s16 field_0x5f2;
    /* 0x5f4 */ u8 field_0x5f4;
    /* 0x5f5 */ u8 mActionMode;
    /* 0x5f6 */ u8 mActionState;
    /* 0x5f7 */ u8 mExitId;
    /* 0x5f8 */ u8 mStartPoint;
    /* 0x5f9 */ u8 field_0x5f9;

};  // Size: 0x5fc

STATIC_ASSERT(sizeof(daTagKagoFall_c) == 0x5fc);

#endif /* D_A_TAG_KAGO_FALL_H */
