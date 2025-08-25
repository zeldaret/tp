#ifndef D_A_E_BS_H
#define D_A_E_BS_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

/**
 * @ingroup actors-enemies
 * @class e_bs_class
 * @brief Stalkin
 * 
 * @details 
 * 
 */
class e_bs_class {
public:
    /* 0x000 */ fopEn_enemy_c enemy;
    /* 0x5AC */ request_of_phase_process_class phase;
    /* 0x5B4 */ s16 mode;
    /* 0x5B6 */ u8 prm0;
    /* 0x5B7 */ u8 prm1;
    /* 0x5B8 */ u8 field_0x5B8[0x5C8 - 0x5B8];
    /* 0x5C8 */ s16 field_0x5c8;
    /* 0x5CC */ mDoExt_McaMorfSO* modelMorf;
    /* 0x5D0 */ int anm;
    /* 0x5D4 */ mDoExt_McaMorf* weponModelMorf;
    /* 0x5D8 */ Z2CreatureEnemy sound;
    /* 0x67C */ s16 counter;
    /* 0x67E */ s16 action;
    /* 0x680 */ f32 player_dist;
    /* 0x684 */ s16 angleY_to_player;
    /* 0x686 */ s16 angleX_to_player;
    /* 0x688 */ f32 pl_recognize_dist;
    /* 0x68C */ f32 appear_range;
    /* 0x690 */ f32 field_0x690;
    /* 0x694 */ s8 is_draw_shadow;
    /* 0x698 */ u32 shadowId;
    /* 0x69C */ s16 timers[4];
    /* 0x6A4 */ s16 invulnerabilityTimer;
    /* 0x6A6 */ s8 is_wep_attack;
    /* 0x6A7 */ s8 field_0x6a7;
    /* 0x6A8 */ s8 field_0x6a8;
    /* 0x6AA */ s16 field_0x6aa;
    /* 0x6AC */ s16 head_rot_y;
    /* 0x6AE */ s16 field_0x6ae;
    /* 0x6B0 */ s16 head_rot_z;
    /* 0x6B2 */ s16 field_0x6b2;
    /* 0x6B4 */ s16 field_0x6b4;
    /* 0x6B8 */ f32 field_0x6b8;
    /* 0x6BC */ s16 field_0x6bc;
    /* 0x6BE */ u8 field_0x6BE[0x6C8 - 0x6BE];
    /* 0x6C8 */ cXyz field_0x6c8;
    /* 0x6D4 */ u8 field_0x6D4[0x6D8 - 0x6D4];
    /* 0x6D8 */ dBgS_AcchCir acchcir;
    /* 0x718 */ dBgS_ObjAcch acch;
    /* 0x8F0 */ dCcD_Stts ccStts;
    /* 0x92C */ dCcD_Sph ccSph[2];
    /* 0xB9C */ dCcD_Sph atSph;
    /* 0xCD4 */ dCcU_AtInfo atInfo;
    /* 0xCF8 */ u8 HIOInit;
};

STATIC_ASSERT(sizeof(e_bs_class) == 0xcfc);

#endif /* D_A_E_BS_H */
