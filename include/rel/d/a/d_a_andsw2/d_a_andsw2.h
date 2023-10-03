#ifndef D_A_ANDSW2_H
#define D_A_ANDSW2_H

#include "f_op/f_op_actor_mng.h"

class daAndsw2_c : public fopAc_ac_c {
public:
    enum Action_e {
        ACT_ON_ALL_e,
        ACT_TIMER_e,
        ACT_ORDER_e,
        ACT_EVENT_e,
        ACT_OFF_e,
        ACT_WAIT_e,
    };

    /* 804D5DF8 */ u8 getEventNo();
    /* 804D5E04 */ u8 getSwbit();
    /* 804D5E10 */ u8 getSwbit2();
    /* 804D5E1C */ u8 getType();
    /* 804D5E28 */ u8 getTimer();
    /* 804D5E34 */ u8 getNum();
    /* 804D5E40 */ u8 getTopSw();
    /* 804D5EB0 */ u8 getSwAns();
    /* 804D5EBC */ BOOL chkAllSw2();
    /* 804D5F64 */ bool chkSwStatus();
    /* 804D6024 */ bool chkSwStatus2();
    /* 804D60CC */ ~daAndsw2_c();
    /* 804D6120 */ int create();

    inline int execute();

    void setActio(u8 i_action) { mAction = i_action; }

    /* 0x568 */ s16 mTimer;
    /* 0x56A */ s16 mEventIdx;
    /* 0x56C */ u8 mAction;
};

#endif /* D_A_ANDSW2_H */
