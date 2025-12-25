#ifndef D_A_NPC_HENNA_H
#define D_A_NPC_HENNA_H

#include "JSystem/JHostIO/JORReflexible.h"
#include "SSystem/SComponent/c_phase.h"
#include "d/d_msg_flow.h"
#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-npcs
 * @class npc_henna_class
 * @brief Hena
 *
 * @details
 *
 */
class npc_henna_class {
public:
    /* 0x0   */ fopEn_enemy_c actor;
    /* 0x5AC */ request_of_phase_process_class phase;
    /* 0x5B4 */ u8 arg0;
    /* 0x5B5 */ s8 talk_mode;
    /* 0x5B6 */ s8 field_0x5b6;
    /* 0x5B8 */ s16 talk_check;
    /* 0x5BA */ s16 field_0x5ba;
    /* 0x5BC */ s16 du_talk_ct;
    /* 0x5BE */ s16 field_0x5be;
    /* 0x5C0 */ dMsgFlow_c msg_flow;
    /* 0x60C */ u8 field_0x60c[0x618 - 0x60c];
    /* 0x618 */ s16 start_pya;
    /* 0x61C */ f32 dis;
    /* 0x620 */ s16 target_angle;
    /* 0x624 */ mDoExt_McaMorf* anm_p;
    /* 0x628 */ mDoExt_btkAnm* btk[3];
    /* 0x634 */ mDoExt_btpAnm* btp[3];
    /* 0x640 */ u8 field_0x640[0x654 - 0x640];
    /* 0x654 */ s32 btk_no;
    /* 0x658 */ s32 btp_no;
    /* 0x65C */ s32 res_id;
    /* 0x660 */ s16 paddle_time;
    /* 0x662 */ s16 anm_time;
    /* 0x664 */ s32 field_0x664;
    /* 0x668 */ mDoExt_bckAnm* bck[8];
    /* 0x688 */ s32 bck_no;
    /* 0x68C */ J3DModel* model;
    /* 0x690 */ s16 rod_curv_z;
    /* 0x692 */ s8 rod_hold_flag;
    /* 0x693 */ s8 rod_draw_flag;
    /* 0x694 */ s8 hide_body_flag;
    /* 0x698 */ f32 anm_speed;
    /* 0x69C */ f32 anm_frame;
    /* 0x6A0 */ s16 counter;
    /* 0x6A2 */ s16 action;
    /* 0x6A4 */ s16 mode;
    /* 0x6A6 */ s16 mouth_time;
    /* 0x6A8 */ u8 field_0x6a8[0x6ac - 0x6a8];
    /* 0x6AC */ f32 head_rotY;
    /* 0x6B0 */ s16 head_rotX;
    /* 0x6B2 */ u8 field_0x6b2[0x6b6 - 0x6b2];
    /* 0x6B6 */ s16 eye_rot;
    /* 0x6B8 */ u8 field_0x6b8[0x6ba - 0x6b8];
    /* 0x6BA */ s16 blink_time;
    /* 0x6BC */ s16 field_0x6bc;
    /* 0x6BE */ s16 field_0x6be;
    /* 0x6C0 */ s16 field_0x6c0;
    /* 0x6C2 */ s16 field_0x6c2;
    /* 0x6C4 */ s16 field_0x6c4;
    /* 0x6C6 */ u8 field_0x6c6[0x6f2 - 0x6c6];
    /* 0x6F2 */ s16 field_0x6f2;
    /* 0x6F4 */ u8 field_0x6f4[0x704 - 0x6f4];
    /* 0x704 */ s16 field_0x704;
    /* 0x706 */ s16 field_0x706;
    /* 0x708 */ u8 field_0x708;
    /* 0x709 */ u8 busy_time;
    /* 0x70A */ u8 fade_time;
    /* 0x70B */ u8 fade_type;
    /* 0x70C */ s8 field_0x70c;
    /* 0x70D */ s8 field_0x70d;
    /* 0x70E */ s16 step_angle;
    /* 0x710 */ s16 look_time;
    /* 0x714 */ cXyz target_pos;
    /* 0x720 */ cXyz look_pos;
    /* 0x72C */ f32 field_0x72c;
    /* 0x730 */ f32 field_0x730;
    /* 0x734 */ u8 no_draw;
    /* 0x738 */ f32 rain_time;
    /* 0x73C */ s16 timer[10];
    /* 0x750 */ s16 talk_time;
    /* 0x752 */ s16 demo_mode;
    /* 0x754 */ s16 demo_camera_no;
    /* 0x756 */ u16 field_0x756;
    /* 0x758 */ s16 field_0x758;
    /* 0x75A */ u8 field_0x75a[0x75c - 0x75a];
    /* 0x75C */ s16 field_0x75c;
    /* 0x760 */ cXyz demo_eye;
    /* 0x76C */ cXyz demo_way;
    /* 0x778 */ cXyz field_0x778;
    /* 0x784 */ cXyz demo_morf;
    /* 0x790 */ cXyz field_0x790;
    /* 0x79C */ cXyz field_0x79c;
    /* 0x7A8 */ cXyz zoom_pos;
    /* 0x7B4 */ u8 look_mode;
    /* 0x7B5 */ u8 field_0x7b5;
    /* 0x7B6 */ u8 zoom_time;
    /* 0x7B7 */ u8 talk_ct;
    /* 0x7B8 */ u8 msg_time;
    /* 0x7B9 */ u8 field_0x7b9;
    /* 0x7BA */ u8 demo_time;
    /* 0x7BC */ f32 demo_zoom;
    /* 0x7C0 */ f32 cam_spd;
    /* 0x7C4 */ f32 field_0x7c4;
    /* 0x7C8 */ u8 field_0x7c8[0x7cc - 0x7c8];
    /* 0x7CC */ u32 field_0x7cc;
    /* 0x7D0 */ u8 field_0x7d0[0x7d4 - 0x7d0];
    /* 0x7D4 */ u8 wait_time;
    /* 0x7D5 */ u8 du_near_time;
    /* 0x7D6 */ u8 du_talk_flag;
    /* 0x7D7 */ u8 field_0x7d7;
    /* 0x7D8 */ u8 field_0x7d8[0x7e1 - 0x7d8];
    /* 0x7E1 */ s8 ride_flag;
    /* 0x7E4 */ fpc_ProcID boat_id;
    /* 0x7E8 */ u8 field_0x7e8[0x7f8 - 0x7e8];
    /* 0x7F8 */ u8 hio_set;
};

STATIC_ASSERT(sizeof(npc_henna_class) == 0x7fc);

#endif /* D_A_NPC_HENNA_H */
