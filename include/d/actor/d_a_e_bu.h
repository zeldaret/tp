#ifndef D_A_E_BU_H
#define D_A_E_BU_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_path.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

/**
 * @ingroup actors-enemies
 * @class e_bu_class
 * @brief Bubble
 * 
 * @details 
 * 
 */
class e_bu_class {
public:
    /* 0x000 */ fopEn_enemy_c enemy;
    /* 0x5AC */ request_of_phase_process_class phase;
    /* 0x5B4 */ u8 prm0;
    /* 0x5B5 */ u8 prm1;
    /* 0x5B6 */ u8 type;
    /* 0x5B7 */ u8 pathNo;
    /* 0x5B8 */ s8 field_0x5b8;
    /* 0x5B9 */ s8 now_path_pntNo;
    /* 0x5BA */ s8 path_step;
    /* 0x5BC */ dPath* ppd;
    /* 0x5C0 */ mDoExt_McaMorfSO* modelMorf;
    /* 0x5C4 */ Z2CreatureEnemy sound;
    /* 0x668 */ int anm;
    /* 0x66C */ int anm_frame;
    /* 0x670 */ s16 lifetime;
    /* 0x672 */ s16 action;
    /* 0x674 */ s16 mode;
    /* 0x678 */ cXyz move_pos;
    /* 0x684 */ s16 angle_to_player;
    /* 0x688 */ f32 dist_to_player;
    /* 0x68C */ f32 pl_search_range;
    /* 0x690 */ f32 field_0x690;
    /* 0x694 */ f32 field_0x694;
    /* 0x698 */ f32 hit_speed;
    /* 0x69C */ s16 hit_rot;
    /* 0x69E */ csXyz field_0x69e;
    /* 0x6A4 */ s8 is_dead;
    /* 0x6A8 */ f32 field_0x6a8;
    /* 0x6AC */ s16 timers[4];
    /* 0x6B4 */ s16 invulnerabilityTimer;
    /* 0x6B6 */ s16 head_rot_y;
    /* 0x6B8 */ s16 field_0x6b8;
    /* 0x6BA */ s16 head_rot_x;
    /* 0x6BC */ s16 field_0x6bc;
    /* 0x6BE */ s16 jaw_rot;
    /* 0x6C0 */ cXyz field_0x6c0;
    /* 0x6CC */ dBgS_AcchCir acchcir;
    /* 0x70C */ dBgS_ObjAcch acch;
    /* 0x8E4 */ dCcD_Stts ccStts;
    /* 0x920 */ dCcD_Sph ccSph;
    /* 0xA58 */ dCcU_AtInfo atInfo;
    /* 0xA7C */ u32 field_0xa7c;
    /* 0xA80 */ u32 field_0xa80;
    /* 0xA84 */ u32 mtrl_emitter_id[4];
    /* 0xA94 */ u8 field_0xA94[0xAA0 - 0xA94];
    /* 0xAA0 */ u8 HIOInit;
};

STATIC_ASSERT(sizeof(e_bu_class) == 0xaa4);

#endif /* D_A_E_BU_H */
