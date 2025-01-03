#ifndef D_A_OBJ_KNBULLET_H
#define D_A_OBJ_KNBULLET_H

#include "f_op/f_op_actor_mng.h"

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
    /* 80C47118 */ void Create();
    /* 80C47300 */ void Execute();
    /* 80C47480 */ bool Draw();
    /* 80C47488 */ bool Delete();
    /* 80C47490 */ void setBaseMtx();
    /* 80C474E8 */ void col_init();
    /* 80C47558 */ void col_chk();
    /* 80C477B4 */ void hitPrtclSet();

    u8 getActionMode() { return mActionMode; }

private:
    /* 0x568 */ u8 field_0x568[0x70c - 0x568];
    /* 0x70C */ u8 mActionMode;
    /* 0x70D */ u8 field_0x70d[0x71c - 0x70d];
};

STATIC_ASSERT(sizeof(daObjKnBullet_c) == 0x71c);


#endif /* D_A_OBJ_KNBULLET_H */
