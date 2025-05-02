#ifndef D_A_L7DEMO_DR_H
#define D_A_L7DEMO_DR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-unsorted
 * @class daDr_c
 * @brief
 *
 * @details
 *
 */
class daDr_c : public fopAc_ac_c {
public:
    typedef void (daDr_c::*actionFn)();

    /* 805A9238 */ void setAction(actionFn);
    /* 805A92DC */ void action();
    /* 805A9304 */ void mtx_set();
    /* 805A93D4 */ int draw();
    /* 805A9478 */ void wait();
    /* 805A963C */ void pl_walk();
    /* 805A9914 */ void pl_turn();
    /* 805A9A34 */ void bridge_destroy();
    /* 805A9D10 */ void bridge_destroy2();
    /* 805A9EE4 */ int execute();
    /* 805A9FFC */ int _delete();
    /* 805AA084 */ int CreateHeap();
    /* 805AA19C */ BOOL check_start();
    /* 805AA224 */ int create();

    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x574 */ Z2CreatureEnemy mSound;
    /* 0x618 */ cXyz field_0x618;
    /* 0x624 */ cXyz mDemoCamEye;
    /* 0x630 */ cXyz mDemoCamCenter;
    /* 0x63C */ actionFn mAction;
    /* 0x648 */ actionFn mPrevAction;
    /* 0x654 */ int field_0x654;
    /* 0x658 */ u8 mIsHide;
    /* 0x659 */ u8 mTimer;
    /* 0x65A */ u8 field_0x65a;
};

STATIC_ASSERT(sizeof(daDr_c) == 0x65c);


#endif /* D_A_L7DEMO_DR_H */
