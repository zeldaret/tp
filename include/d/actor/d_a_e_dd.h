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
    // /* 0x5B7 */ u8 field_0x5b7;
    /* 0x5B8 */ dPath* mpPath;
    /* 0x5BC */ s8 field_0x5bc;
    /* 0x5BD */ s8 field_0x5bd;
    // /* 0x5BE */ u8 field_0x5be[0x5c0 - 0x5be];
    /* 0x5C0 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x5C4 */ Z2CreatureEnemy mSound;
    /* 0x668 */ mDoExt_brkAnm* mpBrkAnms[5];
    /* 0x67C */ int field_0x67c;
    /* 0x680 */ u8 field_0x680[0x684 - 0x680];
    /* 0x684 */ int mAnm;
    /* 0x688 */ s16 field_0x688;
    /* 0x68A */ s16 field_0x68a;
    /* 0x68C */ s16 field_0x68c;
    // /* 0x68E */ u8 field_0x68e[0x690 - 0x68e];
    /* 0x690 */ cXyz field_0x690;
    /* 0x69C */ s16 field_0x69c;
    /* 0x69E */ u8 field_0x69e[0x6a0 - 0x69e];
    /* 0x6A0 */ s16 field_0x6a0;
    /* 0x6A2 */ u8 field_0x6a2[0x6a4 - 0x6a2];
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
    // /* 0x6C2 */ u8 field_0x6c2[0x6c4 - 0x6c2];
    /* 0x6C4 */ f32 field_0x6c4;
    /* 0x6C8 */ u8 field_0x6c8[0x6d0 - 0x6c8];
    /* 0x6D0 */ s8 field_0x6d0;
    /* 0x6D1 */ s8 field_0x6d1;
    /* 0x6D2 */ u8 field_0x6d2;
    /* 0x6D3 */ s8 field_0x6d3;
    /* 0x6D4 */ s8 field_0x6d4;
    // /* 0x6D5 */ u8 field_0x6d5;
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
    /* 0xE68 */ u8 field_0xe68[0xe78 - 0xe68];
    /* 0xE78 */ u32 field_0xe78;
    /* 0xE7C */ u8 field_0xe7c[0xe90 - 0xe7c];
    /* 0xE90 */ u8 field_0xe90;
    // /* 0xE91 */ u8 field_0xe91[0xe94 - 0xe91];
};

STATIC_ASSERT(sizeof(e_dd_class) == 0xe94);

class daE_DD_HIO_c : public JORReflexible {
public:
    /* 806A226C */ daE_DD_HIO_c();
    /* 806A6D08 */ virtual ~daE_DD_HIO_c() {}

    /* ドドンゴ - Dodongo */
    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 basic_size;      // 基本サイズ - Basic Size
    /* 0x0C */ f32 walk_speed;      // 歩速度 - Walk Speed
    /* 0x10 */ f32 run_speed;       // 走速度 - Run Speed
    /* 0x14 */ f32 search_area;     // サーチエリア - Search Area
    /* 0x18 */ f32 flame_distance;  // 炎距離 - Flame Distance
    /* 0x1C */ f32 horned_head;     // 首曲角 - Horned Head
    /* 0x20 */ s16 flame_time;      // 炎時間 - Flame Time
    /* 0x24 */ f32 flame_mot_speed; // 炎モーション速 - Flame Motion Speed
};


#endif /* D_A_E_DD_H */
