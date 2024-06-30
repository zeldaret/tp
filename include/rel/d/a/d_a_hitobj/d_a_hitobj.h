#ifndef D_A_HITOBJ_H
#define D_A_HITOBJ_H

#include "d/com/d_com_inf_game.h"

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
    /* 0x570 */ u8 field_0x570;
    /* 0x571 */ u8 field_0x571;
    /* 0x572 */ s16 field_0x572;
    /* 0x574 */ dCcD_Stts field_0x574;
    /* 0x5B0 */ dCcD_Sph field_0x5b0;
};

#endif /* D_A_HITOBJ_H */
