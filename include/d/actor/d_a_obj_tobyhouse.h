#ifndef D_A_OBJ_TOBYHOUSE_H
#define D_A_OBJ_TOBYHOUSE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjTobyHouse_c
 * @brief Fyer's House
 *
 * @details
 *
 */
class daObjTobyHouse_c : public fopAc_ac_c {
public:
    /* 80D15F0C */ void initBaseMtx();
    /* 80D15F48 */ void setBaseMtx();
    /* 80D15FE0 */ void Create();
    /* 80D161A4 */ void CreateHeap();
    /* 80D163F0 */ void create1st();
    /* 80D164C0 */ void Execute(f32 (**)[3][4]);
    /* 80D16560 */ void action();
    /* 80D1661C */ void actionWait();
    /* 80D166E0 */ void actionOrderEvent();
    /* 80D167BC */ void actionEvent();
    /* 80D16860 */ void actionDead();
    /* 80D16864 */ void demoProc();
    /* 80D171C0 */ void sceneChange();
    /* 80D17230 */ void Draw();
    /* 80D17374 */ void checkLODModel();
    /* 80D174F8 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x600 - 0x568];
};

STATIC_ASSERT(sizeof(daObjTobyHouse_c) == 0x600);


#endif /* D_A_OBJ_TOBYHOUSE_H */
