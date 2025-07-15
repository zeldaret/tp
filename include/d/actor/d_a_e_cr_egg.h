#ifndef D_A_E_CR_EGG_H
#define D_A_E_CR_EGG_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

/**
 * @ingroup actors-enemies
 * @class e_cr_egg_class
 * @brief Bombskit Egg
 * 
 * @details 
 * 
 */
class e_cr_egg_class {
public:
    /* 0x000 */ fopEn_enemy_c enemy;
    /* 0x5AC */ request_of_phase_process_class phase;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B5 */ u8 field_0x5b5;
    /* 0x5B8 */ J3DModel* model;
    /* 0x5BC */ Z2Creature sound;
    /* 0x64C */ s16 lifetime;
    /* 0x64E */ s16 action;
    /* 0x650 */ s16 mode;
    /* 0x652 */ s16 timers[2];
    /* 0x656 */ s16 field_0x656;
    /* 0x658 */ u8 field_0x658[0x65C - 0x658];
    /* 0x65C */ dBgS_AcchCir acchcir;
    /* 0x69C */ dBgS_ObjAcch acch;
    /* 0x874 */ dCcD_Stts ccStts;
    /* 0x8B0 */ dCcD_Sph ccSph;
    /* 0x9E8 */ dCcU_AtInfo atInfo;
};

STATIC_ASSERT(sizeof(e_cr_egg_class) == 0xa0c);


#endif /* D_A_E_CR_EGG_H */
