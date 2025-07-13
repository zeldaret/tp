#ifndef D_A_OBJ_WOOD_STATUE_H
#define D_A_OBJ_WOOD_STATUE_H

#include "d/actor/d_a_itembase.h"
#include "d/d_particle.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjWStatue_c
 * @brief Wooden Statue
 *
 * @details
 *
 */
class daObjWStatue_c : public daItemBase_c {
public:
    typedef int (daObjWStatue_c::*demoFunc)();

    enum Status {
        STATUS_WAIT,
        STATUS_ORDER_GET_DEMO,
        STATUS_GET_DEMO,
        STATUS_SW_ON_WAIT,
        STATUS_BOOMERANG_CARRY,
    };

    /* 80D3A268 */ void initBaseMtx();
    /* 80D3A2A4 */ void setBaseMtx();
    /* 80D3A2F0 */ int Create();
    /* 80D3A474 */ int __CreateHeap();
    /* 80D3A47C */ int create();
    /* 80D3A8E8 */ void bg_check();
    /* 80D3AA3C */ int actionWaitInit();
    /* 80D3AA80 */ int actionWait();
    /* 80D3AB9C */ int initActionOrderGetDemo();
    /* 80D3AC64 */ int actionOrderGetDemo();
    /* 80D3ACAC */ int actionGetDemo();
    /* 80D3AD30 */ int actionInitSwOnWait();
    /* 80D3AD88 */ int actionSwOnWait();
    /* 80D3AE7C */ int actionInitBoomerangCarry();
    /* 80D3AF5C */ int actionBoomerangCarry();
    /* 80D3AFC0 */ void demoProc();
    /* 80D3B164 */ void effectSet();
    /* 80D3B250 */ void effectStop();
    /* 80D3B2A0 */ int execute();
    /* 80D3B428 */ int draw();
    /* 80D3B47C */ void setListStart();
    /* 80D3B480 */ int _delete();

    bool chkStatus(u8 status) { return mStatus == status; }
    void setStatus(u8 status) { mStatus = status; }
    u8 getSwbit2() { return fopAcM_GetParamBit(this, 8, 8); }

private:
    /* 0x92C */ fpc_ProcID mItemId;
    /* 0x930 */ int field_0x930;
    /* 0x934 */ int mStaffIdx;
    /* 0x938 */ u8 mStatus;
    /* 0x939 */ u8 mShouldBoundSEPlay;
    /* 0x93A */ u8 field_0x93a;
    /* 0x93B */ u8 mRespawnTimer;
    /* 0x93C */ cXyz field_0x93c;
    /* 0x948 */ s16 mEventIdx;
    /* 0x94A */ s16 mBoundSETimer;
    /* 0x94C */ dPa_followEcallBack mCallbacks[2];
};

STATIC_ASSERT(sizeof(daObjWStatue_c) == 0x974);


#endif /* D_A_OBJ_WOOD_STATUE_H */
