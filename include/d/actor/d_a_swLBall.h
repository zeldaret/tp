#ifndef D_A_SWLBALL_H
#define D_A_SWLBALL_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-unsorted
 * @class daSwLBall_c
 * @brief Switch L Ball
 *
 * @details
 *
 */
class daSwLBall_c : public fopAc_ac_c {
public:
    enum Action {
        ACTION_INIT,
        ACTION_RUN,
        ACTION_STOP,
    };

    typedef void (daSwLBall_c::*actionFunc)();

    /* 80D4EB8C */ int checkArea_sub(fopAc_ac_c*);
    /* 80D4ECCC */ int checkArea();
    /* 80D4ED80 */ void search_lb();
    /* 80D4EEAC */ int Create();
    /* 80D4EEF8 */ int create();
    /* 80D4EF60 */ int execute();
    /* 80D4F008 */ void actionInit();
    /* 80D4F080 */ void actionRun();
    /* 80D4F220 */ void actionStop();
    /* 80D4F224 */ void PutCrrPos();
    /* 80D4F444 */ int _delete();

    u8 getType() { return fopAcM_GetParamBit(this, 24, 4); }
    u8 getArg0() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getArg1() { return fopAcM_GetParamBit(this, 8, 8); }
    u8 getSwbit() { return fopAcM_GetParamBit(this, 16, 8); }
    void setAction(Action action) { mAction = action; }
    int checkPullLBall() {
        return fopAcM_GetParamBit(this,28,2) == 0;
    }

private:
    /* 0x568 */ fpc_ProcID mProcIds[2];
    /* 0x570 */ u8 mRunTimer;
    /* 0x571 */ u8 mAction;
    /* 0x572 */ u8 field_0x572;
    /* 0x574 */ u8 mIsActorCarrying[2];
    /* 0x575 */ u8 mIsPulled[2];
};

STATIC_ASSERT(sizeof(daSwLBall_c) == 0x578);


#endif /* D_A_SWLBALL_H */
