#ifndef D_A_OBJ_ICEBLOCK_H
#define D_A_OBJ_ICEBLOCK_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjIceBlk_c
 * @brief Sliding Ice Block
 *
 * @details
 *
 */
class daObjIceBlk_c : public fopAc_ac_c {
public:
    /* 80C21CD8 */ void PPCallBack(fopAc_ac_c*, fopAc_ac_c*, s16, dBgW_Base::PushPullLabel);
    /* 80C21DC4 */ void initBaseMtx();
    /* 80C21E24 */ void setBaseMtx();
    /* 80C21EA4 */ void getPointNo();
    /* 80C21F2C */ void loadCurrentPos();
    /* 80C21FC8 */ void saveCurrentPos();
    /* 80C22200 */ void enablePushPull();
    /* 80C2224C */ void disablePushPull();
    /* 80C22298 */ void Create();
    /* 80C22618 */ void CreateHeap();
    /* 80C227F4 */ void create1st();
    /* 80C228B4 */ void Execute(f32 (**)[3][4]);
    /* 80C2294C */ void checkWalk();
    /* 80C22B04 */ void clrCounter();
    /* 80C22B28 */ void mode_proc_call();
    /* 80C22EF8 */ void mode_init_wait();
    /* 80C22F74 */ void mode_proc_wait();
    /* 80C23058 */ void mode_init_walk();
    /* 80C23088 */ void mode_proc_walk();
    /* 80C23388 */ void setEffect();
    /* 80C2350C */ void checkWallPre(s16);
    /* 80C236C8 */ void checkBgHit();
    /* 80C237B0 */ void bgCheck();
    /* 80C23860 */ void init_bgCheck();
    /* 80C238B0 */ void checkFall();
    /* 80C23A50 */ void event_proc_call();
    /* 80C23B0C */ void actionWait();
    /* 80C23B70 */ void actionOrderEvent();
    /* 80C23C1C */ void actionEvent();
    /* 80C23CA0 */ void actionDead();
    /* 80C23CA4 */ void Draw();
    /* 80C23DA8 */ void Delete();
private:
    /* 0x568 */ u8 field_0x568[0x9ec - 0x568];
};
STATIC_ASSERT(sizeof(daObjIceBlk_c) == 0x9ec);


#endif /* D_A_OBJ_ICEBLOCK_H */
