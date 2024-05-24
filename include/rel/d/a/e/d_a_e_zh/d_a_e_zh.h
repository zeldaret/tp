#ifndef D_A_E_ZH_H
#define D_A_E_ZH_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_ZH_c
 * @brief Zant Head
 * 
 * @details 
 * 
 */
class daE_ZH_c : public fopEn_enemy_c {
    /* 8082907C */ void draw();
    /* 808293A8 */ void setBck(int, u8, f32, f32);
    /* 80829454 */ void setActionMode(int, int);
    /* 80829570 */ void startDemoCheck();
    /* 80829658 */ void mBallBGCheck();
    /* 808298BC */ void mGateOpen();
    /* 808299F8 */ void mColorSet(bool, f32, f32);
    /* 80829AD8 */ void mReturnLineMove();
    /* 80829E44 */ void mBallBgLineCheck();
    /* 8082A01C */ void mSearchMove(u8);
    /* 8082A390 */ void mStartParticleSet();
    /* 8082A4C8 */ void mCutTypeCheck();
    /* 8082A534 */ void damage_check();
    /* 8082A88C */ void executeStartDemo();
    /* 8082ABDC */ void executeWait();
    /* 8082ACA8 */ void executeBallWait();
    /* 8082B284 */ void executeOpenStart();
    /* 8082B820 */ void executeSearchMove();
    /* 8082BA18 */ void executeBgHitSHMove();
    /* 8082BE20 */ void executeCatchMove();
    /* 8082C670 */ void executeCatchFlyMove();
    /* 8082CD34 */ void executeReturnDemo();
    /* 8082D154 */ void executeFlyDelete();
    /* 8082D2F0 */ void executeDamage();
    /* 8082D97C */ void executeDeadStop();
    /* 8082D9B0 */ void executeEntryCheck();
    /* 8082DB64 */ void tagAction();
    /* 8082DB84 */ void action();
    /* 8082DE18 */ void mtx_set();
    /* 8082DF44 */ void cc_set();
    /* 8082E2FC */ void execute();
    /* 8082E3E8 */ void _delete();
    /* 8082E4E4 */ void CreateHeap();
    /* 8082E730 */ void create();
    /* 8082ECEC */ daE_ZH_c();
        
private:
    /* 0x5ac */ u8 field_0x5ac[0xe08 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_ZH_c) == 0xe08);

class daE_ZH_HIO_c {
    /* 8082902C */ daE_ZH_HIO_c();
    /* 8082F160 */ ~daE_ZH_HIO_c();
};


#endif /* D_A_E_ZH_H */
