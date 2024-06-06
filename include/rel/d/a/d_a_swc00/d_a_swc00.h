#ifndef D_A_SWC00_H
#define D_A_SWC00_H

#include "f_op/f_op_actor_mng.h"

class daSwc00_c : public fopAc_ac_c {
public:
public:
    /* 805A15FC */ int execute();
    /* 805A18E8 */ void event_proc_call();
    /* 805A19A4 */ void actionWait();
    /* 805A1A28 */ void actionOrderEvent();
    /* 805A1A94 */ void actionEvent();
    /* 805A1AF0 */ void actionDead();

private: 
    /* 0x568 */ cXyz field_0x568;
    /* 0x574 */ cXyz field_0x574;
    /* 0x580 */ u16 mEventID;
    /* 0x582 */ u8 mAction;
    /* 0x584 */ u8 field_0x584[4];
};

STATIC_ASSERT(sizeof(daSwc00_c) == 0x588);


#endif /* D_A_SWC00_H */
