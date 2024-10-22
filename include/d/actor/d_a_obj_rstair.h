#ifndef D_A_OBJ_RSTAIR_H
#define D_A_OBJ_RSTAIR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjRotStair_c
 * @brief Rail Staircase
 *
 * @details
 *
 */
class daObjRotStair_c : public fopAc_ac_c {
public:
    /* 80CC1558 */ void initBaseMtx();
    /* 80CC1614 */ void setBaseMtx();
    /* 80CC16B0 */ void Create();
    /* 80CC17F0 */ void CreateHeap();
    /* 80CC1A28 */ void create1st();
    /* 80CC1AF0 */ void Execute(f32 (**)[3][4]);
    /* 80CC1BA4 */ void move_proc_call();
    /* 80CC1C30 */ void init_modeWait();
    /* 80CC1CF0 */ void modeWait();
    /* 80CC1DF8 */ void init_modeRotate();
    /* 80CC1EC8 */ void modeRotate();
    /* 80CC2024 */ void event_proc_call();
    /* 80CC20E0 */ void actionWait();
    /* 80CC2158 */ void actionOrderEvent();
    /* 80CC21C0 */ void actionEvent();
    /* 80CC221C */ void actionDead();
    /* 80CC2220 */ void checkChangeSw();
    /* 80CC22A0 */ void offSwitch(int);
    /* 80CC2310 */ void onWaterModel();
    /* 80CC2364 */ void offWaterModel();
    /* 80CC23C4 */ void Draw();
    /* 80CC25C0 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5e4 - 0x568];
};

STATIC_ASSERT(sizeof(daObjRotStair_c) == 0x5e4);


#endif /* D_A_OBJ_RSTAIR_H */
