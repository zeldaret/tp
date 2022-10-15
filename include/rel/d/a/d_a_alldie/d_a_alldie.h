#ifndef D_A_ALLDIE_H
#define D_A_ALLDIE_H

#include "f_op/f_op_actor.h"

class daAlldie_c : public fopAc_ac_c {
public:
    enum EAction {
        /* 0x0 */ ACT_WAIT,
        /* 0x1 */ ACT_CHECK,
        /* 0x2 */ ACT_TIMER,
        /* 0x3 */ ACT_ORDER,
        /* 0x4 */ ACT_NEXT,
        /* 0x5 */ ACT_EVENT,
    };

    /* 804D5818 */ u8 getEventNo();
    /* 804D5824 */ u8 getSwbit();
    /* 804D5830 */ int actionWait();
    /* 804D5838 */ int actionCheck();
    /* 804D5888 */ int actionTimer();
    /* 804D5938 */ int actionOrder();
    /* 804D59A0 */ int actionEvent();
    /* 804D5A44 */ int actionNext();
    /* 804D5B10 */ int execute();

    inline int create();

    /* 0x568 */ u8 mAction;
    /* 0x56A */ s16 mTimer;
    /* 0x56C */ s16 mEventIdx;
    /* 0x56E */ s16 mNextEventIdx;
    /* 0x570 */ s16 mMapToolID;
};  // Size: 0x574

#endif /* D_A_ALLDIE_H */
