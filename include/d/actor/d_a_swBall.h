#ifndef D_A_SWBALL_H
#define D_A_SWBALL_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-unsorted
 * @class daSwBall_c
 * @brief Switch Ball
 *
 * @details
 *
 */
class daSwBall_c : public fopAc_ac_c {
public:
    /* 80D4E054 */ BOOL checkArea_sub(fopAc_ac_c*);
    /* 80D4E194 */ BOOL checkArea();
    /* 80D4E248 */ void search_ball();
    /* 80D4E374 */ int Create();
    /* 80D4E42C */ int create();
    /* 80D4E494 */ int execute();
    /* 80D4E524 */ void actionRun();
    /* 80D4E6C4 */ void actionStop();
    /* 80D4E6C8 */ void PutCrrPos();
    /* 80D4E90C */ int _delete();

    u8 getArg0() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getArg1() { return fopAcM_GetParamBit(this, 8, 8); }
    u8 getSwbit() { return fopAcM_GetParamBit(this, 16, 8); }
    u8 getType() { return fopAcM_GetParamBit(this, 24, 4); }
    bool checkPullLBall() { return fopAcM_GetParamBit(this, 28, 2) == 0; }

private:
    /* 0x568 */ fpc_ProcID mBallIDs[8];
    /* 0x588 */ u8 mTimer;
    /* 0x589 */ u8 mAction;
    /* 0x58A */ u8 mMode;
    /* 0x58B */ u8 mIsBallCarry[8];
    /* 0x593 */ u8 field_0x593[8];
    /* 0x59C */ fpc_ProcID field_0x59c;
};

STATIC_ASSERT(sizeof(daSwBall_c) == 0x5a0);


#endif /* D_A_SWBALL_H */
