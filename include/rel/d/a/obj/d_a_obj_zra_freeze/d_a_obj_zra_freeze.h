#ifndef D_A_OBJ_ZRA_FREEZE_H
#define D_A_OBJ_ZRA_FREEZE_H

#include "SSystem/SComponent/c_phase.h"
#include "f_op/f_op_actor.h"

class daZraFreeze_c : public fopAc_ac_c {
public:
    /* 80D440B8 */ void setBaseMtx();
    /* 80D44124 */ BOOL chkActorInScreen();
    /* 80D442BC */ cPhs__Step Create();
    /* 80D4443C */ int CreateHeap();
    /* 80D444C0 */ void setHitodamaPrtcl();
    /* 80D44698 */ int Execute();
    /* 80D449E0 */ int Draw();
    /* 80D44A84 */ int Delete();

    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ Mtx mMtx;
    /* 0x5A4 */ s32 mTwilight;
    /* 0x5A8 */ u32 mParticleKey[2];
    /* 0x5B0 */ u8 field_0x5b0;
    /* 0x5B1 */ u8 field_0x5b1;
    /* 0x5B2 */ u8 field_0x5b2;
    /* 0x5B4 */ cXyz mMin;
    /* 0x5C0 */ cXyz mMax;
    /* 0x5CC */ s16 mEventId;
    /* 0x5CE */ u8 mMapToolId;
    /* 0x5CF */ u8 field_0x5cf;
    /* 0x5D0 */ cXyz mParticleOffset;
    /* 0x5DC */ s16 field_0x5dc;
    /* 0x5DE */ s16 field_0x5de;
};

STATIC_ASSERT(sizeof(daZraFreeze_c) == 0x5E0);

#endif /* D_A_OBJ_ZRA_FREEZE_H */
