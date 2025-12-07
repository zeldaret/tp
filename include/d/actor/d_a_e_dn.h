#ifndef D_A_E_DN_H
#define D_A_E_DN_H
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_jnt_col.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_dn_class
 * @brief Lizalfos
 * 
 * @details 
 * 
*/

class e_dn_class {
public:
    e_dn_class();
    
    /* 0x0000 */ fopEn_enemy_c actor;
    /* 0x05AC */ request_of_phase_process_class phase;
    /* 0x05B4 */ s16 mode;
    /* 0x05B6 */ u8 arg0;
    /* 0x05B7 */ u8 arg1;
    /* 0x05B8 */ u8 arg2;
    /* 0x05B9 */ u8 arg3;
    /* 0x05BC */ cXyz field_0x5bc;
    /* 0x05C8 */ cXyz field_0x5c8;
    /* 0x05D4 */ s16 cur_angle_y_target;
    /* 0x05D6 */ s16 field_0x5d6;
    /* 0x05D8 */ s8 field_0x5d8;
    /* 0x05DC */ mDoExt_McaMorfSO* anm_p;
    /* 0x05E0 */ int anm_no;
    /* 0x05E4 */ J3DModel* knife_model;
    /* 0x05E8 */ Z2CreatureEnemy sound;
    /* 0x068C */ J3DModel* tate_model;
    /* 0x0690 */ J3DModel* skull_model;
    /* 0x0694 */ s8 field_0x694;
    /* 0x0698 */ cXyz skull_trans;
    /* 0x06A4 */ cXyz field_0x6a4;
    /* 0x06B0 */ s16 skull_y_rot;
    /* 0x06B2 */ s16 skull_x_rot;
    /* 0x06B4 */ dJntCol_c jc;
    /* 0x06C4 */ s8 death_flag;
    /* 0x06C8 */ f32 color;
    /* 0x06CC */ s16 frame_counter;
    /* 0x06CE */ s16 action;
    /* 0x06D0 */ f32 pl_dir;
    /* 0x06D4 */ s16 search_angle_y;
    /* 0x06D6 */ s16 search_angle_x;
    /* 0x06D8 */ f32 pl_range;
    /* 0x06DC */ u32 shadow_key;
    /* 0x06E0 */ s16 timer[4];
    /* 0x06E8 */ s16 invulnerability_timer;
    /* 0x06EA */ s16 unk_timer_1;
    /* 0x06EC */ s16 unk_timer_2;
    /* 0x06EE */ s8 tail_at_sph_flag;
    /* 0x06EF */ s8 at_chk_flag;
    /* 0x06F0 */ s8 at_sph_center_flag;
    /* 0x06F1 */ s8 guard_flag;
    /* 0x06F2 */ s8 field_0x6f2;
    /* 0x06F3 */ s8 field_0x6f3;
    /* 0x06F4 */ s8 field_0x6f4;
    /* 0x06F6 */ s16 field_0x6f6;
    /* 0x06F8 */ s16 field_0x6f8;
    /* 0x06FA */ s16 field_0x6fa;
    /* 0x06FC */ s16 field_0x6fc;
    /* 0x06FE */ s16 field_0x6fe;
    /* 0x0700 */ s8 field_0x700;
    /* 0x0701 */ s8 field_0x701;
    /* 0x0704 */ f32 field_0x704;
    /* 0x0708 */ f32 field_0x708;
    /* 0x070C */ s16 field_0x70c;
    /* 0x070E */ s16 field_0x70e;
    /* 0x0710 */ s8 field_0x710;
    /* 0x0714 */ cXyz field_0x711;
    /* 0x0720 */ f32 cur_pos_y_offset;
    /* 0x0724 */ csXyz field_0x724;
    /* 0x072A */ csXyz field_0x72a;
    /* 0x0730 */ csXyz field_0x730;
    /* 0x0736 */ s8 unk_timer_3;
    /* 0x0737 */ s8 left_right_flag;
    /* 0x0738 */ cXyz find_pos;
    /* 0x0744 */ int learn;
    /* 0x0748 */ u8 field_0x748[0x74c - 0x748];
    /* 0x074C */ f32 field_0x74c;
    /* 0x0750 */ s16 field_0x750;
    /* 0x0754 */ f32 field_0x754;
    /* 0x0758 */ s16 field_0x758;
    /* 0x075C */ f32 field_0x75c;
    /* 0x0760 */ s16 field_0x760;
    /* 0x0762 */ csXyz field_0x762[11];
    /* 0x07A4 */ csXyz field_0x7a4[11];
    /* 0x07E8 */ f32 field_0x7e8;
    /* 0x07EC */ s16 field_0x7ec[2];
    /* 0x07F0 */ s16 jnt_waist_z_rot;
    /* 0x07F2 */ s16 jnt_arml1_z_rot_offset;
    /* 0x07F4 */ s16 jnt_arml2_z_rot_offset;
    /* 0x07F6 */ s16 jnt_armr1_z_rot_offset;
    /* 0x07FA */ s16 jnt_armr2_z_rot_offset;
    /* 0x07FA */ s16 jnt_legl1_y_rot;
    /* 0x07FC */ s16 field_0x7fc[3];
    /* 0x0802 */ s16 field_0x802[4];
    /* 0x080A */ s16 death_jnt_rot;
    /* 0x080C */ s16 death_jnt_rot_counter;
    /* 0x080E */ csXyz field_0x80e[4];
    /* 0x0826 */ s16 jnt_tail_y_rot_offset;
    /* 0x0828 */ s16 unk_timer_4;
    /* 0x082A */ s16 angle_y_offset;
    /* 0x082C */ s16 unk_counter_1;
    /* 0x082E */ s8 snap_angle_y_flag;
    /* 0x0830 */ csXyz field_0x830;
    /* 0x0836 */ csXyz field_0x836;
    /* 0x083C */ f32 field_0x83c;
    /* 0x0840 */ s16 unk_timer_5;
    /* 0x0842 */ s16 unk_counter_2;
    /* 0x0844 */ dBgS_AcchCir acchcir;
    /* 0x0884 */ dBgS_ObjAcch objacch;
    /* 0x0A5C */ f32 field_0xa5c;
    /* 0x0A60 */ dCcD_Stts stts;
    /* 0x0A9C */ dCcD_Sph cc_sph[3];
    /* 0x0E44 */ dCcD_Sph at_sph;
    /* 0x0F7C */ dCcD_Sph tate_sph;
    /* 0x10B4 */ dCcU_AtInfo at_info;
    /* 0x10D8 */ u8 status;
    /* 0x10D9 */ u8 hio_init;
    /* 0x10DA */ s8 unk_timer_6;
    /* 0x10DC */ u32 field_0x10dc;
    /* 0x10E0 */ u32 field_0x10e0;
    /* 0x10E4 */ s8 set_smoke_flag;
    /* 0x10E8 */ u32 field_0x10e8[2];
    /* 0x10F0 */ u32 field_0x10f0[2];
    /* 0x10F8 */ u32 dn_tail_blur_a_prtcl;
    /* 0x10FC */ u32 dn_tail_blur_b_prtcl;
    /* 0x1100 */ u8 field_0x1100[12];
};

STATIC_ASSERT(sizeof(e_dn_class) == 0x110c);

#endif /* D_A_E_DN_H */
