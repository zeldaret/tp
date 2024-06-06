#ifndef D_A_OBJ_TIMER_H
#define D_A_OBJ_TIMER_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjTimer
 * @brief Timer
 *
 * @details
 *
 */
class daObjTimer : public fopAc_ac_c {
public:
    class Act_c {
    public:
        struct Prm_e {};

        /* 80485198 */ void _create();
        /* 8048526C */ bool _delete();
        /* 80485274 */ void mode_wait_init();
        /* 80485284 */ void mode_wait();
        /* 804852E0 */ void mode_count_init();
        /* 80485324 */ void mode_count();
        /* 804854BC */ void _execute();
    };

private:
    /* 0x568 */ u8 field_0x568[0x574 - 0x568];
};

STATIC_ASSERT(sizeof(daObjTimer) == 0x574);

struct daObj {
public:
    template <typename A1>
    void PrmAbstract(/* ... */);
    /* 8048561C */ /* daObj::PrmAbstract<daObjTimer::Act_c::Prm_e> */
    void func_8048561C(void* _this, fopAc_ac_c const*, daObjTimer::Act_c::Prm_e,
                    daObjTimer::Act_c::Prm_e);
};

#endif /* D_A_OBJ_TIMER_H */
