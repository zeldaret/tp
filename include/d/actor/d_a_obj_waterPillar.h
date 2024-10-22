#ifndef D_A_OBJ_WATERPILLAR_H
#define D_A_OBJ_WATERPILLAR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daWtPillar_c
 * @brief Water Column
 *
 * @details
 *
 */
class daWtPillar_c : public fopAc_ac_c {
public:
    /* 80D2C7B0 */ void setBaseMtx();
    /* 80D2C838 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80D2C858 */ void CreateHeap();
    /* 80D2C960 */ void create();
    /* 80D2CC0C */ void execute();
    /* 80D2CE4C */ void actionMain();
    /* 80D2CF98 */ void effectSet();
    /* 80D2D278 */ void effectSet2();
    /* 80D2D3FC */ void actionSwWaitInit();
    /* 80D2D408 */ void actionSwWait();
    /* 80D2D488 */ void eventStart();
    /* 80D2D4AC */ void actionWaitInit();
    /* 80D2D588 */ void actionWait();
    /* 80D2D5C0 */ void actionUpFirstInit();
    /* 80D2D6C4 */ void actionUpFirst();
    /* 80D2D73C */ void actionUpFirstWaitInit();
    /* 80D2D780 */ void actionUpFirstWait();
    /* 80D2D7B8 */ void actionUpInit();
    /* 80D2D850 */ void actionUp();
    /* 80D2D95C */ void actionUpWaitInit();
    /* 80D2D9A0 */ void actionUpWait();
    /* 80D2DA58 */ void actionDownInit();
    /* 80D2DA78 */ void actionDown();
    /* 80D2DB68 */ void actionRockWaitInit();
    /* 80D2DB74 */ void actionRockWait();
    /* 80D2DC20 */ void actionRockOnInit();
    /* 80D2DC2C */ void actionRockOn();
    /* 80D2DD0C */ void actionEndInit();
    /* 80D2DD18 */ void actionEnd();
    /* 80D2DDB0 */ void getPillarHeight();
    /* 80D2DDB8 */ void draw();
    /* 80D2DE84 */ void _delete();
    /* 80D2E054 */ daWtPillar_c();
    /* 80D2E430 */ ~daWtPillar_c();

    static u8 const mCcDObjInfo[48];
    static u8 const mCcDObjCoInfo[48];
    static u8 mCcDCps[76];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0xb7c - 0x568];
};

STATIC_ASSERT(sizeof(daWtPillar_c) == 0xb7c);

class daWtPillar_HIO_c {
public:
    /* 80D2C6CC */ daWtPillar_HIO_c();
    /* 80D2DF34 */ ~daWtPillar_HIO_c();
};


#endif /* D_A_OBJ_WATERPILLAR_H */
