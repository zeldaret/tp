#ifndef D_A_OBJ_RW_H
#define D_A_OBJ_RW_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

/**
 * @ingroup actors-objects
 * @class obj_rw_class
 * @brief Wild Boar Roast
 *
 * @details
 *
 */
class obj_rw_class {
public:
    /* 0x000 */ fopEn_enemy_c enemy;
    /* 0x5AC */ request_of_phase_process_class phase;
    /* 0x5B4 */ J3DModel* model;
    /* 0x5B8 */ Z2CreatureEnemy sound;
    /* 0x65C */ u32 shadowId;
    /* 0x660 */ s16 field_0x660;
    /* 0x662 */ s16 action;
    /* 0x664 */ s16 mode;
    /* 0x666 */ s16 field_0x666[2];
    /* 0x66A */ s16 invulnerability_timer;
    /* 0x66C */ f32 field_0x66c;
    /* 0x670 */ s16 field_0x670;
    /* 0x672 */ s16 field_0x672;
    /* 0x674 */ s16 field_0x674;
    /* 0x678 */ dCcD_Stts ccStts;
    /* 0x6B4 */ dCcD_Sph ccSph[2];
    /* 0x924 */ dCcD_Cyl ccCyl[4];
    /* 0xE14 */ dCcU_AtInfo atInfo;
    /* 0xE38 */ s8 field_0xe38;
    /* 0xE39 */ u8 HIOInit;
};

STATIC_ASSERT(sizeof(obj_rw_class) == 0xe3c);

#endif /* D_A_OBJ_RW_H */
