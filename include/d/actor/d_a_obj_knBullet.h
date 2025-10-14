#ifndef D_A_OBJ_KNBULLET_H
#define D_A_OBJ_KNBULLET_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObjKnBullet_c
 * @brief Hero's Shade Energy Ball? (Knight Bullet)
 *
 * @details
 *
 */
class daObjKnBullet_c : public fopAc_ac_c {
public:
    /* 80C47118 */ int Create();
    /* 80C47300 */ int Execute();
    /* 80C47480 */ int Draw();
    /* 80C47488 */ int Delete();
    /* 80C47490 */ void setBaseMtx();
    /* 80C474E8 */ void col_init();
    /* 80C47558 */ BOOL col_chk();
    /* 80C477B4 */ void hitPrtclSet();

    u8 getActionMode() { return mActionMode; }
    void setActionMode(u8 i_action) { mActionMode = i_action; }

private:
    /* 0x568 */ Mtx mMtx;
    /* 0x598 */ dCcD_Stts mCcStts;
    /* 0x5D4 */ dCcD_Sph mCcSph;
    /* 0x70C */ u8 mActionMode;
    /* 0x70E */ s16 mTimer;
    /* 0x710 */ u32 mEmtIds[3];
};

STATIC_ASSERT(sizeof(daObjKnBullet_c) == 0x71c);

struct daObjKnBullet_Hio_Param_c {
    /* 0x0 */ f32 radius;
    /* 0x4 */ f32 move_speed;
    /* 0x8 */ s16 lifetime;
};

#endif /* D_A_OBJ_KNBULLET_H */
