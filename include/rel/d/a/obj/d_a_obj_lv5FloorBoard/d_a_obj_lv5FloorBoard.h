#ifndef D_A_OBJ_LV5FLOORBOARD_H
#define D_A_OBJ_LV5FLOORBOARD_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daFlorBoad_c
 * @brief Snowpeak Ruins Destructable Floor
 *
 * @details
 *
 */
class daFlorBoad_c : public fopAc_ac_c {
public:
    /* 80C6A6FC */ void setBaseMtx();
    /* 80C6A784 */ void CreateHeap();
    /* 80C6A7F0 */ void create();
    /* 80C6AAAC */ void Execute(f32 (**)[3][4]);
    /* 80C6AB04 */ void procMain();
    /* 80C6AB90 */ void init_modeWait();
    /* 80C6ABAC */ void modeWait();
    /* 80C6AC9C */ void init_modeBreak();
    /* 80C6AD40 */ void modeBreak();
    /* 80C6AEB0 */ void Draw();
    /* 80C6AF54 */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x734 - 0x568];
};
STATIC_ASSERT(sizeof(daFlorBoad_c) == 0x734);

class daFlorBoad_HIO_c {
public:
    /* 80C6A60C */ daFlorBoad_HIO_c();
    /* 80C6B058 */ ~daFlorBoad_HIO_c();
};


#endif /* D_A_OBJ_LV5FLOORBOARD_H */
