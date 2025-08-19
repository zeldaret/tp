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
    /* 0x686 */ u8 field_0x686[0x688 - 0x686];
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
    /* 0x6B0 */ u8 field_0x6b0;
    /* 0x6B1 */ u8 field_0x6b1[0x6b4 - 0x6b1];
    /* 0x6B4 */ dCcD_Stts mStts;
    /* 0x6F0 */ dCcD_Cyl field_0x6f0;
    /* 0x82C */ dCcD_Sph field_0x82c;
    /* 0x964 */ dCcU_AtInfo mAtInfo;
    /* 0x988 */ u8 field_0x988;
    /* 0x989 */ u8 field_0x989[0x98c - 0x989];
    /* 0x98C */ dBgS_AcchCir mAcchCir;
    /* 0x9CC */ dBgS_ObjAcch mObjAcch;
    /* 0xBA4 */ fpc_ProcID field_0xba4;
    /* 0xBA8 */ fpc_ProcID field_0xba8;
    /* 0xBAC */ u8 field_0xbac;
    /* 0xBAD */ s8 field_0xbad;
    /* 0xBAE */ u8 field_0xbae[0xbb0 - 0xbae];
    /* 0xBB0 */ cXyz field_0xbb0;
    /* 0xBBC */ u8 field_0xbbc[0xbc4 - 0xbbc];
    /* 0xBC4 */ u32 field_0xbc4[5];
    /* 0xBD8 */ u32 field_0xbd8[4];
    /* 0xBE8 */ u32 field_0xbe8;
    /* 0xBEC */ u8 field_0xbec[0xbfc - 0xbec];
    /* 0xBFC */ u8 field_0xbfc;
    /* 0xBFD */ u8 field_0xbfd[0xc00 - 0xbfd];
};

STATIC_ASSERT(sizeof(e_bi_class) == 0xc00);

class daE_BI_HIO_c : public JORReflexible {
public:
    /* 8068A5EC */ daE_BI_HIO_c();
    /* 8068D2DC */ virtual ~daE_BI_HIO_c() {}

    /* 爆弾虫 - Bomb Bug */
    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 basic_size;          // 基本サイズ - Basic Size
    /* 0x0C */ f32 search_range;        // サーチ範囲 - Search Range
    /* 0x10 */ f32 track_range;         // 追尾範囲 - Track Range
    /* 0x14 */ s16 time_to_get_going;   // 動き出すまでの時間 - Time To Get Going
    /* 0x18 */ f32 movement_spd;        // 移動速度 - Movement Speed
};


#endif /* D_A_E_BI_H */
