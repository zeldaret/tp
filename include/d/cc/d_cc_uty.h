#ifndef D_CC_D_CC_UTY_H
#define D_CC_D_CC_UTY_H

#include "d/com/d_com_inf_game.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

struct dCcU_AtInfo {
    /* 0x00 */ cCcD_Obj* mpCollider;
    /* 0x04 */ fopAc_ac_c* mpActor;
    /* 0x08 */ Z2Creature* mpSound;
    /* 0x0C */ u8 field_0xc[2];
    /* 0x0E */ s16 mHitDirection;
    /* 0x10 */ u8 field_0x10[4];
    /* 0x14 */ u32 mHitBit;
    /* 0x18 */ u32 field_0x18;
    /* 0x1C */ u16 mAttackPower;
    /* 0x1E */ u8 mPowerType;
    /* 0x1F */ s8 mHitStatus;  // maybe inaccurate name
    /* 0x20 */ u8 mHitType;
};

#endif /* D_CC_D_CC_UTY_H */
