#ifndef D_CC_D_CC_UTY_H
#define D_CC_D_CC_UTY_H

#include "d/com/d_com_inf_game.h"

class fopAc_ac_c;

enum dCcU_AtType {
    /* 0x01 */ HIT_TYPE_LINK_NORMAL_ATTACK = 1,
    /* 0x02 */ HIT_TYPE_BOMB,
    /* 0x09 */ HIT_TYPE_LINK_HEAVY_ATTACK = 9,
    /* 0x0A */ HIT_TYPE_BOOMERANG,
    /* 0x0F */ HIT_TYPE_ARROW = 15,
    /* 0x10 */ HIT_TYPE_STUN,
};

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

fopAc_ac_c* cc_at_check(fopAc_ac_c*,dCcU_AtInfo*);

#endif /* D_CC_D_CC_UTY_H */
