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
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B5 */ u8 field_0x5b5;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B7 */ u8 field_0x5b7;
    /* 0x5B8 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x5BC */ Z2CreatureEnemy mSound;
    /* 0x660 */ f32 field_0x660;
    /* 0x664 */ int mAnm;
    /* 0x668 */ u32 mShadowKey;
    /* 0x66C */ s16 field_0x66c;
    /* 0x66E */ s16 mAction;
    /* 0x670 */ s16 field_0x670;
    /* 0x672 */ u8 field_0x672[0x680 - 0x672];
    /* 0x680 */ s16 field_0x680;
    /* 0x682 */ u8 field_0x682[0x684 - 0x682];
    /* 0x684 */ s16 field_0x684;
    /* 0x688 */ f32 field_0x688;
    /* 0x68C */ s16 field_0x68c[3];
    /* 0x692 */ s16 field_0x692;
    /* 0x694 */ s16 field_0x694;
    /* 0x696 */ s16 field_0x696;
    /* 0x698 */ s16 field_0x698;
    /* 0x69A */ u8 field_0x69a[0x6a2 - 0x69a];
    /* 0x6A2 */ s16 field_0x6a2;
    /* 0x6A4 */ s16 field_0x6a4;
    /* 0x6A6 */ s16 field_0x6a6;
    /* 0x6A8 */ f32 field_0x6a8;
    /* 0x6AC */ f32 field_0x6ac;
    /* 0x6B0 */ s8 field_0x6b0;
    /* 0x6B4 */ dCcD_Stts mStts;
    /* 0x6F0 */ dCcD_Cyl field_0x6f0;
    /* 0x82C */ dCcD_Sph field_0x82c;
    /* 0x964 */ dCcU_AtInfo mAtInfo;
    /* 0x988 */ u8 field_0x988;
    /* 0x98C */ dBgS_AcchCir mAcchCir;
    /* 0x9CC */ dBgS_ObjAcch mObjAcch;
    /* 0xBA4 */ fpc_ProcID field_0xba4;
    /* 0xBA8 */ fpc_ProcID field_0xba8;
    /* 0xBAC */ s8 field_0xbac;
    /* 0xBAD */ s8 field_0xbad;
    /* 0xBB0 */ cXyz field_0xbb0;
    /* 0xBBC */ u8 field_0xbbc[0xbc4 - 0xbbc];
    /* 0xBC4 */ u32 field_0xbc4[5];
    /* 0xBD8 */ u32 field_0xbd8[4];
    /* 0xBE8 */ u32 field_0xbe8;
    /* 0xBEC */ u8 field_0xbec[0xbfc - 0xbec];
    /* 0xBFC */ u8 field_0xbfc;
};

STATIC_ASSERT(sizeof(e_bi_class) == 0xc00);

#endif /* D_A_E_BI_H */
