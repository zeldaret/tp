#ifndef D_A_HITOBJ_H
#define D_A_HITOBJ_H

#include "d/d_com_inf_game.h"

/**
 * @ingroup actors-unsorted
 * @class hitobj_class
 * @brief Hit Object?
 *
 * @details
 *
*/

class hitobj_class : public fopAc_ac_c {
public:
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ u8 arg0;
    /* 0x572 */ s16 mTimer;
    /* 0x574 */ dCcD_Stts mStts;
    /* 0x5B0 */ dCcD_Sph mSph;
};

#endif /* D_A_HITOBJ_H */
