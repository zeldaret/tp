#ifndef D_A_SET_BGOBJ_H
#define D_A_SET_BGOBJ_H

#include "d/d_com_inf_game.h"

/**
 * @ingroup actors-unsorted
 * @class daSetBgObj_c
 * @brief Set Background Object
 *
 * @details
 *
 */
class daSetBgObj_c : public fopAc_ac_c {
public:
    /* 80031870 */ static const char* getArcName(fopAc_ac_c*);
    /* 80485D78 */ int CreateInit();
    /* 80485DFC */ int create();
    /* 80485E88 */ int Delete();

    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ char mArcName[16];
};

#endif /* D_A_SET_BGOBJ_H */
