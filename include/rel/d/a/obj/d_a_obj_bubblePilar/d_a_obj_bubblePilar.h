#ifndef D_A_OBJ_BUBBLEPILAR_H
#define D_A_OBJ_BUBBLEPILAR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daBubbPilar_c
 * @brief Bubble Pillar
 *
 * @details
 *
 */
class daBubbPilar_c : public fopAc_ac_c {
public:
    /* 80BC3460 */ void setBaseMtx();
    /* 80BC3518 */ void CreateHeap();
    /* 80BC35D0 */ void create();
    /* 80BC3934 */ void Execute(f32 (**)[3][4]);
    /* 80BC3AB8 */ void initModeWait();
    /* 80BC3AC4 */ void modeWait();
    /* 80BC3C74 */ void initModeEffOn();
    /* 80BC3C98 */ void modeEffOn();
    /* 80BC3DB0 */ void Draw();
    /* 80BC3E8C */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x750 - 0x568];
};
STATIC_ASSERT(sizeof(daBubbPilar_c) == 0x750);

class daBubbPilar_HIO_c {
public:
    /* 80BC33EC */ daBubbPilar_HIO_c();
    /* 80BC3F90 */ ~daBubbPilar_HIO_c();
};


#endif /* D_A_OBJ_BUBBLEPILAR_H */
