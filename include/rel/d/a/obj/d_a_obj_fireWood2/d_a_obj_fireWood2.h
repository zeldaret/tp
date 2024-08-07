#ifndef D_A_OBJ_FIREWOOD2_H
#define D_A_OBJ_FIREWOOD2_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"
#include "d/cc/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daFireWood2_c
 * @brief Firewood 2 (Flame)
 *
 * @details
 *
 */
class daFireWood2_c : public fopAc_ac_c {
public:
    /* 80BE82D0 */ void setBaseMtx();
    /* 80BE8328 */ int create();
    /* 80BE8640 */ void lightInit();
    /* 80BE86CC */ void setLight();
    /* 80BE86FC */ void cutLight();
    /* 80BE872C */ void pointLightProc();
    /* 80BE87DC */ int Execute();
    /* 80BE8D98 */ int Draw();
    /* 80BE8DA0 */ int Delete();

    static const dCcD_SrcGObjInf mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;

private:
    /* 0x568 */ u8 field_0x568[0x574 - 0x568];
    /* 0x574 */ dCcD_Stts mCcStts;
    /* 0x5B0 */ dCcD_Cyl mCcCyl;
    /* 0x6EC */ cXyz mFlamePos;
    /* 0x6F8 */ u8 mIsLit;
    /* 0x6F9 */ u8 mIsSwitch;
    /* 0x6FA */ u8 mSwitchType;
    /* 0x6FB */ u8 mFlameType;
    /* 0x6FC */ u32 mFlameEmtrIDs[4];
    /* 0x70C */ cXyz mLightPos;
    /* 0x718 */ u8 mIsPLight;
    /* 0x71C */ f32 mBossLightStrength;
    /* 0x720 */ LIGHT_INFLUENCE mLightInfluence;
};

STATIC_ASSERT(sizeof(daFireWood2_c) == 0x740);

class daFireWood2_HIO_c : public mDoHIO_entry_c {
public:
    /* 80BE824C */ daFireWood2_HIO_c();
    /* 80BE8E54 */ virtual ~daFireWood2_HIO_c() {}

    /* 0x04 */ f32 mFlameOffsetY;
    /* 0x08 */ f32 mCollisionDiameter;
    /* 0x0C */ f32 mCollisionHeight;
};


#endif /* D_A_OBJ_FIREWOOD2_H */
