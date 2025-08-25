#ifndef D_A_E_SM2_H
#define D_A_E_SM2_H

#include "f_op/f_op_actor_mng.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

enum daE_SM2_TYPE {
    TYPE_GREEN,
    TYPE_RED,
    TYPE_BLUE,
    TYPE_YELLOW,
    TYPE_PURPLE,
    TYPE_RARE,
    TYPE_BLACK,
    TYPE_RANDOM,
};

enum daE_SM2_ACTION {
    ACTION_NORMAL_MOVE,
    ACTION_ATTACK,
    ACTION_COMBINE,

    ACTION_ROOF = 10,
    ACTION_WATER,

    ACTION_FAIL = 20,
};

/**
 * @ingroup actors-enemies
 * @class e_sm2_class
 * @brief Chuchu 2
 * 
 * @details 
 * 
 */
class e_sm2_class {
public:
    bool checkYellow() { return type == TYPE_YELLOW; }

    /* 0x000 */ fopEn_enemy_c enemy;
    /* 0x5AC */ request_of_phase_process_class phase;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B5 */ u8 field_0x5b5;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B7 */ u8 type;
    /* 0x5B8 */ int field_0x5b8;
    /* 0x5BC */ mDoExt_McaMorfSO* modelMorf;
    /* 0x5C0 */ mDoExt_invisibleModel invisModel;
    /* 0x5C8 */ mDoExt_btkAnm* pbtk;
    /* 0x5CC */ mDoExt_McaMorfSO* pieceModelMorf;
    /* 0x5D0 */ mDoExt_invisibleModel pieceInvisModel;
    /* 0x5D8 */ s8 isPiece;
    /* 0x5DC */ Z2CreatureEnemy sound;
    /* 0x680 */ s16 counter;
    /* 0x682 */ s16 action;
    /* 0x684 */ s16 mode;
    /* 0x686 */ s16 timers[3];
    /* 0x68C */ s16 invulernabilityTimer;
    /* 0x68E */ s16 combine_off_timer;
    /* 0x690 */ s16 angle_to_pl;
    /* 0x694 */ f32 dist_to_pl;
    /* 0x698 */ u8 field_0x698[0x6A4 - 0x698];
    /* 0x6A4 */ s16 field_0x6a4;
    /* 0x6A6 */ s16 field_0x6a6;
    /* 0x6A8 */ s8 field_0x6a8;
    /* 0x6A9 */ u8 field_0x6a9;
    /* 0x6AA */ u8 field_0x6aa;
    /* 0x6AC */ f32 field_0x6ac;
    /* 0x6B0 */ f32 field_0x6b0;
    /* 0x6B4 */ u32 shadowId;
    /* 0x6B8 */ f32 color_R;
    /* 0x6BC */ f32 color_G;
    /* 0x6C0 */ f32 color_B;
    /* 0x6C4 */ f32 color_alpha;
    /* 0x6C8 */ f32 field_0x6c8[8];
    /* 0x6E8 */ f32 field_0x6e8[8];
    /* 0x708 */ cXyz field_0x708[8];
    /* 0x768 */ csXyz field_0x768[8];
    /* 0x798 */ cXyz jnt_pos[8];
    /* 0x7F8 */ csXyz field_0x7f8[8];
    /* 0x828 */ s16 field_0x828;
    /* 0x82C */ f32 field_0x82c;
    /* 0x830 */ f32 field_0x830;
    /* 0x834 */ f32 size;
    /* 0x838 */ f32 field_0x838;
    /* 0x83C */ u8 sizetype;
    /* 0x83D */ u8 is_roof;
    /* 0x83E */ u8 field_0x83e;
    /* 0x83F */ s8 field_0x83f;
    /* 0x840 */ cXyz field_0x840;
    /* 0x84C */ csXyz field_0x84c;
    /* 0x854 */ dBgS_AcchCir acchcir;
    /* 0x894 */ dBgS_ObjAcch acch;
    /* 0xA6C */ dCcD_Stts ccStts;
    /* 0xAA8 */ dCcD_Sph ccSph[4];
    /* 0xF88 */ s8 field_0xf88;
    /* 0xF8C */ dCcU_AtInfo atInfo;
    /* 0xFB0 */ u32 field_0xfb0[4][2];
    /* 0xFD0 */ fpc_ProcID combine_actor_pid;
    /* 0xFD4 */ s8 field_0xfd4;
    /* 0xFD8 */ u32 field_0xfd8;
    /* 0xFDC */ u8 field_0xfdc[0xFF0 - 0xFDC];
};

STATIC_ASSERT(sizeof(e_sm2_class) == 0xff0);

#endif /* D_A_E_SM2_H */
