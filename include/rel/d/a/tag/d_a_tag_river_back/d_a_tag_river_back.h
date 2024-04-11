#ifndef D_A_TAG_RIVER_BACK_H
#define D_A_TAG_RIVER_BACK_H

#include "d/a/d_a_player.h"
#include "d/com/d_com_inf_game.h"

class daTagRiverBack_c : public fopAc_ac_c {
public:
    enum act_e {
        WAIT_e,
        SCENE_CHG_e,
    };

    enum action_e {
        ACTION_WAIT_e,
        ACTION_ORDER_EVENT_e,
        ACTION_EVENT_e,
        ACTION_DEAD_e,
    };

    /* 80D5F2F8 */ int Create();
    /* 80D5F360 */ int create();
    /* 80D5F3F0 */ int execute();
    /* 80D5F48C */ void event_proc_call();
    /* 80D5F548 */ void actionWait();
    /* 80D5F5BC */ void actionOrderEvent();
    /* 80D5F66C */ void actionEvent();
    /* 80D5F70C */ void actionDead();
    /* 80D5F710 */ int demoProc();
    /* 80D5F88C */ int _delete();

    void setAction(u8 i_action) { mAction = i_action; }

    u8 getSwBit() { return fopAcM_GetParamBit(this, 8, 8); }

    u8 getSwBit2() { return fopAcM_GetParamBit(this, 0x10, 8); }

    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ u8 mTimer;
    /* 0x571 */ u8 mAction;
    /* 0x572 */ u8 mMapToolID;
    /* 0x574 */ s16 mEventID;
    /* 0x576 */ s16 mCount;
    /* 0x578 */ int mStaffID;
};

#endif /* D_A_TAG_RIVER_BACK_H */
