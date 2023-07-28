#ifndef D_A_TAG_LIGHTBALL_H
#define D_A_TAG_LIGHTBALL_H

#include "d/kankyo/d_kankyo.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daTagLightBall_c : public fopAc_ac_c {
public:
    /* 80D5A7F8 */ void initBaseMtx();
    /* 80D5A818 */ void setBaseMtx();
    /* 80D5A870 */ int Create();
    /* 80D5A9B8 */ int create();
    /* 80D5AA20 */ int execute();
    /* 80D5ABA0 */ int draw();
    /* 80D5ABA8 */ int _delete();

    u8 getSwBit() { return fopAcM_GetParamBit(this, 0, 8); }
    u32 getType() { return fopAcM_GetParamBit(this, 8, 4); }

    /* 0x568 */ DALKMIST_INFLUENCE mInfluence;
    /* 0x578 */ int field_0x578;
    /* 0x57C */ u8 field_0x57c;
    /* 0x57D */ u8 field_0x57d;
    /* 0x57E */ u8 field_0x57e;
    /* 0x57F */ u8 field_0x57f;
};

#endif /* D_A_TAG_LIGHTBALL_H */
