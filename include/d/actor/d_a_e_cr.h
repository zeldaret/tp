#ifndef D_A_E_CR_H
#define D_A_E_CR_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

/**
 * @ingroup actors-enemies
 * @class e_cr_class
 * @brief Bombskit
 * 
 * @details 
 * 
 */
class e_cr_class {
public:
    /* 0x000 */ fopEn_enemy_c enemy;
    /* 0x5AC */ request_of_phase_process_class phase;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B5 */ u8 field_0x5b5;
    /* 0x5B8 */ mDoExt_McaMorfSO* modelMorf;
    /* 0x5BC */ Z2CreatureEnemy sound;
    /* 0x660 */ int anm;
    /* 0x664 */ s16 lifetime;
    /* 0x666 */ s16 action;
    /* 0x668 */ s16 mode;
    /* 0x66A */ u8 field_0x66A[0x678 - 0x66A];
    /* 0x678 */ s16 angle_target;
    /* 0x67A */ u8 field_0x67A[0x67C - 0x67A];
    /* 0x67C */ s16 angle_to_pl;
    /* 0x680 */ f32 dist_to_pl;
    /* 0x684 */ s16 timers[4];
    /* 0x68C */ s16 invulnerabilityTimer;
    /* 0x68E */ s16 field_0x68e;
    /* 0x690 */ s8 field_0x690;
    /* 0x692 */ s16 field_0x692;
    /* 0x694 */ s16 head_rot;
    /* 0x696 */ s16 head_rot_target;
    /* 0x698 */ dBgS_AcchCir acchcir;
    /* 0x6D8 */ dBgS_ObjAcch acch;
    /* 0x8B0 */ dCcD_Stts ccStts;
    /* 0x8EC */ dCcD_Sph ccSph;
    /* 0xA24 */ dCcU_AtInfo atInfo;
    /* 0xA48 */ u32 field_0xa48;
    /* 0xA4C */ u32 field_0xa4c;
    /* 0xA50 */ u8 field_0xA50[0xA5C - 0xA50];
    /* 0xA5C */ u8 HIOInit;
};

STATIC_ASSERT(sizeof(e_cr_class) == 0xa60);

#endif /* D_A_E_CR_H */
