#ifndef D_A_E_MK_H
#define D_A_E_MK_H
#include "d/actor/d_a_e_db.h"
#include "d/actor/d_a_obj_pillar.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_msg_flow.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_mk_class
 * @brief Ook
 * 
 * @details 
 * 
*/

class e_mk_class {
public:
    enum e_mk_ACTION {
        ACT_WAIT,
        ACT_MOVE,
        ACT_SHOOT,
        ACT_YORO,
        ACT_DROP = 9,
        ACT_DAMAGE,
        ACT_S_DEMO = 20,
        ACT_E_DEMO = 30,
        ACT_R04_DEMO = 35,
    };

    /* 0x000 */ fopEn_enemy_c actor;
    /* 0x5AC */ request_of_phase_process_class phase;
    /* 0x5B4 */ s16 mode;
    /* 0x5B6 */ u8 arg0;
    /* 0x5B8 */ cXyz pos_target;
    /* 0x5C4 */ u8 field_0x5c4[0x5c8 - 0x5c4];
    /* 0x5C8 */ mDoExt_McaMorfSO* anm_p;
    /* 0x5CC */ int anm_no;
    /* 0x5D0 */ mDoExt_btpAnm* btp_p;
    /* 0x5D4 */ s16 field_0x5d4;
    /* 0x5D8 */ f32 btp_frame;
    /* 0x5DC */ mDoExt_McaMorf* crown_anm_p;
    /* 0x5E0 */ s8 field_0x5e0;
    /* 0x5E4 */ cXyz crown_shadow_pos;
    /* 0x5F0 */ csXyz field_0x5f0;
    /* 0x5F6 */ csXyz field_0x5f6;
    /* 0x5FC */ f32 field_0x5fc; 
    /* 0x600 */ f32 field_0x600;
    /* 0x604 */ f32 field_0x604;
    /* 0x608 */ J3DModel* boomerang_model;
    /* 0x60C */ s8 crown_status;
    /* 0x60D */ s8 boomerang_status;
    /* 0x60E */ s8 field_0x60e;
    /* 0x610 */ Z2CreatureEnemy sound;
    /* 0x6B4 */ s16 field_0x6b4;
    /* 0x6B6 */ s16 action;
    /* 0x6B8 */ f32 dist_to_pl;
    /* 0x6BC */ s16 angle_to_pl;
    /* 0x6BE */ s8 field_0x6be;
    /* 0x6C0 */ cXyz prev_pos;
    /* 0x6CC */ cXyz field_0x6cc;
    /* 0x6D8 */ f32 pos_y_trans_offset;
    /* 0x6DC */ cXyz pos_target_rate;
    /* 0x6E8 */ daPillar_c* prev_hasira;
    /* 0x6EC */ daPillar_c* hasira;
    /* 0x6F0 */ u32 shadow_key_1;
    /* 0x6F4 */ u32 shadow_key_2;
    /* 0x6F8 */ s8 field_0x6f8;
    /* 0x6FA */ s16 field_0x6fa;
    /* 0x6FC */ s16 timer[4];
    /* 0x704 */ s16 invulnerability_timer;
    /* 0x706 */ s8 tuba_timer;
    /* 0x707 */ s8 field_0x707;
    /* 0x708 */ fpc_ProcID boomerang_id;
    /* 0x70C */ e_db_class* db;
    /* 0x710 */ fpc_ProcID db_id_1;
    /* 0x714 */ fpc_ProcID db_id_2;
    /* 0x718 */ s8 field_0x718;
    /* 0x719 */ s8 field_0x719;
    /* 0x71A */ s8 unk_timer;
    /* 0x71B */ s8 set_smoke_flag;
    /* 0x71C */ s8 field_0x71c;
    /* 0x71D */ s8 first_hasira_flag;
    /* 0x71E */ s8 demo_hasira_flag;
    /* 0x720 */ dBgS_AcchCir acchcir;
    /* 0x760 */ dBgS_ObjAcch acch;
    /* 0x938 */ dCcU_AtInfo at_info;
    /* 0x95C */ dCcD_Stts stts;
    /* 0x998 */ dCcD_Sph sph;
    /* 0xAD0 */ dCcD_Sph tg_sph;
    /* 0xC08 */ u32 field_0xc08;
    /* 0xC0C */ u32 field_0xc0c;
    /* 0xC10 */ u32 field_0xc10;
    /* 0xC14 */ u32 field_0xc14;
    /* 0xC18 */ u32 bo_eno_1_prtcls[2];
    /* 0xC20 */ u32 bo_eno_0_prtcls[4];
    /* 0xC30 */ s16 demo_mode;
    /* 0xC32 */ s16 demo_sub_mode;
    /* 0xC34 */ s16 demo_cam_timer;
    /* 0xC38 */ cXyz cam_eye;
    /* 0xC44 */ cXyz cam_center;
    /* 0xC50 */ cXyz cam_eye_target;
    /* 0xC5C */ cXyz cam_center_target;
    /* 0xC68 */ cXyz field_0xc68;
    /* 0xC74 */ cXyz field_0xc74;
    /* 0xC80 */ f32 demo_cam_fovy;
    /* 0xC84 */ f32 field_0xc84;
    /* 0xC88 */ f32 field_0xc88;
    /* 0xC8C */ f32 field_0xc8c;
    /* 0xC90 */ f32 field_0xc90;
    /* 0xC94 */ u8 field_0xc94[0xc98 - 0xc94];
    /* 0xC98 */ f32 field_0xc98;
    /* 0xC9C */ f32 field_0xc9c;
    /* 0xCA0 */ s16 field_0xca0;
    /* 0xCA4 */ dMsgFlow_c msg_flow;
    /* 0xCF0 */ u8 field_0xcf0[0xcf5 - 0xcf0];
    /* 0xCF5 */ u8 hio_init;
};

STATIC_ASSERT(sizeof(e_mk_class) == 0xcf8);

#endif /* D_A_E_MK_H */
