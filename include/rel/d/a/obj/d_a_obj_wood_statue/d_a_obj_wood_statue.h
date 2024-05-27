#ifndef D_A_OBJ_WOOD_STATUE_H
#define D_A_OBJ_WOOD_STATUE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjWStatue_c
 * @brief Wooden Statue
 *
 * @details
 *
 */
class daObjWStatue_c : public fopAc_ac_c {
public:
    /* 80D3A268 */ void initBaseMtx();
    /* 80D3A2A4 */ void setBaseMtx();
    /* 80D3A2F0 */ void Create();
    /* 80D3A474 */ bool __CreateHeap();
    /* 80D3A47C */ void create();
    /* 80D3A8E8 */ void bg_check();
    /* 80D3AA3C */ void actionWaitInit();
    /* 80D3AA80 */ void actionWait();
    /* 80D3AB9C */ void initActionOrderGetDemo();
    /* 80D3AC64 */ void actionOrderGetDemo();
    /* 80D3ACAC */ void actionGetDemo();
    /* 80D3AD30 */ void actionInitSwOnWait();
    /* 80D3AD88 */ void actionSwOnWait();
    /* 80D3AE7C */ void actionInitBoomerangCarry();
    /* 80D3AF5C */ void actionBoomerangCarry();
    /* 80D3AFC0 */ void demoProc();
    /* 80D3B164 */ void effectSet();
    /* 80D3B250 */ void effectStop();
    /* 80D3B2A0 */ void execute();
    /* 80D3B428 */ void draw();
    /* 80D3B47C */ void setListStart();
    /* 80D3B480 */ void _delete();

private:
    /* 0x568 */ u8 field_0x568[0x974 - 0x568];
};
STATIC_ASSERT(sizeof(daObjWStatue_c) == 0x974);


#endif /* D_A_OBJ_WOOD_STATUE_H */
