#ifndef D_A_B_GOS_H
#define D_A_B_GOS_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/cc/d_cc_d.h"
#include "d/cc/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

class b_gos_class : public fopEn_enemy_c {
public:
    /* 80605024 */ b_gos_class();

    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x5B8 */ Z2CreatureEnemy mSound;
    /* 0x65C */ int mAnmID;
    /* 0x660 */ u32 mJointIndex;
    /* 0x664 */ u8 field_0x664[0x668 - 0x664];
    /* 0x668 */ u32 mShadowKey;
    /* 0x66C */ s16 field_0x66c;
    /* 0x66E */ s16 mAction;
    /* 0x670 */ s16 mMode;
    /* 0x672 */ u8 field_0x672[0x680 - 0x672];
    /* 0x680 */ s16 mWalkDirection;
    /* 0x682 */ s16 mAngleToPlayer;
    /* 0x684 */ f32 mDistToPlayer;
    /* 0x688 */ u8 field_0x688[0x68C - 0x688];
    /* 0x68C */ s16 mTimers[4];
    /* 0x694 */ s16 field_0x694;
    /* 0x698 */ f32 field_0x698;
    /* 0x69C */ f32 field_0x69c;
    /* 0x6A0 */ s16 mAngleOffset;
    /* 0x6A4 */ dBgS_AcchCir mAcchCir;
    /* 0x6E4 */ dBgS_ObjAcch mAcch;
    /* 0x8BC */ dCcD_Stts mCcStts;
    /* 0x8F8 */ dCcD_Sph field_0x8f8;
    /* 0xA30 */ dCcD_Sph field_0xa30;
    /* 0xB68 */ dCcD_Cyl mCyl;
    /* 0xCA4 */ dCcU_AtInfo mAtInfo;
    /* 0xCC8 */ u8 field_0xcc8;
};

#endif /* D_A_B_GOS_H */
