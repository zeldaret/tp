#ifndef D_A_E_BI_H
#define D_A_E_BI_H
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_bi_class
 * @brief Bomb Insect
 * 
 * @details 
 * 
*/

class e_bi_class {
public:
    /* 0x000 */ fopEn_enemy_c actor;
    /* 0x5AC */ request_of_phase_process_class phase;
    /* 0x5B4 */ u8 arg0;
    /* 0x5B5 */ u8 arg1;
    /* 0x5B6 */ u8 arg2;
    /* 0x5B7 */ u8 field_0x5b7;
    /* 0x5B8 */ mDoExt_McaMorfSO* anm_p;
    /* 0x5BC */ Z2CreatureEnemy sound;
    /* 0x660 */ f32 disap_time;
    /* 0x664 */ int anm_no;
    /* 0x668 */ u32 shadow_key;
    /* 0x66C */ s16 counter;
    /* 0x66E */ s16 action;
    /* 0x670 */ s16 mode;
    /* 0x672 */ u8 field_0x672[0x680 - 0x672];
    /* 0x680 */ s16 target;
    /* 0x682 */ u8 field_0x682[0x684 - 0x682];
    /* 0x684 */ s16 target_angle;
    /* 0x688 */ f32 dis;
    /* 0x68C */ s16 timer[3];
    /* 0x692 */ s16 damage_time;
    /* 0x694 */ s16 ignition_time;
    /* 0x696 */ s16 field_0x696;
    /* 0x698 */ s16 field_0x698;
    /* 0x69A */ u8 field_0x69a[0x6a2 - 0x69a];
    /* 0x6A2 */ s16 field_0x6a2;
    /* 0x6A4 */ s16 field_0x6a4;
    /* 0x6A6 */ s16 field_0x6a6;
    /* 0x6A8 */ f32 field_0x6a8;
    /* 0x6AC */ f32 water_offset;
    /* 0x6B0 */ s8 leaf_id;
    /* 0x6B4 */ dCcD_Stts Stts;
    /* 0x6F0 */ dCcD_Cyl cc_cyl;
    /* 0x82C */ dCcD_Sph at_sph;
    /* 0x964 */ dCcU_AtInfo at_info;
    /* 0x988 */ u8 field_0x988;
    /* 0x98C */ dBgS_AcchCir AcchCir;
    /* 0x9CC */ dBgS_ObjAcch ObjAcch;
    /* 0xBA4 */ fpc_ProcID child_no;
    /* 0xBA8 */ fpc_ProcID fw_id;
    /* 0xBAC */ s8 field_0xbac;
    /* 0xBAD */ s8 ride_time;
    /* 0xBB0 */ cXyz field_0xbb0;
    /* 0xBBC */ u8 field_0xbbc[0xbc4 - 0xbbc];
    /* 0xBC4 */ u32 ex_eff[5];
    /* 0xBD8 */ u32 w_eff[4];
    /* 0xBE8 */ u32 field_0xbe8;
    /* 0xBEC */ u8 field_0xbec[0xbfc - 0xbec];
    /* 0xBFC */ u8 hio_init;
};

STATIC_ASSERT(sizeof(e_bi_class) == 0xc00);

#endif /* D_A_E_BI_H */
