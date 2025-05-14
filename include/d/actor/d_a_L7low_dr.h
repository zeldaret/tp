#ifndef D_A_L7LOW_DR_H
#define D_A_L7LOW_DR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-unsorted
 * @class daL7lowDr_c
 * @brief
 *
 * @details
 *
 */
class daL7lowDr_c : public fopAc_ac_c {
public:
    typedef void (daL7lowDr_c::*actionFn)();

    /* 805AA5F8 */ void setAction(actionFn);
    /* 805AA69C */ void action();
    /* 805AA748 */ int _delete();
    /* 805AA7B8 */ void mtx_set();
    /* 805AA828 */ void fly();
    /* 805AABF8 */ int execute();
    /* 805AAC5C */ int CreateHeap();
    /* 805AAD58 */ int create();
    /* 805AAEA8 */ int draw();

    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x574 */ Z2CreatureEnemy mSound;
    /* 0x618 */ u8 field_0x618[0x624 - 0x618];
    /* 0x624 */ actionFn mAction;
    /* 0x630 */ actionFn field_0x630;
    /* 0x63C */ int field_0x63c;
    /* 0x640 */ u16 field_0x640;
};

STATIC_ASSERT(sizeof(daL7lowDr_c) == 0x644);


#endif /* D_A_L7LOW_DR_H */
