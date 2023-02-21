#ifndef D_A_E_YK_H
#define D_A_E_YK_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"
#include "d/cc/d_cc_uty.h"

enum daEYK_Action {
    ACT_ROOF,
    ACT_FIGHT_FLY,
    ACT_FIGHT,
    ACT_ATTACK,
    ACT_RETURN,
    ACT_FLY,
    ACT_PATH_FLY,
    ACT_CHANCE = 10,
    ACT_WOLFBITE = 13,
    ACT_WIND
};

class daE_YK_HIO_c {
public:
    /* 8080482C */ daE_YK_HIO_c();
    /* 808077E0 */ virtual ~daE_YK_HIO_c();

    /* 0x00 */ // vtable
    /* 0x04 */ s8 field_0x04;
    /* 0x05 */ u8 field_0x05[3]; // padding
    /* 0x08 */ f32 field_0x08;
    /* 0x0C */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
};

class e_yk_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ u8 field_0x5b4[8];
    /* 0x5BC */ dPath* mpPath;
    /* 0x5C0 */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0x5C4 */ Z2CreatureEnemy mCreature;
    /* 0x668 */ int mResIdx;
    /* 0x66C */ s16 field_0x66c;
    /* 0x66E */ s16 mAction;
    /* 0x670 */ u16 field_0x670;
    /* 0x672 */ u8 field_0x672[2];
    /* 0x674 */ cXyz field_0x674;
    /* 0x680 */ s16 mAngleFromPlayer;
    /* 0x682 */ u8 field_0x682[2];
    /* 0x684 */ f32 mDistanceXZFromPlayer;
    /* 0x688 */ u8 field_0x688[4];
    /* 0x68C */ f32 field_0x68c;
    /* 0x690 */ u8 field_0x690[4];
    /* 0x694 */ f32 field_0x694;
    /* 0x698 */ s16 field_0x698;
    /* 0x69A */ csXyz field_0x69a;
    /* 0x6A0 */ s8 field_0x6a0;
    /* 0x6A1 */ u8 field_0x6a1;
    /* 0x6A2 */ s16 field_0x6a2;
    /* 0x6A4 */ u8 field_0x6a4[6];
    /* 0x6AA */ s16 field_0x6aa;
    /* 0x6AC */ s16 field_0x6ac[12];
    // /* 0x6B8 */ f32 field_0x6b8;
    // /* 0x6BC */ f32 field_0x6bc;
    // /* 0x6C0 */ f32 field_0x6c0;
    /* 0x6C4 */ s16 field_0x6c4;
    /* 0x6C6 */ u8 field_0x6c6[2];
    /* 0x6C8 */ dBgS_AcchCir field_0x6c8;
    /* 0x708 */ dBgS_ObjAcch field_0x708;
    /* 0x8E0 */ dCcD_Stts field_0x8e0;
    /* 0x91C */ dCcD_Sph mCollisionSphere;
    /* 0xA54 */ dCcU_AtInfo field_0xa54;
    /* 0xA78 */ u8 field_0xa58[0xa80 - 0xa78];
    /* 0xA80 */ u32 field_0xa80;
    /* 0xA84 */ u8 field_0xa84[8];
    /* 0xA8C */ u8 field_0xa8c;
    /* 0xA8D */ u8 field_0xa8d[3]; // padding
};

// size: 0xA90

#endif /* D_A_E_YK_H */
