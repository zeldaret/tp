#ifndef D_A_E_FS_H
#define D_A_E_FS_H

#include "Z2AudioLib/Z2Creature.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

/**
 * @ingroup actors-enemies
 * @class e_fs_class
 * @brief Wooden Puppet
 * 
 * @details 
 * 
 */
class e_fs_class {
public:
    /* 0x000 */ fopEn_enemy_c mEnemy;
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B5 */ u8 field_0x5b5;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B7 */ u8 field_0x5b7;
    /* 0x5B8 */ cXyz mPlayerPos;
    /* 0x5C4 */ s16 mTargetAngleY;
    /* 0x5C6 */ s16 mPlayerAngleY;
    /* 0x5C8 */ f32 mPlayerDistXZ;
    /* 0x5CC */ u8 field_0x5cc[0x5D0 - 0x5CC];
    /* 0x5D0 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x5D4 */ Z2CreatureEnemy mCreatureSound;
    /* 0x678 */ u32 mAnm;
    /* 0x67C */ s16 mFrameCounter;
    /* 0x67E */ s16 mAction;
    /* 0x680 */ s16 mMode;
    /* 0x684 */ u32 mShadowKey;
    /* 0x688 */ s16 mTimer[4];
    /* 0x690 */ s16 mIFrameTimer;
    /* 0x692 */ s8 field_0x692;
    /* 0x694 */ dBgS_AcchCir mAcchCir;
    /* 0x6D4 */ dBgS_ObjAcch mAcch;
    /* 0x8AC */ dCcD_Stts mCcStts;
    /* 0x8E8 */ dCcD_Cyl mCcCyl;
    /* 0xA24 */ dCcD_Sph mAtSph;
    /* 0xB5C */ dCcU_AtInfo mAtInfo;
    /* 0xB80 */ u32 mSmokeKey1;
    /* 0xB84 */ u32 mSmokeKey2;
    /* 0xB88 */ u32 mParticleKey[4];
    /* 0xB98 */ bool mHIOInit;

    enum Action {
        /* 0x0 */ ACT_APPEAR,
        /* 0x1 */ ACT_WAIT,
        /* 0x2 */ ACT_MOVE,
        /* 0x3 */ ACT_ATTACK,
        /* 0x4 */ ACT_DAMAGE,
        /* 0x5 */ ACT_END,
        /* 0xA */ ACT_DEMOWAIT = 10,
    };
};

STATIC_ASSERT(sizeof(e_fs_class) == 0xB9C);

#endif /* D_A_E_FS_H */
