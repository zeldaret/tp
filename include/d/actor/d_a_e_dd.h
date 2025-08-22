#ifndef D_A_E_DD_H
#define D_A_E_DD_H
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_path.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_dd_class
 * @brief Dodongo
 * 
 * @details 
 * 
*/
class e_dd_class {
public:
    /* 0x000 */ fopEn_enemy_c actor;
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B5 */ u8 field_0x5b5;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B8 */ dPath* mpPath;
    /* 0x5BC */ s8 field_0x5bc;
    /* 0x5BD */ s8 field_0x5bd;
    /* 0x5C0 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x5C4 */ Z2CreatureEnemy mSound;
    /* 0x668 */ mDoExt_brkAnm* mpBrkAnms[5];
    /* 0x67C */ int field_0x67c;
    /* 0x680 */ u8 field_0x680[0x684 - 0x680];
    /* 0x684 */ int mAnm;
    /* 0x688 */ s16 field_0x688;
    /* 0x68A */ s16 mAction;
    /* 0x68C */ s16 field_0x68c;
    /* 0x690 */ cXyz field_0x690;
    /* 0x69C */ s16 field_0x69c;
    /* 0x69E */ u8 field_0x69e[0x6a0 - 0x69e];
    /* 0x6A0 */ s16 field_0x6a0;
    /* 0x6A4 */ f32 field_0x6a4;
    /* 0x6A8 */ s16 field_0x6a8;
    /* 0x6AA */ s16 field_0x6aa[4];
    /* 0x6B2 */ s16 field_0x6b2;
    /* 0x6B4 */ u32 mShadowKey;
    /* 0x6B8 */ s16 field_0x6b8;
    /* 0x6BA */ s16 field_0x6ba;
    /* 0x6BC */ s16 field_0x6bc;
    /* 0x6BE */ s16 field_0x6be;
    /* 0x6C0 */ s16 field_0x6c0;
    /* 0x6C4 */ f32 field_0x6c4;
    /* 0x6C8 */ u8 field_0x6c8[0x6d0 - 0x6c8];
    /* 0x6D0 */ s8 field_0x6d0;
    /* 0x6D1 */ s8 field_0x6d1;
    /* 0x6D2 */ u8 field_0x6d2;
    /* 0x6D3 */ s8 field_0x6d3;
    /* 0x6D4 */ s8 field_0x6d4;
    /* 0x6D6 */ csXyz field_0x6d6;
    /* 0x6DC */ cXyz field_0x6dc;
    /* 0x6E8 */ dBgS_AcchCir mAcchCir;
    /* 0x728 */ dBgS_ObjAcch mObjAcch;
    /* 0x900 */ dCcD_Stts mStts;
    /* 0x93C */ dCcD_Sph mFireSph;
    /* 0xA74 */ dCcD_Sph field_0xa74[3];
    /* 0xE1C */ dCcU_AtInfo mAtInfo;
    /* 0xE40 */ cXyz field_0xe40;
    /* 0xE4C */ cXyz field_0xe4c;
    /* 0xE58 */ s8 field_0xe58;
    /* 0xE59 */ s8 field_0xe59;
    /* 0xE5A */ s8 field_0xe5a;
    /* 0xE5B */ s8 field_0xe5b;
    /* 0xE5C */ f32 field_0xe5c;
    /* 0xE60 */ u32 field_0xe60;
    /* 0xE64 */ u32 field_0xe64;
    /* 0xE68 */ u32 field_0xe68[4];
    /* 0xE78 */ u32 field_0xe78;
    /* 0xE7C */ u32 field_0xe7c[2];
    /* 0xE84 */ u8 field_0xe84[0xe90 - 0xe84];
    /* 0xE90 */ u8 field_0xe90;
};

STATIC_ASSERT(sizeof(e_dd_class) == 0xe94);

#endif /* D_A_E_DD_H */
