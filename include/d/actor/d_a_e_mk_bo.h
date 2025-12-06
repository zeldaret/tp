#ifndef D_A_E_MK_BO_H
#define D_A_E_MK_BO_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"
#include "d/d_bg_s_acch.h"

/**
 * @ingroup actors-enemies
 * @class e_mk_bo_class
 * @brief Ook's Boomerang
 * 
 * @details 
 * 
*/

class e_mk_bo_class {
public:
    /* 0x000 */ fopEn_enemy_c enemy;
    /* 0x5AC */ request_of_phase_process_class phase;
    /* 0x5B4 */ J3DModel* model;
    /* 0x5B8 */ Z2SoundObjSimple sound;
    /* 0x5D8 */ s16 counter;
    /* 0x5DA */ s16 action;
    /* 0x5DC */ s16 mode;
    /* 0x5E0 */ cXyz field_0x5e0;
    /* 0x5EC */ s16 field_0x5ec;
    /* 0x5EE */ s16 field_0x5ee;
    /* 0x5F0 */ f32 field_0x5f0;
    /* 0x5F4 */ s16 timers[2];
    /* 0x5F8 */ s16 field_0x5f8;
    /* 0x5FA */ s16 field_0x5fa;
    /* 0x5FC */ f32 field_0x5fc;
    /* 0x600 */ s8 field_0x600;
    /* 0x602 */ s16 field_0x602;
    /* 0x604 */ dBgS_AcchCir acchcir;
    /* 0x644 */ dBgS_ObjAcch acch;
    /* 0x81C */ dCcD_Stts ccStts;
    /* 0x858 */ dCcD_Sph ccAtSph;
    /* 0x990 */ u32 field_0x990;
    /* 0x994 */ u32 field_0x994;
    /* 0x998 */ s8 field_0x998;
    /* 0x99C */ u32 field_0x99c[2];
    /* 0x9A4 */ u32 field_0x9a4[4];
    /* 0x9B4 */ s8 field_0x9b4;
    /* 0x9B5 */ s8 field_0x9b5;
    /* 0x9B8 */ mDoExt_McaMorf* efModelMorf;
    /* 0x9BC */ mDoExt_btkAnm* pbtk;
};

STATIC_ASSERT(sizeof(e_mk_bo_class) == 0x9c0);


#endif /* D_A_E_MK_BO_H */
